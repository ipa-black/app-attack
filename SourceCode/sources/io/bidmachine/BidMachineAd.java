package io.bidmachine;

import android.content.Context;
import io.bidmachine.AdListener;
import io.bidmachine.AdRequest;
import io.bidmachine.IAd;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.models.AdObject;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.models.AuctionResult;
import io.bidmachine.unified.UnifiedAd;
import io.bidmachine.unified.UnifiedAdRequestParams;
import io.bidmachine.utils.BMError;
import java.util.List;
/* loaded from: classes5.dex */
public abstract class BidMachineAd<SelfType extends IAd, AdRequestType extends AdRequest<AdRequestType, ?, UnifiedAdRequestParamsType>, AdObjectType extends AdObject<AdObjectParamsType, UnifiedAdRequestParamsType, ?>, AdObjectParamsType extends AdObjectParams, UnifiedAdRequestParamsType extends UnifiedAdRequestParams, AdListenerType extends AdListener<SelfType>> implements IAd<SelfType, AdRequestType> {
    AdRequestType adRequest;
    private final AdsType adsType;
    private final Context context;
    private final ContextProvider contextProvider;
    private boolean isFinishTracked;
    private AdListenerType listener;
    private final String TAG = Utils.generateTag("BidMachineAd", this);
    private State currentState = State.Idle;
    private final AdRequest.AdRequestListener<AdRequestType> adRequestListener = (AdRequest.AdRequestListener<AdRequestType>) new AdRequest.AdRequestListener<AdRequestType>() { // from class: io.bidmachine.BidMachineAd.2
        @Override // io.bidmachine.AdRequest.AdRequestListener
        public void onRequestSuccess(AdRequestType adrequesttype, AuctionResult auctionResult) {
            if (adrequesttype == BidMachineAd.this.adRequest) {
                BidMachineAd.this.processRequestSuccess(adrequesttype);
            }
        }

        @Override // io.bidmachine.AdRequest.AdRequestListener
        public void onRequestFailed(AdRequestType adrequesttype, BMError bMError) {
            if (adrequesttype == BidMachineAd.this.adRequest) {
                BidMachineAd.this.processRequestFail(bMError);
            }
        }

        @Override // io.bidmachine.AdRequest.AdRequestListener
        public void onRequestExpired(AdRequestType adrequesttype) {
            if (adrequesttype == BidMachineAd.this.adRequest) {
                BidMachineAd.this.adProcessCallback.processExpired();
            }
        }
    };
    private final AdRequest.InternalAdRequestListener<AdRequestType> internalAdRequestListener = (AdRequest.InternalAdRequestListener<AdRequestType>) new AdRequest.InternalAdRequestListener<AdRequestType>() { // from class: io.bidmachine.BidMachineAd.3
        @Override // io.bidmachine.AdRequest.InternalAdRequestListener
        public void onRequestDestroyed(AdRequestType adrequesttype) {
            if (adrequesttype == BidMachineAd.this.adRequest) {
                BidMachineAd.this.destroy();
            }
        }
    };
    public final AdProcessCallback adProcessCallback = new AdProcessCallback() { // from class: io.bidmachine.BidMachineAd.4
        @Override // io.bidmachine.AdProcessCallback
        public void processBeforeStartVisibilityTracker() {
        }

        @Override // io.bidmachine.AdProcessCallback
        public boolean processVisibilityTrackerShown(UnifiedAd<?, ?> unifiedAd) {
            return true;
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processLoadSuccess() {
            if (BidMachineAd.this.currentState.ordinal() > State.Loading.ordinal()) {
                return;
            }
            BidMachineAd.this.log("processLoadSuccess");
            BidMachineAd.this.currentState = State.Success;
            Utils.onUiThread(new Runnable() { // from class: io.bidmachine.BidMachineAd.4.1
                @Override // java.lang.Runnable
                public void run() {
                    if (BidMachineAd.this.listener != null) {
                        BidMachineAd.this.log("notify AdLoaded");
                        BidMachineAd.this.listener.onAdLoaded(BidMachineAd.this);
                    }
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processLoadFail(final BMError bMError) {
            BidMachineAd.this.log(String.format("processLoadFail - %s", bMError));
            BidMachineAd.this.currentState = State.Failed;
            Utils.onUiThread(new Runnable() { // from class: io.bidmachine.BidMachineAd.4.2
                @Override // java.lang.Runnable
                public void run() {
                    if (BidMachineAd.this.listener != null) {
                        BidMachineAd.this.log("notify AdLoadFailed");
                        BidMachineAd.this.listener.onAdLoadFailed(BidMachineAd.this, bMError);
                    }
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processFillAd() {
            if (BidMachineAd.this.currentState.ordinal() > State.Success.ordinal()) {
                return;
            }
            BidMachineAd.this.log("processFillAd");
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processShowFail(final BMError bMError) {
            BidMachineAd.this.log(String.format("processShowFail - %s", bMError));
            Utils.onUiThread(new Runnable() { // from class: io.bidmachine.BidMachineAd.4.3
                @Override // java.lang.Runnable
                public void run() {
                    if (BidMachineAd.this.listener instanceof AdFullScreenListener) {
                        BidMachineAd.this.log("notify AdShowFailed");
                        ((AdFullScreenListener) BidMachineAd.this.listener).onAdShowFailed(BidMachineAd.this, bMError);
                    }
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processShown() {
            if (BidMachineAd.this.currentState.ordinal() > State.Success.ordinal()) {
                return;
            }
            BidMachineAd.this.log("processShown");
            Utils.onUiThread(new Runnable() { // from class: io.bidmachine.BidMachineAd.4.4
                @Override // java.lang.Runnable
                public void run() {
                    if (BidMachineAd.this.listener != null) {
                        BidMachineAd.this.log("notify AdImpression");
                        BidMachineAd.this.listener.onAdImpression(BidMachineAd.this);
                    }
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processVisibilityTrackerImpression() {
            if (BidMachineAd.this.currentState.ordinal() > State.Success.ordinal()) {
                return;
            }
            BidMachineAd.this.log("processImpression");
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processClicked() {
            if (BidMachineAd.this.currentState.ordinal() > State.Success.ordinal()) {
                return;
            }
            BidMachineAd.this.log("processClicked");
            Utils.onUiThread(new Runnable() { // from class: io.bidmachine.BidMachineAd.4.5
                @Override // java.lang.Runnable
                public void run() {
                    if (BidMachineAd.this.listener != null) {
                        BidMachineAd.this.log("notify AdClicked");
                        BidMachineAd.this.listener.onAdClicked(BidMachineAd.this);
                    }
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processFinished() {
            if (BidMachineAd.this.currentState.ordinal() <= State.Success.ordinal() && !BidMachineAd.this.isFinishTracked) {
                BidMachineAd.this.isFinishTracked = true;
                BidMachineAd.this.log("processFinished");
                Utils.onUiThread(new Runnable() { // from class: io.bidmachine.BidMachineAd.4.6
                    @Override // java.lang.Runnable
                    public void run() {
                        if (BidMachineAd.this.listener instanceof AdRewardedListener) {
                            BidMachineAd.this.log("notify AdRewarded");
                            ((AdRewardedListener) BidMachineAd.this.listener).onAdRewarded(BidMachineAd.this);
                        }
                    }
                });
            }
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processClosed() {
            if (BidMachineAd.this.currentState.ordinal() > State.Success.ordinal()) {
                return;
            }
            BidMachineAd bidMachineAd = BidMachineAd.this;
            bidMachineAd.log(String.format("processClosed (%s)", Boolean.valueOf(bidMachineAd.isFinishTracked)));
            Utils.onUiThread(new Runnable() { // from class: io.bidmachine.BidMachineAd.4.7
                @Override // java.lang.Runnable
                public void run() {
                    if (BidMachineAd.this.listener instanceof AdFullScreenListener) {
                        BidMachineAd.this.log("notify AdClosed");
                        ((AdFullScreenListener) BidMachineAd.this.listener).onAdClosed(BidMachineAd.this, BidMachineAd.this.isFinishTracked);
                    }
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processExpired() {
            if (BidMachineAd.this.currentState.ordinal() > State.Success.ordinal()) {
                return;
            }
            BidMachineAd.this.log("processExpired");
            BidMachineAd.this.currentState = State.Expired;
            Utils.onUiThread(new Runnable() { // from class: io.bidmachine.BidMachineAd.4.8
                @Override // java.lang.Runnable
                public void run() {
                    if (BidMachineAd.this.listener != null) {
                        BidMachineAd.this.log("notify AdExpired");
                        BidMachineAd.this.listener.onAdExpired(BidMachineAd.this);
                    }
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processDestroy() {
            BidMachineAd.this.log("destroy requested");
            BidMachineAd.this.currentState = State.Destroyed;
            AdResponse adResponse = BidMachineAd.this.getAdResponse();
            if (adResponse != null) {
                adResponse.removeCallback(this);
            }
            if (BidMachineAd.this.adRequest != null) {
                BidMachineAd bidMachineAd = BidMachineAd.this;
                bidMachineAd.detachRequest(bidMachineAd.adRequest);
                BidMachineAd.this.adRequest.destroy();
                BidMachineAd.this.adRequest = null;
            }
        }
    };
    final TrackingObject trackingObject = new SimpleTrackingObject() { // from class: io.bidmachine.BidMachineAd.1
        @Override // io.bidmachine.TrackingObject
        public List<String> getTrackingUrls(TrackEventType trackEventType) {
            AdResponse adResponse = BidMachineAd.this.getAdResponse();
            if (adResponse != null) {
                return adResponse.getTrackUrls(trackEventType);
            }
            return null;
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public enum State {
        Idle,
        Requesting,
        Loading,
        Success,
        Failed,
        Destroyed,
        Expired
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract AdObjectType createAdObject(ContextProvider contextProvider, AdRequestType adrequesttype, NetworkAdapter networkAdapter, AdObjectParams adObjectParams, AdProcessCallback adProcessCallback);

    public BidMachineAd(Context context, AdsType adsType) {
        this.context = context;
        this.adsType = adsType;
        this.contextProvider = new SimpleContextProvider(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Context getContext() {
        return this.context;
    }

    AdsType getAdsType() {
        return this.adsType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ContextProvider getContextProvider() {
        return this.contextProvider;
    }

    @Override // io.bidmachine.IAd
    public AuctionResult getAuctionResult() {
        AdRequestType adrequesttype = this.adRequest;
        if (adrequesttype != null) {
            return adrequesttype.getAuctionResult();
        }
        return null;
    }

    protected final AdResponse getAdResponse() {
        AdRequestType adrequesttype = this.adRequest;
        if (adrequesttype == null) {
            return null;
        }
        return adrequesttype.getAdResponse();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final AdObjectType getLoadedAdObject() {
        AdResponse adResponse = getAdResponse();
        if (adResponse == null) {
            return null;
        }
        try {
            return (AdObjectType) adResponse.getAdObject();
        } catch (Throwable unused) {
            return null;
        }
    }

    public SelfType setListener(AdListenerType adlistenertype) {
        this.listener = adlistenertype;
        return this;
    }

    public AdRequestType getAdRequest() {
        return this.adRequest;
    }

    @Override // io.bidmachine.IAd
    public SelfType load(AdRequestType adrequesttype) {
        log("load requested");
        BidMachineEvents.eventStart(this.trackingObject, TrackEventType.Load);
        if (!BidMachineImpl.get().isInitialized()) {
            processRequestFail(BMError.internal("BidMachine not initialized"));
            return this;
        } else if (this.currentState != State.Idle) {
            log("request process abort because it's already processing");
            return this;
        } else if (adrequesttype == null) {
            processRequestFail(BMError.notFound("AdRequest"));
            return this;
        } else {
            detachRequest(this.adRequest);
            this.adRequest = adrequesttype;
            attachRequest(adrequesttype);
            processRequest(adrequesttype);
            return this;
        }
    }

    @Override // io.bidmachine.IAd
    public void destroy() {
        this.adProcessCallback.processDestroy();
        BidMachineEvents.clear(this.trackingObject);
    }

    @Override // io.bidmachine.IAd
    public boolean isLoading() {
        return this.currentState == State.Requesting || this.currentState == State.Loading;
    }

    @Override // io.bidmachine.IAd
    public boolean isLoaded() {
        return getLoadedAdObject() != null && this.currentState == State.Success;
    }

    @Override // io.bidmachine.IAd
    public boolean canShow() {
        return isLoaded() && isCanShowAd();
    }

    @Override // io.bidmachine.IAd
    public boolean isDestroyed() {
        return this.currentState == State.Destroyed;
    }

    @Override // io.bidmachine.IAd
    public boolean isExpired() {
        return this.currentState == State.Expired;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdObjectType prepareShow() {
        if (isDestroyed()) {
            processShowFail(BMError.Destroyed);
            return null;
        } else if (isExpired()) {
            processShowFail(BMError.Expired);
            return null;
        } else if (!isLoaded()) {
            processShowFail(BMError.internal("Ad not loaded"));
            return null;
        } else if (!isCanShowAd()) {
            processShowFail(BMError.ResponseDuplicated);
            return null;
        } else {
            return getLoadedAdObject();
        }
    }

    boolean isCanShowAd() {
        AdResponse adResponse = getAdResponse();
        return (adResponse == null || adResponse.wasShown()) ? false : true;
    }

    private void processRequest(AdRequestType adrequesttype) {
        log("process request start");
        if (getAuctionResult() != null) {
            processRequestSuccess(adrequesttype);
            return;
        }
        this.currentState = State.Requesting;
        adrequesttype.request(this.context);
    }

    void processRequestSuccess(AdRequestType adrequesttype) {
        if (this.currentState.ordinal() > State.Loading.ordinal()) {
            return;
        }
        this.currentState = State.Loading;
        AdResponse adResponse = adrequesttype.getAdResponse();
        if (adResponse == null) {
            processRequestFail(BMError.incorrectContent("AdResponse is null"));
            return;
        }
        log("start loading");
        adResponse.loadAdObject(this.contextProvider, adrequesttype, this, this.adProcessCallback);
    }

    private void attachRequest(AdRequestType adrequesttype) {
        if (adrequesttype != null) {
            adrequesttype.addListener(this.adRequestListener);
            adrequesttype.addInternalListener(this.internalAdRequestListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void detachRequest(AdRequestType adrequesttype) {
        if (adrequesttype != null) {
            adrequesttype.removeListener(this.adRequestListener);
            adrequesttype.removeInternalListener(this.internalAdRequestListener);
        }
    }

    void processRequestFail(BMError bMError) {
        if (this.currentState.ordinal() > State.Loading.ordinal()) {
            return;
        }
        trackEvent(TrackEventType.Load, bMError);
        this.adProcessCallback.processLoadFail(bMError);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void processShowFail(BMError bMError) {
        trackEvent(TrackEventType.Show, bMError);
        this.adProcessCallback.processShowFail(bMError);
    }

    private void trackEvent(TrackEventType trackEventType, BMError bMError) {
        BidMachineEvents.eventFinish(this.trackingObject, trackEventType, getAdsType(), bMError);
    }

    public String toString() {
        return String.format("%s, state - %s, auctionResult - %s", this.TAG, this.currentState, getAuctionResult());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void log(String str) {
        if (Logger.isLoggingEnabled()) {
            StringBuilder sb = new StringBuilder(this.adsType.name());
            AuctionResult auctionResult = getAuctionResult();
            if (auctionResult != null) {
                sb.append(" (");
                sb.append(auctionResult.getNetworkKey());
                sb.append(")");
            }
            Logger.log(this.TAG, String.format("%s - %s", sb, str));
        }
    }
}

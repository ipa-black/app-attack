package io.bidmachine;

import android.text.TextUtils;
import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Value;
import com.explorestack.protobuf.adcom.Ad;
import com.explorestack.protobuf.openrtb.Response;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.models.AdObject;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.models.AuctionResult;
import io.bidmachine.protobuf.AdCacheControl;
import io.bidmachine.protobuf.AdExtension;
import io.bidmachine.unified.UnifiedAd;
import io.bidmachine.utils.BMError;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class AdResponse {
    private static final long DEF_EXPIRATION_TIME_SEC = TimeUnit.MINUTES.toSeconds(29);
    private final Ad ad;
    private final AdCacheControl adCacheControl;
    private AdObject adObject;
    private final AdRequestParameters adRequestParameters;
    private final AuctionResult auctionResult;
    private final String bidId;
    private final long expirationTimeMs;
    private final List<NetworkAdUnit> networkAdUnitList;
    private final String responseId;
    private final Struct seatBidExt;
    final TrackingObject trackingObject;
    private final NetworkAdUnit winnerNetworkAdUnit;
    private final String TAG = Utils.generateTag("AdResponse", this);
    final Map<TrackEventType, List<String>> trackUrlsMap = new EnumMap(TrackEventType.class);
    private final Runnable expiredRunnable = new ExpiredRunnable(this);
    private final AtomicBoolean isExpired = new AtomicBoolean(false);
    final AtomicBoolean isExpireTrackerSubscribed = new AtomicBoolean(false);
    final List<WeakReference<AdRequest<?, ?, ?>>> weakAdRequestList = new CopyOnWriteArrayList();
    private volatile AdResponseStatus status = AdResponseStatus.Idle;
    final AdProcessCallbackComposite adCallbackComposite = new AdProcessCallbackComposite(this);
    private final long createTimeMs = System.currentTimeMillis();

    public AdResponse(AdRequestParameters adRequestParameters, List<NetworkAdUnit> list, Response response, Response.Seatbid seatbid, Response.Seatbid.Bid bid, Ad ad, NetworkAdapter networkAdapter) {
        this.adRequestParameters = adRequestParameters;
        this.networkAdUnitList = new CopyOnWriteArrayList(list);
        this.responseId = response.getId();
        this.seatBidExt = seatbid.getExt();
        this.bidId = bid.getId();
        this.ad = ad;
        AdExtension findAdExtension = findAdExtension(ad);
        AuctionResultImpl auctionResultImpl = new AuctionResultImpl(adRequestParameters.getAdsType(), seatbid, bid, ad, networkAdapter, findAdExtension);
        this.auctionResult = auctionResultImpl;
        this.adCacheControl = findAdCacheControl(findAdExtension);
        this.expirationTimeMs = Utils.getOrDefault(bid.getExp(), Response.Seatbid.Bid.getDefaultInstance().getExp(), DEF_EXPIRATION_TIME_SEC) * 1000;
        this.trackingObject = new SimpleTrackingObject(auctionResultImpl.getId()) { // from class: io.bidmachine.AdResponse.1
            @Override // io.bidmachine.TrackingObject
            public List<String> getTrackingUrls(TrackEventType trackEventType) {
                return AdResponse.this.getTrackUrls(trackEventType);
            }
        };
        this.winnerNetworkAdUnit = findWinnerNetworkAdUnit(auctionResultImpl, networkAdapter);
        extractTrackUrls(bid);
        subscribeExpireTracker();
    }

    public AdRequestParameters getAdRequestParameters() {
        return this.adRequestParameters;
    }

    public AdsType getAdsType() {
        return this.adRequestParameters.getAdsType();
    }

    public Ad getAd() {
        return this.ad;
    }

    public AuctionResult getAuctionResult() {
        return this.auctionResult;
    }

    public double getPrice() {
        return this.auctionResult.getPrice();
    }

    public CreativeFormat getCreativeFormat() {
        return this.auctionResult.getCreativeFormat();
    }

    public boolean canCache() {
        return this.adCacheControl == AdCacheControl.AD_CACHE_CONTROL_ENABLED;
    }

    public long calculateExpirationLeftMs() {
        return this.expirationTimeMs - (System.currentTimeMillis() - this.createTimeMs);
    }

    public NetworkAdUnit getWinnerNetworkAdUnit() {
        return this.winnerNetworkAdUnit;
    }

    public List<String> getTrackUrlListByEvent(TrackEventType trackEventType) {
        return this.trackUrlsMap.get(trackEventType);
    }

    public boolean isExpired() {
        return this.isExpired.get();
    }

    public synchronized AdResponseStatus getStatus() {
        return this.status;
    }

    public synchronized void setStatus(AdResponseStatus adResponseStatus) {
        this.status = adResponseStatus;
    }

    public synchronized AdObject getAdObject() {
        return this.adObject;
    }

    public List<String> getTrackUrls(TrackEventType trackEventType) {
        AdObject adObject = this.adObject;
        AdObjectParams params = adObject != null ? adObject.getParams() : null;
        if (params != null) {
            return params.getTrackUrls(trackEventType);
        }
        return null;
    }

    public void attachAdRequest(AdRequest<?, ?, ?> adRequest) {
        if (adRequest == null) {
            return;
        }
        Logger.log(this.TAG, String.format("attachRequest - %s", this));
        this.weakAdRequestList.add(new WeakReference<>(adRequest));
    }

    public void detachAdRequest(AdRequest<?, ?, ?> adRequest) {
        if (adRequest == null) {
            return;
        }
        Logger.log(this.TAG, String.format("detachRequest - %s", this));
        ArrayList arrayList = new ArrayList();
        for (WeakReference<AdRequest<?, ?, ?>> weakReference : this.weakAdRequestList) {
            AdRequest<?, ?, ?> adRequest2 = weakReference.get();
            if (adRequest2 == null || adRequest2 == adRequest) {
                arrayList.add(weakReference);
            }
        }
        this.weakAdRequestList.removeAll(arrayList);
        if (this.weakAdRequestList.size() == 0) {
            release();
        }
    }

    public synchronized void loadAdObject(ContextProvider contextProvider, AdRequest adRequest, BidMachineAd bidMachineAd, AdProcessCallback adProcessCallback) {
        onAdLoadStart(adRequest);
        if (isAdLoaded()) {
            adProcessCallback.processLoadSuccess();
            return;
        }
        this.adCallbackComposite.appendCallback(adProcessCallback);
        if (this.adCallbackComposite.isLoading.getAndSet(true)) {
            return;
        }
        BidMachineEvents.eventStart(this.trackingObject, TrackEventType.Load);
        if (isExpired()) {
            this.adCallbackComposite.processLoadFail(BMError.ResponseExpired);
        } else if (wasShown()) {
            this.adCallbackComposite.processLoadFail(BMError.ResponseDuplicated);
        } else {
            NetworkAdapter findNetworkAdapter = adRequest.getAdsType().findNetworkAdapter(this.ad);
            if (findNetworkAdapter == null) {
                this.adCallbackComposite.processLoadFail(BMError.incorrectContent("Failed to get adapter by response"));
                return;
            }
            AdObjectParams createAdObjectParams = adRequest.getAdsType().createAdObjectParams(this.ad);
            if (createAdObjectParams != null && createAdObjectParams.isValid()) {
                AdObject createAdObject = bidMachineAd.createAdObject(contextProvider, adRequest, findNetworkAdapter, createAdObjectParams, this.adCallbackComposite);
                if (createAdObject == null) {
                    this.adCallbackComposite.processLoadFail(BMError.incorrectContent("Failed to create ad object by response"));
                    return;
                }
                createAdObject.load(contextProvider, adRequest.obtainUnifiedRequestParams(), this.winnerNetworkAdUnit);
                this.adObject = createAdObject;
                return;
            }
            this.adCallbackComposite.processLoadFail(BMError.incorrectContent("Failed to get parameters by response"));
        }
    }

    public void onAdLoadStart(AdRequest<?, ?, ?> adRequest) {
        Logger.log(this.TAG, String.format("onLoadStart - %s", this));
        expireAdRequests(adRequest);
    }

    public boolean isAdLoaded() {
        return this.adObject != null && this.adCallbackComposite.isLoaded.get();
    }

    public boolean wasShown() {
        return this.adCallbackComposite.isResultShownTracked.get();
    }

    public void removeCallback(AdProcessCallback adProcessCallback) {
        this.adCallbackComposite.removeCallback(adProcessCallback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Value createBidCacheExtensionValue() {
        Struct.Builder putFields = Struct.newBuilder().putFields("price", Value.newBuilder().setNumberValue(this.auctionResult.getPrice()).build()).putFields("exp", Value.newBuilder().setNumberValue(calculateExpirationLeftMs()).build()).putFields("request_id", Value.newBuilder().setStringValue(this.responseId).build()).putFields("bid_id", Value.newBuilder().setStringValue(this.bidId).build());
        if (this.seatBidExt.getFieldsCount() > 0) {
            putFields.putFields("seat", Value.newBuilder().setStructValue(this.seatBidExt).build());
        }
        return Value.newBuilder().setStructValue(putFields).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void destroy() {
        Logger.log(this.TAG, String.format("destroy - %s", this));
        AdResponseManager.get().remove(this);
        clearAdRequestList();
        unsubscribeExpireTracker();
        this.adCallbackComposite.destroy();
        this.trackUrlsMap.clear();
        notifyNetworkClearAuction();
        if (this.adCallbackComposite.isLoading()) {
            eventFinish(TrackEventType.Load, BMError.Destroyed);
        }
        if (this.adObject != null) {
            eventFinish(TrackEventType.Destroy);
        }
        BidMachineEvents.clear(this.trackingObject);
        Utils.onUiThread(new Runnable() { // from class: io.bidmachine.AdResponse.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (AdResponse.this.adObject != null) {
                        AdResponse.this.adObject.onDestroy();
                    }
                } catch (Throwable th) {
                    Logger.log(th);
                }
                AdResponse.this.adObject = null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyExpired(boolean z) {
        Logger.log(this.TAG, String.format("notifyExpired - %s", this));
        this.isExpired.set(true);
        unsubscribeExpireTracker();
        expireAdRequests(null);
        if (z) {
            destroy();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void expireAdRequests(AdRequest<?, ?, ?> adRequest) {
        for (WeakReference<AdRequest<?, ?, ?>> weakReference : this.weakAdRequestList) {
            AdRequest<?, ?, ?> adRequest2 = weakReference.get();
            if (adRequest2 != null && adRequest2 != adRequest) {
                adRequest2.processExpired();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearAdRequestList() {
        for (WeakReference<AdRequest<?, ?, ?>> weakReference : this.weakAdRequestList) {
            weakReference.clear();
        }
        this.weakAdRequestList.clear();
    }

    private boolean canBeUsedInFuture() {
        return (wasShown() || isExpired()) ? false : true;
    }

    private void release() {
        Logger.log(this.TAG, String.format("release - %s", this));
        AdResponseManager adResponseManager = AdResponseManager.get();
        if (canBeUsedInFuture() && adResponseManager.contains(this)) {
            clearAdRequestList();
            setStatus(AdResponseStatus.Idle);
            Utils.onUiThread(new Runnable() { // from class: io.bidmachine.AdResponse$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AdResponse.this.m492lambda$release$0$iobidmachineAdResponse();
                }
            });
            return;
        }
        destroy();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$release$0$io-bidmachine-AdResponse  reason: not valid java name */
    public /* synthetic */ void m492lambda$release$0$iobidmachineAdResponse() {
        try {
            AdObject adObject = this.adObject;
            if (adObject != null) {
                adObject.hide();
            }
        } catch (Throwable th) {
            Logger.log(th);
        }
    }

    private AdExtension findAdExtension(Ad ad) {
        Any extProto;
        int extProtoCount = ad.getExtProtoCount();
        if (extProtoCount > 0) {
            for (int i = 0; i < extProtoCount; i++) {
                try {
                    extProto = ad.getExtProto(i);
                } catch (Throwable th) {
                    Logger.log(th);
                }
                if (extProto.is(AdExtension.class)) {
                    return (AdExtension) extProto.unpack(AdExtension.class);
                }
                continue;
            }
            return null;
        }
        return null;
    }

    private AdCacheControl findAdCacheControl(AdExtension adExtension) {
        AdCacheControl adCacheControl;
        if (adExtension == null || (adCacheControl = adExtension.getAdCacheControl()) == AdCacheControl.UNRECOGNIZED) {
            return null;
        }
        return adCacheControl;
    }

    private NetworkAdUnit findWinnerNetworkAdUnit(AuctionResult auctionResult, NetworkAdapter networkAdapter) {
        Map<String, String> networkParams = auctionResult.getNetworkParams();
        String str = networkParams.get(ProtoExtConstants.AD_UNIT_ID);
        NetworkAdUnit networkAdUnit = null;
        if (!TextUtils.isEmpty(str)) {
            for (NetworkAdUnit networkAdUnit2 : this.networkAdUnitList) {
                if (networkAdUnit2.getId().equals(str)) {
                    networkAdUnit = networkAdUnit2;
                }
            }
        }
        if (networkAdUnit == null) {
            NetworkAdUnit networkAdUnit3 = new NetworkAdUnit(networkAdapter, networkParams);
            this.networkAdUnitList.add(networkAdUnit3);
            return networkAdUnit3;
        }
        return networkAdUnit;
    }

    private void notifyNetworkClearAuction() {
        if (this.networkAdUnitList.size() == 0) {
            return;
        }
        for (NetworkAdUnit networkAdUnit : this.networkAdUnitList) {
            try {
                networkAdUnit.getNetworkAdapter().clearAuction(networkAdUnit);
            } catch (Throwable unused) {
            }
        }
        this.networkAdUnitList.clear();
    }

    private void extractTrackUrls(Response.Seatbid.Bid bid) {
        OrtbUtils.addEvent(this.trackUrlsMap, TrackEventType.MediationWin, bid.getPurl());
        OrtbUtils.addEvent(this.trackUrlsMap, TrackEventType.MediationLoss, bid.getLurl());
    }

    private void subscribeExpireTracker() {
        if (this.isExpireTrackerSubscribed.get() || this.expirationTimeMs <= 0) {
            return;
        }
        this.isExpireTrackerSubscribed.set(true);
        Utils.onBackgroundThread(this.expiredRunnable, this.expirationTimeMs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unsubscribeExpireTracker() {
        this.isExpireTrackerSubscribed.set(false);
        Utils.cancelBackgroundThreadTask(this.expiredRunnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void eventFinish(TrackEventType trackEventType) {
        eventFinish(trackEventType, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void eventFinish(TrackEventType trackEventType, BMError bMError) {
        BidMachineEvents.eventFinish(this.trackingObject, trackEventType, getAdsType(), bMError);
    }

    public String toString() {
        return this.auctionResult.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class AdProcessCallbackComposite implements AdProcessCallback {
        private final WeakReference<AdResponse> weakAdResponse;
        private final Map<AdProcessCallback, Boolean> adProcessCallbackMap = new WeakHashMap();
        private final Object mutexCallback = new Object();
        private final AtomicBoolean isLoaded = new AtomicBoolean(false);
        private final AtomicBoolean isLoading = new AtomicBoolean(false);
        private final AtomicBoolean isLoadTracked = new AtomicBoolean(false);
        private final AtomicBoolean isShownTracked = new AtomicBoolean(false);
        private final AtomicBoolean isVisibilityTrackerStarted = new AtomicBoolean(false);
        private final AtomicBoolean isVisibilityTrackerShownTracked = new AtomicBoolean(false);
        private final AtomicBoolean isResultShownTracked = new AtomicBoolean(false);
        private final AtomicBoolean isImpressionTracked = new AtomicBoolean(false);
        private final AtomicBoolean isClickTracked = new AtomicBoolean(false);
        private final AtomicBoolean isFinishTracked = new AtomicBoolean(false);
        private final AtomicBoolean isCloseTracked = new AtomicBoolean(false);

        AdProcessCallbackComposite(AdResponse adResponse) {
            this.weakAdResponse = new WeakReference<>(adResponse);
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processLoadSuccess() {
            if (this.isLoadTracked.getAndSet(true)) {
                return;
            }
            this.isLoaded.set(true);
            this.isLoading.set(false);
            AdResponse adResponse = getAdResponse();
            if (adResponse != null) {
                Logger.log(adResponse.TAG, String.format("processLoadSuccess - %s", adResponse));
                adResponse.eventFinish(TrackEventType.Load);
            }
            executeOnCallback(new Executable() { // from class: io.bidmachine.AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda7
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    ((AdProcessCallback) obj).processLoadSuccess();
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processLoadFail(final BMError bMError) {
            if (this.isLoadTracked.getAndSet(true)) {
                return;
            }
            this.isLoaded.set(false);
            this.isLoading.set(false);
            AdResponse adResponse = getAdResponse();
            if (adResponse != null) {
                Logger.log(adResponse.TAG, String.format("processLoadFail - %s", bMError));
                adResponse.eventFinish(TrackEventType.Load, bMError);
            }
            executeOnCallback(new Executable() { // from class: io.bidmachine.AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda5
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    ((AdProcessCallback) obj).processLoadFail(BMError.this);
                }
            });
            processDestroy();
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processBeforeStartVisibilityTracker() {
            this.isVisibilityTrackerStarted.set(true);
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processFillAd() {
            AdResponse adResponse = getAdResponse();
            if (adResponse != null) {
                Logger.log(adResponse.TAG, String.format("processFillAd - %s", adResponse));
                adResponse.eventFinish(TrackEventType.FillAd);
            }
            executeOnCallback(new Executable() { // from class: io.bidmachine.AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda3
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    ((AdProcessCallback) obj).processFillAd();
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processShowFail(final BMError bMError) {
            AdResponse adResponse = getAdResponse();
            if (adResponse != null) {
                Logger.log(adResponse.TAG, String.format("processShowFail - %s", bMError));
                AdObject adObject = adResponse.getAdObject();
                if (adObject != null) {
                    adObject.onShowFailed();
                }
                adResponse.eventFinish(TrackEventType.Show, bMError);
            }
            executeOnCallback(new Executable() { // from class: io.bidmachine.AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda1
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    ((AdProcessCallback) obj).processShowFail(BMError.this);
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processShown() {
            this.isShownTracked.set(true);
            if (this.isVisibilityTrackerShownTracked.get() || !this.isVisibilityTrackerStarted.get()) {
                processResultShown();
            }
        }

        @Override // io.bidmachine.AdProcessCallback
        public boolean processVisibilityTrackerShown(UnifiedAd<?, ?> unifiedAd) {
            this.isVisibilityTrackerShownTracked.set(true);
            if (this.isShownTracked.get() || !unifiedAd.isConsiderNetworkImpressionTracking()) {
                processResultShown();
                return true;
            }
            return false;
        }

        void processResultShown() {
            if (this.isResultShownTracked.compareAndSet(false, true)) {
                AdResponse adResponse = getAdResponse();
                if (adResponse != null) {
                    Logger.log(adResponse.TAG, String.format("processShown - %s", adResponse));
                    adResponse.unsubscribeExpireTracker();
                    AdResponseManager.get().remove(adResponse);
                    AdObject adObject = adResponse.getAdObject();
                    if (adObject != null) {
                        adObject.onShown();
                    }
                    SessionAdParams sessionAdParams = SessionManager.get().getSessionAdParams(adResponse.getAdsType());
                    sessionAdParams.setLastBundle(null);
                    sessionAdParams.setLastAdDomain(null);
                    sessionAdParams.addImpression();
                    if (adResponse.getCreativeFormat() == CreativeFormat.Video) {
                        sessionAdParams.addVideoImpression();
                    }
                    Ad ad = adResponse.getAd();
                    Iterator<String> it = ad.getBundleList().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        String next = it.next();
                        if (!TextUtils.isEmpty(next)) {
                            sessionAdParams.setLastBundle(next);
                            break;
                        }
                    }
                    Iterator<String> it2 = ad.getAdomainList().iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        String next2 = it2.next();
                        if (!TextUtils.isEmpty(next2)) {
                            sessionAdParams.setLastAdDomain(next2);
                            break;
                        }
                    }
                    adResponse.eventFinish(TrackEventType.Show);
                }
                executeOnCallback(new Executable() { // from class: io.bidmachine.AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda10
                    @Override // io.bidmachine.Executable
                    public final void execute(Object obj) {
                        ((AdProcessCallback) obj).processShown();
                    }
                });
            }
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processVisibilityTrackerImpression() {
            if (this.isImpressionTracked.getAndSet(true)) {
                return;
            }
            AdResponse adResponse = getAdResponse();
            if (adResponse != null) {
                Logger.log(adResponse.TAG, String.format("processImpression - %s", adResponse));
                AdObject adObject = adResponse.getAdObject();
                if (adObject != null) {
                    adObject.onImpression();
                }
                adResponse.eventFinish(TrackEventType.Impression);
            }
            executeOnCallback(new Executable() { // from class: io.bidmachine.AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda0
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    ((AdProcessCallback) obj).processVisibilityTrackerImpression();
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processClicked() {
            AdResponse adResponse = getAdResponse();
            if (adResponse != null) {
                Logger.log(adResponse.TAG, String.format("processClicked - %s", adResponse));
                AdObject adObject = adResponse.getAdObject();
                if (adObject != null) {
                    adObject.onClicked();
                }
                if (!this.isClickTracked.getAndSet(true)) {
                    SessionManager.get().getSessionAdParams(adResponse.getAdsType()).addClick();
                }
                adResponse.eventFinish(TrackEventType.Click);
            }
            executeOnCallback(new Executable() { // from class: io.bidmachine.AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda9
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    ((AdProcessCallback) obj).processClicked();
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processFinished() {
            if (this.isFinishTracked.getAndSet(true)) {
                return;
            }
            AdResponse adResponse = getAdResponse();
            if (adResponse != null) {
                Logger.log(adResponse.TAG, String.format("processFinished - %s", adResponse));
                AdObject adObject = adResponse.getAdObject();
                if (adObject != null) {
                    adObject.onFinished();
                }
                if (adResponse.getCreativeFormat() == CreativeFormat.Video) {
                    SessionManager.get().getSessionAdParams(adResponse.getAdsType()).addCompletedVideo();
                }
            }
            executeOnCallback(new Executable() { // from class: io.bidmachine.AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda4
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    ((AdProcessCallback) obj).processFinished();
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processClosed() {
            if (this.isCloseTracked.getAndSet(true)) {
                return;
            }
            AdResponse adResponse = getAdResponse();
            if (adResponse != null) {
                Logger.log(adResponse.TAG, String.format("processClosed (%s) - %s", Boolean.valueOf(this.isFinishTracked.get()), adResponse));
                AdObject adObject = adResponse.getAdObject();
                if (adObject != null) {
                    adObject.onClosed(this.isFinishTracked.get());
                }
                adResponse.eventFinish(TrackEventType.Close);
            }
            executeOnCallback(new Executable() { // from class: io.bidmachine.AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda2
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    ((AdProcessCallback) obj).processClosed();
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processExpired() {
            AdResponse adResponse = getAdResponse();
            if (adResponse != null) {
                Logger.log(adResponse.TAG, String.format("processExpired - %s", adResponse));
                AdObject adObject = adResponse.getAdObject();
                if (adObject != null) {
                    adObject.onExpired();
                }
                adResponse.eventFinish(TrackEventType.Expired);
            }
            executeOnCallback(new Executable() { // from class: io.bidmachine.AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda8
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    ((AdProcessCallback) obj).processExpired();
                }
            });
            if (adResponse != null) {
                adResponse.notifyExpired(false);
            }
            processDestroy();
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processDestroy() {
            executeOnCallback(new Executable() { // from class: io.bidmachine.AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda6
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    ((AdProcessCallback) obj).processDestroy();
                }
            });
            AdResponse adResponse = getAdResponse();
            if (adResponse != null) {
                Logger.log(adResponse.TAG, String.format("processDestroy - %s", adResponse));
                adResponse.destroy();
            }
        }

        private AdResponse getAdResponse() {
            return this.weakAdResponse.get();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isLoading() {
            return this.isLoading.get();
        }

        void appendCallback(AdProcessCallback adProcessCallback) {
            synchronized (this.mutexCallback) {
                this.adProcessCallbackMap.put(adProcessCallback, Boolean.TRUE);
            }
        }

        void removeCallback(AdProcessCallback adProcessCallback) {
            synchronized (this.mutexCallback) {
                this.adProcessCallbackMap.remove(adProcessCallback);
            }
        }

        void executeOnCallback(Executable<AdProcessCallback> executable) {
            synchronized (this.mutexCallback) {
                for (AdProcessCallback adProcessCallback : this.adProcessCallbackMap.keySet()) {
                    if (adProcessCallback != null) {
                        executable.execute(adProcessCallback);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void destroy() {
            this.weakAdResponse.clear();
            this.adProcessCallbackMap.clear();
        }

        Map<AdProcessCallback, Boolean> getAdProcessCallbackMap() {
            return this.adProcessCallbackMap;
        }
    }

    /* loaded from: classes5.dex */
    private static class ExpiredRunnable implements Runnable {
        private final WeakReference<AdResponse> weakAdResponse;

        public ExpiredRunnable(AdResponse adResponse) {
            this.weakAdResponse = new WeakReference<>(adResponse);
        }

        @Override // java.lang.Runnable
        public void run() {
            AdResponse adResponse = this.weakAdResponse.get();
            if (adResponse != null) {
                adResponse.adCallbackComposite.processExpired();
            }
        }
    }
}

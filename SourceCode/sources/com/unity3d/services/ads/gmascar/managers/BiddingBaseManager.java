package com.unity3d.services.ads.gmascar.managers;

import com.unity3d.ads.IUnityAdsTokenListener;
import com.unity3d.services.ads.gmascar.GMA;
import com.unity3d.services.ads.gmascar.listeners.IBiddingSignalsListener;
import com.unity3d.services.ads.gmascar.models.BiddingSignals;
import com.unity3d.services.ads.gmascar.utils.ScarConstants;
import com.unity3d.services.ads.gmascar.utils.ScarRequestHandler;
import com.unity3d.services.core.configuration.ConfigurationReader;
import com.unity3d.services.core.request.metrics.ISDKMetrics;
import com.unity3d.services.core.request.metrics.SDKMetrics;
import com.unity3d.services.core.request.metrics.ScarMetric;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes3.dex */
public abstract class BiddingBaseManager implements IBiddingManager {
    private final ScarRequestHandler _scarRequestHandler;
    protected final AtomicBoolean isUploadPermitted;
    private final AtomicReference<BiddingSignals> signals;
    private final String tokenIdentifier;
    private final IUnityAdsTokenListener unityAdsTokenListener;

    public abstract void onUnityTokenSuccessfullyFetched();

    public abstract void start();

    public BiddingBaseManager(IUnityAdsTokenListener iUnityAdsTokenListener) {
        this(iUnityAdsTokenListener, new ScarRequestHandler());
    }

    public BiddingBaseManager(IUnityAdsTokenListener iUnityAdsTokenListener, ScarRequestHandler scarRequestHandler) {
        this.isUploadPermitted = new AtomicBoolean(false);
        this.signals = new AtomicReference<>();
        this.tokenIdentifier = UUID.randomUUID().toString();
        this.unityAdsTokenListener = iUnityAdsTokenListener;
        this._scarRequestHandler = scarRequestHandler;
    }

    @Override // com.unity3d.services.ads.gmascar.managers.IBiddingManager
    public String getTokenIdentifier() {
        return this.tokenIdentifier;
    }

    @Override // com.unity3d.services.ads.gmascar.managers.IBiddingManager
    public String getFormattedToken(String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        String tokenIdentifier = getTokenIdentifier();
        return tokenIdentifier != null ? (tokenIdentifier == null || !tokenIdentifier.isEmpty()) ? String.format(ScarConstants.TOKEN_WITH_SCAR_FORMAT, tokenIdentifier, str) : str : str;
    }

    @Override // com.unity3d.ads.IUnityAdsTokenListener
    public final void onUnityAdsTokenReady(String str) {
        IUnityAdsTokenListener iUnityAdsTokenListener = this.unityAdsTokenListener;
        if (iUnityAdsTokenListener != null) {
            iUnityAdsTokenListener.onUnityAdsTokenReady(str);
        }
        if (str == null || str.isEmpty()) {
            return;
        }
        onUnityTokenSuccessfullyFetched();
    }

    public void permitUpload() {
        this.isUploadPermitted.set(true);
    }

    public void permitSignalsUpload() {
        this.isUploadPermitted.set(true);
        attemptUpload();
    }

    public void fetchSignals() {
        getMetricSender().sendMetric(ScarMetric.hbSignalsFetchStart());
        new Thread(new Runnable() { // from class: com.unity3d.services.ads.gmascar.managers.BiddingBaseManager.1
            @Override // java.lang.Runnable
            public void run() {
                GMA.getInstance().getSCARBiddingSignals(new IBiddingSignalsListener() { // from class: com.unity3d.services.ads.gmascar.managers.BiddingBaseManager.1.1
                    @Override // com.unity3d.services.ads.gmascar.listeners.IBiddingSignalsListener
                    public void onSignalsReady(BiddingSignals biddingSignals) {
                        BiddingBaseManager.this.onSignalsReady(biddingSignals);
                        BiddingBaseManager.this.sendFetchResult("");
                    }

                    @Override // com.unity3d.services.ads.gmascar.listeners.IBiddingSignalsListener
                    public void onSignalsFailure(String str) {
                        BiddingBaseManager.this.sendFetchResult(str);
                    }
                });
            }
        }).start();
    }

    public void sendFetchResult(String str) {
        if (str != "") {
            getMetricSender().sendMetric(ScarMetric.hbSignalsFetchFailure(str));
        } else {
            getMetricSender().sendMetric(ScarMetric.hbSignalsFetchSuccess());
        }
    }

    public void onSignalsReady(BiddingSignals biddingSignals) {
        this.signals.set(biddingSignals);
        attemptUpload();
    }

    private synchronized void attemptUpload() {
        if (this.signals.get() != null && this.isUploadPermitted.compareAndSet(true, false)) {
            uploadSignals();
        }
    }

    public void uploadSignals() {
        getMetricSender().sendMetric(ScarMetric.hbSignalsUploadStart());
        final BiddingSignals biddingSignals = this.signals.get();
        if (biddingSignals == null || biddingSignals.isEmpty()) {
            getMetricSender().sendMetric(ScarMetric.hbSignalsUploadFailure("null or empty signals"));
        } else {
            new Thread(new Runnable() { // from class: com.unity3d.services.ads.gmascar.managers.BiddingBaseManager.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        BiddingBaseManager.this._scarRequestHandler.makeUploadRequest(BiddingBaseManager.this.tokenIdentifier, biddingSignals, new ConfigurationReader().getCurrentConfiguration().getScarBiddingUrl());
                        BiddingBaseManager.this.getMetricSender().sendMetric(ScarMetric.hbSignalsUploadSuccess());
                    } catch (Exception e2) {
                        BiddingBaseManager.this.getMetricSender().sendMetric(ScarMetric.hbSignalsUploadFailure(e2.getLocalizedMessage()));
                    }
                }
            }).start();
        }
    }

    public ISDKMetrics getMetricSender() {
        return SDKMetrics.getInstance();
    }
}

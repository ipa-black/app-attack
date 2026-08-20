package io.bidmachine.displays;

import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.adcom.Ad;
import io.bidmachine.AdContentType;
import io.bidmachine.AdsType;
import io.bidmachine.BidMachineEvents;
import io.bidmachine.ContextProvider;
import io.bidmachine.HeaderBiddingAdRequestParams;
import io.bidmachine.HeaderBiddingAdapter;
import io.bidmachine.HeaderBiddingCollectParamsCallback;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.NetworkAdapter;
import io.bidmachine.NetworkConfig;
import io.bidmachine.NetworkRegistry;
import io.bidmachine.ProtoExtConstants;
import io.bidmachine.SimpleTrackingObject;
import io.bidmachine.TrackEventInfo;
import io.bidmachine.TrackEventType;
import io.bidmachine.TrackingObject;
import io.bidmachine.core.Logger;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingAd;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement;
import io.bidmachine.unified.UnifiedAdRequestParams;
import io.bidmachine.utils.BMError;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class HeaderBiddingPlacementBuilder<UnifiedAdRequestParamsType extends UnifiedAdRequestParams> {
    private static final long DEFAULT_HB_PREPARE_TIMEOUT_SEC = 10;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Message.Builder createPlacement(ContextProvider contextProvider, UnifiedAdRequestParamsType unifiedadrequestparamstype, AdsType adsType, AdContentType adContentType, Collection<NetworkConfig> collection, List<NetworkAdUnit> list, int i) {
        ArrayList<AdUnitPreloadTask> arrayList = new ArrayList();
        Iterator<NetworkConfig> it = collection.iterator();
        while (it.hasNext()) {
            NetworkConfig next = it.next();
            NetworkAdapter adapter = NetworkRegistry.getAdapter(next.getNetworkKey());
            if ((adapter instanceof HeaderBiddingAdapter) && adapter.isInitialized(contextProvider)) {
                for (Map<String, String> map : next.peekMediationConfig(adsType, unifiedadrequestparamstype, adContentType)) {
                    NetworkAdUnit networkAdUnit = new NetworkAdUnit(adapter, map);
                    list.add(networkAdUnit);
                    arrayList.add(new AdUnitPreloadTask(contextProvider, (HeaderBiddingAdapter) adapter, adsType, adContentType, unifiedadrequestparamstype, networkAdUnit));
                    it = it;
                }
            }
            it = it;
        }
        if (!arrayList.isEmpty()) {
            SimpleTrackingObject simpleTrackingObject = new SimpleTrackingObject();
            BidMachineEvents.eventStart(simpleTrackingObject, TrackEventType.HeaderBiddingNetworksPrepare);
            try {
                CountDownLatch countDownLatch = new CountDownLatch(arrayList.size());
                for (AdUnitPreloadTask adUnitPreloadTask : arrayList) {
                    adUnitPreloadTask.execute(countDownLatch);
                }
                try {
                    countDownLatch.await(i > 0 ? i : DEFAULT_HB_PREPARE_TIMEOUT_SEC, TimeUnit.SECONDS);
                } catch (InterruptedException e2) {
                    Logger.log(e2);
                }
                ArrayList arrayList2 = null;
                for (AdUnitPreloadTask adUnitPreloadTask2 : arrayList) {
                    HeaderBiddingPlacement.AdUnit adUnit = adUnitPreloadTask2.getAdUnit();
                    if (adUnit != null) {
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        arrayList2.add(adUnit);
                    } else if (!adUnitPreloadTask2.isFinished()) {
                        adUnitPreloadTask2.cancel();
                    }
                }
                if (arrayList2 != null && !arrayList2.isEmpty()) {
                    HeaderBiddingPlacement.Builder newBuilder = HeaderBiddingPlacement.newBuilder();
                    newBuilder.addAllAdUnits(arrayList2);
                    return newBuilder;
                }
            } finally {
                BidMachineEvents.eventFinish(simpleTrackingObject, TrackEventType.HeaderBiddingNetworksPrepare, adsType, null);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdObjectParams createAdObjectParams(Ad ad) {
        HeaderBiddingAd obtainHeaderBiddingAd = obtainHeaderBiddingAd(ad);
        if (obtainHeaderBiddingAd != null) {
            return new HeaderBiddingAdObjectParams(ad, obtainHeaderBiddingAd);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HeaderBiddingAd obtainHeaderBiddingAd(Ad ad) {
        if (ad.hasDisplay()) {
            Ad.Display display = ad.getDisplay();
            r1 = display.hasBanner() ? obtainHeaderBiddingAd(display.getBanner().getExtProtoList()) : null;
            if (r1 == null && display.hasNative()) {
                r1 = obtainHeaderBiddingAd(display.getNative().getExtProtoList());
            }
        }
        return (r1 == null && ad.hasVideo()) ? obtainHeaderBiddingAd(ad.getVideo().getExtProtoList()) : r1;
    }

    private HeaderBiddingAd obtainHeaderBiddingAd(List<Any> list) {
        for (Any any : list) {
            if (any.is(HeaderBiddingAd.class)) {
                try {
                    return (HeaderBiddingAd) any.unpack(HeaderBiddingAd.class);
                } catch (InvalidProtocolBufferException e2) {
                    Logger.log(e2);
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class AdUnitPreloadTask<UnifiedAdRequestParamsType extends UnifiedAdRequestParams> implements Runnable, HeaderBiddingAdRequestParams, HeaderBiddingCollectParamsCallback {
        private static final Executor executor = Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors() * 2);
        private final AdContentType adContentType;
        private final UnifiedAdRequestParamsType adRequestParams;
        private HeaderBiddingPlacement.AdUnit adUnit;
        private final HeaderBiddingAdapter adapter;
        private final AdsType adsType;
        private final ContextProvider contextProvider;
        private final NetworkAdUnit networkAdUnit;
        private CountDownLatch syncLock;
        private boolean isFinished = false;
        private final TrackingObject trackingObject = new SimpleTrackingObject();

        AdUnitPreloadTask(ContextProvider contextProvider, HeaderBiddingAdapter headerBiddingAdapter, AdsType adsType, AdContentType adContentType, UnifiedAdRequestParamsType unifiedadrequestparamstype, NetworkAdUnit networkAdUnit) {
            this.contextProvider = contextProvider;
            this.adapter = headerBiddingAdapter;
            this.adsType = adsType;
            this.adContentType = adContentType;
            this.adRequestParams = unifiedadrequestparamstype;
            this.networkAdUnit = networkAdUnit;
        }

        @Override // io.bidmachine.HeaderBiddingAdRequestParams
        public AdsType getAdsType() {
            return this.adsType;
        }

        @Override // io.bidmachine.HeaderBiddingAdRequestParams
        public AdContentType getAdContentType() {
            return this.adContentType;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.adapter.collectHeaderBiddingParams(this.contextProvider, this.adRequestParams, this.networkAdUnit, this, this);
            } catch (Throwable th) {
                Logger.log(th);
                onCollectFail(BMError.internal("Exception when collecting header bidding parameters"));
            }
        }

        @Override // io.bidmachine.HeaderBiddingCollectParamsCallback
        public void onCollectFinished(Map<String, String> map) {
            if (this.isFinished) {
                return;
            }
            this.adUnit = HeaderBiddingPlacement.AdUnit.newBuilder().setBidder(this.adapter.getKey()).setBidderSdkver(this.adapter.getSdkVersion()).putClientParams(ProtoExtConstants.AD_UNIT_ID, this.networkAdUnit.getId()).putAllClientParams(this.networkAdUnit.getMediationConfig()).putAllClientParams(map).build();
            Logger.log(this.adapter.getKey(), String.format("%s (%s) - Header bidding collect finished", this.adsType, this.adContentType));
            finish();
            BidMachineEvents.eventFinish(this.trackingObject, TrackEventType.HeaderBiddingNetworkPrepare, this.adsType, null);
        }

        @Override // io.bidmachine.HeaderBiddingCollectParamsCallback
        public void onCollectFail(BMError bMError) {
            if (this.isFinished) {
                return;
            }
            Logger.log(this.adapter.getKey(), String.format("%s (%s) - Header bidding collect fail - %s", this.adsType, this.adContentType, bMError));
            finish();
            BidMachineEvents.eventFinish(this.trackingObject, TrackEventType.HeaderBiddingNetworkPrepare, this.adsType, bMError);
        }

        void execute(CountDownLatch countDownLatch) {
            BidMachineEvents.eventStart(this.trackingObject, TrackEventType.HeaderBiddingNetworkPrepare, new TrackEventInfo().withParameter("HB_NETWORK", this.adapter.getKey()).withParameter("BM_AD_TYPE", this.adsType.getName()));
            this.syncLock = countDownLatch;
            executor.execute(this);
        }

        void cancel() {
            if (this.isFinished) {
                return;
            }
            Logger.log(this.adapter.getKey(), String.format("%s (%s) - Header bidding collect fail: timeout", this.adsType, this.adContentType));
            finish();
        }

        HeaderBiddingPlacement.AdUnit getAdUnit() {
            return this.adUnit;
        }

        boolean isFinished() {
            return this.isFinished;
        }

        private void finish() {
            this.isFinished = true;
            this.syncLock.countDown();
        }
    }
}

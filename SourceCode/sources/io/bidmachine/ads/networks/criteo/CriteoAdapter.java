package io.bidmachine.ads.networks.criteo;

import android.app.Application;
import android.text.TextUtils;
import com.criteo.publisher.Bid;
import com.criteo.publisher.BidResponseListener;
import com.criteo.publisher.Criteo;
import com.criteo.publisher.CriteoErrorCode;
import com.criteo.publisher.model.AdUnit;
import io.bidmachine.AdsType;
import io.bidmachine.ContextProvider;
import io.bidmachine.HeaderBiddingAdRequestParams;
import io.bidmachine.HeaderBiddingAdapter;
import io.bidmachine.HeaderBiddingCollectParamsCallback;
import io.bidmachine.InitializationParams;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.NetworkConfigParams;
import io.bidmachine.NetworkInitializationCallback;
import io.bidmachine.unified.UnifiedAdRequestParams;
import io.bidmachine.unified.UnifiedBannerAd;
import io.bidmachine.unified.UnifiedFullscreenAd;
import io.bidmachine.utils.BMError;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
class CriteoAdapter extends HeaderBiddingAdapter {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CriteoAdapter() {
        super(BuildConfig.ADAPTER_NAME, "4.6.0", BuildConfig.ADAPTER_VERSION_NAME, 16, new AdsType[]{AdsType.Banner, AdsType.Interstitial});
    }

    @Override // io.bidmachine.NetworkAdapter
    public UnifiedBannerAd createBanner() {
        return new CriteoBanner();
    }

    @Override // io.bidmachine.NetworkAdapter
    public UnifiedFullscreenAd createInterstitial() {
        return new CriteoInterstitial();
    }

    @Override // io.bidmachine.NetworkAdapter
    protected boolean isNetworkInitialized(ContextProvider contextProvider) throws Throwable {
        return Criteo.getInstance() != null;
    }

    @Override // io.bidmachine.NetworkAdapter
    protected void onNetworkInitialize(ContextProvider contextProvider, InitializationParams initializationParams, NetworkConfigParams networkConfigParams, NetworkInitializationCallback networkInitializationCallback) throws Throwable {
        Map<String, String> obtainNetworkParams = networkConfigParams.obtainNetworkParams();
        if (obtainNetworkParams == null) {
            networkInitializationCallback.onFail("Network parameters not found");
            return;
        }
        String str = obtainNetworkParams.get("publisher_id");
        if (TextUtils.isEmpty(str)) {
            networkInitializationCallback.onFail(String.format("%s not provided", "publisher_id"));
            return;
        }
        List<AdUnit> extractAdUnits = CriteoAdUnitStorage.extractAdUnits(networkConfigParams);
        if (extractAdUnits == null || extractAdUnits.size() == 0) {
            networkInitializationCallback.onFail("AdUnits not found");
            return;
        }
        new Criteo.Builder((Application) contextProvider.getApplicationContext(), str).debugLogsEnabled(initializationParams.isTestMode()).adUnits(extractAdUnits).init();
        networkInitializationCallback.onSuccess();
    }

    @Override // io.bidmachine.HeaderBiddingAdapter
    protected void onCollectHeaderBiddingParams(ContextProvider contextProvider, UnifiedAdRequestParams unifiedAdRequestParams, final NetworkAdUnit networkAdUnit, HeaderBiddingAdRequestParams headerBiddingAdRequestParams, final HeaderBiddingCollectParamsCallback headerBiddingCollectParamsCallback) throws Throwable {
        final String mediationParameter = networkAdUnit.getMediationParameter("ad_unit_id");
        if (TextUtils.isEmpty(mediationParameter)) {
            headerBiddingCollectParamsCallback.onCollectFail(BMError.adapterGetsParameter("ad_unit_id"));
            return;
        }
        AdUnit adUnit = CriteoAdUnitStorage.getAdUnit(mediationParameter);
        if (adUnit == null) {
            headerBiddingCollectParamsCallback.onCollectFail(BMError.adapterGetsParameter("AdUnit"));
        } else {
            Criteo.getInstance().loadBid(adUnit, new BidResponseListener() { // from class: io.bidmachine.ads.networks.criteo.CriteoAdapter$$ExternalSyntheticLambda0
                @Override // com.criteo.publisher.BidResponseListener
                public final void onResponse(Bid bid) {
                    CriteoAdapter.lambda$onCollectHeaderBiddingParams$0(NetworkAdUnit.this, mediationParameter, headerBiddingCollectParamsCallback, bid);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$onCollectHeaderBiddingParams$0(NetworkAdUnit networkAdUnit, String str, HeaderBiddingCollectParamsCallback headerBiddingCollectParamsCallback, Bid bid) {
        if (bid != null) {
            CriteoBidTokenStorage.storeBid(networkAdUnit, bid);
            HashMap hashMap = new HashMap();
            hashMap.put("ad_unit_id", str);
            hashMap.put("price", String.valueOf(bid.getPrice()));
            headerBiddingCollectParamsCallback.onCollectFinished(hashMap);
            return;
        }
        headerBiddingCollectParamsCallback.onCollectFail(BMError.adapterGetsParameter("Bid"));
    }

    @Override // io.bidmachine.NetworkAdapter
    public void onLossAuction(NetworkAdUnit networkAdUnit) throws Throwable {
        CriteoBidTokenStorage.takeBid(networkAdUnit);
    }

    @Override // io.bidmachine.NetworkAdapter
    public void clearAuction(NetworkAdUnit networkAdUnit) throws Throwable {
        CriteoBidTokenStorage.takeBid(networkAdUnit);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.bidmachine.ads.networks.criteo.CriteoAdapter$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$criteo$publisher$CriteoErrorCode;

        static {
            int[] iArr = new int[CriteoErrorCode.values().length];
            $SwitchMap$com$criteo$publisher$CriteoErrorCode = iArr;
            try {
                iArr[CriteoErrorCode.ERROR_CODE_NO_FILL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$criteo$publisher$CriteoErrorCode[CriteoErrorCode.ERROR_CODE_NETWORK_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BMError mapError(CriteoErrorCode criteoErrorCode) {
        int i = AnonymousClass1.$SwitchMap$com$criteo$publisher$CriteoErrorCode[criteoErrorCode.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return BMError.NoConnection;
            }
            return BMError.internal("Unknown error");
        }
        return BMError.noFill();
    }
}

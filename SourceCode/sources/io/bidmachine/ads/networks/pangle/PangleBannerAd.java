package io.bidmachine.ads.networks.pangle;

import android.view.View;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.banner.BannerSize;
import io.bidmachine.unified.UnifiedBannerAd;
import io.bidmachine.unified.UnifiedBannerAdCallback;
import io.bidmachine.unified.UnifiedBannerAdRequestParams;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.utils.BMError;
import java.util.List;
/* loaded from: classes5.dex */
class PangleBannerAd extends UnifiedBannerAd {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private InteractionListener interactionlistener;
    private LoadListener loadListener;
    private TTAdNative ttAdNative;
    private TTNativeExpressAd ttNativeExpressAd;

    @Override // io.bidmachine.unified.UnifiedAd
    public void load(ContextProvider contextProvider, UnifiedBannerAdCallback unifiedBannerAdCallback, UnifiedBannerAdRequestParams unifiedBannerAdRequestParams, UnifiedMediationParams unifiedMediationParams, NetworkAdUnit networkAdUnit) throws Throwable {
        PangleParams pangleParams = new PangleParams(unifiedMediationParams);
        if (pangleParams.isValid(unifiedBannerAdCallback)) {
            AdSlot.Builder withBid = new AdSlot.Builder().setCodeId(pangleParams.slotId).withBid(pangleParams.bidPayload);
            int i = AnonymousClass1.$SwitchMap$io$bidmachine$banner$BannerSize[unifiedBannerAdRequestParams.getAdRequestParameters().getBannerSize().ordinal()];
            if (i == 1) {
                withBid.setExpressViewAcceptedSize(728.0f, 90.0f);
            } else if (i == 2) {
                withBid.setExpressViewAcceptedSize(300.0f, 250.0f);
            } else {
                withBid.setExpressViewAcceptedSize(320.0f, 50.0f);
            }
            this.loadListener = new LoadListener(this, unifiedBannerAdCallback);
            TTAdNative createAdNative = TTAdSdk.getAdManager().createAdNative(contextProvider.getApplicationContext());
            this.ttAdNative = createAdNative;
            createAdNative.loadBannerExpressAd(withBid.build(), this.loadListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.bidmachine.ads.networks.pangle.PangleBannerAd$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$bidmachine$banner$BannerSize;

        static {
            int[] iArr = new int[BannerSize.values().length];
            $SwitchMap$io$bidmachine$banner$BannerSize = iArr;
            try {
                iArr[BannerSize.Size_728x90.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$bidmachine$banner$BannerSize[BannerSize.Size_300x250.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    void prepareToShow(TTNativeExpressAd tTNativeExpressAd, UnifiedBannerAdCallback unifiedBannerAdCallback) {
        this.ttNativeExpressAd = tTNativeExpressAd;
        InteractionListener interactionListener = new InteractionListener(unifiedBannerAdCallback);
        this.interactionlistener = interactionListener;
        tTNativeExpressAd.setExpressInteractionListener(interactionListener);
        tTNativeExpressAd.render();
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void onDestroy() {
        this.ttAdNative = null;
        this.loadListener = null;
        this.interactionlistener = null;
        TTNativeExpressAd tTNativeExpressAd = this.ttNativeExpressAd;
        if (tTNativeExpressAd != null) {
            tTNativeExpressAd.setExpressInteractionListener((TTNativeExpressAd.ExpressAdInteractionListener) null);
            this.ttNativeExpressAd.destroy();
            this.ttNativeExpressAd = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class LoadListener implements TTAdNative.NativeExpressAdListener {
        private final UnifiedBannerAdCallback callback;
        private final PangleBannerAd pangleBannerAd;

        public LoadListener(PangleBannerAd pangleBannerAd, UnifiedBannerAdCallback unifiedBannerAdCallback) {
            this.pangleBannerAd = pangleBannerAd;
            this.callback = unifiedBannerAdCallback;
        }

        public void onNativeExpressAdLoad(List<TTNativeExpressAd> list) {
            if (list == null || list.size() == 0) {
                return;
            }
            for (TTNativeExpressAd tTNativeExpressAd : list) {
                if (tTNativeExpressAd != null) {
                    this.pangleBannerAd.prepareToShow(tTNativeExpressAd, this.callback);
                    return;
                }
            }
        }

        public void onError(int i, String str) {
            this.callback.onAdLoadFailed(BMError.noFill());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class InteractionListener implements TTNativeExpressAd.ExpressAdInteractionListener {
        private final UnifiedBannerAdCallback callback;

        public void onAdShow(View view, int i) {
        }

        public InteractionListener(UnifiedBannerAdCallback unifiedBannerAdCallback) {
            this.callback = unifiedBannerAdCallback;
        }

        public void onRenderSuccess(View view, float f2, float f3) {
            this.callback.onAdLoaded(view);
        }

        public void onRenderFail(View view, String str, int i) {
            this.callback.onAdLoadFailed(BMError.noFill());
        }

        public void onAdClicked(View view, int i) {
            this.callback.onAdClicked();
        }
    }
}

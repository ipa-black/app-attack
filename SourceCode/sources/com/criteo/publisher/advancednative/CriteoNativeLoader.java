package com.criteo.publisher.advancednative;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.criteo.publisher.Bid;
import com.criteo.publisher.CriteoErrorCode;
import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.model.NativeAdUnit;
import com.criteo.publisher.model.s;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public class CriteoNativeLoader {
    final NativeAdUnit adUnit;
    private final CriteoNativeAdListener listener;
    private final com.criteo.publisher.logging.g logger;
    private final CriteoNativeRenderer publisherRenderer;
    private CriteoNativeRenderer renderer;

    public CriteoNativeLoader(CriteoNativeAdListener criteoNativeAdListener, CriteoNativeRenderer criteoNativeRenderer) {
        this(null, criteoNativeAdListener, criteoNativeRenderer);
    }

    public CriteoNativeLoader(NativeAdUnit nativeAdUnit, CriteoNativeAdListener criteoNativeAdListener, CriteoNativeRenderer criteoNativeRenderer) {
        com.criteo.publisher.logging.g b2 = com.criteo.publisher.logging.h.b(getClass());
        this.logger = b2;
        this.adUnit = nativeAdUnit;
        this.listener = new k(criteoNativeAdListener, new WeakReference(this));
        this.publisherRenderer = criteoNativeRenderer;
        b2.a(m.c(nativeAdUnit));
    }

    public static void setImageLoader(ImageLoader imageLoader) {
        getImageLoaderHolder().a(imageLoader);
    }

    public View createEmptyNativeView(Context context, ViewGroup viewGroup) {
        return getRenderer().createNativeView(context, viewGroup);
    }

    public void loadAd() {
        loadAd(new ContextData());
    }

    public void loadAd(ContextData contextData) {
        try {
            doLoad(contextData);
        } catch (Throwable th) {
            com.criteo.publisher.n0.o.a(th);
        }
    }

    private void doLoad(ContextData contextData) {
        this.logger.a(m.e(this));
        getIntegrationRegistry().a(com.criteo.publisher.i0.a.STANDALONE);
        getBidManager().a(this.adUnit, contextData, new a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements com.criteo.publisher.d {
        a() {
        }

        @Override // com.criteo.publisher.d
        public void a(s sVar) {
            CriteoNativeLoader.this.handleNativeAssets(sVar.g());
        }

        @Override // com.criteo.publisher.d
        public void a() {
            CriteoNativeLoader.this.handleNativeAssets(null);
        }
    }

    public void loadAd(Bid bid) {
        try {
            doLoad(bid);
        } catch (Throwable th) {
            com.criteo.publisher.n0.o.a(th);
        }
    }

    private void doLoad(Bid bid) {
        this.logger.a(m.a(this, bid));
        getIntegrationRegistry().a(com.criteo.publisher.i0.a.IN_HOUSE);
        handleNativeAssets(bid == null ? null : bid.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleNativeAssets(com.criteo.publisher.model.b0.n nVar) {
        if (nVar == null) {
            notifyForFailureAsync();
        } else {
            notifyForAdAsync(getNativeAdMapper().a(nVar, new WeakReference<>(this.listener), getRenderer()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(CriteoNativeAd criteoNativeAd) {
        this.listener.onAdReceived(criteoNativeAd);
    }

    private void notifyForAdAsync(final CriteoNativeAd criteoNativeAd) {
        getUiThreadExecutor().a(new Runnable() { // from class: com.criteo.publisher.advancednative.CriteoNativeLoader$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                CriteoNativeLoader.this.a(criteoNativeAd);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        this.listener.onAdFailedToReceive(CriteoErrorCode.ERROR_CODE_NO_FILL);
    }

    private void notifyForFailureAsync() {
        getUiThreadExecutor().a(new Runnable() { // from class: com.criteo.publisher.advancednative.CriteoNativeLoader$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                CriteoNativeLoader.this.a();
            }
        });
    }

    private CriteoNativeRenderer getRenderer() {
        if (this.renderer == null) {
            this.renderer = new AdChoiceOverlayNativeRenderer(this.publisherRenderer, getAdChoiceOverlay());
        }
        return this.renderer;
    }

    private l getNativeAdMapper() {
        return com.criteo.publisher.s.c().Q0();
    }

    private com.criteo.publisher.e0.c getUiThreadExecutor() {
        return com.criteo.publisher.s.c().c1();
    }

    private com.criteo.publisher.e getBidManager() {
        return com.criteo.publisher.s.c().k0();
    }

    private b getAdChoiceOverlay() {
        return com.criteo.publisher.s.c().b0();
    }

    private static h getImageLoaderHolder() {
        return com.criteo.publisher.s.c().D0();
    }

    private com.criteo.publisher.i0.c getIntegrationRegistry() {
        return com.criteo.publisher.s.c().F0();
    }
}

package com.criteo.publisher.m0;

import com.criteo.publisher.CriteoErrorCode;
import com.criteo.publisher.CriteoInterstitial;
import com.criteo.publisher.CriteoInterstitialAdListener;
import com.criteo.publisher.logging.g;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.p;
import com.criteo.publisher.x;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: InterstitialListenerNotifier.kt */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private final g f9023a;

    /* renamed from: b  reason: collision with root package name */
    private final CriteoInterstitial f9024b;

    /* renamed from: c  reason: collision with root package name */
    private final Reference<CriteoInterstitialAdListener> f9025c;

    /* renamed from: d  reason: collision with root package name */
    private final com.criteo.publisher.e0.c f9026d;

    public d(CriteoInterstitial interstitial, Reference<CriteoInterstitialAdListener> listenerRef, com.criteo.publisher.e0.c runOnUiThreadExecutor) {
        Intrinsics.checkParameterIsNotNull(interstitial, "interstitial");
        Intrinsics.checkParameterIsNotNull(listenerRef, "listenerRef");
        Intrinsics.checkParameterIsNotNull(runOnUiThreadExecutor, "runOnUiThreadExecutor");
        this.f9024b = interstitial;
        this.f9025c = listenerRef;
        this.f9026d = runOnUiThreadExecutor;
        g b2 = h.b(getClass());
        Intrinsics.checkExpressionValueIsNotNull(b2, "LoggerFactory.getLogger(javaClass)");
        this.f9023a = b2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public d(CriteoInterstitial interstitial, CriteoInterstitialAdListener criteoInterstitialAdListener, com.criteo.publisher.e0.c runOnUiThreadExecutor) {
        this(interstitial, new WeakReference(criteoInterstitialAdListener), runOnUiThreadExecutor);
        Intrinsics.checkParameterIsNotNull(interstitial, "interstitial");
        Intrinsics.checkParameterIsNotNull(runOnUiThreadExecutor, "runOnUiThreadExecutor");
    }

    /* compiled from: InterstitialListenerNotifier.kt */
    /* loaded from: classes2.dex */
    public static final class a extends x {

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ p f9028d;

        a(p pVar) {
            this.f9028d = pVar;
        }

        @Override // com.criteo.publisher.x
        public void a() {
            CriteoInterstitialAdListener criteoInterstitialAdListener = (CriteoInterstitialAdListener) d.this.f9025c.get();
            if (criteoInterstitialAdListener != null) {
                d.this.a(criteoInterstitialAdListener, this.f9028d);
            }
        }
    }

    public void a(p code) {
        Intrinsics.checkParameterIsNotNull(code, "code");
        a(this.f9023a, code);
        this.f9026d.a(new a(code));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CriteoInterstitialAdListener criteoInterstitialAdListener, p pVar) {
        switch (c.f9022a[pVar.ordinal()]) {
            case 1:
                criteoInterstitialAdListener.onAdReceived(this.f9024b);
                return;
            case 2:
                criteoInterstitialAdListener.onAdFailedToReceive(CriteoErrorCode.ERROR_CODE_NO_FILL);
                return;
            case 3:
                criteoInterstitialAdListener.onAdFailedToReceive(CriteoErrorCode.ERROR_CODE_NETWORK_ERROR);
                return;
            case 4:
                criteoInterstitialAdListener.onAdOpened();
                return;
            case 5:
                criteoInterstitialAdListener.onAdClosed();
                return;
            case 6:
                criteoInterstitialAdListener.onAdClicked();
                criteoInterstitialAdListener.onAdLeftApplication();
                return;
            default:
                return;
        }
    }

    private void a(g gVar, p pVar) {
        if (pVar == p.VALID) {
            gVar.a(com.criteo.publisher.j0.b.b(this.f9024b));
        } else if (pVar == p.INVALID || pVar == p.INVALID_CREATIVE) {
            gVar.a(com.criteo.publisher.j0.b.a(this.f9024b));
        }
    }
}

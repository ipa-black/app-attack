package com.appodeal.ads;

import com.appodeal.ads.l;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.n;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.utils.Log;
import org.json.JSONException;
/* loaded from: classes.dex */
public final class k implements NetworkInitializationListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ l.a f6753a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ r f6754b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f6755c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ ContextProvider f6756d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ l f6757e;

    public k(l lVar, n.a aVar, r rVar, int i, com.appodeal.ads.context.b bVar) {
        this.f6757e = lVar;
        this.f6753a = aVar;
        this.f6754b = rVar;
        this.f6755c = i;
        this.f6756d = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ContextProvider contextProvider, Object obj, l.a aVar, r rVar) {
        try {
            l lVar = this.f6757e;
            lVar.a(contextProvider, lVar.f6830g, obj, lVar.f6831h, lVar.f6829f);
        } catch (Throwable th) {
            o oVar = n.this.f7053a;
            oVar.getClass();
            Log.log(th);
            v vVar = (v) oVar;
            vVar.f7861f.f7689d.a((b0<AdObjectType, AdRequestType, ?>) vVar.f7860e, (r) vVar.f7859d, th instanceof JSONException ? LoadingError.IncorrectAdunit : LoadingError.InternalError);
        }
    }

    @Override // com.appodeal.ads.NetworkInitializationListener
    public final void onInitializationFailed(final LoadingError loadingError) {
        final l.a aVar = this.f6753a;
        final r rVar = this.f6754b;
        h5.f6714a.post(new Runnable() { // from class: com.appodeal.ads.k$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                l.a aVar2 = l.a.this;
                r rVar2 = rVar;
                ((n.a) aVar2).a(loadingError);
            }
        });
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.appodeal.ads.unified.UnifiedAd, UnifiedAdType extends com.appodeal.ads.unified.UnifiedAd] */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.appodeal.ads.unified.UnifiedAdParams, UnifiedAdParamsType extends com.appodeal.ads.unified.UnifiedAdParams] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.appodeal.ads.unified.UnifiedAdCallback, UnifiedAdCallbackType extends com.appodeal.ads.unified.UnifiedAdCallback] */
    @Override // com.appodeal.ads.NetworkInitializationListener
    public final void onInitializationFinished(final Object obj) {
        Runnable runnable;
        if (this.f6757e.f6826c.getRequestResult() == null) {
            l lVar = this.f6757e;
            lVar.f6829f = lVar.a(lVar.f6825b);
            l lVar2 = this.f6757e;
            if (lVar2.f6829f == 0) {
                final l.a aVar = this.f6753a;
                final r rVar = this.f6754b;
                runnable = new Runnable() { // from class: com.appodeal.ads.k$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        l.a aVar2 = l.a.this;
                        r rVar2 = rVar;
                        ((n.a) aVar2).a(LoadingError.AdTypeNotSupportedInAdapter);
                    }
                };
            } else {
                lVar2.f6830g = lVar2.a(this.f6755c);
                l lVar3 = this.f6757e;
                lVar3.f6831h = lVar3.c();
                final ContextProvider contextProvider = this.f6756d;
                final l.a aVar2 = this.f6753a;
                final r rVar2 = this.f6754b;
                runnable = new Runnable() { // from class: com.appodeal.ads.k$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        k.this.a(contextProvider, obj, aVar2, rVar2);
                    }
                };
            }
            h5.f6714a.post(runnable);
        }
    }
}

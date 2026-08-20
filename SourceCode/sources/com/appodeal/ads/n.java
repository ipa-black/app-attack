package com.appodeal.ads;

import com.appodeal.ads.l;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.utils.Log;
import org.json.JSONException;
/* loaded from: classes.dex */
public final class n implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ o f7053a;

    /* loaded from: classes.dex */
    public class a implements l.a {
        public a() {
        }

        public final void a(LoadingError loadingError) {
            v vVar = (v) n.this.f7053a;
            vVar.f7861f.f7689d.a((b0<AdObjectType, AdRequestType, ?>) vVar.f7860e, (r) vVar.f7859d, loadingError);
        }
    }

    public n(o oVar) {
        this.f7053a = oVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        try {
            o oVar = this.f7053a;
            oVar.f7260b.a(com.appodeal.ads.context.b.f6583b, oVar.f7259a, oVar.f7261c, new a());
        } catch (Throwable th) {
            o oVar2 = this.f7053a;
            oVar2.getClass();
            Log.log(th);
            v vVar = (v) oVar2;
            vVar.f7861f.f7689d.a((b0<AdObjectType, AdRequestType, ?>) vVar.f7860e, (r) vVar.f7859d, th instanceof JSONException ? LoadingError.IncorrectAdunit : LoadingError.InternalError);
        }
    }
}

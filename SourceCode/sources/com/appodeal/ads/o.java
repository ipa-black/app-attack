package com.appodeal.ads;

import com.appodeal.ads.l;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.r;
import com.appodeal.ads.utils.Log;
import org.json.JSONException;
/* loaded from: classes.dex */
public abstract class o<AdRequestType extends r, AdObjectType extends l> implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final AdRequestType f7259a;

    /* renamed from: b  reason: collision with root package name */
    public final AdObjectType f7260b;

    /* renamed from: c  reason: collision with root package name */
    public int f7261c;

    public o(AdRequestType adrequesttype, AdObjectType adobjecttype, int i) {
        this.f7259a = adrequesttype;
        this.f7260b = adobjecttype;
        this.f7261c = i;
    }

    public abstract void a();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        try {
            a();
            h5.f6714a.post(new n(this));
        } catch (Exception e2) {
            Log.log(e2);
            v vVar = (v) this;
            vVar.f7861f.f7689d.a((b0<AdObjectType, AdRequestType, ?>) vVar.f7860e, (r) vVar.f7859d, e2 instanceof JSONException ? LoadingError.IncorrectAdunit : LoadingError.InternalError);
        }
    }
}

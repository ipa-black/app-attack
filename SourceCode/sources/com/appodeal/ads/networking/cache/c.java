package com.appodeal.ads.networking.cache;

import com.appodeal.ads.utils.Log;
import com.appodeal.ads.x0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class c implements x0 {

    /* renamed from: a  reason: collision with root package name */
    public final String f7238a;

    /* renamed from: b  reason: collision with root package name */
    public final com.appodeal.ads.storage.a f7239b;

    public /* synthetic */ c(com.appodeal.ads.storage.a aVar) {
        this("init_response", aVar);
    }

    public c(String key, com.appodeal.ads.storage.a keyValueStorage) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(keyValueStorage, "keyValueStorage");
        this.f7238a = key;
        this.f7239b = keyValueStorage;
    }

    @Override // com.appodeal.ads.x0
    public final JSONObject a() {
        try {
            JSONObject component1 = this.f7239b.a(this.f7238a).component1();
            if (component1 == null) {
                this.f7239b.c(this.f7238a);
                return null;
            }
            return component1;
        } catch (Throwable th) {
            Log.log(th);
            return null;
        }
    }

    @Override // com.appodeal.ads.x0
    public final void a(JSONObject jSONObject) {
        com.appodeal.ads.storage.a aVar = this.f7239b;
        String str = this.f7238a;
        String jSONObject2 = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject2, "value.toString()");
        aVar.a(Integer.MAX_VALUE, System.currentTimeMillis(), str, jSONObject2);
    }
}

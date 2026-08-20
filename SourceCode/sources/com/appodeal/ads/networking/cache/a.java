package com.appodeal.ads.networking.cache;

import com.appodeal.ads.storage.o;
import com.appodeal.ads.utils.Log;
import com.appodeal.ads.x0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class a implements x0 {

    /* renamed from: a  reason: collision with root package name */
    public final String f7234a;

    /* renamed from: b  reason: collision with root package name */
    public final com.appodeal.ads.storage.a f7235b;

    public /* synthetic */ a(o oVar) {
        this("config_response", oVar);
    }

    public a(String key, o keyValueStorage) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(keyValueStorage, "keyValueStorage");
        this.f7234a = key;
        this.f7235b = keyValueStorage;
    }

    @Override // com.appodeal.ads.x0
    public final JSONObject a() {
        try {
            JSONObject component1 = this.f7235b.a(this.f7234a).component1();
            if (component1 == null) {
                this.f7235b.c(this.f7234a);
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
        com.appodeal.ads.storage.a aVar = this.f7235b;
        String str = this.f7234a;
        String jSONObject2 = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject2, "value.toString()");
        aVar.a(Integer.MAX_VALUE, System.currentTimeMillis(), str, jSONObject2);
    }
}

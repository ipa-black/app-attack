package com.appodeal.ads.networking.cache;

import com.appodeal.ads.storage.o;
import com.appodeal.ads.utils.Log;
import com.appodeal.ads.x0;
import kotlin.Triple;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class b implements x0 {

    /* renamed from: a  reason: collision with root package name */
    public final String f7236a;

    /* renamed from: b  reason: collision with root package name */
    public final com.appodeal.ads.storage.a f7237b;

    public b(String key, o keyValueStorage) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(keyValueStorage, "keyValueStorage");
        this.f7236a = key;
        this.f7237b = keyValueStorage;
    }

    @Override // com.appodeal.ads.x0
    public final JSONObject a() {
        try {
            Triple<JSONObject, Long, Integer> a2 = this.f7237b.a(this.f7236a);
            JSONObject component1 = a2.component1();
            long longValue = a2.component2().longValue();
            int intValue = a2.component3().intValue();
            if (component1 == null || System.currentTimeMillis() - longValue > intValue) {
                this.f7237b.c(this.f7236a);
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
        long currentTimeMillis = System.currentTimeMillis();
        int optInt = jSONObject.optInt("wst", 86400000);
        com.appodeal.ads.storage.a aVar = this.f7237b;
        String str = this.f7236a;
        String jSONObject2 = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject2, "value.toString()");
        aVar.a(optInt, currentTimeMillis, str, jSONObject2);
    }
}

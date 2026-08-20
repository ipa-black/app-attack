package com.ironsource.sdk.a;

import android.util.Log;
import com.ironsource.sdk.a.f;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static d f11506a;

    /* renamed from: b  reason: collision with root package name */
    private com.ironsource.a.b f11507b;

    private d() {
    }

    private static d a() {
        if (f11506a == null) {
            f11506a = new d();
        }
        return f11506a;
    }

    public static void a(com.ironsource.a.a aVar, b bVar) {
        if (aVar != null) {
            try {
                a().f11507b = new com.ironsource.a.b(aVar, bVar);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static void a(f.a aVar) {
        a(aVar, new HashMap());
    }

    public static void a(f.a aVar, Map<String, Object> map) {
        com.ironsource.a.b bVar = a().f11507b;
        if (bVar == null) {
            Log.d("sdk5Events", "logEvent failed eventsTracker doesn't exist");
            return;
        }
        if (map != null) {
            map.put("eventid", Integer.valueOf(aVar.f11518b));
        }
        bVar.a(aVar.f11517a, map);
    }
}

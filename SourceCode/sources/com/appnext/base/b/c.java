package com.appnext.base.b;

import android.os.PersistableBundle;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class c {
    public static final String DATA = "data";
    public static final String KEY = "key";
    public static final String STATUS = "status";
    public static final String eO = "cycle";
    public static final String eP = "cycle_type";
    public static final String eQ = "sample";
    public static final String eR = "sample_type";
    public static final String eS = "service_key";

    public static PersistableBundle e(com.appnext.base.a.b.c cVar) {
        PersistableBundle persistableBundle = new PersistableBundle();
        try {
            persistableBundle.putString("key", cVar.getKey() != null ? cVar.getKey() : "");
            persistableBundle.putString(eO, cVar.an() != null ? cVar.an() : "");
            persistableBundle.putString(eP, cVar.ao() != null ? cVar.ao() : "");
            cVar.al();
            persistableBundle.putString(eQ, cVar.al());
            persistableBundle.putString(eR, cVar.am() != null ? cVar.am() : "");
            persistableBundle.putString("service_key", cVar.ap() != null ? cVar.ap() : "");
            persistableBundle.putString("status", cVar.ak() != null ? cVar.ak() : "");
            if (cVar.aq() != null) {
                persistableBundle.putString("data", cVar.aq().toString());
            }
            JSONObject aq = cVar.aq();
            if (aq != null) {
                persistableBundle.putString("data", aq.toString());
            }
        } catch (Throwable th) {
            th.getMessage();
        }
        return persistableBundle;
    }

    public static com.appnext.base.a.b.c b(PersistableBundle persistableBundle) {
        if (persistableBundle == null) {
            return null;
        }
        String string = persistableBundle.getString("key", "");
        String string2 = persistableBundle.getString(eO, "");
        String string3 = persistableBundle.getString(eP, "");
        return new com.appnext.base.a.b.c(persistableBundle.getString("status", ""), persistableBundle.getString(eQ, ""), persistableBundle.getString(eR, ""), string2, string3, string, persistableBundle.getString("service_key", ""), persistableBundle.getString("data", null));
    }

    public static com.appnext.base.a.b.c c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            String string = jSONObject.has("key") ? jSONObject.getString("key") : null;
            String string2 = jSONObject.has(eO) ? jSONObject.getString(eO) : null;
            String string3 = jSONObject.has(eP) ? jSONObject.getString(eP) : null;
            return new com.appnext.base.a.b.c(jSONObject.has("status") ? jSONObject.getString("status") : null, jSONObject.has(eQ) ? jSONObject.getString(eQ) : null, jSONObject.has(eR) ? jSONObject.getString(eR) : null, string2, string3, string, jSONObject.has("service_key") ? jSONObject.getString("service_key") : null, jSONObject.has("data") ? jSONObject.getString("data") : null);
        } catch (Throwable unused) {
            return null;
        }
    }
}

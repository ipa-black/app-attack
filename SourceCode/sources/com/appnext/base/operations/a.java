package com.appnext.base.operations;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.work.PeriodicWorkRequest;
import com.appnext.base.a;
import com.appnext.base.b.d;
import com.appnext.base.b.i;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public abstract class a {
    private static final String em = "collectedData";
    private static final String en = "collectedDataType";
    private static final String eo = "lastCollectedData";
    private InterfaceC0092a el;
    protected com.appnext.base.a.b.c ep;

    /* renamed from: com.appnext.base.operations.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0092a {
        void aH();

        void b(com.appnext.base.a aVar);
    }

    protected static boolean az() {
        return true;
    }

    protected static HashMap<Pair<String, String>, JSONArray> c(HashMap<Pair<String, String>, JSONArray> hashMap) {
        return hashMap;
    }

    public static void cancel() {
    }

    public abstract void aC();

    public abstract void aD();

    public boolean aF() {
        return true;
    }

    protected List<com.appnext.base.a.b.b> b(List<com.appnext.base.a.b.b> list) {
        return list;
    }

    protected abstract List<com.appnext.base.a.b.b> getData();

    protected abstract String getKey();

    public a(com.appnext.base.a.b.c cVar, Bundle bundle, Object obj) {
        this.ep = cVar;
    }

    public final void a(InterfaceC0092a interfaceC0092a) {
        this.el = interfaceC0092a;
    }

    protected final long a(List<com.appnext.base.a.b.b> list) {
        try {
            JSONArray a2 = com.appnext.base.b.b.a(list, true);
            if (a2 == null || a2.length() <= 0) {
                return -1L;
            }
            return com.appnext.base.a.a.X().aa().a(a2);
        } catch (Throwable unused) {
            return -1L;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void av() {
        com.appnext.base.a aVar;
        Map<String, String> ax;
        JSONArray d2;
        try {
            i.aR().putLong(this.ep.getKey() + i.fz, Long.valueOf(System.currentTimeMillis()).longValue());
            List<com.appnext.base.a.b.b> data = getData();
            if (data != null && !data.isEmpty()) {
                a(data);
            }
            String key = getKey();
            if (data != null && (d2 = d(data)) != null) {
                i.aR().putString(A(key), d2.toString());
            }
            String key2 = this.ep.getKey();
            try {
                i.aR().putLong(key2 + i.fy, System.currentTimeMillis());
                String str = key2 + i.fA;
                i.aR().putInt(str, i.aR().getInt(str, 0) + 1);
            } catch (Throwable unused) {
            }
            if (aA() && (ax = ax()) != null && !ax.isEmpty()) {
                Long valueOf = Long.valueOf(System.currentTimeMillis());
                String key3 = this.ep.getKey();
                Long.valueOf(i.aR().getLong(key3 + i.fz, -1L));
                i.aR().putLong(key3 + i.fz, valueOf.longValue());
                if (!com.appnext.base.b.b.a(key3, ax)) {
                    aVar = new com.appnext.base.a(a.EnumC0090a.NoInternet$1d8b5b4a);
                    a(aVar);
                }
            }
            aVar = null;
            a(aVar);
        } catch (Throwable unused2) {
        }
    }

    private boolean a(Map<String, String> map) {
        Long valueOf = Long.valueOf(System.currentTimeMillis());
        String key = this.ep.getKey();
        Long.valueOf(i.aR().getLong(key + i.fz, -1L));
        i.aR().putLong(key + i.fz, valueOf.longValue());
        return com.appnext.base.b.b.a(key, map);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final com.appnext.base.a.b.c ay() {
        return this.ep;
    }

    private static JSONObject d(com.appnext.base.a.b.b bVar) {
        return com.appnext.base.b.b.a(bVar.ai(), bVar.aj(), d.a.valueOf(bVar.getDataType()));
    }

    public final void a(com.appnext.base.a aVar) {
        b.aI().a(this);
        InterfaceC0092a interfaceC0092a = this.el;
        if (interfaceC0092a != null) {
            if (aVar != null) {
                interfaceC0092a.b(aVar);
            } else {
                interfaceC0092a.aH();
            }
        }
    }

    protected boolean aA() {
        return com.appnext.base.b.b.d(this.ep);
    }

    protected static com.appnext.base.a.c.d aB() {
        return com.appnext.base.a.a.X().aa();
    }

    private void c(List<String> list) {
        if (list.isEmpty()) {
            return;
        }
        com.appnext.base.a.c.b aa = com.appnext.base.a.a.X().aa();
        for (String str : list) {
            aa.u(str);
        }
    }

    public final boolean aE() {
        try {
            if (System.currentTimeMillis() - Long.valueOf(i.aR().getLong(this.ep.getKey() + i.fz, -1L)).longValue() < PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS) {
                return false;
            }
            return aF();
        } catch (Throwable unused) {
            return false;
        }
    }

    protected d.a aG() {
        return d.a.String;
    }

    protected static Date getDate() {
        return new Date();
    }

    private void a(String str, List<com.appnext.base.a.b.b> list) {
        if (list == null) {
            return;
        }
        try {
            JSONArray d2 = d(list);
            if (d2 == null) {
                return;
            }
            i.aR().putString(A(str), d2.toString());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private static String A(String str) {
        return "lastCollectedData_" + str;
    }

    private static JSONArray d(List<com.appnext.base.a.b.b> list) {
        if (list != null) {
            try {
                if (!list.isEmpty()) {
                    JSONArray jSONArray = new JSONArray();
                    for (com.appnext.base.a.b.b bVar : list) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(em, bVar.ai());
                        jSONObject.put(en, bVar.getType());
                        jSONArray.put(jSONObject);
                    }
                    return jSONArray;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return null;
    }

    protected final boolean e(List<com.appnext.base.a.b.b> list) {
        JSONArray d2;
        if (list != null) {
            try {
                if (!list.isEmpty() && (d2 = d(list)) != null) {
                    String jSONArray = d2.toString();
                    String string = i.aR().getString(A(getKey()), null);
                    if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(jSONArray)) {
                        if (string.equals(jSONArray)) {
                            return false;
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return true;
    }

    protected final List<com.appnext.base.a.b.b> aw() {
        return com.appnext.base.a.a.X().aa().w(this.ep.getKey());
    }

    protected final Map<String, String> ax() {
        List<com.appnext.base.a.b.b> b2;
        List<com.appnext.base.a.b.b> w = com.appnext.base.a.a.X().aa().w(this.ep.getKey());
        if (w == null || w.isEmpty() || (b2 = b(w)) == null || b2.isEmpty()) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (com.appnext.base.a.b.b bVar : b2) {
            Pair pair = new Pair(bVar.ah(), bVar.getType());
            if (hashMap.containsKey(pair)) {
                ((JSONArray) hashMap.get(pair)).put(d(bVar));
            } else {
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(d(bVar));
                hashMap.put(pair, jSONArray);
            }
        }
        HashMap hashMap2 = new HashMap();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : hashMap.entrySet()) {
            String str = (String) ((Pair) entry.getKey()).second;
            hashMap2.put(str, ((JSONArray) entry.getValue()).toString());
            arrayList.add(str);
        }
        String key = this.ep.getKey();
        if (key != null) {
            try {
                i.aR().putInt(key + i.fA, 0);
            } catch (Throwable unused) {
            }
        }
        c(arrayList);
        com.appnext.base.b.b.F(this.ep.getKey());
        return hashMap2;
    }
}

package com.applovin.impl.sdk.c;

import android.content.Context;
import android.content.SharedPreferences;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.impl.sdk.v;
import com.applovin.mediation.MaxAdFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    protected final n f5603a;

    /* renamed from: b  reason: collision with root package name */
    protected final Context f5604b;

    /* renamed from: c  reason: collision with root package name */
    protected final SharedPreferences f5605c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, Object> f5606d = CollectionUtils.map();

    /* renamed from: e  reason: collision with root package name */
    private final Object f5607e = new Object();

    public c(n nVar) {
        this.f5603a = nVar;
        Context P = nVar.P();
        this.f5604b = P;
        this.f5605c = P.getSharedPreferences("com.applovin.sdk.1", 0);
        try {
            Class.forName(b.class.getName());
            Class.forName(a.class.getName());
        } catch (Throwable unused) {
        }
        b();
    }

    private static Object a(String str, JSONObject jSONObject, Object obj) throws JSONException {
        if (obj instanceof Boolean) {
            return Boolean.valueOf(jSONObject.getBoolean(str));
        }
        if (obj instanceof Float) {
            return Float.valueOf((float) jSONObject.getDouble(str));
        }
        if (obj instanceof Integer) {
            return Integer.valueOf(jSONObject.getInt(str));
        }
        if (obj instanceof Long) {
            return Long.valueOf(jSONObject.getLong(str));
        }
        if (obj instanceof String) {
            return jSONObject.getString(str);
        }
        throw new RuntimeException("SDK Error: unknown value type: " + obj.getClass());
    }

    private String e() {
        return "com.applovin.sdk." + Utils.shortenKey(this.f5603a.C()) + ".";
    }

    public <T> b<T> a(String str, b<T> bVar) {
        synchronized (this.f5607e) {
            Iterator<b<?>> it = b.c().iterator();
            while (it.hasNext()) {
                b<T> bVar2 = (b<T>) it.next();
                if (bVar2.a().equals(str)) {
                    return bVar2;
                }
            }
            return bVar;
        }
    }

    public <T> T a(b<T> bVar) {
        if (bVar != null) {
            synchronized (this.f5607e) {
                Object obj = this.f5606d.get(bVar.a());
                if (obj == null) {
                    return bVar.b();
                }
                return bVar.a(obj);
            }
        }
        throw new IllegalArgumentException("No setting type specified");
    }

    public void a() {
        String e2 = e();
        synchronized (this.f5607e) {
            SharedPreferences.Editor edit = this.f5605c.edit();
            for (b<?> bVar : b.c()) {
                Object obj = this.f5606d.get(bVar.a());
                if (obj != null) {
                    this.f5603a.a(e2 + bVar.a(), (String) obj, edit);
                }
            }
            edit.apply();
        }
    }

    public <T> void a(b<?> bVar, Object obj) {
        if (bVar == null) {
            throw new IllegalArgumentException("No setting type specified");
        }
        if (obj == null) {
            throw new IllegalArgumentException("No new value specified");
        }
        synchronized (this.f5607e) {
            this.f5606d.put(bVar.a(), obj);
        }
    }

    public void a(JSONObject jSONObject) {
        String str;
        String str2;
        synchronized (this.f5607e) {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (next != null && next.length() > 0) {
                    try {
                        b<Boolean> a2 = a(next, (b) null);
                        if (a2 != null) {
                            Object a3 = a(next, jSONObject, a2.b());
                            this.f5606d.put(a2.a(), a3);
                            if (a2 == b.eC) {
                                this.f5606d.put(b.eD.a(), Long.valueOf(System.currentTimeMillis()));
                            } else if (a2 == b.at) {
                                CollectionUtils.setShouldUseArrayMap(b.at.a(a3).booleanValue());
                            }
                        }
                    } catch (JSONException e2) {
                        e = e2;
                        str = "SettingsManager";
                        str2 = "Unable to parse JSON settingsValues array";
                        v.c(str, str2, e);
                    } catch (Throwable th) {
                        e = th;
                        str = "SettingsManager";
                        str2 = "Unable to convert setting object ";
                        v.c(str, str2, e);
                    }
                }
            }
        }
    }

    public List<String> b(b<String> bVar) {
        return CollectionUtils.explode((String) a(bVar));
    }

    public void b() {
        String e2 = e();
        synchronized (this.f5607e) {
            for (b<?> bVar : b.c()) {
                try {
                    Object a2 = this.f5603a.a(e2 + bVar.a(), null, bVar.b().getClass(), this.f5605c);
                    if (a2 != null) {
                        this.f5606d.put(bVar.a(), a2);
                    }
                } catch (Exception e3) {
                    v.c("SettingsManager", "Unable to load \"" + bVar.a() + "\"", e3);
                }
            }
        }
    }

    public List<MaxAdFormat> c(b<String> bVar) {
        ArrayList arrayList = new ArrayList(6);
        for (String str : b(bVar)) {
            arrayList.add(MaxAdFormat.formatFromString(str));
        }
        return arrayList;
    }

    public void c() {
        synchronized (this.f5607e) {
            this.f5606d.clear();
        }
        this.f5603a.a(this.f5605c);
    }

    public boolean d() {
        return this.f5603a.q().isVerboseLoggingEnabled() || ((Boolean) a(b.ae)).booleanValue();
    }
}

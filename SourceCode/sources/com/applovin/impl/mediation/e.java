package com.applovin.impl.mediation;

import android.app.Activity;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.v;
import com.applovin.mediation.adapter.MaxAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final n f5192a;

    /* renamed from: b  reason: collision with root package name */
    private final v f5193b;

    /* renamed from: c  reason: collision with root package name */
    private final AtomicBoolean f5194c = new AtomicBoolean();

    /* renamed from: d  reason: collision with root package name */
    private final JSONArray f5195d = new JSONArray();

    /* renamed from: e  reason: collision with root package name */
    private final LinkedHashMap<String, Integer> f5196e = new LinkedHashMap<>();

    /* renamed from: f  reason: collision with root package name */
    private final Object f5197f = new Object();

    /* renamed from: g  reason: collision with root package name */
    private List<com.applovin.impl.mediation.a.f> f5198g;

    public e(n nVar) {
        this.f5192a = nVar;
        this.f5193b = nVar.D();
    }

    private List<com.applovin.impl.mediation.a.f> a(JSONArray jSONArray, JSONObject jSONObject) {
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(new com.applovin.impl.mediation.a.f(Collections.EMPTY_MAP, JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null), jSONObject, this.f5192a));
        }
        return arrayList;
    }

    public void a(Activity activity) {
        if (this.f5194c.compareAndSet(false, true)) {
            String str = (String) this.f5192a.a(com.applovin.impl.sdk.c.d.y);
            if (StringUtils.isValidString(str)) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    List<com.applovin.impl.mediation.a.f> a2 = a(JsonUtils.getJSONArray(jSONObject, this.f5192a.N().a() ? "test_mode_auto_init_adapters" : "auto_init_adapters", new JSONArray()), jSONObject);
                    this.f5198g = a2;
                    this.f5192a.V().a((com.applovin.impl.sdk.e.a) new com.applovin.impl.mediation.b.a(a2, activity, this.f5192a));
                } catch (JSONException e2) {
                    if (v.a()) {
                        this.f5193b.b("MediationAdapterInitializationManager", "Failed to parse auto-init adapters JSON", e2);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(com.applovin.impl.mediation.a.f fVar, long j, MaxAdapter.InitializationStatus initializationStatus, String str) {
        boolean z;
        if (initializationStatus == null || initializationStatus == MaxAdapter.InitializationStatus.INITIALIZING) {
            return;
        }
        synchronized (this.f5197f) {
            z = !a(fVar);
            if (z) {
                this.f5196e.put(fVar.R(), Integer.valueOf(initializationStatus.getCode()));
                JSONObject jSONObject = new JSONObject();
                JsonUtils.putString(jSONObject, "class", fVar.R());
                JsonUtils.putString(jSONObject, "init_status", String.valueOf(initializationStatus.getCode()));
                JsonUtils.putString(jSONObject, "error_message", JSONObject.quote(str));
                this.f5195d.put(jSONObject);
            }
        }
        if (z) {
            this.f5192a.a(fVar);
            this.f5192a.H().processAdapterInitializationPostback(fVar, j, initializationStatus, str);
            this.f5192a.aj().a(initializationStatus, fVar.R());
        }
    }

    public void a(com.applovin.impl.mediation.a.f fVar, Activity activity) {
        a(fVar, activity, null);
    }

    public void a(com.applovin.impl.mediation.a.f fVar, Activity activity, Runnable runnable) {
        List<com.applovin.impl.mediation.a.f> list;
        if (this.f5192a.N().a() && (list = this.f5198g) != null) {
            Iterator<com.applovin.impl.mediation.a.f> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    fVar = null;
                    break;
                }
                com.applovin.impl.mediation.a.f next = it.next();
                if (next.R().equals(fVar.R())) {
                    fVar = next;
                    break;
                }
            }
        }
        if (fVar == null) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        g a2 = this.f5192a.F().a(fVar);
        if (a2 != null) {
            if (v.a()) {
                this.f5193b.c("MediationAdapterInitializationManager", "Initializing adapter " + fVar);
            }
            a2.a(MaxAdapterParametersImpl.a(fVar), activity, runnable);
        } else if (runnable != null) {
            runnable.run();
        }
    }

    public void a(MaxAdapter.InitializationStatus initializationStatus) {
        synchronized (this.f5197f) {
            this.f5196e.put("com.applovin.mediation.adapters.AppLovinMediationAdapter", Integer.valueOf(initializationStatus.getCode()));
        }
        this.f5192a.aj().a(initializationStatus, "com.applovin.mediation.adapters.AppLovinMediationAdapter");
    }

    public boolean a() {
        return this.f5194c.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(com.applovin.impl.mediation.a.f fVar) {
        boolean containsKey;
        synchronized (this.f5197f) {
            containsKey = this.f5196e.containsKey(fVar.R());
        }
        return containsKey;
    }

    public LinkedHashMap<String, Integer> b() {
        LinkedHashMap<String, Integer> linkedHashMap;
        synchronized (this.f5197f) {
            linkedHashMap = this.f5196e;
        }
        return linkedHashMap;
    }

    public JSONArray c() {
        JSONArray jSONArray;
        synchronized (this.f5197f) {
            jSONArray = this.f5195d;
        }
        return jSONArray;
    }
}

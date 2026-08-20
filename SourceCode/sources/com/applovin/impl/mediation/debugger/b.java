package com.applovin.impl.mediation.debugger;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import com.applovin.impl.mediation.debugger.b.c.b;
import com.applovin.impl.mediation.debugger.c.c;
import com.applovin.impl.sdk.e.o;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.network.b;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.v;
import com.applovin.mediation.MaxDebuggerActivity;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class b implements b.c<JSONObject> {

    /* renamed from: a  reason: collision with root package name */
    private static WeakReference<MaxDebuggerActivity> f4918a;

    /* renamed from: b  reason: collision with root package name */
    private static final AtomicBoolean f4919b = new AtomicBoolean();

    /* renamed from: c  reason: collision with root package name */
    private final n f4920c;

    /* renamed from: d  reason: collision with root package name */
    private final v f4921d;

    /* renamed from: e  reason: collision with root package name */
    private final Context f4922e;

    /* renamed from: f  reason: collision with root package name */
    private final com.applovin.impl.mediation.debugger.ui.b.b f4923f;
    private boolean i;
    private boolean k;
    private Map<String, List<?>> l;
    private final a m;

    /* renamed from: g  reason: collision with root package name */
    private final Map<String, com.applovin.impl.mediation.debugger.b.c.b> f4924g = CollectionUtils.map();

    /* renamed from: h  reason: collision with root package name */
    private final AtomicBoolean f4925h = new AtomicBoolean();
    private int j = 2;

    public b(n nVar) {
        this.f4920c = nVar;
        this.f4921d = nVar.D();
        Context P = nVar.P();
        this.f4922e = P;
        com.applovin.impl.mediation.debugger.ui.b.b bVar = new com.applovin.impl.mediation.debugger.ui.b.b(P);
        this.f4923f = bVar;
        this.m = new a(nVar, bVar);
    }

    private com.applovin.impl.mediation.debugger.b.b.b a(JSONObject jSONObject) {
        return new com.applovin.impl.mediation.debugger.b.b.b(JsonUtils.getString(jSONObject, "required_app_ads_txt_entry", ""));
    }

    private List<com.applovin.impl.mediation.debugger.b.a.a> a(List<com.applovin.impl.mediation.debugger.b.a.a> list, n nVar) {
        List<String> initializationAdUnitIds = nVar.q().getInitializationAdUnitIds();
        if (initializationAdUnitIds == null || initializationAdUnitIds.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(initializationAdUnitIds.size());
        for (com.applovin.impl.mediation.debugger.b.a.a aVar : list) {
            if (initializationAdUnitIds.contains(aVar.a())) {
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }

    private List<com.applovin.impl.mediation.debugger.b.c.b> a(JSONObject jSONObject, n nVar) {
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "networks", new JSONArray());
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            if (jSONObject2 != null) {
                com.applovin.impl.mediation.debugger.b.c.b bVar = new com.applovin.impl.mediation.debugger.b.c.b(jSONObject2, nVar);
                arrayList.add(bVar);
                this.f4924g.put(bVar.m(), bVar);
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private List<com.applovin.impl.mediation.debugger.b.a.a> a(JSONObject jSONObject, List<com.applovin.impl.mediation.debugger.b.c.b> list, n nVar) {
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "ad_units", new JSONArray());
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            if (jSONObject2 != null) {
                arrayList.add(new com.applovin.impl.mediation.debugger.b.a.a(jSONObject2, this.f4924g, nVar));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private void a(List<com.applovin.impl.mediation.debugger.b.c.b> list) {
        for (com.applovin.impl.mediation.debugger.b.c.b bVar : list) {
            if (bVar.e() && bVar.a() == b.a.INVALID_INTEGRATION) {
                AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.debugger.b.2
                    @Override // java.lang.Runnable
                    public void run() {
                        Activity ar = b.this.f4920c.ar();
                        if (ar == null || ar.isFinishing()) {
                            v.i("AppLovinSdk", "MAX Mediation Debugger has flagged several errors in your build. Make sure to resolve these before you go live.\n\nNote that this log will only be shown in your development builds. Live apps will not be affected.");
                        } else {
                            new AlertDialog.Builder(ar).setTitle("Review Integration Errors").setMessage("Looks like MAX Mediation Debugger flagged several errors in your build. Make sure to resolve these before you go live.\n\nNote that this prompt will only be shown in your development builds. Live apps will not be affected.").setPositiveButton("Show Mediation Debugger", new DialogInterface.OnClickListener() { // from class: com.applovin.impl.mediation.debugger.b.2.1
                                @Override // android.content.DialogInterface.OnClickListener
                                public void onClick(DialogInterface dialogInterface, int i) {
                                    b.this.c();
                                }
                            }).setNegativeButton("DISMISS", (DialogInterface.OnClickListener) null).create().show();
                        }
                    }
                }, TimeUnit.SECONDS.toMillis(2L));
                return;
            }
        }
    }

    private void f() {
        this.f4920c.ai().a(new com.applovin.impl.sdk.utils.a() { // from class: com.applovin.impl.mediation.debugger.b.1
            @Override // com.applovin.impl.sdk.utils.a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
                if (activity instanceof MaxDebuggerActivity) {
                    v.f("AppLovinSdk", "Started mediation debugger");
                    if (!b.this.g() || b.f4918a.get() != activity) {
                        MaxDebuggerActivity maxDebuggerActivity = (MaxDebuggerActivity) activity;
                        WeakReference unused = b.f4918a = new WeakReference(maxDebuggerActivity);
                        maxDebuggerActivity.setListAdapter(b.this.f4923f, b.this.f4920c.ai());
                    }
                    b.f4919b.set(false);
                }
            }

            @Override // com.applovin.impl.sdk.utils.a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
                if (activity instanceof MaxDebuggerActivity) {
                    v.f("AppLovinSdk", "Mediation debugger destroyed");
                    WeakReference unused = b.f4918a = null;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g() {
        WeakReference<MaxDebuggerActivity> weakReference = f4918a;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }

    public List<?> a(String str) {
        Map<String, List<?>> map = this.l;
        if (map == null || map.isEmpty()) {
            return null;
        }
        return this.l.get(str);
    }

    public void a() {
        if (this.f4925h.compareAndSet(false, true)) {
            this.f4920c.V().a(new c(this, this.f4920c), o.a.MEDIATION_MAIN);
        }
    }

    @Override // com.applovin.impl.sdk.network.b.c
    public void a(int i, String str, JSONObject jSONObject) {
        if (v.a()) {
            this.f4921d.e("MediationDebuggerService", "Unable to fetch mediation debugger info: server returned " + i);
        }
        v.i("AppLovinSdk", "Unable to show mediation debugger.");
        this.f4923f.a(null, null, null, null, null, null, null, this.f4920c);
        this.f4925h.set(false);
    }

    public void a(Map<String, List<?>> map) {
        this.l = map;
        a();
        if (g() || !f4919b.compareAndSet(false, true)) {
            v.i("AppLovinSdk", "Mediation debugger is already showing");
            return;
        }
        if (!this.k) {
            f();
            this.k = true;
        }
        Intent intent = new Intent(this.f4922e, MaxDebuggerActivity.class);
        intent.setFlags(268435456);
        v.f("AppLovinSdk", "Starting mediation debugger...");
        this.f4922e.startActivity(intent);
    }

    @Override // com.applovin.impl.sdk.network.b.c
    public void a(JSONObject jSONObject, int i) {
        List<com.applovin.impl.mediation.debugger.b.c.b> a2 = a(jSONObject, this.f4920c);
        List<com.applovin.impl.mediation.debugger.b.a.a> a3 = a(jSONObject, a2, this.f4920c);
        List<com.applovin.impl.mediation.debugger.b.a.a> a4 = a(a3, this.f4920c);
        com.applovin.impl.mediation.debugger.b.b.b a5 = a(jSONObject);
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "alert", (JSONObject) null);
        this.f4923f.a(a2, a3, a4, a5, JsonUtils.getString(jSONObject2, "title", null), JsonUtils.getString(jSONObject2, "message", null), JsonUtils.getString(jSONObject, "account_id", null), this.f4920c);
        if (a5.e()) {
            this.m.a();
        }
        if (b()) {
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.debugger.b.3
                @Override // java.lang.Runnable
                public void run() {
                    b.this.c();
                }
            }, TimeUnit.SECONDS.toMillis(this.j));
        } else {
            a(a2);
        }
    }

    public void a(boolean z, int i) {
        this.i = z;
        this.j = i;
    }

    public boolean b() {
        return this.i;
    }

    public void c() {
        a((Map<String, List<?>>) null);
    }

    public String toString() {
        return "MediationDebuggerService{, listAdapter=" + this.f4923f + "}";
    }
}

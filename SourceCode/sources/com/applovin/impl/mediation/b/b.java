package com.applovin.impl.mediation.b;

import android.content.Context;
import com.applovin.impl.mediation.a.g;
import com.applovin.impl.mediation.a.h;
import com.applovin.impl.sdk.e.o;
import com.applovin.impl.sdk.e.z;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.impl.sdk.v;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class b extends com.applovin.impl.sdk.e.a {

    /* renamed from: a  reason: collision with root package name */
    private static JSONObject f4814a;

    /* renamed from: e  reason: collision with root package name */
    private static final Object f4815e = new Object();

    /* renamed from: f  reason: collision with root package name */
    private final MaxAdFormat f4816f;

    /* renamed from: g  reason: collision with root package name */
    private final Map<String, Object> f4817g;

    /* renamed from: h  reason: collision with root package name */
    private final Context f4818h;
    private final a i;

    /* loaded from: classes.dex */
    public interface a {
        void a(JSONArray jSONArray);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.applovin.impl.mediation.b.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class RunnableC0067b implements g.a, Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final a f4822a;

        /* renamed from: b  reason: collision with root package name */
        private final Object f4823b;

        /* renamed from: c  reason: collision with root package name */
        private int f4824c;

        /* renamed from: d  reason: collision with root package name */
        private final AtomicBoolean f4825d;

        /* renamed from: e  reason: collision with root package name */
        private final Collection<com.applovin.impl.mediation.a.g> f4826e;

        /* renamed from: f  reason: collision with root package name */
        private final n f4827f;

        /* renamed from: g  reason: collision with root package name */
        private final v f4828g;

        private RunnableC0067b(int i, a aVar, n nVar) {
            this.f4824c = i;
            this.f4822a = aVar;
            this.f4827f = nVar;
            this.f4828g = nVar.D();
            this.f4823b = new Object();
            this.f4826e = new ArrayList(i);
            this.f4825d = new AtomicBoolean();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            ArrayList<com.applovin.impl.mediation.a.g> arrayList;
            String str;
            String d2;
            synchronized (this.f4823b) {
                arrayList = new ArrayList(this.f4826e);
            }
            JSONArray jSONArray = new JSONArray();
            for (com.applovin.impl.mediation.a.g gVar : arrayList) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    h a2 = gVar.a();
                    jSONObject.put("name", a2.S());
                    jSONObject.put("class", a2.R());
                    jSONObject.put("adapter_version", gVar.c());
                    jSONObject.put("sdk_version", gVar.b());
                    JSONObject jSONObject2 = new JSONObject();
                    if (StringUtils.isValidString(gVar.e())) {
                        str = "error_message";
                        d2 = gVar.e();
                    } else {
                        str = "signal";
                        d2 = gVar.d();
                    }
                    jSONObject2.put(str, d2);
                    jSONObject.put("data", jSONObject2);
                    jSONArray.put(jSONObject);
                    if (v.a()) {
                        this.f4828g.b("TaskCollectSignals", "Collected signal from " + a2);
                    }
                } catch (JSONException e2) {
                    if (v.a()) {
                        this.f4828g.b("TaskCollectSignals", "Failed to create signal data", e2);
                    }
                }
            }
            a(jSONArray);
        }

        private void a(JSONArray jSONArray) {
            a aVar = this.f4822a;
            if (aVar != null) {
                aVar.a(jSONArray);
            }
        }

        @Override // com.applovin.impl.mediation.a.g.a
        public void a(com.applovin.impl.mediation.a.g gVar) {
            boolean z;
            synchronized (this.f4823b) {
                this.f4826e.add(gVar);
                int i = this.f4824c - 1;
                this.f4824c = i;
                z = i < 1;
            }
            if (z && this.f4825d.compareAndSet(false, true)) {
                if (Utils.isMainThread() && ((Boolean) this.f4827f.a(com.applovin.impl.sdk.c.b.fp)).booleanValue()) {
                    this.f4827f.V().a(new z(this.f4827f, new Runnable() { // from class: com.applovin.impl.mediation.b.b.b.1
                        @Override // java.lang.Runnable
                        public void run() {
                            RunnableC0067b.this.a();
                        }
                    }), o.a.MEDIATION_MAIN);
                } else {
                    a();
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f4825d.compareAndSet(false, true)) {
                a();
            }
        }
    }

    public b(MaxAdFormat maxAdFormat, Map<String, Object> map, Context context, n nVar, a aVar) {
        super("TaskCollectSignals", nVar);
        this.f4816f = maxAdFormat;
        this.f4817g = map;
        this.f4818h = context;
        this.i = aVar;
    }

    private void a(final h hVar, final g.a aVar) {
        if (hVar.Z()) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.mediation.b.b.1
                @Override // java.lang.Runnable
                public void run() {
                    b.this.f5674b.H().collectSignal(b.this.f4816f, hVar, b.this.f4818h, aVar);
                }
            });
        } else {
            this.f5674b.H().collectSignal(this.f4816f, hVar, this.f4818h, aVar);
        }
    }

    private void a(String str, Throwable th) {
        v vVar = this.f5676d;
        if (v.a()) {
            this.f5676d.b(this.f5675c, "No signals collected: " + str, th);
        }
        a aVar = this.i;
        if (aVar != null) {
            aVar.a(new JSONArray());
        }
    }

    private void a(JSONArray jSONArray, JSONObject jSONObject) throws JSONException, InterruptedException {
        RunnableC0067b runnableC0067b = new RunnableC0067b(jSONArray.length(), this.i, this.f5674b);
        for (int i = 0; i < jSONArray.length(); i++) {
            a(new h(this.f4817g, jSONArray.getJSONObject(i), jSONObject, this.f5674b), runnableC0067b);
        }
        this.f5674b.V().a(new z(this.f5674b, runnableC0067b), o.a.MAIN, ((Long) this.f5674b.a(com.applovin.impl.sdk.c.a.j)).longValue());
    }

    public static void a(JSONObject jSONObject) {
        synchronized (f4815e) {
            f4814a = jSONObject;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        JSONArray jSONArray;
        try {
            if (((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.b.ff)).booleanValue()) {
                synchronized (f4815e) {
                    jSONArray = JsonUtils.getJSONArray(f4814a, "signal_providers", null);
                }
                if (jSONArray != null && jSONArray.length() > 0) {
                    a(jSONArray, f4814a);
                    return;
                }
                v vVar = this.f5676d;
                if (v.a()) {
                    this.f5676d.d(this.f5675c, "Unable to find cached signal providers, falling back to old logic.");
                }
            }
            JSONObject jSONObject = new JSONObject((String) this.f5674b.b((com.applovin.impl.sdk.c.d<com.applovin.impl.sdk.c.d<String>>) com.applovin.impl.sdk.c.d.x, (com.applovin.impl.sdk.c.d<String>) JsonUtils.EMPTY_JSON));
            JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject, "signal_providers", null);
            if (jSONArray2 != null && jSONArray2.length() != 0) {
                a(jSONArray2, jSONObject);
                return;
            }
            a("No signal providers found", (Throwable) null);
        } catch (InterruptedException e2) {
            e = e2;
            str = "Failed to wait for signals";
            a(str, e);
        } catch (JSONException e3) {
            e = e3;
            str = "Failed to parse signals JSON";
            a(str, e);
        } catch (Throwable th) {
            e = th;
            str = "Failed to collect signals";
            a(str, e);
        }
    }
}

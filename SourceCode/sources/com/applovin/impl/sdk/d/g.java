package com.applovin.impl.sdk.d;

import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.v;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private final n f5661a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, Long> f5662b = CollectionUtils.map();

    public g(n nVar) {
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.f5661a = nVar;
    }

    private void e() {
        this.f5661a.V().a(new Runnable() { // from class: com.applovin.impl.sdk.d.g.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    g.this.f5661a.a((com.applovin.impl.sdk.c.d<com.applovin.impl.sdk.c.d<String>>) com.applovin.impl.sdk.c.d.q, (com.applovin.impl.sdk.c.d<String>) g.this.c().toString());
                } catch (Throwable th) {
                    g.this.f5661a.D();
                    if (v.a()) {
                        g.this.f5661a.D().b("GlobalStatsManager", "Unable to save stats", th);
                    }
                }
            }
        });
    }

    public long a(f fVar) {
        return a(fVar, 1L);
    }

    long a(f fVar, long j) {
        long longValue;
        synchronized (this.f5662b) {
            Long l = this.f5662b.get(fVar.a());
            if (l == null) {
                l = 0L;
            }
            longValue = l.longValue() + j;
            this.f5662b.put(fVar.a(), Long.valueOf(longValue));
        }
        e();
        return longValue;
    }

    public void a() {
        synchronized (this.f5662b) {
            this.f5662b.clear();
        }
        e();
    }

    public long b(f fVar) {
        long longValue;
        synchronized (this.f5662b) {
            Long l = this.f5662b.get(fVar.a());
            if (l == null) {
                l = 0L;
            }
            longValue = l.longValue();
        }
        return longValue;
    }

    public void b() {
        synchronized (this.f5662b) {
            for (f fVar : f.b()) {
                this.f5662b.remove(fVar.a());
            }
            e();
        }
    }

    public void b(f fVar, long j) {
        synchronized (this.f5662b) {
            this.f5662b.put(fVar.a(), Long.valueOf(j));
        }
        e();
    }

    public JSONObject c() throws JSONException {
        JSONObject jSONObject;
        synchronized (this.f5662b) {
            jSONObject = new JSONObject();
            for (Map.Entry<String, Long> entry : this.f5662b.entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue());
            }
        }
        return jSONObject;
    }

    public void c(f fVar) {
        synchronized (this.f5662b) {
            this.f5662b.remove(fVar.a());
        }
        e();
    }

    public void d() {
        try {
            JSONObject jSONObject = new JSONObject((String) this.f5661a.b((com.applovin.impl.sdk.c.d<com.applovin.impl.sdk.c.d<String>>) com.applovin.impl.sdk.c.d.q, (com.applovin.impl.sdk.c.d<String>) JsonUtils.EMPTY_JSON));
            synchronized (this.f5662b) {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    try {
                        String next = keys.next();
                        this.f5662b.put(next, Long.valueOf(jSONObject.getLong(next)));
                    } catch (JSONException unused) {
                    }
                }
            }
        } catch (Throwable th) {
            this.f5661a.D();
            if (v.a()) {
                this.f5661a.D().b("GlobalStatsManager", "Unable to load stats", th);
            }
        }
    }
}

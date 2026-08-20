package com.applovin.impl.mediation;

import android.text.TextUtils;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.v;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapters.MediationAdapterBase;
import com.applovin.sdk.AppLovinSdk;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class f {

    /* renamed from: b  reason: collision with root package name */
    private final n f5200b;

    /* renamed from: c  reason: collision with root package name */
    private final v f5201c;

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, g> f5199a = Collections.synchronizedMap(CollectionUtils.map(16));

    /* renamed from: d  reason: collision with root package name */
    private final Object f5202d = new Object();

    /* renamed from: e  reason: collision with root package name */
    private final Map<String, Class<? extends MaxAdapter>> f5203e = CollectionUtils.map();

    /* renamed from: f  reason: collision with root package name */
    private final Set<String> f5204f = new HashSet();

    /* renamed from: g  reason: collision with root package name */
    private final Object f5205g = new Object();

    /* renamed from: h  reason: collision with root package name */
    private final Set<a> f5206h = new HashSet();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f5207a;

        /* renamed from: b  reason: collision with root package name */
        private final String f5208b;

        /* renamed from: c  reason: collision with root package name */
        private final MaxAdFormat f5209c;

        /* renamed from: d  reason: collision with root package name */
        private final JSONObject f5210d;

        a(String str, String str2, com.applovin.impl.mediation.a.a aVar, n nVar) {
            this.f5207a = str;
            this.f5208b = str2;
            JSONObject jSONObject = new JSONObject();
            this.f5210d = jSONObject;
            JsonUtils.putString(jSONObject, "class", str);
            JsonUtils.putString(jSONObject, "operation", str2);
            if (aVar == null) {
                this.f5209c = null;
                return;
            }
            this.f5209c = aVar.getFormat();
            if (aVar.getFormat() != null) {
                JsonUtils.putString(jSONObject, "format", aVar.getFormat().getLabel());
            }
        }

        JSONObject a() {
            return this.f5210d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f5207a.equals(aVar.f5207a) && this.f5208b.equals(aVar.f5208b)) {
                MaxAdFormat maxAdFormat = this.f5209c;
                MaxAdFormat maxAdFormat2 = aVar.f5209c;
                return maxAdFormat == null ? maxAdFormat2 == null : maxAdFormat.equals(maxAdFormat2);
            }
            return false;
        }

        public int hashCode() {
            int hashCode = ((this.f5207a.hashCode() * 31) + this.f5208b.hashCode()) * 31;
            MaxAdFormat maxAdFormat = this.f5209c;
            return hashCode + (maxAdFormat != null ? maxAdFormat.hashCode() : 0);
        }

        public String toString() {
            return "DisabledAdapterInfo{className='" + this.f5207a + "', operationTag='" + this.f5208b + "', format=" + this.f5209c + '}';
        }
    }

    public f(n nVar) {
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.f5200b = nVar;
        this.f5201c = nVar.D();
    }

    private g a(com.applovin.impl.mediation.a.f fVar, Class<? extends MaxAdapter> cls, boolean z) {
        try {
            return new g(fVar, (MediationAdapterBase) cls.getConstructor(AppLovinSdk.class).newInstance(this.f5200b.ab()), z, this.f5200b);
        } catch (Throwable th) {
            v.c("MediationAdapterManager", "Failed to load adapter: " + fVar, th);
            return null;
        }
    }

    private Class<? extends MaxAdapter> a(String str) {
        try {
            Class<?> cls = Class.forName(str);
            if (MaxAdapter.class.isAssignableFrom(cls)) {
                return cls.asSubclass(MaxAdapter.class);
            }
            v.i("MediationAdapterManager", str + " error: not an instance of '" + MaxAdapter.class.getName() + "'.");
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g a(com.applovin.impl.mediation.a.f fVar) {
        return a(fVar, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g a(com.applovin.impl.mediation.a.f fVar, boolean z) {
        Class<? extends MaxAdapter> a2;
        g gVar;
        if (fVar != null) {
            String S = fVar.S();
            String R = fVar.R();
            if (TextUtils.isEmpty(S)) {
                if (v.a()) {
                    this.f5201c.e("MediationAdapterManager", "No adapter name provided for " + R + ", not loading the adapter ");
                }
                return null;
            } else if (TextUtils.isEmpty(R)) {
                if (v.a()) {
                    this.f5201c.e("MediationAdapterManager", "Unable to find default className for '" + S + "'");
                }
                return null;
            } else if (!z || (gVar = this.f5199a.get(R)) == null) {
                synchronized (this.f5202d) {
                    if (this.f5204f.contains(R)) {
                        if (v.a()) {
                            this.f5201c.b("MediationAdapterManager", "Not attempting to load " + S + " due to prior errors");
                        }
                        return null;
                    }
                    if (this.f5203e.containsKey(R)) {
                        a2 = this.f5203e.get(R);
                    } else {
                        a2 = a(R);
                        if (a2 == null) {
                            this.f5204f.add(R);
                            return null;
                        }
                    }
                    g a3 = a(fVar, a2, z);
                    if (a3 == null) {
                        if (v.a()) {
                            this.f5201c.e("MediationAdapterManager", "Failed to load " + S);
                        }
                        this.f5204f.add(R);
                        return null;
                    }
                    if (v.a()) {
                        this.f5201c.b("MediationAdapterManager", "Loaded " + S);
                    }
                    this.f5203e.put(R, a2);
                    if (z) {
                        this.f5199a.put(fVar.R(), a3);
                    }
                    return a3;
                }
            } else {
                return gVar;
            }
        }
        throw new IllegalArgumentException("No adapter spec specified");
    }

    public Collection<String> a() {
        Set unmodifiableSet;
        synchronized (this.f5202d) {
            HashSet hashSet = new HashSet(this.f5203e.size());
            for (Class<? extends MaxAdapter> cls : this.f5203e.values()) {
                hashSet.add(cls.getName());
            }
            unmodifiableSet = Collections.unmodifiableSet(hashSet);
        }
        return unmodifiableSet;
    }

    public void a(String str, String str2, com.applovin.impl.mediation.a.a aVar) {
        synchronized (this.f5205g) {
            this.f5200b.D();
            if (v.a()) {
                this.f5200b.D().e("MediationAdapterManager", "Adding " + str + " to list of disabled adapters.");
            }
            this.f5206h.add(new a(str, str2, aVar, this.f5200b));
        }
    }

    public Collection<String> b() {
        Set unmodifiableSet;
        synchronized (this.f5202d) {
            unmodifiableSet = Collections.unmodifiableSet(this.f5204f);
        }
        return unmodifiableSet;
    }

    public Collection<JSONObject> c() {
        ArrayList arrayList;
        synchronized (this.f5205g) {
            arrayList = new ArrayList(this.f5206h.size());
            for (a aVar : this.f5206h) {
                arrayList.add(aVar.a());
            }
        }
        return arrayList;
    }
}

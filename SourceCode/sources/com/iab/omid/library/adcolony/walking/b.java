package com.iab.omid.library.adcolony.walking;

import com.iab.omid.library.adcolony.walking.a.b;
import com.iab.omid.library.adcolony.walking.a.d;
import com.iab.omid.library.adcolony.walking.a.e;
import com.iab.omid.library.adcolony.walking.a.f;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class b implements b.InterfaceC0300b {

    /* renamed from: a  reason: collision with root package name */
    private JSONObject f9915a;

    /* renamed from: b  reason: collision with root package name */
    private final com.iab.omid.library.adcolony.walking.a.c f9916b;

    public b(com.iab.omid.library.adcolony.walking.a.c cVar) {
        this.f9916b = cVar;
    }

    public void a() {
        this.f9916b.b(new d(this));
    }

    @Override // com.iab.omid.library.adcolony.walking.a.b.InterfaceC0300b
    public void a(JSONObject jSONObject) {
        this.f9915a = jSONObject;
    }

    public void a(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.f9916b.b(new f(this, hashSet, jSONObject, j));
    }

    @Override // com.iab.omid.library.adcolony.walking.a.b.InterfaceC0300b
    public JSONObject b() {
        return this.f9915a;
    }

    public void b(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.f9916b.b(new e(this, hashSet, jSONObject, j));
    }
}

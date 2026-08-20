package com.iab.omid.library.amazon.walking;

import com.iab.omid.library.amazon.walking.a.b;
import com.iab.omid.library.amazon.walking.a.d;
import com.iab.omid.library.amazon.walking.a.e;
import com.iab.omid.library.amazon.walking.a.f;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class b implements b.InterfaceC0303b {

    /* renamed from: a  reason: collision with root package name */
    private JSONObject f10022a;

    /* renamed from: b  reason: collision with root package name */
    private final com.iab.omid.library.amazon.walking.a.c f10023b;

    public b(com.iab.omid.library.amazon.walking.a.c cVar) {
        this.f10023b = cVar;
    }

    public void a() {
        this.f10023b.b(new d(this));
    }

    @Override // com.iab.omid.library.amazon.walking.a.b.InterfaceC0303b
    public void a(JSONObject jSONObject) {
        this.f10022a = jSONObject;
    }

    public void a(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.f10023b.b(new f(this, hashSet, jSONObject, j));
    }

    @Override // com.iab.omid.library.amazon.walking.a.b.InterfaceC0303b
    public JSONObject b() {
        return this.f10022a;
    }

    public void b(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.f10023b.b(new e(this, hashSet, jSONObject, j));
    }
}

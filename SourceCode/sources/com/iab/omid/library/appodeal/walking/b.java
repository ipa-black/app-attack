package com.iab.omid.library.appodeal.walking;

import com.iab.omid.library.appodeal.walking.a.b;
import com.iab.omid.library.appodeal.walking.a.d;
import com.iab.omid.library.appodeal.walking.a.e;
import com.iab.omid.library.appodeal.walking.a.f;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class b implements b.InterfaceC0309b {

    /* renamed from: a  reason: collision with root package name */
    private JSONObject f10243a;

    /* renamed from: b  reason: collision with root package name */
    private final com.iab.omid.library.appodeal.walking.a.c f10244b;

    public b(com.iab.omid.library.appodeal.walking.a.c cVar) {
        this.f10244b = cVar;
    }

    public void a() {
        this.f10244b.b(new d(this));
    }

    @Override // com.iab.omid.library.appodeal.walking.a.b.InterfaceC0309b
    public void a(JSONObject jSONObject) {
        this.f10243a = jSONObject;
    }

    public void a(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.f10244b.b(new f(this, hashSet, jSONObject, j));
    }

    @Override // com.iab.omid.library.appodeal.walking.a.b.InterfaceC0309b
    public JSONObject b() {
        return this.f10243a;
    }

    public void b(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.f10244b.b(new e(this, hashSet, jSONObject, j));
    }
}

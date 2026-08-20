package com.iab.omid.library.applovin.walking;

import com.iab.omid.library.applovin.walking.async.b;
import com.iab.omid.library.applovin.walking.async.d;
import com.iab.omid.library.applovin.walking.async.e;
import com.iab.omid.library.applovin.walking.async.f;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class b implements b.InterfaceC0306b {

    /* renamed from: a  reason: collision with root package name */
    private JSONObject f10136a;

    /* renamed from: b  reason: collision with root package name */
    private final com.iab.omid.library.applovin.walking.async.c f10137b;

    public b(com.iab.omid.library.applovin.walking.async.c cVar) {
        this.f10137b = cVar;
    }

    @Override // com.iab.omid.library.applovin.walking.async.b.InterfaceC0306b
    public JSONObject a() {
        return this.f10136a;
    }

    @Override // com.iab.omid.library.applovin.walking.async.b.InterfaceC0306b
    public void a(JSONObject jSONObject) {
        this.f10136a = jSONObject;
    }

    public void a(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.f10137b.b(new e(this, hashSet, jSONObject, j));
    }

    public void b() {
        this.f10137b.b(new d(this));
    }

    public void b(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.f10137b.b(new f(this, hashSet, jSONObject, j));
    }
}

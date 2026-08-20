package com.iab.omid.library.bytedance2.walking;

import com.iab.omid.library.bytedance2.walking.async.b;
import com.iab.omid.library.bytedance2.walking.async.d;
import com.iab.omid.library.bytedance2.walking.async.e;
import com.iab.omid.library.bytedance2.walking.async.f;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class b implements b.InterfaceC0312b {

    /* renamed from: a  reason: collision with root package name */
    private JSONObject f10358a;

    /* renamed from: b  reason: collision with root package name */
    private final com.iab.omid.library.bytedance2.walking.async.c f10359b;

    public b(com.iab.omid.library.bytedance2.walking.async.c cVar) {
        this.f10359b = cVar;
    }

    @Override // com.iab.omid.library.bytedance2.walking.async.b.InterfaceC0312b
    public JSONObject a() {
        return this.f10358a;
    }

    @Override // com.iab.omid.library.bytedance2.walking.async.b.InterfaceC0312b
    public void a(JSONObject jSONObject) {
        this.f10358a = jSONObject;
    }

    public void a(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.f10359b.b(new e(this, hashSet, jSONObject, j));
    }

    public void b() {
        this.f10359b.b(new d(this));
    }

    public void b(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.f10359b.b(new f(this, hashSet, jSONObject, j));
    }
}

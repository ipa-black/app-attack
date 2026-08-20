package com.iab.omid.library.ironsrc.walking;

import com.iab.omid.library.ironsrc.walking.a.b;
import com.iab.omid.library.ironsrc.walking.a.d;
import com.iab.omid.library.ironsrc.walking.a.e;
import com.iab.omid.library.ironsrc.walking.a.f;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class b implements b.InterfaceC0315b {

    /* renamed from: a  reason: collision with root package name */
    private JSONObject f10466a;

    /* renamed from: b  reason: collision with root package name */
    private final com.iab.omid.library.ironsrc.walking.a.c f10467b;

    public b(com.iab.omid.library.ironsrc.walking.a.c cVar) {
        this.f10467b = cVar;
    }

    public void a() {
        this.f10467b.b(new d(this));
    }

    @Override // com.iab.omid.library.ironsrc.walking.a.b.InterfaceC0315b
    public void a(JSONObject jSONObject) {
        this.f10466a = jSONObject;
    }

    public void a(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.f10467b.b(new f(this, hashSet, jSONObject, j));
    }

    @Override // com.iab.omid.library.ironsrc.walking.a.b.InterfaceC0315b
    public JSONObject b() {
        return this.f10466a;
    }

    public void b(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.f10467b.b(new e(this, hashSet, jSONObject, j));
    }
}

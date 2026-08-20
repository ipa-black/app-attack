package com.iab.omid.library.ironsrc.walking.a;

import com.iab.omid.library.ironsrc.walking.a.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class a extends b {

    /* renamed from: a  reason: collision with root package name */
    protected final HashSet<String> f10457a;

    /* renamed from: b  reason: collision with root package name */
    protected final JSONObject f10458b;

    /* renamed from: c  reason: collision with root package name */
    protected final long f10459c;

    public a(b.InterfaceC0315b interfaceC0315b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(interfaceC0315b);
        this.f10457a = new HashSet<>(hashSet);
        this.f10458b = jSONObject;
        this.f10459c = j;
    }
}

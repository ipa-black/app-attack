package com.iab.omid.library.applovin.walking.async;

import com.iab.omid.library.applovin.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class a extends b {

    /* renamed from: c  reason: collision with root package name */
    protected final HashSet<String> f10127c;

    /* renamed from: d  reason: collision with root package name */
    protected final JSONObject f10128d;

    /* renamed from: e  reason: collision with root package name */
    protected final long f10129e;

    public a(b.InterfaceC0306b interfaceC0306b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(interfaceC0306b);
        this.f10127c = new HashSet<>(hashSet);
        this.f10128d = jSONObject;
        this.f10129e = j;
    }
}

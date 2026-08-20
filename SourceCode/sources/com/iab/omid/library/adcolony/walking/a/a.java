package com.iab.omid.library.adcolony.walking.a;

import com.iab.omid.library.adcolony.walking.a.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class a extends b {

    /* renamed from: a  reason: collision with root package name */
    protected final HashSet<String> f9904a;

    /* renamed from: b  reason: collision with root package name */
    protected final JSONObject f9905b;

    /* renamed from: c  reason: collision with root package name */
    protected final long f9906c;

    public a(b.InterfaceC0300b interfaceC0300b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(interfaceC0300b);
        this.f9904a = new HashSet<>(hashSet);
        this.f9905b = jSONObject;
        this.f9906c = j;
    }
}

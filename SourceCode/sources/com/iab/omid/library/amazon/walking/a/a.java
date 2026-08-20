package com.iab.omid.library.amazon.walking.a;

import com.iab.omid.library.amazon.walking.a.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class a extends b {

    /* renamed from: a  reason: collision with root package name */
    protected final HashSet<String> f10013a;

    /* renamed from: b  reason: collision with root package name */
    protected final JSONObject f10014b;

    /* renamed from: c  reason: collision with root package name */
    protected final long f10015c;

    public a(b.InterfaceC0303b interfaceC0303b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(interfaceC0303b);
        this.f10013a = new HashSet<>(hashSet);
        this.f10014b = jSONObject;
        this.f10015c = j;
    }
}

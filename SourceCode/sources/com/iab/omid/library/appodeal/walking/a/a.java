package com.iab.omid.library.appodeal.walking.a;

import com.iab.omid.library.appodeal.walking.a.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class a extends b {

    /* renamed from: a  reason: collision with root package name */
    protected final HashSet<String> f10232a;

    /* renamed from: b  reason: collision with root package name */
    protected final JSONObject f10233b;

    /* renamed from: c  reason: collision with root package name */
    protected final long f10234c;

    public a(b.InterfaceC0309b interfaceC0309b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(interfaceC0309b);
        this.f10232a = new HashSet<>(hashSet);
        this.f10233b = jSONObject;
        this.f10234c = j;
    }
}

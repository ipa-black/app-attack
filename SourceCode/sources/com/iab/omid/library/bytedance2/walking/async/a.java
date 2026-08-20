package com.iab.omid.library.bytedance2.walking.async;

import com.iab.omid.library.bytedance2.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class a extends b {

    /* renamed from: c  reason: collision with root package name */
    protected final HashSet<String> f10349c;

    /* renamed from: d  reason: collision with root package name */
    protected final JSONObject f10350d;

    /* renamed from: e  reason: collision with root package name */
    protected final long f10351e;

    public a(b.InterfaceC0312b interfaceC0312b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(interfaceC0312b);
        this.f10349c = new HashSet<>(hashSet);
        this.f10350d = jSONObject;
        this.f10351e = j;
    }
}

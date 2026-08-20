package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
import kotlin.collections.MapsKt;
/* renamed from: com.yandex.metrica.impl.ob.h6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1579h6 {

    /* renamed from: a  reason: collision with root package name */
    private final C1628j6 f14832a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, byte[]> f14833b;

    public C1579h6(Context context, I3 i3) {
        StringBuilder sb = new StringBuilder("[SessionExtrasHolder-");
        String a2 = i3.a();
        sb.append(a2 != null ? A2.a(a2) : null).append(']').toString();
        C1628j6 c1628j6 = new C1628j6(context, i3);
        this.f14832a = c1628j6;
        this.f14833b = MapsKt.toMutableMap(c1628j6.a());
    }

    public final Map<String, byte[]> a() {
        return new HashMap(this.f14833b);
    }

    public final void a(String str, byte[] bArr) {
        if (bArr != null && bArr.length != 0) {
            this.f14833b.put(str, bArr);
        } else {
            this.f14833b.remove(str);
        }
        this.f14832a.a(this.f14833b);
    }
}

package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.impl.ob.C1787pf;
/* renamed from: com.yandex.metrica.impl.ob.bd  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1436bd {

    /* renamed from: a  reason: collision with root package name */
    private final Vb f14464a;

    /* renamed from: b  reason: collision with root package name */
    private final C1411ad f14465b;

    public C1436bd(Vb vb, C1411ad c1411ad) {
        this.f14464a = vb;
        this.f14465b = c1411ad;
    }

    public C1787pf.b a(long j, String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                Hc b2 = this.f14464a.b(j, str);
                if (b2 != null) {
                    return this.f14465b.a(b2);
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }
}

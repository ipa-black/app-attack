package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.impl.ob.C1787pf;
/* loaded from: classes5.dex */
public class Zc {

    /* renamed from: a  reason: collision with root package name */
    private final Vb f14344a;

    /* renamed from: b  reason: collision with root package name */
    private final Yc f14345b;

    public Zc(Vb vb, Yc yc) {
        this.f14344a = vb;
        this.f14345b = yc;
    }

    public C1787pf.a a(long j, String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                C1684lc a2 = this.f14344a.a(j, str);
                if (a2 != null) {
                    return this.f14345b.a(a2);
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }
}

package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
/* renamed from: com.yandex.metrica.impl.ob.jc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1634jc {

    /* renamed from: a  reason: collision with root package name */
    private final T7 f15001a;

    /* renamed from: b  reason: collision with root package name */
    private final Vb f15002b;

    public C1634jc(Context context) {
        this(C1632ja.a(context).e(), new Vb(context));
    }

    public void a(C1684lc c1684lc) {
        String a2 = this.f15002b.a(c1684lc);
        if (TextUtils.isEmpty(a2)) {
            return;
        }
        this.f15001a.a(c1684lc.d(), a2);
    }

    C1634jc(T7 t7, Vb vb) {
        this.f15001a = t7;
        this.f15002b = vb;
    }
}

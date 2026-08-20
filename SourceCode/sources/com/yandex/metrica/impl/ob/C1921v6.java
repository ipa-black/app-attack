package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.U1;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.v6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1921v6 {

    /* renamed from: a  reason: collision with root package name */
    private final N6 f15897a;

    public C1921v6() {
        this(new N6());
    }

    public U1.f a(H6 h6, Q1 q1) {
        String b2;
        F6 f6 = h6.f13027a;
        String str = "";
        if (f6 != null && (b2 = f6.b()) != null) {
            str = b2;
        }
        byte[] a2 = this.f15897a.a(h6);
        C1470cm b3 = Ul.b(q1.b().a());
        List<Integer> list = C2011z0.i;
        J j = new J(a2, str, EnumC1399a1.EVENT_TYPE_EXCEPTION_UNHANDLED_PROTOBUF.b(), b3);
        j.c(q1.d());
        return new U1.f(j, q1).a(j.t()).a(true);
    }

    C1921v6(N6 n6) {
        this.f15897a = n6;
    }
}

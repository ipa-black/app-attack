package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
import com.yandex.metrica.impl.ob.C1906uf;
import java.util.Currency;
import java.util.concurrent.TimeUnit;
/* renamed from: com.yandex.metrica.impl.ob.h3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1576h3 {

    /* renamed from: a  reason: collision with root package name */
    private final com.yandex.metrica.billing_interface.d f14828a;

    public C1576h3(com.yandex.metrica.billing_interface.d dVar) {
        this.f14828a = dVar;
    }

    public byte[] a() {
        String str;
        com.yandex.metrica.billing_interface.d dVar = this.f14828a;
        C1906uf c1906uf = new C1906uf();
        c1906uf.f15822a = dVar.f12497c;
        c1906uf.f15828g = dVar.f12498d;
        try {
            str = Currency.getInstance(dVar.f12499e).getCurrencyCode();
        } catch (Throwable unused) {
            str = "";
        }
        c1906uf.f15824c = str.getBytes();
        c1906uf.f15825d = dVar.f12496b.getBytes();
        C1906uf.a aVar = new C1906uf.a();
        aVar.f15830a = dVar.n.getBytes();
        aVar.f15831b = dVar.j.getBytes();
        c1906uf.f15827f = aVar;
        c1906uf.f15829h = true;
        c1906uf.i = 1;
        c1906uf.j = dVar.f12495a.ordinal() == 1 ? 2 : 1;
        C1906uf.c cVar = new C1906uf.c();
        cVar.f15841a = dVar.k.getBytes();
        cVar.f15842b = TimeUnit.MILLISECONDS.toSeconds(dVar.l);
        c1906uf.k = cVar;
        if (dVar.f12495a == com.yandex.metrica.billing_interface.e.SUBS) {
            C1906uf.b bVar = new C1906uf.b();
            bVar.f15832a = dVar.m;
            com.yandex.metrica.billing_interface.c cVar2 = dVar.i;
            if (cVar2 != null) {
                bVar.f15833b = a(cVar2);
            }
            C1906uf.b.a aVar2 = new C1906uf.b.a();
            aVar2.f15835a = dVar.f12500f;
            com.yandex.metrica.billing_interface.c cVar3 = dVar.f12501g;
            if (cVar3 != null) {
                aVar2.f15836b = a(cVar3);
            }
            aVar2.f15837c = dVar.f12502h;
            bVar.f15834c = aVar2;
            c1906uf.l = bVar;
        }
        return MessageNano.toByteArray(c1906uf);
    }

    private C1906uf.b.C0359b a(com.yandex.metrica.billing_interface.c cVar) {
        C1906uf.b.C0359b c0359b = new C1906uf.b.C0359b();
        c0359b.f15839a = cVar.f12487a;
        int ordinal = cVar.f12488b.ordinal();
        int i = 1;
        if (ordinal != 1) {
            i = 2;
            if (ordinal != 2) {
                i = 3;
                if (ordinal != 3) {
                    i = 4;
                    if (ordinal != 4) {
                        i = 0;
                    }
                }
            }
        }
        c0359b.f15840b = i;
        return c0359b;
    }
}

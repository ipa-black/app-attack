package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ob.D3;
import com.yandex.metrica.impl.ob.P3;
import com.yandex.metrica.impl.ob.S3;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class X3<COMPONENT extends S3 & P3> implements Object, InterfaceC1665ki {

    /* renamed from: a  reason: collision with root package name */
    private final Context f14220a;

    /* renamed from: b  reason: collision with root package name */
    private final I3 f14221b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC1751o4<COMPONENT> f14222c;

    /* renamed from: d  reason: collision with root package name */
    private final C1837ri f14223d;

    /* renamed from: e  reason: collision with root package name */
    private final C1452c4 f14224e;

    /* renamed from: f  reason: collision with root package name */
    private COMPONENT f14225f;

    /* renamed from: g  reason: collision with root package name */
    private Q3 f14226g;

    /* renamed from: h  reason: collision with root package name */
    private List<InterfaceC1665ki> f14227h = new ArrayList();
    private final J3<InterfaceC1651k4> i;

    public X3(Context context, I3 i3, D3 d3, C1452c4 c1452c4, InterfaceC1751o4<COMPONENT> interfaceC1751o4, J3<InterfaceC1651k4> j3, C1516ei c1516ei) {
        this.f14220a = context;
        this.f14221b = i3;
        this.f14224e = c1452c4;
        this.f14222c = interfaceC1751o4;
        this.i = j3;
        this.f14223d = c1516ei.a(context, i3, d3.f12780a);
        c1516ei.a(i3, this);
    }

    public void a(C1448c0 c1448c0, D3 d3) {
        S3 s3;
        ((C2015z4) a()).a();
        if (C2011z0.a(c1448c0.o())) {
            s3 = a();
        } else {
            if (this.f14225f == null) {
                synchronized (this) {
                    COMPONENT a2 = this.f14222c.a(this.f14220a, this.f14221b, this.f14224e.a(), this.f14223d);
                    this.f14225f = a2;
                    this.f14227h.add(a2);
                }
            }
            s3 = this.f14225f;
        }
        if (!C2011z0.b(c1448c0.o())) {
            D3.a aVar = d3.f12781b;
            synchronized (this) {
                this.f14224e.a(aVar);
                Q3 q3 = this.f14226g;
                if (q3 != null) {
                    ((C2015z4) q3).a(aVar);
                }
                COMPONENT component = this.f14225f;
                if (component != null) {
                    component.a(aVar);
                }
            }
        }
        s3.a(c1448c0);
    }

    public synchronized void b(InterfaceC1651k4 interfaceC1651k4) {
        this.i.b(interfaceC1651k4);
    }

    public synchronized void a(InterfaceC1651k4 interfaceC1651k4) {
        this.i.a(interfaceC1651k4);
    }

    private Q3 a() {
        if (this.f14226g == null) {
            synchronized (this) {
                Q3 b2 = this.f14222c.b(this.f14220a, this.f14221b, this.f14224e.a(), this.f14223d);
                this.f14226g = b2;
                this.f14227h.add(b2);
            }
        }
        return this.f14226g;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1665ki
    public synchronized void a(C1790pi c1790pi) {
        for (InterfaceC1665ki interfaceC1665ki : this.f14227h) {
            interfaceC1665ki.a(c1790pi);
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1665ki
    public synchronized void a(EnumC1566gi enumC1566gi, C1790pi c1790pi) {
        for (InterfaceC1665ki interfaceC1665ki : this.f14227h) {
            interfaceC1665ki.a(enumC1566gi, c1790pi);
        }
    }

    public void a(D3 d3) {
        this.f14223d.a(d3.f12780a);
        D3.a aVar = d3.f12781b;
        synchronized (this) {
            this.f14224e.a(aVar);
            Q3 q3 = this.f14226g;
            if (q3 != null) {
                ((C2015z4) q3).a(aVar);
            }
            COMPONENT component = this.f14225f;
            if (component != null) {
                component.a(aVar);
            }
        }
    }
}

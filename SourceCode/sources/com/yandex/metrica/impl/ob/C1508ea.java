package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufStateSerializer;
import com.yandex.metrica.impl.ob.Cf;
/* renamed from: com.yandex.metrica.impl.ob.ea  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1508ea {

    /* renamed from: a  reason: collision with root package name */
    private C1937vm f14662a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1508ea(C1937vm c1937vm) {
        this.f14662a = c1937vm;
    }

    public ProtobufStateSerializer<C1954wf> a() {
        return new C1631j9(new C1557g9(), new C1961wm("AES/CBC/PKCS5Padding", this.f14662a.b(), this.f14662a.a()));
    }

    public ProtobufStateSerializer<C1978xf> b() {
        return new C1631j9(new Z2(), new C1961wm("AES/CBC/PKCS5Padding", this.f14662a.b(), this.f14662a.a()));
    }

    public ProtobufStateSerializer<C2002yf> c() {
        return new C1631j9(new C1607i9(), new C1961wm("AES/CBC/PKCS5Padding", this.f14662a.b(), this.f14662a.a()));
    }

    public ProtobufStateSerializer<Bf> d() {
        return new C1631j9(new C1656k9(), new C1961wm("AES/CBC/PKCS5Padding", this.f14662a.b(), this.f14662a.a()));
    }

    public ProtobufStateSerializer<Cf> e() {
        return new C1631j9(new Zd(), new C1961wm("AES/CBC/PKCS5Padding", this.f14662a.b(), this.f14662a.a()));
    }

    @Deprecated
    public ProtobufStateSerializer<Cf.a> f() {
        return new C1631j9(new C1587he(), new C1961wm("AES/CBC/PKCS5Padding", this.f14662a.b(), this.f14662a.a()));
    }

    public ProtobufStateSerializer<Df> g() {
        return new C1631j9(new C1706m9(), new C1961wm("AES/CBC/PKCS5Padding", this.f14662a.b(), this.f14662a.a()));
    }

    public ProtobufStateSerializer<Ff> h() {
        return new C1631j9(new C1756o9(), new C1961wm("AES/CBC/PKCS5Padding", this.f14662a.b(), this.f14662a.a()));
    }

    public ProtobufStateSerializer<If> i() {
        return new C1631j9(new C1781p9(), new C1961wm("AES/CBC/PKCS5Padding", this.f14662a.b(), this.f14662a.a()));
    }
}

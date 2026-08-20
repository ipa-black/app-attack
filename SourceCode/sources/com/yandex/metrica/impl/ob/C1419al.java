package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.al  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1419al implements InterfaceC1816qk {

    /* renamed from: a  reason: collision with root package name */
    private final int f14422a;

    public C1419al(int i) {
        this.f14422a = i;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1816qk
    public void a(C1444bl c1444bl) {
        if (c1444bl.f14492h.length() > this.f14422a) {
            int length = c1444bl.f14492h.length();
            int i = this.f14422a;
            int i2 = length - i;
            String substring = c1444bl.f14492h.substring(0, i);
            c1444bl.f14492h = substring;
            c1444bl.j = Integer.valueOf(substring.length() + i2);
        }
    }
}

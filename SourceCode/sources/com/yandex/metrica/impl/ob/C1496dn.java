package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.dn  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1496dn extends Sm<String> {
    public C1496dn(int i, String str) {
        this(i, str, C1470cm.a());
    }

    public C1496dn(int i, String str, C1470cm c1470cm) {
        super(i, str, c1470cm);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1546fn
    public String a(String str) {
        if (str == null || str.length() <= super.b()) {
            return str;
        }
        String substring = str.substring(0, super.b());
        if (this.f13918c.isEnabled()) {
            this.f13918c.fw("\"%s\" %s size exceeded limit of %d characters", super.a(), str, Integer.valueOf(super.b()));
        }
        return substring;
    }
}

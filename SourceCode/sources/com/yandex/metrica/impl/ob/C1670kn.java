package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.kn  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1670kn extends AbstractC1596hn<String, Vm> {
    public C1670kn(int i) {
        super(i);
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC1596hn
    public C1571gn<String, Vm> a(String str) {
        int i = 0;
        if (str != null && str.length() > a()) {
            String substring = str.substring(0, a());
            int length = C1422b.b(str).length;
            int length2 = C1422b.b(substring).length;
            i = str.getBytes().length - substring.getBytes().length;
            str = substring;
        }
        return new C1571gn<>(str, new Um(i));
    }
}

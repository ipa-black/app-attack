package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
class Nn implements Kn<Integer> {
    @Override // com.yandex.metrica.impl.ob.Kn
    public In a(Integer num) {
        if (num != null && num.intValue() <= 0) {
            return In.a(this, "Invalid quantity value " + num);
        }
        return In.a(this);
    }
}

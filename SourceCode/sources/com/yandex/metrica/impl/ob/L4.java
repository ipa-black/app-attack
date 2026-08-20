package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.F4;
import com.yandex.metrica.impl.ob.L3;
import com.yandex.metrica.impl.ob.S4;
/* loaded from: classes5.dex */
public class L4<T extends S4, C extends L3> extends F4<T, C> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements F4.a<T> {
        a(L4 l4) {
        }

        @Override // com.yandex.metrica.impl.ob.F4.a
        public boolean a(Object obj, C1448c0 c1448c0) {
            return ((S4) obj).a(c1448c0);
        }
    }

    public L4(K4<T> k4, C c2) {
        super(k4, c2);
    }

    public boolean a(C1448c0 c1448c0) {
        return a(c1448c0, new a(this));
    }
}

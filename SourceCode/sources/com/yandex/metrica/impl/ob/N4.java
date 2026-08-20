package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.F3;
import com.yandex.metrica.impl.ob.F4;
import com.yandex.metrica.impl.ob.M4;
/* loaded from: classes5.dex */
public class N4<T extends M4, C extends F3> extends F4<T, C> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements F4.a<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C1726n4 f13517a;

        a(N4 n4, C1726n4 c1726n4) {
            this.f13517a = c1726n4;
        }

        @Override // com.yandex.metrica.impl.ob.F4.a
        public boolean a(Object obj, C1448c0 c1448c0) {
            return ((M4) obj).a(c1448c0, this.f13517a);
        }
    }

    public N4(K4<T> k4, C c2) {
        super(k4, c2);
    }

    public boolean a(C1448c0 c1448c0, C1726n4 c1726n4) {
        return a(c1448c0, new a(this, c1726n4));
    }
}

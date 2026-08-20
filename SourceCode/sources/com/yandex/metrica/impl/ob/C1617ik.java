package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1840rl;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.ik  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1617ik {

    /* renamed from: a  reason: collision with root package name */
    private final List<Object> f14928a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1617ik(List<Object> list) {
        this.f14928a = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1840rl.b a(String str) {
        Iterator<Object> it = this.f14928a.iterator();
        while (it.hasNext()) {
            Cl cl = (Cl) it.next();
            if (cl.a(str)) {
                return cl.a();
            }
        }
        return null;
    }
}

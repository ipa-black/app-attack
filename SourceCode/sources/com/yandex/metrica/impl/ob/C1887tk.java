package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1840rl;
/* renamed from: com.yandex.metrica.impl.ob.tk  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1887tk implements Cl {

    /* renamed from: a  reason: collision with root package name */
    private final String f15781a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1887tk(String str) {
        this.f15781a = str;
    }

    @Override // com.yandex.metrica.impl.ob.Cl
    public boolean a(Object obj) {
        return ((String) obj).equals(this.f15781a);
    }

    @Override // com.yandex.metrica.impl.ob.Cl
    public C1840rl.b a() {
        return C1840rl.b.EQUALS;
    }
}

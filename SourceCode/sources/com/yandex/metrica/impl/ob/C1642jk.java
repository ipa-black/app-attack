package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1840rl;
/* renamed from: com.yandex.metrica.impl.ob.jk  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
class C1642jk implements Cl {

    /* renamed from: a  reason: collision with root package name */
    private final String f15012a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1642jk(String str) {
        this.f15012a = str;
    }

    @Override // com.yandex.metrica.impl.ob.Cl
    public boolean a(Object obj) {
        return ((String) obj).contains(this.f15012a);
    }

    @Override // com.yandex.metrica.impl.ob.Cl
    public C1840rl.b a() {
        return C1840rl.b.CONTAINS;
    }
}

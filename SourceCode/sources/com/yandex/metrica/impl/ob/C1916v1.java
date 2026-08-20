package com.yandex.metrica.impl.ob;

import android.content.Intent;
import com.yandex.metrica.impl.ob.A1;
/* renamed from: com.yandex.metrica.impl.ob.v1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
class C1916v1 implements A1.e {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ C1820r1 f15891a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1916v1(C1820r1 c1820r1) {
        this.f15891a = c1820r1;
    }

    @Override // com.yandex.metrica.impl.ob.A1.e
    public void a(Intent intent) {
        C1790pi c1790pi;
        C1790pi c1790pi2;
        Eh eh;
        C1790pi c1790pi3;
        c1790pi = this.f15891a.f15609a;
        if (c1790pi != null) {
            C1820r1 c1820r1 = this.f15891a;
            c1790pi2 = c1820r1.f15609a;
            C1820r1.b(c1820r1, c1790pi2);
            C1820r1.d(this.f15891a);
            eh = this.f15891a.f15613e;
            c1790pi3 = this.f15891a.f15609a;
            eh.a(c1790pi3);
        }
    }
}

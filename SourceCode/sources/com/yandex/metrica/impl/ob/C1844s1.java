package com.yandex.metrica.impl.ob;

import android.content.Context;
/* renamed from: com.yandex.metrica.impl.ob.s1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
class C1844s1 implements InterfaceC1700m3<C1799q3> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ C1820r1 f15701a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1844s1(C1820r1 c1820r1) {
        this.f15701a = c1820r1;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1700m3
    public boolean a(C1799q3 c1799q3) {
        Context context;
        context = this.f15701a.f15611c;
        return !context.getPackageName().equals(c1799q3.f15482a);
    }
}

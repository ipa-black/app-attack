package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.Intent;
import java.util.List;
import java.util.concurrent.CountDownLatch;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class G2 implements InterfaceC1694lm<Context, Intent, Void> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ V f12967a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ CountDownLatch f12968b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ H2 f12969c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public G2(H2 h2, V v, CountDownLatch countDownLatch) {
        this.f12969c = h2;
        this.f12967a = v;
        this.f12968b = countDownLatch;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1694lm
    public Void a(Context context, Intent intent) {
        List c2;
        J2 j2;
        V v = this.f12967a;
        c2 = this.f12969c.c();
        v.a(c2);
        this.f12968b.countDown();
        j2 = this.f12969c.k;
        j2.b(this);
        return null;
    }
}

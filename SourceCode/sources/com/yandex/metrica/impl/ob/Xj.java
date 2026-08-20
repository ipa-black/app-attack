package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
/* loaded from: classes5.dex */
public class Xj extends AbstractC1815qj {

    /* renamed from: a  reason: collision with root package name */
    private int f14280a;

    /* renamed from: b  reason: collision with root package name */
    private AbstractC1815qj f14281b;

    public Xj(Context context, ICommonExecutor iCommonExecutor) {
        this(context.getApplicationContext(), new C1720mn(), iCommonExecutor);
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC1815qj
    public synchronized void a() {
        int i = this.f14280a + 1;
        this.f14280a = i;
        if (i == 1) {
            this.f14281b.a();
        }
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC1815qj
    public synchronized void b() {
        int i = this.f14280a - 1;
        this.f14280a = i;
        if (i == 0) {
            this.f14281b.b();
        }
    }

    Xj(Context context, C1720mn c1720mn, ICommonExecutor iCommonExecutor) {
        if (c1720mn.a(context, "android.hardware.telephony")) {
            this.f14281b = new Ij(context, iCommonExecutor);
        } else {
            this.f14281b = new Kj();
        }
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC1815qj
    public synchronized void a(InterfaceC1418ak interfaceC1418ak) {
        this.f14281b.a(interfaceC1418ak);
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC1815qj
    public synchronized void a(InterfaceC1934vj interfaceC1934vj) {
        this.f14281b.a(interfaceC1934vj);
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC1815qj
    public void a(boolean z) {
        this.f14281b.a(z);
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC1815qj
    public void a(C1790pi c1790pi) {
        this.f14281b.a(c1790pi);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1734nc
    public void a(C1709mc c1709mc) {
        this.f14281b.a(c1709mc);
    }
}

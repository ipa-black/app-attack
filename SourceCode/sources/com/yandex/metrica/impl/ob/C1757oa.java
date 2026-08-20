package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.oa  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1757oa implements InterfaceC1949wa {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC1445bm f15324a;

    public C1757oa(InterfaceC1445bm interfaceC1445bm) {
        this.f15324a = interfaceC1445bm;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1949wa
    public long a(Z8 z8) {
        return z8.a(new Rd("LAST_ACTIVATION_DIAGNOSTICS_SENT_TIME_" + ((Xl) this.f15324a).b(), null).a(), Long.MAX_VALUE);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1949wa
    public void a(Z8 z8, long j) {
        Z8 z82 = (Z8) z8.b(new Rd("LAST_ACTIVATION_DIAGNOSTICS_SENT_TIME_" + ((Xl) this.f15324a).b(), null).a(), j);
    }
}

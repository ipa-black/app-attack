package com.yandex.metrica.impl.ob;

import com.yandex.metrica.coreutils.services.SystemTimeProvider;
/* renamed from: com.yandex.metrica.impl.ob.ec  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1510ec {

    /* renamed from: a  reason: collision with root package name */
    private final C1507e9 f14665a;

    /* renamed from: b  reason: collision with root package name */
    private final Cc f14666b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC1560gc f14667c;

    /* renamed from: d  reason: collision with root package name */
    private final C1435bc f14668d;

    /* renamed from: e  reason: collision with root package name */
    private final Zb f14669e;

    /* renamed from: f  reason: collision with root package name */
    private final C1485dc f14670f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.ec$a */
    /* loaded from: classes5.dex */
    public class a implements InterfaceC1560gc {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1560gc
        public void a(long j) {
            C1510ec.this.f14665a.g(j);
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1560gc
        public long getLastAttemptTimeSeconds() {
            return C1510ec.this.f14665a.b(0L);
        }
    }

    public C1510ec(Cc cc, C1507e9 c1507e9, Pc pc) {
        this.f14666b = cc;
        this.f14665a = c1507e9;
        InterfaceC1560gc b2 = b();
        this.f14667c = b2;
        this.f14669e = a(b2);
        this.f14668d = a();
        this.f14670f = a(pc);
    }

    private InterfaceC1560gc b() {
        return new a();
    }

    private C1435bc a() {
        return new C1435bc(this.f14666b.f12750a.f13858b);
    }

    private Zb a(InterfaceC1560gc interfaceC1560gc) {
        return new Zb(interfaceC1560gc, new C1965x2());
    }

    private C1485dc a(Pc pc) {
        Sb sb = this.f14666b.f12750a;
        return new C1485dc(sb.f13857a, pc, sb.f13858b, sb.f13859c);
    }

    public Ec<C1460cc> a(C1460cc c1460cc) {
        return new Ec<>(this.f14670f, this.f14669e, new Ob(this.f14667c, new SystemTimeProvider()), this.f14668d, c1460cc);
    }
}

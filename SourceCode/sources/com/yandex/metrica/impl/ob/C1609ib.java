package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1938w;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.yandex.metrica.impl.ob.ib  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1609ib {

    /* renamed from: a  reason: collision with root package name */
    private Uh f14909a;

    /* renamed from: b  reason: collision with root package name */
    private C1559gb f14910b;

    /* renamed from: c  reason: collision with root package name */
    private final C1938w f14911c;

    /* renamed from: d  reason: collision with root package name */
    private final C1584hb f14912d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.ib$a */
    /* loaded from: classes5.dex */
    public static final class a implements C1938w.b {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.C1938w.b
        public final void a(C1938w.a aVar) {
            C1609ib.this.b();
        }
    }

    public C1609ib(C1938w c1938w, C1584hb c1584hb) {
        this.f14911c = c1938w;
        this.f14912d = c1584hb;
    }

    public synchronized void b(C1790pi c1790pi) {
        Uh uh;
        if (!Intrinsics.areEqual(c1790pi.m(), this.f14909a)) {
            this.f14909a = c1790pi.m();
            C1559gb c1559gb = this.f14910b;
            if (c1559gb != null) {
                c1559gb.a();
            }
            this.f14910b = null;
            if (a() && this.f14910b == null && (uh = this.f14909a) != null) {
                this.f14910b = this.f14912d.a(uh);
            }
        }
    }

    public final synchronized void a(C1790pi c1790pi) {
        this.f14909a = c1790pi.m();
        this.f14911c.a(new a());
        b();
    }

    private final boolean a() {
        boolean d2;
        Uh uh = this.f14909a;
        if (uh != null) {
            C1938w.a c2 = this.f14911c.c();
            Intrinsics.checkNotNullExpressionValue(c2, "applicationStateProvider.currentState");
            if (uh.c().length() > 0) {
                int ordinal = c2.ordinal();
                if (ordinal == 0 || ordinal == 1) {
                    d2 = uh.d();
                } else if (ordinal != 2) {
                    throw new NoWhenBranchMatchedException();
                } else {
                    d2 = true;
                }
                return d2;
            }
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void b() {
        Uh uh;
        boolean z = this.f14910b != null;
        if (a() == z) {
            return;
        }
        if (z) {
            C1559gb c1559gb = this.f14910b;
            if (c1559gb != null) {
                c1559gb.a();
            }
            this.f14910b = null;
            return;
        }
        if (this.f14910b == null && (uh = this.f14909a) != null) {
            this.f14910b = this.f14912d.a(uh);
        }
    }
}

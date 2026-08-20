package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.executors.ICommonExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
/* renamed from: com.yandex.metrica.impl.ob.gb  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1559gb {

    /* renamed from: a  reason: collision with root package name */
    private AbstractRunnableC1520em f14780a;

    /* renamed from: b  reason: collision with root package name */
    private volatile boolean f14781b;

    /* renamed from: c  reason: collision with root package name */
    private final ICommonExecutor f14782c;

    /* renamed from: com.yandex.metrica.impl.ob.gb$a */
    /* loaded from: classes5.dex */
    public static final class a extends AbstractRunnableC1520em {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ b f14784b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ C1658kb f14785c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ long f14786d;

        a(b bVar, C1658kb c1658kb, long j) {
            this.f14784b = bVar;
            this.f14785c = c1658kb;
            this.f14786d = j;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC1520em
        public void a() {
            if (C1559gb.this.f14781b) {
                return;
            }
            this.f14784b.a(true);
            this.f14785c.a();
            C1559gb.this.f14782c.executeDelayed(C1559gb.b(C1559gb.this), this.f14786d, TimeUnit.SECONDS);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.gb$b */
    /* loaded from: classes5.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private volatile boolean f14787a;

        public b(boolean z) {
            this.f14787a = z;
        }

        public final boolean a() {
            return this.f14787a;
        }

        public /* synthetic */ b(boolean z, int i) {
            this((i & 1) != 0 ? false : z);
        }

        public final void a(boolean z) {
            this.f14787a = z;
        }
    }

    public C1559gb(Uh uh, b bVar, Random random, ICommonExecutor iCommonExecutor, C1658kb c1658kb) {
        this.f14782c = iCommonExecutor;
        this.f14780a = new a(bVar, c1658kb, uh.b());
        if (bVar.a()) {
            AbstractRunnableC1520em abstractRunnableC1520em = this.f14780a;
            if (abstractRunnableC1520em == null) {
                Intrinsics.throwUninitializedPropertyAccessException("periodicRunnable");
            }
            abstractRunnableC1520em.run();
            return;
        }
        long nextInt = random.nextInt(uh.a() + 1);
        AbstractRunnableC1520em abstractRunnableC1520em2 = this.f14780a;
        if (abstractRunnableC1520em2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("periodicRunnable");
        }
        iCommonExecutor.executeDelayed(abstractRunnableC1520em2, nextInt, TimeUnit.SECONDS);
    }

    public static final /* synthetic */ AbstractRunnableC1520em b(C1559gb c1559gb) {
        AbstractRunnableC1520em abstractRunnableC1520em = c1559gb.f14780a;
        if (abstractRunnableC1520em == null) {
            Intrinsics.throwUninitializedPropertyAccessException("periodicRunnable");
        }
        return abstractRunnableC1520em;
    }

    public final void a() {
        this.f14781b = true;
        ICommonExecutor iCommonExecutor = this.f14782c;
        AbstractRunnableC1520em abstractRunnableC1520em = this.f14780a;
        if (abstractRunnableC1520em == null) {
            Intrinsics.throwUninitializedPropertyAccessException("periodicRunnable");
        }
        iCommonExecutor.remove(abstractRunnableC1520em);
    }
}

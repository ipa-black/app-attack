package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.executors.ICommonExecutor;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.b3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1426b3 implements InterfaceC1696m {

    /* renamed from: a  reason: collision with root package name */
    private final S3 f14434a;

    /* renamed from: b  reason: collision with root package name */
    private final ICommonExecutor f14435b;

    /* renamed from: com.yandex.metrica.impl.ob.b3$a */
    /* loaded from: classes5.dex */
    class a extends AbstractRunnableC1520em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.yandex.metrica.billing_interface.d f14436a;

        a(com.yandex.metrica.billing_interface.d dVar) {
            this.f14436a = dVar;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC1520em
        public void a() throws Exception {
            S3 s3 = C1426b3.this.f14434a;
            C1426b3 c1426b3 = C1426b3.this;
            com.yandex.metrica.billing_interface.d dVar = this.f14436a;
            c1426b3.getClass();
            s3.a(C1448c0.a().a(new C1576h3(dVar).a()));
        }
    }

    public C1426b3(S3 s3, ICommonExecutor iCommonExecutor) {
        this.f14434a = s3;
        this.f14435b = iCommonExecutor;
    }

    public void a(List<com.yandex.metrica.billing_interface.d> list) {
        for (com.yandex.metrica.billing_interface.d dVar : list) {
            this.f14435b.execute(new a(dVar));
        }
    }
}

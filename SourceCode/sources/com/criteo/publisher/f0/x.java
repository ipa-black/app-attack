package com.criteo.publisher.f0;
/* compiled from: MetricSendingQueueProducer.java */
/* loaded from: classes2.dex */
public class x {

    /* renamed from: a  reason: collision with root package name */
    private final u f8831a;

    public x(u uVar) {
        this.f8831a = uVar;
    }

    public void a(r rVar) {
        for (n nVar : rVar.a()) {
            a(rVar, nVar.e());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MetricSendingQueueProducer.java */
    /* loaded from: classes2.dex */
    public class a implements p {
        a() {
        }

        @Override // com.criteo.publisher.f0.p
        public boolean a(n nVar) {
            return x.this.f8831a.a((u) nVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(r rVar, String str) {
        rVar.a(str, new a());
    }
}

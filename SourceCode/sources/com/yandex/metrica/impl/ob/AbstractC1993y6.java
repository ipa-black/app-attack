package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.y6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1993y6 implements A6 {

    /* renamed from: a  reason: collision with root package name */
    private final a f16070a;

    /* renamed from: b  reason: collision with root package name */
    private final com.yandex.metrica.c f16071b;

    /* renamed from: c  reason: collision with root package name */
    private final A0 f16072c;

    /* renamed from: com.yandex.metrica.impl.ob.y6$a */
    /* loaded from: classes5.dex */
    public interface a {
        boolean a(Throwable th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC1993y6(a aVar, com.yandex.metrica.c cVar, A0 a0) {
        this.f16070a = aVar;
        this.f16071b = cVar;
        this.f16072c = a0;
    }

    abstract void a(H6 h6);

    @Override // com.yandex.metrica.impl.ob.A6
    public void a(Throwable th, C1945w6 c1945w6) {
        if (this.f16070a.a(th)) {
            com.yandex.metrica.c cVar = this.f16071b;
            if (cVar == null || th == null || (th = cVar.a(th)) != null) {
                a(I6.a(th, c1945w6, null, this.f16072c.a(), this.f16072c.b()));
            }
        }
    }
}

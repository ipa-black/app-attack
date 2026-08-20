package com.criteo.publisher;

import com.criteo.publisher.n0.a;
import kotlin.jvm.functions.Function1;
/* loaded from: classes2.dex */
public class Bid {

    /* renamed from: a  reason: collision with root package name */
    private final double f8602a;

    /* renamed from: b  reason: collision with root package name */
    private final a f8603b;

    /* renamed from: c  reason: collision with root package name */
    private final i f8604c;

    /* renamed from: d  reason: collision with root package name */
    private com.criteo.publisher.model.s f8605d;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.criteo.publisher.model.s a(com.criteo.publisher.model.s sVar) {
        return sVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bid(a aVar, i iVar, com.criteo.publisher.model.s sVar) {
        this.f8602a = sVar.b().doubleValue();
        this.f8603b = aVar;
        this.f8605d = sVar;
        this.f8604c = iVar;
    }

    public double getPrice() {
        return this.f8602a;
    }

    public a c() {
        return this.f8603b;
    }

    public com.criteo.publisher.model.s b() {
        return (com.criteo.publisher.model.s) a(new Function1() { // from class: com.criteo.publisher.Bid$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                com.criteo.publisher.model.s a2;
                a2 = Bid.a((com.criteo.publisher.model.s) obj);
                return a2;
            }
        });
    }

    public String a(a aVar) {
        if (aVar.equals(this.f8603b)) {
            return (String) a(new Function1() { // from class: com.criteo.publisher.Bid$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ((com.criteo.publisher.model.s) obj).d();
                }
            });
        }
        return null;
    }

    public com.criteo.publisher.model.b0.n a() {
        return (com.criteo.publisher.model.b0.n) a(new Function1() { // from class: com.criteo.publisher.Bid$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ((com.criteo.publisher.model.s) obj).g();
            }
        });
    }

    private synchronized <T> T a(Function1<com.criteo.publisher.model.s, T> function1) {
        com.criteo.publisher.model.s sVar = this.f8605d;
        if (sVar != null && !sVar.a(this.f8604c)) {
            T invoke = function1.invoke(this.f8605d);
            this.f8605d = null;
            return invoke;
        }
        return null;
    }
}

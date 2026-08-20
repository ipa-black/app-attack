package com.yandex.metrica.impl.ob;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.lk  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1692lk {

    /* renamed from: a  reason: collision with root package name */
    private final C1432b9 f15093a;

    /* renamed from: b  reason: collision with root package name */
    private long f15094b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1692lk(C1432b9 c1432b9) {
        this.f15093a = c1432b9;
        this.f15094b = c1432b9.c(-1L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long a() {
        C1432b9 c1432b9 = this.f15093a;
        long j = this.f15094b + 1;
        this.f15094b = j;
        c1432b9.f(j);
        return this.f15094b;
    }
}

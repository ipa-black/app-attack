package com.criteo.publisher.f0;

import android.content.Context;
import com.criteo.publisher.s;
/* compiled from: MetricRepositoryFactory.java */
/* loaded from: classes2.dex */
public class s implements s.a<r> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f8820a;

    /* renamed from: b  reason: collision with root package name */
    private final q f8821b;

    /* renamed from: c  reason: collision with root package name */
    private final com.criteo.publisher.n0.g f8822c;

    public s(Context context, q qVar, com.criteo.publisher.n0.g gVar) {
        this.f8820a = context;
        this.f8821b = qVar;
        this.f8822c = gVar;
    }

    @Override // com.criteo.publisher.s.a
    /* renamed from: b */
    public r a() {
        return new i(new m(new o(this.f8820a, this.f8822c, this.f8821b)), this.f8822c);
    }
}

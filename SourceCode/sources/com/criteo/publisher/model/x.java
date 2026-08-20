package com.criteo.publisher.model;

import android.content.Context;
/* compiled from: RemoteConfigRequestFactory.java */
/* loaded from: classes2.dex */
public class x {

    /* renamed from: a  reason: collision with root package name */
    private final Context f9185a;

    /* renamed from: b  reason: collision with root package name */
    private final String f9186b;

    /* renamed from: c  reason: collision with root package name */
    private final com.criteo.publisher.n0.g f9187c;

    /* renamed from: d  reason: collision with root package name */
    private final com.criteo.publisher.i0.c f9188d;

    /* renamed from: e  reason: collision with root package name */
    private final com.criteo.publisher.n0.b f9189e;

    public x(Context context, String str, com.criteo.publisher.n0.g gVar, com.criteo.publisher.i0.c cVar, com.criteo.publisher.n0.b bVar) {
        this.f9185a = context;
        this.f9186b = str;
        this.f9187c = gVar;
        this.f9188d = cVar;
        this.f9189e = bVar;
    }

    public w a() {
        return w.a(this.f9186b, this.f9185a.getPackageName(), this.f9187c.q(), this.f9188d.b(), this.f9189e.b());
    }
}

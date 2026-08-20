package com.applovin.impl.sdk.e;

import android.content.Context;
/* loaded from: classes.dex */
public abstract class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Context f5673a;

    /* renamed from: b  reason: collision with root package name */
    protected final com.applovin.impl.sdk.n f5674b;

    /* renamed from: c  reason: collision with root package name */
    protected final String f5675c;

    /* renamed from: d  reason: collision with root package name */
    protected final com.applovin.impl.sdk.v f5676d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f5677e;

    public a(String str, com.applovin.impl.sdk.n nVar) {
        this(str, nVar, false);
    }

    public a(String str, com.applovin.impl.sdk.n nVar, boolean z) {
        this.f5675c = str;
        this.f5674b = nVar;
        this.f5676d = nVar.D();
        this.f5673a = nVar.P();
        this.f5677e = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.applovin.impl.sdk.n d() {
        return this.f5674b;
    }

    public String e() {
        return this.f5675c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Context f() {
        return this.f5673a;
    }

    public boolean g() {
        return this.f5677e;
    }
}

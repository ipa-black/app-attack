package com.criteo.publisher.model;
/* compiled from: WebViewData.java */
/* loaded from: classes2.dex */
public class a0 {

    /* renamed from: a  reason: collision with root package name */
    private String f9041a = "";

    /* renamed from: b  reason: collision with root package name */
    private com.criteo.publisher.n0.u f9042b = com.criteo.publisher.n0.u.NONE;

    /* renamed from: c  reason: collision with root package name */
    private final t f9043c;

    /* renamed from: d  reason: collision with root package name */
    private final com.criteo.publisher.k0.g f9044d;

    public a0(t tVar, com.criteo.publisher.k0.g gVar) {
        this.f9043c = tVar;
        this.f9044d = gVar;
    }

    public boolean e() {
        return this.f9042b == com.criteo.publisher.n0.u.LOADED;
    }

    public void a(String str) {
        this.f9041a = this.f9043c.b().replace(this.f9043c.a(), str);
    }

    public boolean f() {
        return this.f9042b == com.criteo.publisher.n0.u.LOADING;
    }

    public String d() {
        return this.f9041a;
    }

    public void g() {
        this.f9042b = com.criteo.publisher.n0.u.NONE;
        this.f9041a = "";
    }

    public void a() {
        this.f9042b = com.criteo.publisher.n0.u.FAILED;
    }

    public void c() {
        this.f9042b = com.criteo.publisher.n0.u.LOADED;
    }

    public void b() {
        this.f9042b = com.criteo.publisher.n0.u.LOADING;
    }

    public void a(String str, u uVar, com.criteo.publisher.m0.d dVar) {
        com.criteo.publisher.s.c().h1().execute(new com.criteo.publisher.m0.e(str, this, uVar, dVar, this.f9044d));
    }
}

package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.Sh;
import com.yandex.metrica.networktasks.api.RetryPolicyConfig;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public class Ui {
    private C1960wl A;
    private C1594hl B;
    private C1594hl C;
    private C1594hl D;
    private C1597i E;
    private boolean F;
    private C1909ui G;
    private Ph H;
    private C1829ra I;
    private List<String> J;
    private Oh K;
    private C1939w0 L;
    private Uh M;
    private C1861si N;
    private Map<String, Object> O;

    /* renamed from: a  reason: collision with root package name */
    private a f14111a;

    /* renamed from: c  reason: collision with root package name */
    private List<String> f14113c;

    /* renamed from: e  reason: collision with root package name */
    private List<String> f14115e;

    /* renamed from: g  reason: collision with root package name */
    private List<String> f14117g;

    /* renamed from: h  reason: collision with root package name */
    private String f14118h;
    private String i;
    private String j;
    private String k;
    private String l;
    private List<C1759oc> o;
    private Long p;
    private List<C1441bi> q;
    private String r;
    private List<String> s;
    private List<String> t;
    private Map<String, List<String>> u;
    private C1885ti v;
    private C1466ci w;
    private RetryPolicyConfig x;
    private Zh z;

    /* renamed from: b  reason: collision with root package name */
    private Sh f14112b = new Sh.a().a();

    /* renamed from: d  reason: collision with root package name */
    private String f14114d = "";

    /* renamed from: f  reason: collision with root package name */
    private String f14116f = "";
    private C1491di m = null;
    private C1416ai n = null;
    private List<Bd> y = new ArrayList();

    /* loaded from: classes5.dex */
    public enum a {
        BAD,
        OK
    }

    public a A() {
        return this.f14111a;
    }

    public RetryPolicyConfig B() {
        return this.x;
    }

    public C1466ci C() {
        return this.w;
    }

    public String D() {
        return this.f14118h;
    }

    public C1491di E() {
        return this.m;
    }

    public C1861si F() {
        return this.N;
    }

    public List<String> G() {
        return this.f14113c;
    }

    public C1885ti H() {
        return this.v;
    }

    public C1909ui I() {
        return this.G;
    }

    public C1594hl J() {
        return this.D;
    }

    public C1594hl K() {
        return this.B;
    }

    public C1960wl L() {
        return this.A;
    }

    public C1594hl M() {
        return this.C;
    }

    public Long N() {
        return this.p;
    }

    public boolean O() {
        return this.F;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Sh sh) {
        this.f14112b = sh;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(String str) {
        this.r = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(List<String> list) {
        this.f14117g = list;
    }

    public String d() {
        return this.i;
    }

    public Sh e() {
        return this.f14112b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(String str) {
        this.f14114d = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(String str) {
        this.f14116f = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(List<String> list) {
        this.f14113c = list;
    }

    public String i() {
        return this.j;
    }

    public List<String> j() {
        return this.s;
    }

    public C1829ra k() {
        return this.I;
    }

    public C1939w0 l() {
        return this.L;
    }

    public Uh m() {
        return this.M;
    }

    public String n() {
        return this.l;
    }

    public String o() {
        return this.f14114d;
    }

    public Zh p() {
        return this.z;
    }

    public List<C1759oc> q() {
        return this.o;
    }

    public List<String> r() {
        return this.f14117g;
    }

    public List<String> s() {
        return this.J;
    }

    public List<String> t() {
        return this.t;
    }

    public Map<String, Object> u() {
        return this.O;
    }

    public List<Bd> v() {
        return this.y;
    }

    public C1416ai w() {
        return this.n;
    }

    public String x() {
        return this.f14116f;
    }

    public List<String> y() {
        return this.f14115e;
    }

    public List<C1441bi> z() {
        return this.q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, boolean z) {
        this.y.add(new Bd(str, z));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(List<C1759oc> list) {
        this.o = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(String str) {
        this.k = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(String str) {
        this.j = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(String str) {
        this.l = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(List<String> list) {
        this.f14115e = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(List<C1441bi> list) {
        this.q = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(String str) {
        this.f14118h = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        this.i = str;
    }

    public void b(C1594hl c1594hl) {
        this.B = c1594hl;
    }

    public void c(C1594hl c1594hl) {
        this.C = c1594hl;
    }

    public void d(List<String> list) {
        this.J = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(List<String> list) {
        this.t = list;
    }

    public String f() {
        return this.r;
    }

    public Map<String, List<String>> g() {
        return this.u;
    }

    public String h() {
        return this.k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(a aVar) {
        this.f14111a = aVar;
    }

    public C1597i b() {
        return this.E;
    }

    public Ph c() {
        return this.H;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(C1491di c1491di) {
        this.m = c1491di;
    }

    public void b(Map<String, Object> map) {
        this.O = map;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(C1416ai c1416ai) {
        this.n = c1416ai;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Long l) {
        this.p = l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(List<String> list) {
        this.s = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Map<String, List<String>> map) {
        this.u = map;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(C1885ti c1885ti) {
        this.v = c1885ti;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(C1466ci c1466ci) {
        this.w = c1466ci;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Zh zh) {
        this.z = zh;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(RetryPolicyConfig retryPolicyConfig) {
        this.x = retryPolicyConfig;
    }

    public void a(C1960wl c1960wl) {
        this.A = c1960wl;
    }

    public void a(C1594hl c1594hl) {
        this.D = c1594hl;
    }

    public void a(C1597i c1597i) {
        this.E = c1597i;
    }

    public void a(boolean z) {
        this.F = z;
    }

    public void a(C1909ui c1909ui) {
        this.G = c1909ui;
    }

    public void a(Ph ph) {
        this.H = ph;
    }

    public void a(C1829ra c1829ra) {
        this.I = c1829ra;
    }

    public Oh a() {
        return this.K;
    }

    public void a(Oh oh) {
        this.K = oh;
    }

    public void a(C1939w0 c1939w0) {
        this.L = c1939w0;
    }

    public void a(Uh uh) {
        this.M = uh;
    }

    public void a(C1861si c1861si) {
        this.N = c1861si;
    }
}

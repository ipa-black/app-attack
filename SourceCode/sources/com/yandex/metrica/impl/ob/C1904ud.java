package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.ud  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1904ud implements InterfaceC1952wd {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC1952wd f15818a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC1952wd f15819b;

    /* renamed from: com.yandex.metrica.impl.ob.ud$a */
    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private InterfaceC1952wd f15820a;

        /* renamed from: b  reason: collision with root package name */
        private InterfaceC1952wd f15821b;

        public a(InterfaceC1952wd interfaceC1952wd, InterfaceC1952wd interfaceC1952wd2) {
            this.f15820a = interfaceC1952wd;
            this.f15821b = interfaceC1952wd2;
        }

        public a a(C1790pi c1790pi) {
            this.f15821b = new Fd(c1790pi.E());
            return this;
        }

        public a a(boolean z) {
            this.f15820a = new C1976xd(z);
            return this;
        }

        public C1904ud a() {
            return new C1904ud(this.f15820a, this.f15821b);
        }
    }

    C1904ud(InterfaceC1952wd interfaceC1952wd, InterfaceC1952wd interfaceC1952wd2) {
        this.f15818a = interfaceC1952wd;
        this.f15819b = interfaceC1952wd2;
    }

    public static a b() {
        return new a(new C1976xd(false), new Fd(null));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1952wd
    public boolean a(String str) {
        return this.f15819b.a(str) && this.f15818a.a(str);
    }

    public String toString() {
        return "AskForPermissionsStrategy{mLocationFlagStrategy=" + this.f15818a + ", mStartupStateStrategy=" + this.f15819b + '}';
    }

    public a a() {
        return new a(this.f15818a, this.f15819b);
    }
}

package com.adcolony.sdk;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e0 {

    /* renamed from: c  reason: collision with root package name */
    static e0 f292c;

    /* renamed from: d  reason: collision with root package name */
    static e0 f293d;

    /* renamed from: e  reason: collision with root package name */
    static e0 f294e;

    /* renamed from: f  reason: collision with root package name */
    static e0 f295f;

    /* renamed from: g  reason: collision with root package name */
    static e0 f296g;

    /* renamed from: h  reason: collision with root package name */
    static e0 f297h;
    static e0 i;

    /* renamed from: a  reason: collision with root package name */
    private final int f298a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f299b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        StringBuilder f300a = new StringBuilder();

        /* JADX INFO: Access modifiers changed from: package-private */
        public a a(String str) {
            this.f300a.append(str);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a a(Object obj) {
            if (obj != null) {
                this.f300a.append(obj.toString());
            } else {
                this.f300a.append("null");
            }
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a a(int i) {
            this.f300a.append(i);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(e0 e0Var) {
            e0Var.a(this.f300a.toString());
        }
    }

    static {
        new e0(3, false);
        f292c = new e0(3, true);
        f293d = new e0(2, false);
        f294e = new e0(2, true);
        f295f = new e0(1, false);
        f296g = new e0(1, true);
        f297h = new e0(0, false);
        i = new e0(0, true);
    }

    e0(int i2, boolean z) {
        this.f298a = i2;
        this.f299b = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        com.adcolony.sdk.a.b().q().a(this.f298a, str, this.f299b);
    }
}

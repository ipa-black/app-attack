package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import com.yandex.metrica.impl.ob.D1;
/* loaded from: classes5.dex */
public class O extends D1 {

    /* renamed from: a  reason: collision with root package name */
    private final C1432b9 f13561a;

    /* loaded from: classes5.dex */
    class a extends SparseArray<D1.a> {
        a() {
            put(47, new c(O.this.f13561a));
            put(66, new d(O.this, O.this.f13561a));
            put(89, new b(O.this.f13561a));
            put(99, new e(O.this.f13561a));
            put(105, new f(O.this.f13561a));
        }
    }

    /* loaded from: classes5.dex */
    private class d implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final C1432b9 f13565a;

        public d(O o, C1432b9 c1432b9) {
            this.f13565a = c1432b9;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            this.f13565a.f(new Rd("COOKIE_BROWSERS", null).a());
            this.f13565a.f(new Rd("BIND_ID_URL", null).a());
            L0.a(context, "b_meta.dat");
            L0.a(context, "browsers.dat");
        }
    }

    /* loaded from: classes5.dex */
    static class e implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final C1432b9 f13566a;

        e(C1432b9 c1432b9) {
            this.f13566a = c1432b9;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            this.f13566a.f(new Rd("DEVICE_ID_POSSIBLE", null).a()).d();
        }
    }

    /* loaded from: classes5.dex */
    static class f implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final C1432b9 f13567a;

        f(C1432b9 c1432b9) {
            this.f13567a = c1432b9;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            this.f13567a.f(new Rd("STARTUP_REQUEST_TIME", null).a()).d();
        }
    }

    public O(Context context) {
        this(new C1432b9(C1632ja.a(context).d()));
    }

    @Override // com.yandex.metrica.impl.ob.D1
    SparseArray<D1.a> a() {
        return new a();
    }

    @Override // com.yandex.metrica.impl.ob.D1
    protected int a(Nd nd) {
        return (int) this.f13561a.b(-1L);
    }

    O(C1432b9 c1432b9) {
        this.f13561a = c1432b9;
    }

    @Override // com.yandex.metrica.impl.ob.D1
    protected void a(Nd nd, int i) {
        this.f13561a.e(i);
        nd.g().b();
    }

    /* loaded from: classes5.dex */
    static class b implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final C1432b9 f13563a;

        b(C1432b9 c1432b9) {
            this.f13563a = c1432b9;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            String l = this.f13563a.l(null);
            String n = this.f13563a.n(null);
            String m = this.f13563a.m(null);
            String g2 = this.f13563a.g((String) null);
            String h2 = this.f13563a.h((String) null);
            String j = this.f13563a.j((String) null);
            this.f13563a.e(a(l));
            this.f13563a.i(a(n));
            this.f13563a.d(a(m));
            this.f13563a.a(a(g2));
            this.f13563a.b(a(h2));
            this.f13563a.h(a(j));
        }

        private W0 a(String str) {
            boolean isEmpty = TextUtils.isEmpty(str);
            return new W0(str, isEmpty ? U0.UNKNOWN : U0.OK, isEmpty ? "no identifier saved in previous version" : null);
        }
    }

    /* loaded from: classes5.dex */
    static class c implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private C1432b9 f13564a;

        public c(C1432b9 c1432b9) {
            this.f13564a = c1432b9;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            Ld ld = new Ld(context);
            if (A2.b(ld.g())) {
                return;
            }
            if (this.f13564a.n(null) == null || this.f13564a.l(null) == null) {
                String e2 = ld.e(null);
                if (a(e2, this.f13564a.l(null))) {
                    this.f13564a.s(e2);
                }
                String f2 = ld.f(null);
                if (a(f2, this.f13564a.n(null))) {
                    this.f13564a.t(f2);
                }
                String b2 = ld.b(null);
                if (a(b2, this.f13564a.g((String) null))) {
                    this.f13564a.o(b2);
                }
                String c2 = ld.c(null);
                if (a(c2, this.f13564a.h((String) null))) {
                    this.f13564a.p(c2);
                }
                String d2 = ld.d(null);
                if (a(d2, this.f13564a.j((String) null))) {
                    this.f13564a.q(d2);
                }
                long a2 = ld.a(-1L);
                long d3 = this.f13564a.d(-1L);
                if (a2 != -1 && d3 == -1) {
                    this.f13564a.h(a2);
                }
                this.f13564a.d();
                ld.f().b();
            }
        }

        private boolean a(String str, String str2) {
            return !TextUtils.isEmpty(str) && TextUtils.isEmpty(str2);
        }
    }
}

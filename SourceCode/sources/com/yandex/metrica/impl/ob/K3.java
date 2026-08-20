package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.google.android.exoplayer2.offline.DownloadService;
import com.yandex.metrica.impl.ob.C1842s;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class K3 {

    /* renamed from: a  reason: collision with root package name */
    private final L3 f13324a;

    /* renamed from: b  reason: collision with root package name */
    private final Id f13325b;

    /* renamed from: c  reason: collision with root package name */
    private List<j> f13326c;

    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final L3 f13327a;

        public b(L3 l3) {
            this.f13327a = l3;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public K3 a(Id id) {
            return new K3(this.f13327a, id);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class c extends j {

        /* renamed from: b  reason: collision with root package name */
        private final Md f13328b;

        /* renamed from: c  reason: collision with root package name */
        private final C1457c9 f13329c;

        c(L3 l3) {
            super(l3);
            this.f13328b = new Md(l3.g(), l3.e().toString());
            this.f13329c = l3.f();
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected void b() {
            C1504e6 c1504e6 = new C1504e6(this.f13329c, "background");
            if (!c1504e6.h()) {
                long c2 = this.f13328b.c(-1L);
                if (c2 != -1) {
                    c1504e6.d(c2);
                }
                long a2 = this.f13328b.a(Long.MIN_VALUE);
                if (a2 != Long.MIN_VALUE) {
                    c1504e6.a(a2);
                }
                long b2 = this.f13328b.b(0L);
                if (b2 != 0) {
                    c1504e6.c(b2);
                }
                long d2 = this.f13328b.d(0L);
                if (d2 != 0) {
                    c1504e6.e(d2);
                }
                c1504e6.b();
            }
            C1504e6 c1504e62 = new C1504e6(this.f13329c, DownloadService.KEY_FOREGROUND);
            if (!c1504e62.h()) {
                long g2 = this.f13328b.g(-1L);
                if (-1 != g2) {
                    c1504e62.d(g2);
                }
                boolean booleanValue = this.f13328b.a(true).booleanValue();
                if (booleanValue) {
                    c1504e62.a(booleanValue);
                }
                long e2 = this.f13328b.e(Long.MIN_VALUE);
                if (e2 != Long.MIN_VALUE) {
                    c1504e62.a(e2);
                }
                long f2 = this.f13328b.f(0L);
                if (f2 != 0) {
                    c1504e62.c(f2);
                }
                long h2 = this.f13328b.h(0L);
                if (h2 != 0) {
                    c1504e62.e(h2);
                }
                c1504e62.b();
            }
            C1842s.a f3 = this.f13328b.f();
            if (f3 != null) {
                this.f13329c.a(f3);
            }
            String b3 = this.f13328b.b((String) null);
            if (!TextUtils.isEmpty(b3) && TextUtils.isEmpty(this.f13329c.n())) {
                this.f13329c.j(b3);
            }
            long i = this.f13328b.i(Long.MIN_VALUE);
            if (i != Long.MIN_VALUE && this.f13329c.b(Long.MIN_VALUE) == Long.MIN_VALUE) {
                this.f13329c.c(i);
            }
            this.f13328b.h();
            this.f13329c.d();
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected boolean c() {
            return this.f13328b.g();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class d extends k {
        d(L3 l3, Id id) {
            super(l3, id);
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected void b() {
            d().a();
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected boolean c() {
            return a() instanceof U3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class e extends j {

        /* renamed from: b  reason: collision with root package name */
        private final Jd f13330b;

        /* renamed from: c  reason: collision with root package name */
        private final C1407a9 f13331c;

        e(L3 l3, Jd jd) {
            super(l3);
            this.f13330b = jd;
            this.f13331c = l3.o();
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected void b() {
            if ("DONE".equals(this.f13330b.c(null))) {
                this.f13331c.j();
            }
            if ("DONE".equals(this.f13330b.d(null))) {
                this.f13331c.k();
            }
            this.f13330b.h();
            this.f13330b.g();
            this.f13330b.i();
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected boolean c() {
            return "DONE".equals(this.f13330b.c(null)) || "DONE".equals(this.f13330b.d(null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class f extends k {
        f(L3 l3, Id id) {
            super(l3, id);
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected void b() {
            Id d2 = d();
            if (a() instanceof U3) {
                d2.b();
            } else {
                d2.c();
            }
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected boolean c() {
            return a().o().g(null) == null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class g extends j {

        /* renamed from: b  reason: collision with root package name */
        private final C1507e9 f13332b;

        g(L3 l3, C1507e9 c1507e9) {
            super(l3);
            this.f13332b = c1507e9;
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected void b() {
            if (this.f13332b.a(new Rd("REFERRER_HANDLED", null).a(), false)) {
                a().f().q();
            }
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected boolean c() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class h extends j {
        @Deprecated

        /* renamed from: c  reason: collision with root package name */
        static final Rd f13333c = new Rd("SESSION_SLEEP_START", null);
        @Deprecated

        /* renamed from: d  reason: collision with root package name */
        static final Rd f13334d = new Rd("SESSION_ID", null);
        @Deprecated

        /* renamed from: e  reason: collision with root package name */
        static final Rd f13335e = new Rd("SESSION_COUNTER_ID", null);
        @Deprecated

        /* renamed from: f  reason: collision with root package name */
        static final Rd f13336f = new Rd("SESSION_INIT_TIME", null);
        @Deprecated

        /* renamed from: g  reason: collision with root package name */
        static final Rd f13337g = new Rd("SESSION_IS_ALIVE_REPORT_NEEDED", null);
        @Deprecated

        /* renamed from: h  reason: collision with root package name */
        static final Rd f13338h = new Rd("BG_SESSION_ID", null);
        @Deprecated
        static final Rd i = new Rd("BG_SESSION_SLEEP_START", null);
        @Deprecated
        static final Rd j = new Rd("BG_SESSION_COUNTER_ID", null);
        @Deprecated
        static final Rd k = new Rd("BG_SESSION_INIT_TIME", null);
        @Deprecated
        static final Rd l = new Rd("BG_SESSION_IS_ALIVE_REPORT_NEEDED", null);

        /* renamed from: b  reason: collision with root package name */
        private final C1457c9 f13339b;

        h(L3 l3) {
            super(l3);
            this.f13339b = l3.f();
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected void b() {
            C1457c9 c1457c9 = this.f13339b;
            Rd rd = i;
            long a2 = c1457c9.a(rd.a(), -2147483648L);
            if (a2 != -2147483648L) {
                C1504e6 c1504e6 = new C1504e6(this.f13339b, "background");
                if (!c1504e6.h()) {
                    if (a2 != 0) {
                        c1504e6.e(a2);
                    }
                    long a3 = this.f13339b.a(f13338h.a(), -1L);
                    if (a3 != -1) {
                        c1504e6.d(a3);
                    }
                    boolean a4 = this.f13339b.a(l.a(), true);
                    if (a4) {
                        c1504e6.a(a4);
                    }
                    long a5 = this.f13339b.a(k.a(), Long.MIN_VALUE);
                    if (a5 != Long.MIN_VALUE) {
                        c1504e6.a(a5);
                    }
                    long a6 = this.f13339b.a(j.a(), 0L);
                    if (a6 != 0) {
                        c1504e6.c(a6);
                    }
                    c1504e6.b();
                }
            }
            C1457c9 c1457c92 = this.f13339b;
            Rd rd2 = f13333c;
            long a7 = c1457c92.a(rd2.a(), -2147483648L);
            if (a7 != -2147483648L) {
                C1504e6 c1504e62 = new C1504e6(this.f13339b, DownloadService.KEY_FOREGROUND);
                if (!c1504e62.h()) {
                    if (a7 != 0) {
                        c1504e62.e(a7);
                    }
                    long a8 = this.f13339b.a(f13334d.a(), -1L);
                    if (-1 != a8) {
                        c1504e62.d(a8);
                    }
                    boolean a9 = this.f13339b.a(f13337g.a(), true);
                    if (a9) {
                        c1504e62.a(a9);
                    }
                    long a10 = this.f13339b.a(f13336f.a(), Long.MIN_VALUE);
                    if (a10 != Long.MIN_VALUE) {
                        c1504e62.a(a10);
                    }
                    long a11 = this.f13339b.a(f13335e.a(), 0L);
                    if (a11 != 0) {
                        c1504e62.c(a11);
                    }
                    c1504e62.b();
                }
            }
            this.f13339b.f(rd2.a());
            this.f13339b.f(f13334d.a());
            this.f13339b.f(f13335e.a());
            this.f13339b.f(f13336f.a());
            this.f13339b.f(f13337g.a());
            this.f13339b.f(f13338h.a());
            this.f13339b.f(rd.a());
            this.f13339b.f(j.a());
            this.f13339b.f(k.a());
            this.f13339b.f(l.a());
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected boolean c() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class i extends j {

        /* renamed from: b  reason: collision with root package name */
        private final C1407a9 f13340b;

        /* renamed from: c  reason: collision with root package name */
        private final C1457c9 f13341c;

        /* renamed from: d  reason: collision with root package name */
        private final C1431b8 f13342d;

        /* renamed from: e  reason: collision with root package name */
        private final String f13343e;

        /* renamed from: f  reason: collision with root package name */
        private final String f13344f;

        /* renamed from: g  reason: collision with root package name */
        private final String f13345g;

        /* renamed from: h  reason: collision with root package name */
        private final String f13346h;
        private final String i;

        i(L3 l3) {
            super(l3);
            this.f13343e = new Rd("LAST_REQUEST_ID").a();
            this.f13344f = new Rd("NEXT_EVENT_GLOBAL_NUMBER").a();
            this.f13345g = new Rd("CURRENT_SESSION_ID").a();
            this.f13346h = new Rd("ATTRIBUTION_ID").a();
            this.i = new Rd("OPEN_ID").a();
            this.f13340b = l3.o();
            this.f13341c = l3.f();
            this.f13342d = l3.x();
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected void b() {
            JSONObject jSONObject = new JSONObject();
            for (String str : this.f13341c.e()) {
                if (str.startsWith("EVENT_NUMBER_OF_TYPE_")) {
                    try {
                        jSONObject.put(String.valueOf(Integer.parseInt(str.substring(21))), this.f13341c.a(str, 0));
                        this.f13341c.f(str);
                    } catch (Throwable unused) {
                    }
                }
            }
            this.f13342d.a(this.f13340b.f(), this.f13340b.g(), this.f13341c.c(this.f13343e) ? Integer.valueOf(this.f13341c.a(this.f13343e, -1)) : null, this.f13341c.c(this.f13344f) ? Integer.valueOf(this.f13341c.a(this.f13344f, 0)) : null, this.f13341c.c(this.f13345g) ? Long.valueOf(this.f13341c.a(this.f13345g, -1L)) : null, this.f13341c.t(), jSONObject, this.f13341c.c(this.i) ? Integer.valueOf(this.f13341c.a(this.i, 1)) : null, this.f13341c.c(this.f13346h) ? Integer.valueOf(this.f13341c.a(this.f13346h, 1)) : null, this.f13341c.j());
            this.f13340b.h().i().d();
            this.f13341c.s().r().f(this.f13343e).f(this.f13344f).f(this.f13345g).f(this.f13346h).f(this.i).d();
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected boolean c() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static abstract class j {

        /* renamed from: a  reason: collision with root package name */
        private final L3 f13347a;

        j(L3 l3) {
            this.f13347a = l3;
        }

        L3 a() {
            return this.f13347a;
        }

        protected abstract void b();

        protected abstract boolean c();
    }

    /* loaded from: classes5.dex */
    private static abstract class k extends j {

        /* renamed from: b  reason: collision with root package name */
        private Id f13348b;

        k(L3 l3, Id id) {
            super(l3);
            this.f13348b = id;
        }

        public Id d() {
            return this.f13348b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class l extends j {

        /* renamed from: b  reason: collision with root package name */
        private final C1407a9 f13349b;

        l(L3 l3) {
            super(l3);
            this.f13349b = l3.o();
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected void b() {
            this.f13349b.f(new Rd("first_event_description_key", null).a()).d();
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected boolean c() {
            return true;
        }
    }

    private void b() {
        LinkedList linkedList = new LinkedList();
        this.f13326c = linkedList;
        linkedList.add(new d(this.f13324a, this.f13325b));
        this.f13326c.add(new f(this.f13324a, this.f13325b));
        List<j> list = this.f13326c;
        L3 l3 = this.f13324a;
        list.add(new e(l3, l3.n()));
        this.f13326c.add(new c(this.f13324a));
        this.f13326c.add(new h(this.f13324a));
        List<j> list2 = this.f13326c;
        L3 l32 = this.f13324a;
        list2.add(new g(l32, l32.t()));
        this.f13326c.add(new l(this.f13324a));
        this.f13326c.add(new i(this.f13324a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (Id.f13069b.values().contains(this.f13324a.e().a())) {
            return;
        }
        for (j jVar : this.f13326c) {
            if (jVar.c()) {
                jVar.b();
            }
        }
    }

    private K3(L3 l3, Id id) {
        this.f13324a = l3;
        this.f13325b = id;
        b();
    }
}

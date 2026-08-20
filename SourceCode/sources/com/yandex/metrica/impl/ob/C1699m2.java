package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.SparseArray;
import com.yandex.metrica.core.api.ProtobufStateStorage;
import com.yandex.metrica.coreutils.io.FileUtils;
import com.yandex.metrica.impl.ob.C1790pi;
import com.yandex.metrica.impl.ob.C1814qi;
import com.yandex.metrica.impl.ob.C1842s;
import com.yandex.metrica.impl.ob.C1918v3;
import com.yandex.metrica.impl.ob.D1;
import com.yandex.metrica.impl.ob.InterfaceC1533fa;
import com.yandex.metrica.impl.ob.Ud;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.m2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1699m2 extends D1 {

    /* renamed from: a  reason: collision with root package name */
    private final C1507e9 f15101a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f15102b;

    /* renamed from: c  reason: collision with root package name */
    private final C1406a8 f15103c;

    /* renamed from: com.yandex.metrica.impl.ob.m2$a */
    /* loaded from: classes5.dex */
    class a extends SparseArray<D1.a> {
        a() {
            put(29, new j(C1699m2.this.f15102b));
            put(39, new k());
            put(47, new l(C1699m2.this.f15101a));
            put(60, new m(C1699m2.this.f15101a));
            put(62, new n());
            put(66, new o());
            put(67, new g(InterfaceC1533fa.b.a(C1814qi.class).b(C1699m2.this.f15102b), new C1532f9(C1632ja.a(C1699m2.this.f15102b).q(), C1699m2.this.f15102b.getPackageName())));
            put(68, new u());
            put(72, new f(InterfaceC1533fa.b.b(Bd.class).b(C1699m2.this.f15102b), InterfaceC1533fa.b.a(C1814qi.class).b(C1699m2.this.f15102b)));
            put(82, new h(InterfaceC1533fa.b.b(Bd.class).b(C1699m2.this.f15102b), InterfaceC1533fa.b.a(C1880td.class).b(C1699m2.this.f15102b)));
            put(87, new i(InterfaceC1533fa.b.a(C1814qi.class).b(C1699m2.this.f15102b)));
            put(92, new c(InterfaceC1533fa.b.a(C1814qi.class).b(C1699m2.this.f15102b)));
            put(93, new e(C1699m2.this.f15102b, InterfaceC1533fa.b.a(C1512ee.class).b(C1699m2.this.f15102b), InterfaceC1533fa.b.a(Ud.class).b(C1699m2.this.f15102b)));
            put(94, new p(C1699m2.this.f15102b, InterfaceC1533fa.b.a(C1814qi.class).b(C1699m2.this.f15102b)));
            put(98, new t(C1699m2.this.f15101a));
            put(100, new b(new C1532f9(C1632ja.a(C1699m2.this.f15102b).q(), C1699m2.this.f15102b.getPackageName())));
            put(101, new q(C1699m2.this.f15101a, InterfaceC1533fa.b.a(C1814qi.class).b(C1699m2.this.f15102b)));
            put(102, new r(InterfaceC1533fa.b.a(Ud.class).b(C1699m2.this.f15102b)));
            put(103, new d(InterfaceC1533fa.b.a(Z1.class).b(C1699m2.this.f15102b), InterfaceC1533fa.b.a(C1918v3.class).b(C1699m2.this.f15102b), C1699m2.this.f15101a));
            put(104, new s(C1632ja.a(C1699m2.this.f15102b).o()));
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$b */
    /* loaded from: classes5.dex */
    static class b implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final C1532f9 f15105a;

        public b(C1532f9 c1532f9) {
            this.f15105a = c1532f9;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            this.f15105a.f();
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$c */
    /* loaded from: classes5.dex */
    static class c implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final ProtobufStateStorage<C1814qi> f15106a;

        c(ProtobufStateStorage<C1814qi> protobufStateStorage) {
            this.f15106a = protobufStateStorage;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            C1814qi c1814qi = (C1814qi) this.f15106a.read();
            this.f15106a.save(c1814qi.a(c1814qi.r).g(c1814qi.p).a());
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$d */
    /* loaded from: classes5.dex */
    static class d implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final ProtobufStateStorage<Z1> f15107a;

        /* renamed from: b  reason: collision with root package name */
        private final ProtobufStateStorage<C1918v3> f15108b;

        /* renamed from: c  reason: collision with root package name */
        private final C1507e9 f15109c;

        public d(ProtobufStateStorage<Z1> protobufStateStorage, ProtobufStateStorage<C1918v3> protobufStateStorage2, C1507e9 c1507e9) {
            this.f15107a = protobufStateStorage;
            this.f15108b = protobufStateStorage2;
            this.f15109c = c1507e9;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            Z1 z1 = (Z1) this.f15107a.read();
            this.f15107a.delete();
            if (z1.f14327b) {
                if (!A2.b(z1.f14326a)) {
                    C1918v3.a aVar = new C1918v3.a(z1.f14326a, EnumC1891u0.SATELLITE);
                    this.f15108b.save(new C1918v3(aVar, Collections.singletonList(aVar)));
                }
                this.f15109c.h();
            }
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$e */
    /* loaded from: classes5.dex */
    static class e implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final C1412ae f15110a;

        /* renamed from: b  reason: collision with root package name */
        private final ProtobufStateStorage<C1512ee> f15111b;

        /* renamed from: c  reason: collision with root package name */
        private final ProtobufStateStorage<Ud> f15112c;

        e(Context context, ProtobufStateStorage<C1512ee> protobufStateStorage, ProtobufStateStorage<Ud> protobufStateStorage2) {
            this(protobufStateStorage, protobufStateStorage2, new C1412ae(context));
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            C1512ee invoke;
            C1512ee c1512ee = (C1512ee) this.f15111b.read();
            ArrayList arrayList = new ArrayList();
            EnumC1891u0 enumC1891u0 = c1512ee.f14680e;
            if (enumC1891u0 != EnumC1891u0.UNDEFINED) {
                arrayList.add(new Ud.a(c1512ee.f14676a, c1512ee.f14677b, enumC1891u0));
            }
            if (c1512ee.f14680e == EnumC1891u0.RETAIL && (invoke = this.f15110a.invoke()) != null) {
                arrayList.add(new Ud.a(invoke.f14676a, invoke.f14677b, invoke.f14680e));
            }
            this.f15112c.save(new Ud(c1512ee, arrayList));
            this.f15111b.delete();
        }

        e(ProtobufStateStorage<C1512ee> protobufStateStorage, ProtobufStateStorage<Ud> protobufStateStorage2, C1412ae c1412ae) {
            this.f15111b = protobufStateStorage;
            this.f15112c = protobufStateStorage2;
            this.f15110a = c1412ae;
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$f */
    /* loaded from: classes5.dex */
    static class f implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final ProtobufStateStorage<Collection<Bd>> f15113a;

        /* renamed from: b  reason: collision with root package name */
        private final ProtobufStateStorage<C1814qi> f15114b;

        /* renamed from: c  reason: collision with root package name */
        private final B0 f15115c;

        public f(ProtobufStateStorage<Collection<Bd>> protobufStateStorage, ProtobufStateStorage<C1814qi> protobufStateStorage2) {
            this(protobufStateStorage, protobufStateStorage2, new B0());
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            JSONObject jSONObject;
            String str;
            V7 h2 = C1632ja.a(context).h();
            List<Bd> b2 = h2.b();
            if (b2 != null) {
                this.f15113a.save(b2);
                h2.a();
            }
            C1814qi c1814qi = (C1814qi) this.f15114b.read();
            C1814qi.b a2 = c1814qi.a(c1814qi.r);
            String str2 = null;
            try {
                jSONObject = new JSONObject(L0.a(this.f15115c.b(context.getFilesDir(), "credentials.dat")));
            } catch (Throwable unused) {
                jSONObject = null;
            }
            if (jSONObject == null && FileUtils.needToUseNoBackup()) {
                try {
                    jSONObject = new JSONObject(L0.a(this.f15115c.b(context.getNoBackupFilesDir(), "credentials.dat")));
                } catch (Throwable unused2) {
                }
            }
            if (jSONObject != null) {
                str2 = jSONObject.optString("device_id", null);
                str = jSONObject.optString("device_id_hash", null);
            } else {
                str = null;
            }
            if (!TextUtils.isEmpty(str2)) {
                a2.c(str2);
            }
            if (!TextUtils.isEmpty(str)) {
                a2.d(str);
            }
            a2.b(true);
            this.f15114b.save(a2.a());
            context.getSharedPreferences("com.yandex.metrica.configuration", 0).edit().clear().apply();
        }

        f(ProtobufStateStorage<Collection<Bd>> protobufStateStorage, ProtobufStateStorage<C1814qi> protobufStateStorage2, B0 b0) {
            this.f15113a = protobufStateStorage;
            this.f15114b = protobufStateStorage2;
            this.f15115c = b0;
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$g */
    /* loaded from: classes5.dex */
    static class g implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private ProtobufStateStorage f15116a;

        /* renamed from: b  reason: collision with root package name */
        private C1532f9 f15117b;

        public g(ProtobufStateStorage protobufStateStorage, C1532f9 c1532f9) {
            this.f15116a = protobufStateStorage;
            this.f15117b = c1532f9;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            this.f15116a.save(this.f15117b.g());
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$h */
    /* loaded from: classes5.dex */
    static class h implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final ProtobufStateStorage<Collection<Bd>> f15118a;

        /* renamed from: b  reason: collision with root package name */
        private final ProtobufStateStorage<C1880td> f15119b;

        h(ProtobufStateStorage<Collection<Bd>> protobufStateStorage, ProtobufStateStorage<C1880td> protobufStateStorage2) {
            this.f15118a = protobufStateStorage;
            this.f15119b = protobufStateStorage2;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            this.f15119b.save(new C1880td(new ArrayList((Collection) this.f15118a.read()), null, new ArrayList()));
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$i */
    /* loaded from: classes5.dex */
    static class i implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final ProtobufStateStorage<C1814qi> f15120a;

        i(ProtobufStateStorage<C1814qi> protobufStateStorage) {
            this.f15120a = protobufStateStorage;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            ProtobufStateStorage<C1814qi> protobufStateStorage = this.f15120a;
            C1814qi c1814qi = (C1814qi) protobufStateStorage.read();
            protobufStateStorage.save(c1814qi.a(c1814qi.r).b(true).a());
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$j */
    /* loaded from: classes5.dex */
    static class j implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private Pd f15121a;

        /* renamed from: b  reason: collision with root package name */
        private C1532f9 f15122b;

        j(Context context) {
            this.f15121a = new Pd(context);
            this.f15122b = new C1532f9(C1632ja.a(context).p(), context.getPackageName());
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            String b2 = this.f15121a.b((String) null);
            if (TextUtils.isEmpty(b2)) {
                return;
            }
            this.f15122b.i(b2).d();
            Pd.b(context);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$k */
    /* loaded from: classes5.dex */
    static class k implements D1.a {
        k() {
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            Md md = new Md(context, context.getPackageName());
            SharedPreferences a2 = C1422b.a(context, "_boundentrypreferences");
            Rd rd = Md.H;
            String string = a2.getString(rd.b(), null);
            Rd rd2 = Md.I;
            long j = a2.getLong(rd2.b(), -1L);
            if (string == null || j == -1) {
                return;
            }
            md.a(new C1842s.a(string, j)).b();
            a2.edit().remove(rd.b()).remove(rd2.b()).apply();
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$l */
    /* loaded from: classes5.dex */
    static class l implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final C1507e9 f15123a;

        l(C1507e9 c1507e9) {
            this.f15123a = c1507e9;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            C1507e9 c1507e9 = this.f15123a;
            Qd qd = new Qd(context, null);
            if (qd.f()) {
                c1507e9.d(true);
                qd.g();
            }
            C1507e9 c1507e92 = this.f15123a;
            Od od = new Od(context, context.getPackageName());
            long a2 = od.a(0);
            if (a2 != 0) {
                c1507e92.l(a2);
            }
            od.f();
            new Md(context, new W3(context.getPackageName(), null).b()).i().b();
            this.f15123a.d();
            Hd hd = new Hd(context);
            hd.a();
            hd.b();
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$m */
    /* loaded from: classes5.dex */
    static class m implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final C1507e9 f15124a;

        m(C1507e9 c1507e9) {
            this.f15124a = c1507e9;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            boolean z = new C1532f9(C1632ja.a(context).q(), context.getPackageName()).g().u > 0;
            boolean z2 = this.f15124a.b(-1) > 0;
            if (z || z2) {
                this.f15124a.c(false).d();
            }
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$n */
    /* loaded from: classes5.dex */
    static class n implements D1.a {
        n() {
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            C1532f9 c1532f9 = new C1532f9(C1632ja.a(context).q(), context.getPackageName());
            String h2 = c1532f9.h(null);
            if (h2 != null) {
                c1532f9.b(Collections.singletonList(h2));
            }
            String g2 = c1532f9.g(null);
            if (g2 != null) {
                c1532f9.a(Collections.singletonList(g2));
            }
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$o */
    /* loaded from: classes5.dex */
    static class o implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final B0 f15125a;

        /* renamed from: com.yandex.metrica.impl.ob.m2$o$a */
        /* loaded from: classes5.dex */
        static class a implements FilenameFilter {

            /* renamed from: a  reason: collision with root package name */
            final Iterable<FilenameFilter> f15126a;

            a(Iterable<FilenameFilter> iterable) {
                this.f15126a = iterable;
            }

            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str) {
                for (FilenameFilter filenameFilter : this.f15126a) {
                    if (filenameFilter.accept(file, str)) {
                        return true;
                    }
                }
                return false;
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.m2$o$b */
        /* loaded from: classes5.dex */
        static class b implements FilenameFilter {

            /* renamed from: a  reason: collision with root package name */
            private final FilenameFilter f15127a;

            b(FilenameFilter filenameFilter) {
                this.f15127a = filenameFilter;
            }

            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str) {
                if (str.startsWith("db_metrica_")) {
                    try {
                        FilenameFilter filenameFilter = this.f15127a;
                        if (str.endsWith("-journal")) {
                            str = str.replace("-journal", "");
                        }
                        return filenameFilter.accept(file, str);
                    } catch (Throwable unused) {
                        return false;
                    }
                }
                return false;
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.m2$o$c */
        /* loaded from: classes5.dex */
        static class c implements FilenameFilter {
            c() {
            }

            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str) {
                return str.endsWith("null");
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.m2$o$d */
        /* loaded from: classes5.dex */
        static class d implements FilenameFilter {

            /* renamed from: a  reason: collision with root package name */
            private final String f15128a;

            d(String str) {
                this.f15128a = str;
            }

            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str) {
                return !str.contains(this.f15128a);
            }
        }

        o() {
            this(new B0());
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            File[] listFiles;
            if (b(context) == null) {
                listFiles = new File[0];
            } else {
                listFiles = b(context).listFiles(new a(Arrays.asList(new b(new d(context.getPackageName())), new b(new c()))));
            }
            for (File file : listFiles) {
                try {
                    if (!file.delete()) {
                        ((C1739nh) C1764oh.a()).reportEvent("Can not delete file", new JSONObject().put("fileName", file.getName()).toString());
                    }
                } catch (Throwable th) {
                    ((C1739nh) C1764oh.a()).reportError("Can not delete file", th);
                }
            }
            new C1532f9(C1632ja.a(context).q(), context.getPackageName()).f(new Rd("LAST_STARTUP_CLIDS_SAVE_TIME", null).a()).d();
        }

        File b(Context context) {
            if (A2.a(21)) {
                return context.getNoBackupFilesDir();
            }
            File filesDir = context.getFilesDir();
            if (filesDir != null) {
                return this.f15125a.b(filesDir.getParentFile(), "databases");
            }
            return null;
        }

        o(B0 b0) {
            this.f15125a = b0;
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$r */
    /* loaded from: classes5.dex */
    static class r implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final ProtobufStateStorage<Ud> f15139a;

        public r(ProtobufStateStorage<Ud> protobufStateStorage) {
            this.f15139a = protobufStateStorage;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            Ud ud = (Ud) this.f15139a.read();
            ArrayList arrayList = new ArrayList();
            Ud.a aVar = null;
            for (Ud.a aVar2 : ud.f14031b) {
                if (aVar2.f14034c != EnumC1891u0.APP) {
                    arrayList.add(aVar2);
                } else if (aVar == null) {
                    arrayList.add(aVar2);
                    aVar = aVar2;
                }
            }
            this.f15139a.save(new Ud(ud.f14030a, arrayList));
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$s */
    /* loaded from: classes5.dex */
    static class s implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final R7 f15140a;

        public s(R7 r7) {
            this.f15140a = r7;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            this.f15140a.b("notification_cache_state");
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$t */
    /* loaded from: classes5.dex */
    static class t implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final C1507e9 f15141a;

        public t(C1507e9 c1507e9) {
            this.f15141a = c1507e9;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            this.f15141a.f(new Rd("REFERRER", null).a()).f(new Rd("REFERRER_HOLDER_STATE", null).a()).d();
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$u */
    /* loaded from: classes5.dex */
    static class u implements D1.a {
        u() {
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            ProtobufStateStorage b2 = InterfaceC1533fa.b.a(C1814qi.class).b(context);
            C1814qi c1814qi = (C1814qi) b2.read();
            b2.save(c1814qi.a(c1814qi.r).a(c1814qi.u > 0).b(true).a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1699m2(Context context, C1507e9 c1507e9, C1406a8 c1406a8) {
        this.f15102b = context;
        this.f15101a = c1507e9;
        this.f15103c = c1406a8;
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$q */
    /* loaded from: classes5.dex */
    static class q implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final C1507e9 f15131a;

        /* renamed from: b  reason: collision with root package name */
        private final ProtobufStateStorage<C1814qi> f15132b;

        /* renamed from: c  reason: collision with root package name */
        private final C1406a8 f15133c;

        /* renamed from: d  reason: collision with root package name */
        private final String f15134d;

        /* renamed from: e  reason: collision with root package name */
        private final String f15135e;

        /* renamed from: f  reason: collision with root package name */
        private final String f15136f;

        /* renamed from: g  reason: collision with root package name */
        private final String f15137g;

        /* renamed from: h  reason: collision with root package name */
        private final String f15138h;

        public q(C1507e9 c1507e9, ProtobufStateStorage<C1814qi> protobufStateStorage) {
            this(c1507e9, protobufStateStorage, F0.g().w().b());
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            C1814qi c1814qi = (C1814qi) this.f15132b.read();
            Nd nd = new Nd(context);
            int f2 = nd.f();
            if (f2 == -1) {
                f2 = this.f15131a.a(-1);
            }
            this.f15133c.a(c1814qi.f15580b, c1814qi.f15581c, this.f15131a.a(this.f15134d, (String) null), this.f15131a.c(this.f15135e) ? Boolean.valueOf(this.f15131a.a(this.f15135e, false)) : null, this.f15131a.c(this.f15136f) ? Long.valueOf(this.f15131a.a(this.f15136f, -1L)) : null, this.f15131a.c(this.f15137g) ? Long.valueOf(this.f15131a.a(this.f15137g, -1L)) : null, this.f15131a.c(this.f15138h) ? Long.valueOf(this.f15131a.a(this.f15138h, -1L)) : null, f2 == -1 ? null : Integer.valueOf(f2));
            this.f15131a.j().f(this.f15134d).f(this.f15135e).f(this.f15136f).f(this.f15137g).f(this.f15138h).d();
            nd.h().b();
        }

        q(C1507e9 c1507e9, ProtobufStateStorage<C1814qi> protobufStateStorage, C1406a8 c1406a8) {
            this.f15134d = new Rd("REFERRER_FROM_PLAY_SERVICES").a();
            this.f15135e = new Rd("REFERRER_CHECKED").a();
            this.f15136f = new Rd("L_ID").a();
            this.f15137g = new Rd("LBS_ID").a();
            this.f15138h = new Rd("L_REQ_NUM").a();
            this.f15131a = c1507e9;
            this.f15132b = protobufStateStorage;
            this.f15133c = c1406a8;
        }
    }

    @Override // com.yandex.metrica.impl.ob.D1
    SparseArray<D1.a> a() {
        return new a();
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$p */
    /* loaded from: classes5.dex */
    static class p implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final ProtobufStateStorage<C1814qi> f15129a;

        /* renamed from: b  reason: collision with root package name */
        private final C1492dj f15130b;

        public p(Context context, ProtobufStateStorage<C1814qi> protobufStateStorage) {
            this(protobufStateStorage, C1517ej.a(context).b(context, new C1616ij(new C1790pi.b(context))));
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            String str = this.f15130b.a().f14173a;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            C1814qi c1814qi = (C1814qi) this.f15129a.read();
            if (str.equals(c1814qi.f15579a)) {
                return;
            }
            this.f15129a.save(c1814qi.a(c1814qi.r).k(str).a());
        }

        public p(ProtobufStateStorage<C1814qi> protobufStateStorage, C1492dj c1492dj) {
            this.f15129a = protobufStateStorage;
            this.f15130b = c1492dj;
        }
    }

    @Override // com.yandex.metrica.impl.ob.D1
    protected int a(Nd nd) {
        int f2 = nd.f();
        if (f2 == -1) {
            f2 = this.f15101a.a(-1);
        }
        return f2 == -1 ? this.f15103c.c() : f2;
    }

    @Override // com.yandex.metrica.impl.ob.D1
    protected void a(Nd nd, int i2) {
        this.f15103c.a(i2);
    }
}

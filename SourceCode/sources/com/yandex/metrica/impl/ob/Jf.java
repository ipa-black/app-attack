package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import com.yandex.metrica.core.api.ProtobufStateStorage;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.coreutils.services.ActivationBarrier;
import com.yandex.metrica.impl.ob.C1441bi;
import com.yandex.metrica.impl.ob.H1;
import com.yandex.metrica.network.NetworkClient;
import com.yandex.metrica.network.Request;
import com.yandex.metrica.network.Response;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public class Jf {
    private static final Map<C1441bi.a, H1.d> i = Collections.unmodifiableMap(new a());

    /* renamed from: a  reason: collision with root package name */
    private final Context f13262a;

    /* renamed from: b  reason: collision with root package name */
    private final ProtobufStateStorage<e> f13263b;

    /* renamed from: c  reason: collision with root package name */
    private final ICommonExecutor f13264c;

    /* renamed from: d  reason: collision with root package name */
    private final C1664kh f13265d;

    /* renamed from: e  reason: collision with root package name */
    private final C1845s2 f13266e;

    /* renamed from: f  reason: collision with root package name */
    private final Rl f13267f;

    /* renamed from: g  reason: collision with root package name */
    private e f13268g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f13269h = false;

    /* loaded from: classes5.dex */
    class a extends HashMap<C1441bi.a, H1.d> {
        a() {
            put(C1441bi.a.CELL, H1.d.CELL);
            put(C1441bi.a.WIFI, H1.d.WIFI);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Jf.a(Jf.this);
        }
    }

    /* loaded from: classes5.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f13271a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ C1790pi f13272b;

        c(List list, C1790pi c1790pi) {
            this.f13271a = list;
            this.f13272b = c1790pi;
        }

        @Override // java.lang.Runnable
        public void run() {
            Jf.a(Jf.this, this.f13271a, this.f13272b.C());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ e.a f13274a;

        d(e.a aVar) {
            this.f13274a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Jf.this.f13266e.e()) {
                return;
            }
            Jf.this.f13265d.b(this.f13274a);
            e.b bVar = new e.b(this.f13274a);
            Rl rl = Jf.this.f13267f;
            Context context = Jf.this.f13262a;
            ((Ml) rl).getClass();
            H1.d a2 = H1.a(context);
            bVar.a(a2);
            if (a2 == H1.d.OFFLINE) {
                bVar.a(e.b.a.OFFLINE);
            } else if (!this.f13274a.f13283f.contains(a2)) {
                bVar.a(e.b.a.INCOMPATIBLE_NETWORK_TYPE);
            } else {
                Request.Builder withMethod = new Request.Builder(this.f13274a.f13279b).withMethod(this.f13274a.f13280c);
                for (Map.Entry<String, ? extends Collection<String>> entry : this.f13274a.f13281d.a()) {
                    withMethod.addHeader(entry.getKey(), TextUtils.join(",", entry.getValue()));
                }
                NetworkClient.Builder builder = new NetworkClient.Builder();
                F0.g().t().getClass();
                NetworkClient.Builder withInstanceFollowRedirects = builder.withSslSocketFactory(null).withInstanceFollowRedirects(true);
                int i = C1710md.f15151a;
                Response execute = withInstanceFollowRedirects.withConnectTimeout(i).withReadTimeout(i).withMaxResponseSize(102400).build().newCall(withMethod.build()).execute();
                int code = execute.getCode();
                if (execute.isCompleted()) {
                    bVar.a(e.b.a.COMPLETE);
                } else {
                    bVar.a(e.b.a.ERROR);
                    bVar.a(execute.getException());
                }
                bVar.a(Integer.valueOf(code));
                bVar.f13288e = execute.getResponseData();
                bVar.f13289f = execute.getErrorData();
                bVar.a(execute.getHeaders());
            }
            Jf.a(Jf.this, bVar);
        }
    }

    /* loaded from: classes5.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        private final List<a> f13276a;

        /* renamed from: b  reason: collision with root package name */
        private final LinkedHashMap<String, Object> f13277b = new LinkedHashMap<>();

        /* loaded from: classes5.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            public final String f13278a;

            /* renamed from: b  reason: collision with root package name */
            public final String f13279b;

            /* renamed from: c  reason: collision with root package name */
            public final String f13280c;

            /* renamed from: d  reason: collision with root package name */
            public final C1841rm<String, String> f13281d;

            /* renamed from: e  reason: collision with root package name */
            public final long f13282e;

            /* renamed from: f  reason: collision with root package name */
            public final List<H1.d> f13283f;

            public a(String str, String str2, String str3, C1841rm<String, String> c1841rm, long j, List<H1.d> list) {
                this.f13278a = str;
                this.f13279b = str2;
                this.f13280c = str3;
                this.f13282e = j;
                this.f13283f = list;
                this.f13281d = c1841rm;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || a.class != obj.getClass()) {
                    return false;
                }
                return this.f13278a.equals(((a) obj).f13278a);
            }

            public int hashCode() {
                return this.f13278a.hashCode();
            }
        }

        /* loaded from: classes5.dex */
        public static class b {

            /* renamed from: a  reason: collision with root package name */
            private final a f13284a;

            /* renamed from: b  reason: collision with root package name */
            private a f13285b;

            /* renamed from: c  reason: collision with root package name */
            private H1.d f13286c;

            /* renamed from: d  reason: collision with root package name */
            private Integer f13287d;

            /* renamed from: e  reason: collision with root package name */
            byte[] f13288e;

            /* renamed from: f  reason: collision with root package name */
            byte[] f13289f;

            /* renamed from: g  reason: collision with root package name */
            private Map<String, List<String>> f13290g;

            /* renamed from: h  reason: collision with root package name */
            private Throwable f13291h;

            /* loaded from: classes5.dex */
            public enum a {
                OFFLINE,
                INCOMPATIBLE_NETWORK_TYPE,
                COMPLETE,
                ERROR
            }

            public b(a aVar) {
                this.f13284a = aVar;
            }

            public byte[] b() {
                return this.f13289f;
            }

            public Throwable c() {
                return this.f13291h;
            }

            public a d() {
                return this.f13284a;
            }

            public byte[] e() {
                return this.f13288e;
            }

            public Integer f() {
                return this.f13287d;
            }

            public Map<String, List<String>> g() {
                return this.f13290g;
            }

            public a h() {
                return this.f13285b;
            }

            public void a(a aVar) {
                this.f13285b = aVar;
            }

            public H1.d a() {
                return this.f13286c;
            }

            public void a(H1.d dVar) {
                this.f13286c = dVar;
            }

            public void a(Integer num) {
                this.f13287d = num;
            }

            public void a(Map<String, List<String>> map) {
                this.f13290g = map;
            }

            public void a(Throwable th) {
                this.f13291h = th;
            }
        }

        public e(List<a> list, List<String> list2) {
            this.f13276a = list;
            if (A2.b(list2)) {
                return;
            }
            for (String str : list2) {
                this.f13277b.put(str, new Object());
            }
        }

        public boolean a(a aVar) {
            if (this.f13277b.get(aVar.f13278a) != null || this.f13276a.contains(aVar)) {
                return false;
            }
            this.f13276a.add(aVar);
            return true;
        }

        public List<a> b() {
            return this.f13276a;
        }

        public void b(a aVar) {
            this.f13277b.put(aVar.f13278a, new Object());
            this.f13276a.remove(aVar);
        }

        public Set<String> a() {
            HashSet hashSet = new HashSet();
            int i = 0;
            for (String str : this.f13277b.keySet()) {
                hashSet.add(str);
                i++;
                if (i > 1000) {
                    break;
                }
            }
            return hashSet;
        }
    }

    public Jf(Context context, ProtobufStateStorage<e> protobufStateStorage, C1845s2 c1845s2, C1664kh c1664kh, ICommonExecutor iCommonExecutor, Rl rl) {
        this.f13262a = context;
        this.f13263b = protobufStateStorage;
        this.f13266e = c1845s2;
        this.f13265d = c1664kh;
        this.f13268g = (e) protobufStateStorage.read();
        this.f13264c = iCommonExecutor;
        this.f13267f = rl;
    }

    static void a(Jf jf, List list, long j) {
        Long l;
        jf.getClass();
        if (A2.b(list)) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            C1441bi c1441bi = (C1441bi) it.next();
            if (c1441bi.f14483a != null && c1441bi.f14484b != null && c1441bi.f14485c != null && (l = c1441bi.f14487e) != null && l.longValue() >= 0 && !A2.b(c1441bi.f14488f)) {
                String str = c1441bi.f14483a;
                String str2 = c1441bi.f14484b;
                String str3 = c1441bi.f14485c;
                List<Pair<String, String>> list2 = c1441bi.f14486d;
                C1841rm c1841rm = new C1841rm(false);
                for (Pair<String, String> pair : list2) {
                    c1841rm.a(pair.first, pair.second);
                }
                long millis = TimeUnit.SECONDS.toMillis(c1441bi.f14487e.longValue() + j);
                List<C1441bi.a> list3 = c1441bi.f14488f;
                ArrayList arrayList = new ArrayList(list3.size());
                for (C1441bi.a aVar : list3) {
                    arrayList.add(i.get(aVar));
                }
                jf.a(new e.a(str, str2, str3, c1841rm, millis, arrayList));
            }
        }
    }

    private void b(e.a aVar) {
        this.f13264c.executeDelayed(new d(aVar), Math.max(ActivationBarrier.ACTIVATION_DELAY, Math.max(aVar.f13282e - System.currentTimeMillis(), 0L)));
    }

    public synchronized void a() {
        this.f13264c.execute(new b());
    }

    static void a(Jf jf) {
        if (jf.f13269h) {
            return;
        }
        e eVar = (e) jf.f13263b.read();
        jf.f13268g = eVar;
        for (e.a aVar : eVar.b()) {
            jf.b(aVar);
        }
        jf.f13269h = true;
    }

    public synchronized void a(C1790pi c1790pi) {
        this.f13264c.execute(new c(c1790pi.I(), c1790pi));
    }

    private boolean a(e.a aVar) {
        boolean a2 = this.f13268g.a(aVar);
        if (a2) {
            b(aVar);
            this.f13265d.a(aVar);
        }
        this.f13263b.save(this.f13268g);
        return a2;
    }

    static void a(Jf jf, e.b bVar) {
        synchronized (jf) {
            jf.f13268g.b(bVar.f13284a);
            jf.f13263b.save(jf.f13268g);
            jf.f13265d.a(bVar);
        }
    }
}

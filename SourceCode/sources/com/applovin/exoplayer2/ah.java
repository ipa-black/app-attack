package com.applovin.exoplayer2;

import android.os.Handler;
import com.applovin.exoplayer2.d.g;
import com.applovin.exoplayer2.h.p;
import com.applovin.exoplayer2.h.q;
import com.applovin.exoplayer2.h.z;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ah {

    /* renamed from: d  reason: collision with root package name */
    private final d f1331d;

    /* renamed from: e  reason: collision with root package name */
    private final q.a f1332e;

    /* renamed from: f  reason: collision with root package name */
    private final g.a f1333f;

    /* renamed from: g  reason: collision with root package name */
    private final HashMap<c, b> f1334g;

    /* renamed from: h  reason: collision with root package name */
    private final Set<c> f1335h;
    private boolean j;
    private com.applovin.exoplayer2.k.aa k;
    private com.applovin.exoplayer2.h.z i = new z.a(0);

    /* renamed from: b  reason: collision with root package name */
    private final IdentityHashMap<com.applovin.exoplayer2.h.n, c> f1329b = new IdentityHashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final Map<Object, c> f1330c = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    private final List<c> f1328a = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class a implements com.applovin.exoplayer2.d.g, com.applovin.exoplayer2.h.q {

        /* renamed from: b  reason: collision with root package name */
        private final c f1337b;

        /* renamed from: c  reason: collision with root package name */
        private q.a f1338c;

        /* renamed from: d  reason: collision with root package name */
        private g.a f1339d;

        public a(c cVar) {
            this.f1338c = ah.this.f1332e;
            this.f1339d = ah.this.f1333f;
            this.f1337b = cVar;
        }

        private boolean f(int i, p.a aVar) {
            p.a aVar2;
            if (aVar != null) {
                aVar2 = ah.b(this.f1337b, aVar);
                if (aVar2 == null) {
                    return false;
                }
            } else {
                aVar2 = null;
            }
            int b2 = ah.b(this.f1337b, i);
            if (this.f1338c.f3090a != b2 || !com.applovin.exoplayer2.l.ai.a(this.f1338c.f3091b, aVar2)) {
                this.f1338c = ah.this.f1332e.a(b2, aVar2, 0L);
            }
            if (this.f1339d.f2020a == b2 && com.applovin.exoplayer2.l.ai.a(this.f1339d.f2021b, aVar2)) {
                return true;
            }
            this.f1339d = ah.this.f1333f.a(b2, aVar2);
            return true;
        }

        @Override // com.applovin.exoplayer2.d.g
        public void a(int i, p.a aVar) {
            if (f(i, aVar)) {
                this.f1339d.a();
            }
        }

        @Override // com.applovin.exoplayer2.d.g
        public void a(int i, p.a aVar, int i2) {
            if (f(i, aVar)) {
                this.f1339d.a(i2);
            }
        }

        @Override // com.applovin.exoplayer2.h.q
        public void a(int i, p.a aVar, com.applovin.exoplayer2.h.j jVar, com.applovin.exoplayer2.h.m mVar) {
            if (f(i, aVar)) {
                this.f1338c.a(jVar, mVar);
            }
        }

        @Override // com.applovin.exoplayer2.h.q
        public void a(int i, p.a aVar, com.applovin.exoplayer2.h.j jVar, com.applovin.exoplayer2.h.m mVar, IOException iOException, boolean z) {
            if (f(i, aVar)) {
                this.f1338c.a(jVar, mVar, iOException, z);
            }
        }

        @Override // com.applovin.exoplayer2.h.q
        public void a(int i, p.a aVar, com.applovin.exoplayer2.h.m mVar) {
            if (f(i, aVar)) {
                this.f1338c.a(mVar);
            }
        }

        @Override // com.applovin.exoplayer2.d.g
        public void a(int i, p.a aVar, Exception exc) {
            if (f(i, aVar)) {
                this.f1339d.a(exc);
            }
        }

        @Override // com.applovin.exoplayer2.d.g
        public void b(int i, p.a aVar) {
            if (f(i, aVar)) {
                this.f1339d.b();
            }
        }

        @Override // com.applovin.exoplayer2.h.q
        public void b(int i, p.a aVar, com.applovin.exoplayer2.h.j jVar, com.applovin.exoplayer2.h.m mVar) {
            if (f(i, aVar)) {
                this.f1338c.b(jVar, mVar);
            }
        }

        @Override // com.applovin.exoplayer2.d.g
        public void c(int i, p.a aVar) {
            if (f(i, aVar)) {
                this.f1339d.c();
            }
        }

        @Override // com.applovin.exoplayer2.h.q
        public void c(int i, p.a aVar, com.applovin.exoplayer2.h.j jVar, com.applovin.exoplayer2.h.m mVar) {
            if (f(i, aVar)) {
                this.f1338c.c(jVar, mVar);
            }
        }

        @Override // com.applovin.exoplayer2.d.g
        public void d(int i, p.a aVar) {
            if (f(i, aVar)) {
                this.f1339d.d();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final com.applovin.exoplayer2.h.p f1340a;

        /* renamed from: b  reason: collision with root package name */
        public final p.b f1341b;

        /* renamed from: c  reason: collision with root package name */
        public final a f1342c;

        public b(com.applovin.exoplayer2.h.p pVar, p.b bVar, a aVar) {
            this.f1340a = pVar;
            this.f1341b = bVar;
            this.f1342c = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class c implements ag {

        /* renamed from: a  reason: collision with root package name */
        public final com.applovin.exoplayer2.h.l f1343a;

        /* renamed from: d  reason: collision with root package name */
        public int f1346d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f1347e;

        /* renamed from: c  reason: collision with root package name */
        public final List<p.a> f1345c = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        public final Object f1344b = new Object();

        public c(com.applovin.exoplayer2.h.p pVar, boolean z) {
            this.f1343a = new com.applovin.exoplayer2.h.l(pVar, z);
        }

        @Override // com.applovin.exoplayer2.ag
        public Object a() {
            return this.f1344b;
        }

        public void a(int i) {
            this.f1346d = i;
            this.f1347e = false;
            this.f1345c.clear();
        }

        @Override // com.applovin.exoplayer2.ag
        public ba b() {
            return this.f1343a.f();
        }
    }

    /* loaded from: classes.dex */
    public interface d {
        void e();
    }

    public ah(d dVar, com.applovin.exoplayer2.a.a aVar, Handler handler) {
        this.f1331d = dVar;
        q.a aVar2 = new q.a();
        this.f1332e = aVar2;
        g.a aVar3 = new g.a();
        this.f1333f = aVar3;
        this.f1334g = new HashMap<>();
        this.f1335h = new HashSet();
        if (aVar != null) {
            aVar2.a(handler, aVar);
            aVar3.a(handler, aVar);
        }
    }

    private static Object a(c cVar, Object obj) {
        return ap.a(cVar.f1344b, obj);
    }

    private static Object a(Object obj) {
        return ap.a(obj);
    }

    private void a(int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            c remove = this.f1328a.remove(i3);
            this.f1330c.remove(remove.f1344b);
            b(i3, -remove.f1343a.f().b());
            remove.f1347e = true;
            if (this.j) {
                d(remove);
            }
        }
    }

    private void a(c cVar) {
        this.f1335h.add(cVar);
        b bVar = this.f1334g.get(cVar);
        if (bVar != null) {
            bVar.f1340a.a(bVar.f1341b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.exoplayer2.h.p pVar, ba baVar) {
        this.f1331d.e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(c cVar, int i) {
        return i + cVar.f1346d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static p.a b(c cVar, p.a aVar) {
        for (int i = 0; i < cVar.f1345c.size(); i++) {
            if (cVar.f1345c.get(i).f3088d == aVar.f3088d) {
                return aVar.a(a(cVar, aVar.f3085a));
            }
        }
        return null;
    }

    private static Object b(Object obj) {
        return ap.b(obj);
    }

    private void b(int i, int i2) {
        while (i < this.f1328a.size()) {
            this.f1328a.get(i).f1346d += i2;
            i++;
        }
    }

    private void b(c cVar) {
        b bVar = this.f1334g.get(cVar);
        if (bVar != null) {
            bVar.f1340a.b(bVar.f1341b);
        }
    }

    private void c(c cVar) {
        com.applovin.exoplayer2.h.l lVar = cVar.f1343a;
        p.b bVar = new p.b() { // from class: com.applovin.exoplayer2.ah$$ExternalSyntheticLambda0
            @Override // com.applovin.exoplayer2.h.p.b
            public final void onSourceInfoRefreshed(com.applovin.exoplayer2.h.p pVar, ba baVar) {
                ah.this.a(pVar, baVar);
            }
        };
        a aVar = new a(cVar);
        this.f1334g.put(cVar, new b(lVar, bVar, aVar));
        lVar.a(com.applovin.exoplayer2.l.ai.b(), (com.applovin.exoplayer2.h.q) aVar);
        lVar.a(com.applovin.exoplayer2.l.ai.b(), (com.applovin.exoplayer2.d.g) aVar);
        lVar.a(bVar, this.k);
    }

    private void d(c cVar) {
        if (cVar.f1347e && cVar.f1345c.isEmpty()) {
            b bVar = (b) com.applovin.exoplayer2.l.a.b(this.f1334g.remove(cVar));
            bVar.f1340a.c(bVar.f1341b);
            bVar.f1340a.a((com.applovin.exoplayer2.h.q) bVar.f1342c);
            bVar.f1340a.a((com.applovin.exoplayer2.d.g) bVar.f1342c);
            this.f1335h.remove(cVar);
        }
    }

    private void e() {
        Iterator<c> it = this.f1335h.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (next.f1345c.isEmpty()) {
                b(next);
                it.remove();
            }
        }
    }

    public ba a(int i, int i2, int i3, com.applovin.exoplayer2.h.z zVar) {
        com.applovin.exoplayer2.l.a.a(i >= 0 && i <= i2 && i2 <= b() && i3 >= 0);
        this.i = zVar;
        if (i == i2 || i == i3) {
            return d();
        }
        int min = Math.min(i, i3);
        int max = Math.max(((i2 - i) + i3) - 1, i2 - 1);
        int i4 = this.f1328a.get(min).f1346d;
        com.applovin.exoplayer2.l.ai.a(this.f1328a, i, i2, i3);
        while (min <= max) {
            c cVar = this.f1328a.get(min);
            cVar.f1346d = i4;
            i4 += cVar.f1343a.f().b();
            min++;
        }
        return d();
    }

    public ba a(int i, int i2, com.applovin.exoplayer2.h.z zVar) {
        com.applovin.exoplayer2.l.a.a(i >= 0 && i <= i2 && i2 <= b());
        this.i = zVar;
        a(i, i2);
        return d();
    }

    public ba a(int i, List<c> list, com.applovin.exoplayer2.h.z zVar) {
        int i2;
        if (!list.isEmpty()) {
            this.i = zVar;
            for (int i3 = i; i3 < list.size() + i; i3++) {
                c cVar = list.get(i3 - i);
                if (i3 > 0) {
                    c cVar2 = this.f1328a.get(i3 - 1);
                    i2 = cVar2.f1346d + cVar2.f1343a.f().b();
                } else {
                    i2 = 0;
                }
                cVar.a(i2);
                b(i3, cVar.f1343a.f().b());
                this.f1328a.add(i3, cVar);
                this.f1330c.put(cVar.f1344b, cVar);
                if (this.j) {
                    c(cVar);
                    if (this.f1329b.isEmpty()) {
                        this.f1335h.add(cVar);
                    } else {
                        b(cVar);
                    }
                }
            }
        }
        return d();
    }

    public ba a(com.applovin.exoplayer2.h.z zVar) {
        int b2 = b();
        if (zVar.a() != b2) {
            zVar = zVar.d().a(0, b2);
        }
        this.i = zVar;
        return d();
    }

    public ba a(List<c> list, com.applovin.exoplayer2.h.z zVar) {
        a(0, this.f1328a.size());
        return a(this.f1328a.size(), list, zVar);
    }

    public com.applovin.exoplayer2.h.n a(p.a aVar, com.applovin.exoplayer2.k.b bVar, long j) {
        Object a2 = a(aVar.f3085a);
        p.a a3 = aVar.a(b(aVar.f3085a));
        c cVar = (c) com.applovin.exoplayer2.l.a.b(this.f1330c.get(a2));
        a(cVar);
        cVar.f1345c.add(a3);
        com.applovin.exoplayer2.h.k b2 = cVar.f1343a.b(a3, bVar, j);
        this.f1329b.put(b2, cVar);
        e();
        return b2;
    }

    public void a(com.applovin.exoplayer2.h.n nVar) {
        c cVar = (c) com.applovin.exoplayer2.l.a.b(this.f1329b.remove(nVar));
        cVar.f1343a.a(nVar);
        cVar.f1345c.remove(((com.applovin.exoplayer2.h.k) nVar).f3058a);
        if (!this.f1329b.isEmpty()) {
            e();
        }
        d(cVar);
    }

    public void a(com.applovin.exoplayer2.k.aa aaVar) {
        com.applovin.exoplayer2.l.a.b(!this.j);
        this.k = aaVar;
        for (int i = 0; i < this.f1328a.size(); i++) {
            c cVar = this.f1328a.get(i);
            c(cVar);
            this.f1335h.add(cVar);
        }
        this.j = true;
    }

    public boolean a() {
        return this.j;
    }

    public int b() {
        return this.f1328a.size();
    }

    public void c() {
        for (b bVar : this.f1334g.values()) {
            try {
                bVar.f1340a.c(bVar.f1341b);
            } catch (RuntimeException e2) {
                com.applovin.exoplayer2.l.q.c("MediaSourceList", "Failed to release child source.", e2);
            }
            bVar.f1340a.a((com.applovin.exoplayer2.h.q) bVar.f1342c);
            bVar.f1340a.a((com.applovin.exoplayer2.d.g) bVar.f1342c);
        }
        this.f1334g.clear();
        this.f1335h.clear();
        this.j = false;
    }

    public ba d() {
        if (this.f1328a.isEmpty()) {
            return ba.f1615a;
        }
        int i = 0;
        for (int i2 = 0; i2 < this.f1328a.size(); i2++) {
            c cVar = this.f1328a.get(i2);
            cVar.f1346d = i;
            i += cVar.f1343a.f().b();
        }
        return new ap(this.f1328a, this.i);
    }
}

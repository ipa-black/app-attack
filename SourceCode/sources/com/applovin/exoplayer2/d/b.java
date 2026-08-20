package com.applovin.exoplayer2.d;

import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import com.applovin.exoplayer2.d.e;
import com.applovin.exoplayer2.d.f;
import com.applovin.exoplayer2.d.g;
import com.applovin.exoplayer2.d.m;
import com.applovin.exoplayer2.k.v;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.C;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b implements com.applovin.exoplayer2.d.f {

    /* renamed from: a  reason: collision with root package name */
    public final List<e.a> f1965a;

    /* renamed from: b  reason: collision with root package name */
    final r f1966b;

    /* renamed from: c  reason: collision with root package name */
    final UUID f1967c;

    /* renamed from: d  reason: collision with root package name */
    final e f1968d;

    /* renamed from: e  reason: collision with root package name */
    private final m f1969e;

    /* renamed from: f  reason: collision with root package name */
    private final a f1970f;

    /* renamed from: g  reason: collision with root package name */
    private final InterfaceC0030b f1971g;

    /* renamed from: h  reason: collision with root package name */
    private final int f1972h;
    private final boolean i;
    private final boolean j;
    private final HashMap<String, String> k;
    private final com.applovin.exoplayer2.l.i<g.a> l;
    private final v m;
    private int n;
    private int o;
    private HandlerThread p;
    private c q;
    private com.applovin.exoplayer2.c.b r;
    private f.a s;
    private byte[] t;
    private byte[] u;
    private m.a v;
    private m.d w;

    /* loaded from: classes.dex */
    public interface a {
        void a();

        void a(b bVar);

        void a(Exception exc, boolean z);
    }

    /* renamed from: com.applovin.exoplayer2.d.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0030b {
        void a(b bVar, int i);

        void b(b bVar, int i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class c extends Handler {

        /* renamed from: b  reason: collision with root package name */
        private boolean f1974b;

        public c(Looper looper) {
            super(looper);
        }

        private boolean a(Message message, s sVar) {
            d dVar = (d) message.obj;
            if (dVar.f1976b) {
                dVar.f1979e++;
                if (dVar.f1979e > b.this.m.a(3)) {
                    return false;
                }
                long a2 = b.this.m.a(new v.a(new com.applovin.exoplayer2.h.j(dVar.f1975a, sVar.f2046a, sVar.f2047b, sVar.f2048c, SystemClock.elapsedRealtime(), SystemClock.elapsedRealtime() - dVar.f1977c, sVar.f2049d), new com.applovin.exoplayer2.h.m(3), sVar.getCause() instanceof IOException ? (IOException) sVar.getCause() : new f(sVar.getCause()), dVar.f1979e));
                if (a2 == C.TIME_UNSET) {
                    return false;
                }
                synchronized (this) {
                    if (this.f1974b) {
                        return false;
                    }
                    sendMessageDelayed(Message.obtain(message), a2);
                    return true;
                }
            }
            return false;
        }

        public synchronized void a() {
            removeCallbacksAndMessages(null);
            this.f1974b = true;
        }

        void a(int i, Object obj, boolean z) {
            obtainMessage(i, new d(com.applovin.exoplayer2.h.j.a(), z, SystemClock.elapsedRealtime(), obj)).sendToTarget();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Throwable, java.lang.Exception] */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            byte[] bArr;
            d dVar = (d) message.obj;
            try {
                int i = message.what;
                if (i == 0) {
                    bArr = b.this.f1966b.a(b.this.f1967c, (m.d) dVar.f1978d);
                } else if (i != 1) {
                    throw new RuntimeException();
                } else {
                    bArr = b.this.f1966b.a(b.this.f1967c, (m.a) dVar.f1978d);
                }
            } catch (s e2) {
                boolean a2 = a(message, e2);
                bArr = e2;
                if (a2) {
                    return;
                }
            } catch (Exception e3) {
                com.applovin.exoplayer2.l.q.b("DefaultDrmSession", "Key/provisioning request produced an unexpected exception. Not retrying.", e3);
                bArr = e3;
            }
            b.this.m.a(dVar.f1975a);
            synchronized (this) {
                if (!this.f1974b) {
                    b.this.f1968d.obtainMessage(message.what, Pair.create(dVar.f1978d, bArr)).sendToTarget();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final long f1975a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f1976b;

        /* renamed from: c  reason: collision with root package name */
        public final long f1977c;

        /* renamed from: d  reason: collision with root package name */
        public final Object f1978d;

        /* renamed from: e  reason: collision with root package name */
        public int f1979e;

        public d(long j, boolean z, long j2, Object obj) {
            this.f1975a = j;
            this.f1976b = z;
            this.f1977c = j2;
            this.f1978d = obj;
        }
    }

    /* loaded from: classes.dex */
    private class e extends Handler {
        public e(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Pair pair = (Pair) message.obj;
            Object obj = pair.first;
            Object obj2 = pair.second;
            int i = message.what;
            if (i == 0) {
                b.this.a(obj, obj2);
            } else if (i != 1) {
            } else {
                b.this.b(obj, obj2);
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class f extends IOException {
        public f(Throwable th) {
            super(th);
        }
    }

    public b(UUID uuid, m mVar, a aVar, InterfaceC0030b interfaceC0030b, List<e.a> list, int i, boolean z, boolean z2, byte[] bArr, HashMap<String, String> hashMap, r rVar, Looper looper, v vVar) {
        List<e.a> unmodifiableList;
        if (i == 1 || i == 3) {
            com.applovin.exoplayer2.l.a.b(bArr);
        }
        this.f1967c = uuid;
        this.f1970f = aVar;
        this.f1971g = interfaceC0030b;
        this.f1969e = mVar;
        this.f1972h = i;
        this.i = z;
        this.j = z2;
        if (bArr != null) {
            this.u = bArr;
            unmodifiableList = null;
        } else {
            unmodifiableList = Collections.unmodifiableList((List) com.applovin.exoplayer2.l.a.b(list));
        }
        this.f1965a = unmodifiableList;
        this.k = hashMap;
        this.f1966b = rVar;
        this.l = new com.applovin.exoplayer2.l.i<>();
        this.m = vVar;
        this.n = 2;
        this.f1968d = new e(looper);
    }

    private void a(com.applovin.exoplayer2.l.h<g.a> hVar) {
        for (g.a aVar : this.l.a()) {
            hVar.accept(aVar);
        }
    }

    private void a(final Exception exc, int i) {
        this.s = new f.a(exc, j.a(exc, i));
        com.applovin.exoplayer2.l.q.c("DefaultDrmSession", "DRM session error", exc);
        a(new com.applovin.exoplayer2.l.h() { // from class: com.applovin.exoplayer2.d.b$$ExternalSyntheticLambda2
            @Override // com.applovin.exoplayer2.l.h
            public final void accept(Object obj) {
                ((g.a) obj).a(exc);
            }
        });
        if (this.n != 4) {
            this.n = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Object obj, Object obj2) {
        if (obj == this.w) {
            if (this.n == 2 || m()) {
                this.w = null;
                if (obj2 instanceof Exception) {
                    this.f1970f.a((Exception) obj2, false);
                    return;
                }
                try {
                    this.f1969e.b((byte[]) obj2);
                    this.f1970f.a();
                } catch (Exception e2) {
                    this.f1970f.a(e2, true);
                }
            }
        }
    }

    private void a(boolean z) {
        if (this.j) {
            return;
        }
        byte[] bArr = (byte[]) ai.a(this.t);
        int i = this.f1972h;
        if (i == 0 || i == 1) {
            if (this.u == null) {
                a(bArr, 1, z);
                return;
            } else if (this.n != 4 && !j()) {
                return;
            } else {
                long k = k();
                if (this.f1972h != 0 || k > 60) {
                    if (k <= 0) {
                        a(new q(), 2);
                        return;
                    }
                    this.n = 4;
                    a(new com.applovin.exoplayer2.l.h() { // from class: com.applovin.exoplayer2.d.b$$ExternalSyntheticLambda1
                        @Override // com.applovin.exoplayer2.l.h
                        public final void accept(Object obj) {
                            ((g.a) obj).b();
                        }
                    });
                    return;
                }
                com.applovin.exoplayer2.l.q.a("DefaultDrmSession", "Offline license has expired or will expire soon. Remaining seconds: " + k);
            }
        } else if (i != 2) {
            if (i != 3) {
                return;
            }
            com.applovin.exoplayer2.l.a.b(this.u);
            com.applovin.exoplayer2.l.a.b(this.t);
            a(this.u, 3, z);
            return;
        } else if (this.u != null && !j()) {
            return;
        }
        a(bArr, 2, z);
    }

    private void a(byte[] bArr, int i, boolean z) {
        try {
            this.v = this.f1969e.a(bArr, this.f1965a, i, this.k);
            ((c) ai.a(this.q)).a(1, com.applovin.exoplayer2.l.a.b(this.v), z);
        } catch (Exception e2) {
            b(e2, true);
        }
    }

    private void b(Exception exc, boolean z) {
        if (exc instanceof NotProvisionedException) {
            this.f1970f.a(this);
        } else {
            a(exc, z ? 1 : 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Object obj, Object obj2) {
        com.applovin.exoplayer2.l.h<g.a> hVar;
        if (obj == this.v && m()) {
            this.v = null;
            if (obj2 instanceof Exception) {
                b((Exception) obj2, false);
                return;
            }
            try {
                byte[] bArr = (byte[]) obj2;
                if (this.f1972h == 3) {
                    this.f1969e.a((byte[]) ai.a(this.u), bArr);
                    hVar = new com.applovin.exoplayer2.l.h() { // from class: com.applovin.exoplayer2.d.b$$ExternalSyntheticLambda3
                        @Override // com.applovin.exoplayer2.l.h
                        public final void accept(Object obj3) {
                            ((g.a) obj3).c();
                        }
                    };
                } else {
                    byte[] a2 = this.f1969e.a(this.t, bArr);
                    int i = this.f1972h;
                    if ((i == 2 || (i == 0 && this.u != null)) && a2 != null && a2.length != 0) {
                        this.u = a2;
                    }
                    this.n = 4;
                    hVar = new com.applovin.exoplayer2.l.h() { // from class: com.applovin.exoplayer2.d.b$$ExternalSyntheticLambda4
                        @Override // com.applovin.exoplayer2.l.h
                        public final void accept(Object obj3) {
                            ((g.a) obj3).a();
                        }
                    };
                }
                a(hVar);
            } catch (Exception e2) {
                b(e2, true);
            }
        }
    }

    private boolean i() {
        if (m()) {
            return true;
        }
        try {
            byte[] a2 = this.f1969e.a();
            this.t = a2;
            this.r = this.f1969e.d(a2);
            this.n = 3;
            a(new com.applovin.exoplayer2.l.h() { // from class: com.applovin.exoplayer2.d.b$$ExternalSyntheticLambda0
                @Override // com.applovin.exoplayer2.l.h
                public final void accept(Object obj) {
                    ((g.a) obj).a(r1);
                }
            });
            com.applovin.exoplayer2.l.a.b(this.t);
            return true;
        } catch (NotProvisionedException unused) {
            this.f1970f.a(this);
            return false;
        } catch (Exception e2) {
            a(e2, 1);
            return false;
        }
    }

    private boolean j() {
        try {
            this.f1969e.b(this.t, this.u);
            return true;
        } catch (Exception e2) {
            a(e2, 1);
            return false;
        }
    }

    private long k() {
        if (com.applovin.exoplayer2.h.f2971d.equals(this.f1967c)) {
            Pair pair = (Pair) com.applovin.exoplayer2.l.a.b(u.a(this));
            return Math.min(((Long) pair.first).longValue(), ((Long) pair.second).longValue());
        }
        return Long.MAX_VALUE;
    }

    private void l() {
        if (this.f1972h == 0 && this.n == 4) {
            ai.a(this.t);
            a(false);
        }
    }

    private boolean m() {
        int i = this.n;
        return i == 3 || i == 4;
    }

    public void a() {
        this.w = this.f1969e.b();
        ((c) ai.a(this.q)).a(0, com.applovin.exoplayer2.l.a.b(this.w), true);
    }

    public void a(int i) {
        if (i != 2) {
            return;
        }
        l();
    }

    @Override // com.applovin.exoplayer2.d.f
    public void a(g.a aVar) {
        com.applovin.exoplayer2.l.a.b(this.o >= 0);
        if (aVar != null) {
            this.l.a(aVar);
        }
        int i = this.o + 1;
        this.o = i;
        if (i == 1) {
            com.applovin.exoplayer2.l.a.b(this.n == 2);
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:DrmRequestHandler");
            this.p = handlerThread;
            handlerThread.start();
            this.q = new c(this.p.getLooper());
            if (i()) {
                a(true);
            }
        } else if (aVar != null && m() && this.l.c(aVar) == 1) {
            aVar.a(this.n);
        }
        this.f1971g.a(this, this.o);
    }

    public void a(Exception exc, boolean z) {
        a(exc, z ? 1 : 3);
    }

    @Override // com.applovin.exoplayer2.d.f
    public boolean a(String str) {
        return this.f1969e.a((byte[]) com.applovin.exoplayer2.l.a.a(this.t), str);
    }

    public boolean a(byte[] bArr) {
        return Arrays.equals(this.t, bArr);
    }

    public void b() {
        if (i()) {
            a(true);
        }
    }

    @Override // com.applovin.exoplayer2.d.f
    public void b(g.a aVar) {
        com.applovin.exoplayer2.l.a.b(this.o > 0);
        int i = this.o - 1;
        this.o = i;
        if (i == 0) {
            this.n = 0;
            ((e) ai.a(this.f1968d)).removeCallbacksAndMessages(null);
            ((c) ai.a(this.q)).a();
            this.q = null;
            ((HandlerThread) ai.a(this.p)).quit();
            this.p = null;
            this.r = null;
            this.s = null;
            this.v = null;
            this.w = null;
            byte[] bArr = this.t;
            if (bArr != null) {
                this.f1969e.a(bArr);
                this.t = null;
            }
        }
        if (aVar != null) {
            this.l.b(aVar);
            if (this.l.c(aVar) == 0) {
                aVar.d();
            }
        }
        this.f1971g.b(this, this.o);
    }

    @Override // com.applovin.exoplayer2.d.f
    public final int c() {
        return this.n;
    }

    @Override // com.applovin.exoplayer2.d.f
    public boolean d() {
        return this.i;
    }

    @Override // com.applovin.exoplayer2.d.f
    public final f.a e() {
        if (this.n == 1) {
            return this.s;
        }
        return null;
    }

    @Override // com.applovin.exoplayer2.d.f
    public final UUID f() {
        return this.f1967c;
    }

    @Override // com.applovin.exoplayer2.d.f
    public final com.applovin.exoplayer2.c.b g() {
        return this.r;
    }

    @Override // com.applovin.exoplayer2.d.f
    public Map<String, String> h() {
        byte[] bArr = this.t;
        if (bArr == null) {
            return null;
        }
        return this.f1969e.c(bArr);
    }
}

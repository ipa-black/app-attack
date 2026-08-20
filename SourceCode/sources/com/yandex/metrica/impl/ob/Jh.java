package com.yandex.metrica.impl.ob;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.TrafficStats;
import android.net.Uri;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.onesignal.outcomes.data.OutcomeEventsTable;
import com.yandex.metrica.MetricaService;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.coreutils.services.FirstExecutionConditionService;
import com.yandex.metrica.coreutils.services.SystemTimeProvider;
import com.yandex.metrica.coreutils.services.UtilityServiceLocator;
import com.yandex.metrica.impl.ob.Fh;
import java.io.IOException;
import java.net.BindException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public class Jh implements Runnable, Gh {

    /* renamed from: a  reason: collision with root package name */
    private final ServiceConnection f13299a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f13300b;

    /* renamed from: c  reason: collision with root package name */
    private final Runnable f13301c;

    /* renamed from: d  reason: collision with root package name */
    private final HashMap<String, Bh> f13302d;

    /* renamed from: e  reason: collision with root package name */
    private final Context f13303e;

    /* renamed from: f  reason: collision with root package name */
    private volatile boolean f13304f;

    /* renamed from: g  reason: collision with root package name */
    private ServerSocket f13305g;

    /* renamed from: h  reason: collision with root package name */
    private C1491di f13306h;
    private Lm i;
    private final M0 j;
    private final FirstExecutionConditionService.FirstExecutionHandler k;
    private final C2028zh l;
    private final C2028zh m;
    private final Fh n;
    private final Pm o;
    private final InterfaceC1744nm<C1491di, List<Integer>> p;
    private final C2004yh q;
    private final Ih r;
    private final String s;

    /* loaded from: classes5.dex */
    class a implements ServiceConnection {
        a(Jh jh) {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* loaded from: classes5.dex */
    class b extends Handler {
        b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what != 100) {
                return;
            }
            Jh.this.c();
            try {
                Jh.this.f13303e.unbindService(Jh.this.f13299a);
            } catch (Throwable unused) {
                Jh.this.j.reportEvent("socket_unbind_has_thrown_exception");
            }
        }
    }

    /* loaded from: classes5.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Jh jh = Jh.this;
            Jh.a(jh, jh.f13306h);
        }
    }

    /* loaded from: classes5.dex */
    class d extends HashMap<String, Bh> {

        /* loaded from: classes5.dex */
        class a implements Bh {
            a() {
            }

            @Override // com.yandex.metrica.impl.ob.Bh
            public Ah a(Socket socket, Uri uri, Hh hh) {
                Jh jh = Jh.this;
                return new C1813qh(socket, uri, jh, jh.f13306h, Jh.this.q.a(), hh);
            }
        }

        /* loaded from: classes5.dex */
        class b implements Bh {
            b() {
            }

            @Override // com.yandex.metrica.impl.ob.Bh
            public Ah a(Socket socket, Uri uri, Hh hh) {
                Jh jh = Jh.this;
                return new Dh(socket, uri, jh, jh.f13306h, hh);
            }
        }

        d() {
            put("p", new a());
            put("i", new b());
        }
    }

    /* loaded from: classes5.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Jh.f(Jh.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public enum f {
        OK,
        SHOULD_RETRY,
        ORDINARY_FAIL
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Jh(Context context, C1790pi c1790pi, Fh fh, InterfaceC1744nm<C1491di, List<Integer>> interfaceC1744nm, C1956wh c1956wh, C1956wh c1956wh2, String str) {
        this(context, c1790pi, UtilityServiceLocator.getInstance().getFirstExecutionService(), F0.g().q(), C1764oh.a(), new C2028zh(TtmlNode.TEXT_EMPHASIS_MARK_OPEN, c1956wh), new C2028zh("port_already_in_use", c1956wh2), new C2004yh(context, c1790pi), new Ih(), fh, interfaceC1744nm, str);
    }

    static void f(Jh jh) {
        jh.getClass();
        Intent intent = new Intent(jh.f13303e, MetricaService.class);
        intent.setAction("com.yandex.metrica.ACTION_BIND_TO_LOCAL_SERVER");
        try {
            if (!jh.f13303e.bindService(intent, jh.f13299a, 1)) {
                jh.j.reportEvent("socket_bind_has_failed");
            }
        } catch (Throwable unused) {
            jh.j.reportEvent("socket_bind_has_thrown_exception");
        }
        Lm b2 = jh.o.b(jh);
        jh.i = b2;
        b2.start();
        jh.r.d();
    }

    @Override // java.lang.Runnable
    public void run() {
        Socket socket;
        ServerSocket serverSocket;
        synchronized (this) {
            C1491di c1491di = this.f13306h;
            if (c1491di != null && a(c1491di) == f.SHOULD_RETRY) {
                this.f13304f = false;
                long j = this.f13306h.j;
                ICommonExecutor a2 = this.o.a();
                a2.remove(this.f13301c);
                a2.executeDelayed(this.f13301c, j, TimeUnit.SECONDS);
                return;
            }
            if (A2.a(26)) {
                TrafficStats.setThreadStatsTag(40230);
            }
            if (this.f13305g != null) {
                while (this.f13304f) {
                    synchronized (this) {
                        socket = null;
                        serverSocket = this.f13304f ? this.f13305g : null;
                    }
                    if (serverSocket != null) {
                        try {
                            socket = serverSocket.accept();
                            Hh hh = new Hh(new SystemTimeProvider(), new C1570gm());
                            if (A2.a(26)) {
                                TrafficStats.tagSocket(socket);
                            }
                            new Ch(socket, this, this.f13302d, hh).a();
                            if (socket == null) {
                            }
                        } catch (Throwable unused) {
                            if (socket == null) {
                            }
                        }
                        try {
                            socket.close();
                        } catch (IOException unused2) {
                        }
                    }
                }
            }
        }
    }

    private synchronized void c(C1491di c1491di) {
        if (!this.f13304f && this.k.tryExecute(c1491di.f14621f)) {
            this.f13304f = true;
        }
    }

    public void a() {
        this.f13300b.removeMessages(100);
        this.r.e();
    }

    public synchronized void b() {
        if (this.f13304f) {
            a();
            Handler handler = this.f13300b;
            handler.sendMessageDelayed(handler.obtainMessage(100), TimeUnit.SECONDS.toMillis(this.f13306h.f14616a));
            this.r.c();
        }
    }

    public synchronized void a(C1790pi c1790pi) {
        C1491di M = c1790pi.M();
        synchronized (this) {
            if (M != null) {
                c(M);
            }
        }
    }

    Jh(Context context, C1790pi c1790pi, FirstExecutionConditionService firstExecutionConditionService, Pm pm, M0 m0, C2028zh c2028zh, C2028zh c2028zh2, C2004yh c2004yh, Ih ih, Fh fh, InterfaceC1744nm<C1491di, List<Integer>> interfaceC1744nm, String str) {
        this.f13299a = new a(this);
        this.f13300b = new b(Looper.getMainLooper());
        this.f13301c = new c();
        this.f13302d = new d();
        this.f13303e = context;
        this.j = m0;
        this.l = c2028zh;
        this.m = c2028zh2;
        this.n = fh;
        this.p = interfaceC1744nm;
        this.o = pm;
        this.q = c2004yh;
        this.r = ih;
        String format = String.format("[YandexUID%sServer]", str);
        this.s = format;
        this.k = firstExecutionConditionService.createFirstExecutionHandler(new e(), pm.a(), format);
        b(c1790pi.M());
        C1491di c1491di = this.f13306h;
        if (c1491di != null) {
            c(c1491di);
        }
    }

    static void a(Jh jh, C1491di c1491di) {
        synchronized (jh) {
            if (c1491di != null) {
                jh.c(c1491di);
            }
        }
    }

    synchronized void c() {
        try {
            this.f13304f = false;
            Lm lm = this.i;
            if (lm != null) {
                lm.stopRunning();
                this.i = null;
            }
            ServerSocket serverSocket = this.f13305g;
            if (serverSocket != null) {
                serverSocket.close();
                this.f13305g = null;
            }
        } catch (IOException unused) {
        }
    }

    private synchronized f a(C1491di c1491di) {
        f fVar;
        Integer num;
        Throwable th;
        Fh.a e2;
        Iterator<Integer> it = this.p.a(c1491di).iterator();
        fVar = f.ORDINARY_FAIL;
        Integer num2 = null;
        while (this.f13305g == null && it.hasNext()) {
            try {
                num = it.next();
                if (num != null) {
                    try {
                        this.f13305g = this.n.a(num.intValue());
                        fVar = f.OK;
                        this.l.a(this, num.intValue(), c1491di);
                    } catch (Fh.a e3) {
                        e2 = e3;
                        String message = e2.getMessage();
                        Throwable cause = e2.getCause();
                        if (cause != null && message != null) {
                            Map<String, Object> a2 = a(num);
                            ((HashMap) a2).put("exception", Log.getStackTraceString(cause));
                            this.j.reportEvent(b(message), a2);
                        }
                        num2 = num;
                    } catch (BindException unused) {
                        num2 = num;
                        fVar = f.SHOULD_RETRY;
                        this.m.a(this, num2.intValue(), c1491di);
                    } catch (Throwable th2) {
                        th = th2;
                        Map<String, Object> a3 = a(num);
                        ((HashMap) a3).put("exception", Log.getStackTraceString(th));
                        this.j.reportEvent(b("open_error"), a3);
                        num2 = num;
                    }
                }
            } catch (Fh.a e4) {
                num = num2;
                e2 = e4;
            } catch (BindException unused2) {
            } catch (Throwable th3) {
                num = num2;
                th = th3;
            }
            num2 = num;
        }
        return fVar;
    }

    private void b(C1491di c1491di) {
        this.f13306h = c1491di;
        if (c1491di != null) {
            this.k.setDelaySeconds(c1491di.f14620e);
        }
    }

    public void b(int i, Hh hh) {
        this.j.reportEvent(b("sync_succeed"), a(i, hh));
    }

    public synchronized void b(C1790pi c1790pi) {
        this.q.a(c1790pi);
        C1491di M = c1790pi.M();
        if (M != null) {
            this.f13306h = M;
            this.k.setDelaySeconds(M.f14620e);
            c(M);
        } else {
            c();
            b((C1491di) null);
        }
    }

    private String b(String str) {
        return "socket_" + str;
    }

    private Map<String, Object> a(Integer num) {
        HashMap hashMap = new HashMap();
        hashMap.put("port", num == null ? "" : String.valueOf(num));
        return hashMap;
    }

    private Map<String, Object> a(int i, Hh hh) {
        Map<String, Object> a2 = a(Integer.valueOf(i));
        HashMap hashMap = (HashMap) a2;
        hashMap.put("idle_interval", Double.valueOf(this.r.b()));
        hashMap.put("background_interval", Double.valueOf(this.r.a()));
        hashMap.put("request_read_time", Long.valueOf(hh.d()));
        hashMap.put("response_form_time", Long.valueOf(hh.e()));
        hashMap.put("response_send_time", Long.valueOf(hh.f()));
        return a2;
    }

    public void a(String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("uri", str2);
        this.j.reportEvent("socket_" + str, hashMap);
    }

    public void a(String str) {
        this.j.reportEvent(b(str));
    }

    public void a(String str, Throwable th) {
        this.j.reportError(b(str), th);
    }

    public void a(String str, Integer num) {
        this.j.reportEvent(b(str), a(num));
    }

    public void a(Map<String, Object> map, int i, Hh hh) {
        Map<String, Object> a2 = a(i, hh);
        ((HashMap) a2).put(OutcomeEventsTable.COLUMN_NAME_PARAMS, map);
        this.j.reportEvent(b("reversed_sync_succeed"), a2);
    }
}

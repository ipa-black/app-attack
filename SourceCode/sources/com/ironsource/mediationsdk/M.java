package com.ironsource.mediationsdk;

import android.content.Context;
import android.content.IntentFilter;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.appodeal.ads.modules.common.internal.Constants;
import com.ironsource.environment.NetworkStateReceiver;
import com.ironsource.mediationsdk.H;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.sdk.SegmentListener;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.ironsource.mediationsdk.utils.l;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class M implements com.ironsource.environment.j {
    private static M u;
    private NetworkStateReceiver A;

    /* renamed from: a  reason: collision with root package name */
    af f10749a;

    /* renamed from: b  reason: collision with root package name */
    int f10750b;

    /* renamed from: c  reason: collision with root package name */
    int f10751c;

    /* renamed from: d  reason: collision with root package name */
    int f10752d;

    /* renamed from: e  reason: collision with root package name */
    int f10753e;

    /* renamed from: f  reason: collision with root package name */
    int f10754f;

    /* renamed from: g  reason: collision with root package name */
    boolean f10755g;
    Handler i;
    CountDownTimer j;
    String l;
    String m;
    com.ironsource.mediationsdk.utils.l n;
    String o;
    SegmentListener p;
    boolean q;
    long r;
    com.ironsource.d.b s;
    private HandlerThread x;
    private AtomicBoolean z;
    private int t = b.f10770e;
    private final String v = Constants.APP_KEY;
    private final String w = getClass().getSimpleName();

    /* renamed from: h  reason: collision with root package name */
    boolean f10756h = false;
    private boolean y = false;
    List<com.ironsource.mediationsdk.utils.i> k = new ArrayList();
    private c C = new c() { // from class: com.ironsource.mediationsdk.M.1
        /* JADX WARN: Removed duplicated region for block: B:21:0x004e A[Catch: Exception -> 0x0388, TryCatch #1 {Exception -> 0x0388, blocks: (B:2:0x0000, B:7:0x001a, B:11:0x002a, B:13:0x0030, B:19:0x0048, B:21:0x004e, B:31:0x00a3, B:33:0x00ba, B:34:0x00c5, B:36:0x00cf, B:37:0x00dc, B:39:0x0111, B:41:0x0122, B:46:0x0184, B:48:0x01bb, B:50:0x01c5, B:51:0x01d0, B:53:0x01d8, B:56:0x01dd, B:58:0x01e8, B:60:0x01ec, B:62:0x01f6, B:63:0x01fb, B:65:0x0201, B:67:0x0205, B:69:0x020f, B:70:0x0214, B:72:0x021a, B:73:0x021f, B:75:0x0225, B:76:0x022a, B:77:0x0232, B:79:0x0238, B:80:0x024c, B:82:0x0252, B:84:0x0260, B:86:0x0268, B:87:0x0271, B:89:0x0283, B:45:0x0181, B:90:0x02b0, B:92:0x02b6, B:93:0x02c9, B:95:0x02cf, B:96:0x02db, B:98:0x02e2, B:99:0x02ee, B:101:0x02f4, B:102:0x02fe, B:104:0x0302, B:106:0x030c, B:108:0x0328, B:109:0x0330, B:111:0x0334, B:123:0x0380, B:113:0x033e, B:115:0x0344, B:117:0x0350, B:118:0x0354, B:119:0x035c, B:121:0x0362, B:122:0x036e, B:22:0x0055, B:24:0x006f, B:25:0x0073, B:30:0x009b, B:26:0x0076, B:28:0x0090, B:29:0x0095, B:16:0x0039, B:17:0x003d, B:18:0x0041, B:6:0x0017, B:42:0x0173, B:3:0x0008), top: B:130:0x0000, inners: #0, #2 }] */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0055 A[Catch: Exception -> 0x0388, TryCatch #1 {Exception -> 0x0388, blocks: (B:2:0x0000, B:7:0x001a, B:11:0x002a, B:13:0x0030, B:19:0x0048, B:21:0x004e, B:31:0x00a3, B:33:0x00ba, B:34:0x00c5, B:36:0x00cf, B:37:0x00dc, B:39:0x0111, B:41:0x0122, B:46:0x0184, B:48:0x01bb, B:50:0x01c5, B:51:0x01d0, B:53:0x01d8, B:56:0x01dd, B:58:0x01e8, B:60:0x01ec, B:62:0x01f6, B:63:0x01fb, B:65:0x0201, B:67:0x0205, B:69:0x020f, B:70:0x0214, B:72:0x021a, B:73:0x021f, B:75:0x0225, B:76:0x022a, B:77:0x0232, B:79:0x0238, B:80:0x024c, B:82:0x0252, B:84:0x0260, B:86:0x0268, B:87:0x0271, B:89:0x0283, B:45:0x0181, B:90:0x02b0, B:92:0x02b6, B:93:0x02c9, B:95:0x02cf, B:96:0x02db, B:98:0x02e2, B:99:0x02ee, B:101:0x02f4, B:102:0x02fe, B:104:0x0302, B:106:0x030c, B:108:0x0328, B:109:0x0330, B:111:0x0334, B:123:0x0380, B:113:0x033e, B:115:0x0344, B:117:0x0350, B:118:0x0354, B:119:0x035c, B:121:0x0362, B:122:0x036e, B:22:0x0055, B:24:0x006f, B:25:0x0073, B:30:0x009b, B:26:0x0076, B:28:0x0090, B:29:0x0095, B:16:0x0039, B:17:0x003d, B:18:0x0041, B:6:0x0017, B:42:0x0173, B:3:0x0008), top: B:130:0x0000, inners: #0, #2 }] */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00ba A[Catch: Exception -> 0x0388, TryCatch #1 {Exception -> 0x0388, blocks: (B:2:0x0000, B:7:0x001a, B:11:0x002a, B:13:0x0030, B:19:0x0048, B:21:0x004e, B:31:0x00a3, B:33:0x00ba, B:34:0x00c5, B:36:0x00cf, B:37:0x00dc, B:39:0x0111, B:41:0x0122, B:46:0x0184, B:48:0x01bb, B:50:0x01c5, B:51:0x01d0, B:53:0x01d8, B:56:0x01dd, B:58:0x01e8, B:60:0x01ec, B:62:0x01f6, B:63:0x01fb, B:65:0x0201, B:67:0x0205, B:69:0x020f, B:70:0x0214, B:72:0x021a, B:73:0x021f, B:75:0x0225, B:76:0x022a, B:77:0x0232, B:79:0x0238, B:80:0x024c, B:82:0x0252, B:84:0x0260, B:86:0x0268, B:87:0x0271, B:89:0x0283, B:45:0x0181, B:90:0x02b0, B:92:0x02b6, B:93:0x02c9, B:95:0x02cf, B:96:0x02db, B:98:0x02e2, B:99:0x02ee, B:101:0x02f4, B:102:0x02fe, B:104:0x0302, B:106:0x030c, B:108:0x0328, B:109:0x0330, B:111:0x0334, B:123:0x0380, B:113:0x033e, B:115:0x0344, B:117:0x0350, B:118:0x0354, B:119:0x035c, B:121:0x0362, B:122:0x036e, B:22:0x0055, B:24:0x006f, B:25:0x0073, B:30:0x009b, B:26:0x0076, B:28:0x0090, B:29:0x0095, B:16:0x0039, B:17:0x003d, B:18:0x0041, B:6:0x0017, B:42:0x0173, B:3:0x0008), top: B:130:0x0000, inners: #0, #2 }] */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00cf A[Catch: Exception -> 0x0388, TryCatch #1 {Exception -> 0x0388, blocks: (B:2:0x0000, B:7:0x001a, B:11:0x002a, B:13:0x0030, B:19:0x0048, B:21:0x004e, B:31:0x00a3, B:33:0x00ba, B:34:0x00c5, B:36:0x00cf, B:37:0x00dc, B:39:0x0111, B:41:0x0122, B:46:0x0184, B:48:0x01bb, B:50:0x01c5, B:51:0x01d0, B:53:0x01d8, B:56:0x01dd, B:58:0x01e8, B:60:0x01ec, B:62:0x01f6, B:63:0x01fb, B:65:0x0201, B:67:0x0205, B:69:0x020f, B:70:0x0214, B:72:0x021a, B:73:0x021f, B:75:0x0225, B:76:0x022a, B:77:0x0232, B:79:0x0238, B:80:0x024c, B:82:0x0252, B:84:0x0260, B:86:0x0268, B:87:0x0271, B:89:0x0283, B:45:0x0181, B:90:0x02b0, B:92:0x02b6, B:93:0x02c9, B:95:0x02cf, B:96:0x02db, B:98:0x02e2, B:99:0x02ee, B:101:0x02f4, B:102:0x02fe, B:104:0x0302, B:106:0x030c, B:108:0x0328, B:109:0x0330, B:111:0x0334, B:123:0x0380, B:113:0x033e, B:115:0x0344, B:117:0x0350, B:118:0x0354, B:119:0x035c, B:121:0x0362, B:122:0x036e, B:22:0x0055, B:24:0x006f, B:25:0x0073, B:30:0x009b, B:26:0x0076, B:28:0x0090, B:29:0x0095, B:16:0x0039, B:17:0x003d, B:18:0x0041, B:6:0x0017, B:42:0x0173, B:3:0x0008), top: B:130:0x0000, inners: #0, #2 }] */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0111 A[Catch: Exception -> 0x0388, TryCatch #1 {Exception -> 0x0388, blocks: (B:2:0x0000, B:7:0x001a, B:11:0x002a, B:13:0x0030, B:19:0x0048, B:21:0x004e, B:31:0x00a3, B:33:0x00ba, B:34:0x00c5, B:36:0x00cf, B:37:0x00dc, B:39:0x0111, B:41:0x0122, B:46:0x0184, B:48:0x01bb, B:50:0x01c5, B:51:0x01d0, B:53:0x01d8, B:56:0x01dd, B:58:0x01e8, B:60:0x01ec, B:62:0x01f6, B:63:0x01fb, B:65:0x0201, B:67:0x0205, B:69:0x020f, B:70:0x0214, B:72:0x021a, B:73:0x021f, B:75:0x0225, B:76:0x022a, B:77:0x0232, B:79:0x0238, B:80:0x024c, B:82:0x0252, B:84:0x0260, B:86:0x0268, B:87:0x0271, B:89:0x0283, B:45:0x0181, B:90:0x02b0, B:92:0x02b6, B:93:0x02c9, B:95:0x02cf, B:96:0x02db, B:98:0x02e2, B:99:0x02ee, B:101:0x02f4, B:102:0x02fe, B:104:0x0302, B:106:0x030c, B:108:0x0328, B:109:0x0330, B:111:0x0334, B:123:0x0380, B:113:0x033e, B:115:0x0344, B:117:0x0350, B:118:0x0354, B:119:0x035c, B:121:0x0362, B:122:0x036e, B:22:0x0055, B:24:0x006f, B:25:0x0073, B:30:0x009b, B:26:0x0076, B:28:0x0090, B:29:0x0095, B:16:0x0039, B:17:0x003d, B:18:0x0041, B:6:0x0017, B:42:0x0173, B:3:0x0008), top: B:130:0x0000, inners: #0, #2 }] */
        /* JADX WARN: Removed duplicated region for block: B:96:0x02db A[Catch: Exception -> 0x0388, TryCatch #1 {Exception -> 0x0388, blocks: (B:2:0x0000, B:7:0x001a, B:11:0x002a, B:13:0x0030, B:19:0x0048, B:21:0x004e, B:31:0x00a3, B:33:0x00ba, B:34:0x00c5, B:36:0x00cf, B:37:0x00dc, B:39:0x0111, B:41:0x0122, B:46:0x0184, B:48:0x01bb, B:50:0x01c5, B:51:0x01d0, B:53:0x01d8, B:56:0x01dd, B:58:0x01e8, B:60:0x01ec, B:62:0x01f6, B:63:0x01fb, B:65:0x0201, B:67:0x0205, B:69:0x020f, B:70:0x0214, B:72:0x021a, B:73:0x021f, B:75:0x0225, B:76:0x022a, B:77:0x0232, B:79:0x0238, B:80:0x024c, B:82:0x0252, B:84:0x0260, B:86:0x0268, B:87:0x0271, B:89:0x0283, B:45:0x0181, B:90:0x02b0, B:92:0x02b6, B:93:0x02c9, B:95:0x02cf, B:96:0x02db, B:98:0x02e2, B:99:0x02ee, B:101:0x02f4, B:102:0x02fe, B:104:0x0302, B:106:0x030c, B:108:0x0328, B:109:0x0330, B:111:0x0334, B:123:0x0380, B:113:0x033e, B:115:0x0344, B:117:0x0350, B:118:0x0354, B:119:0x035c, B:121:0x0362, B:122:0x036e, B:22:0x0055, B:24:0x006f, B:25:0x0073, B:30:0x009b, B:26:0x0076, B:28:0x0090, B:29:0x0095, B:16:0x0039, B:17:0x003d, B:18:0x0041, B:6:0x0017, B:42:0x0173, B:3:0x0008), top: B:130:0x0000, inners: #0, #2 }] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                Method dump skipped, instructions count: 909
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.M.AnonymousClass1.run():void");
        }
    };
    private a B = a.NOT_INIT;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ironsource.mediationsdk.M$3  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass3 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10760a;

        static {
            int[] iArr = new int[a.values().length];
            f10760a = iArr;
            try {
                iArr[a.INIT_IN_PROGRESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10760a[a.NOT_INIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f10760a[a.INITIATED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public enum a {
        NOT_INIT,
        INIT_IN_PROGRESS,
        INIT_FAILED,
        INITIATED
    }

    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public static int f10766a = 0;

        /* renamed from: b  reason: collision with root package name */
        public static int f10767b = 1;

        /* renamed from: c  reason: collision with root package name */
        public static int f10768c = 2;

        /* renamed from: d  reason: collision with root package name */
        public static int f10769d = 3;

        /* renamed from: e  reason: collision with root package name */
        public static int f10770e = 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public abstract class c implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        String f10772b;

        /* renamed from: a  reason: collision with root package name */
        boolean f10771a = true;

        /* renamed from: c  reason: collision with root package name */
        protected H.a f10773c = new H.a() { // from class: com.ironsource.mediationsdk.M.c.1
            @Override // com.ironsource.mediationsdk.H.a
            public final void a(String str) {
                c.this.f10771a = false;
                c.this.f10772b = str;
            }
        };

        c() {
        }
    }

    private M() {
        this.x = null;
        HandlerThread handlerThread = new HandlerThread("IronSourceInitiatorHandler");
        this.x = handlerThread;
        handlerThread.start();
        this.i = new Handler(this.x.getLooper());
        this.f10750b = 1;
        this.f10751c = 0;
        this.f10752d = 62;
        this.f10753e = 12;
        this.f10754f = 5;
        this.z = new AtomicBoolean(true);
        this.f10755g = false;
        this.q = false;
        this.s = new com.ironsource.d.b();
    }

    public static synchronized M a() {
        M m;
        synchronized (M.class) {
            if (u == null) {
                u = new M();
            }
            m = u;
        }
        return m;
    }

    public final void a(Context context, com.ironsource.mediationsdk.utils.l lVar) {
        this.s.e(lVar.a().f10664b);
        this.s.a(lVar.a().f10663a);
        com.ironsource.sdk.f.a aVar = lVar.f11449c.f11258e;
        this.s.f(aVar.i().f11241a);
        this.s.b(aVar.c().f11472c);
        this.s.a(Boolean.valueOf(IronSourceUtils.getFirstSession(context)));
    }

    public final synchronized void a(Context context, String str, String str2) {
        AtomicBoolean atomicBoolean;
        try {
            atomicBoolean = this.z;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (atomicBoolean == null || !atomicBoolean.compareAndSet(true, false)) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, this.w + ": Multiple calls to init are not allowed", 2);
            return;
        }
        a(a.INIT_IN_PROGRESS);
        this.l = str2;
        this.m = str;
        if (IronSourceUtils.isNetworkConnected(context)) {
            this.i.post(this.C);
        } else {
            this.y = true;
            if (this.A == null) {
                this.A = new NetworkStateReceiver(context, this);
            }
            context.registerReceiver(this.A, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            com.ironsource.environment.e.c.f10584a.c(new Runnable() { // from class: com.ironsource.mediationsdk.M.2
                /* JADX WARN: Type inference failed for: r7v0, types: [com.ironsource.mediationsdk.M$2$1] */
                @Override // java.lang.Runnable
                public final void run() {
                    M.this.j = new CountDownTimer(60000L, com.google.android.exoplayer2.C.DEFAULT_SEEK_FORWARD_INCREMENT_MS) { // from class: com.ironsource.mediationsdk.M.2.1
                        {
                            super(60000L, com.google.android.exoplayer2.C.DEFAULT_SEEK_FORWARD_INCREMENT_MS);
                        }

                        @Override // android.os.CountDownTimer
                        public final void onFinish() {
                            if (M.this.f10756h) {
                                return;
                            }
                            M.this.f10756h = true;
                            for (com.ironsource.mediationsdk.utils.i iVar : M.this.k) {
                                iVar.a(IronSourceConstants.FALSE_AVAILABILITY_REASON_NO_INTERNET);
                            }
                            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, "Mediation availability false reason: No internet connection", 1);
                        }

                        @Override // android.os.CountDownTimer
                        public final void onTick(long j) {
                            if (j <= 45000) {
                                M.this.q = true;
                                for (com.ironsource.mediationsdk.utils.i iVar : M.this.k) {
                                    iVar.f();
                                }
                            }
                        }
                    }.start();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(a aVar) {
        IronLog.INTERNAL.verbose("old status: " + this.B + ", new status: " + aVar + ")");
        this.B = aVar;
    }

    public final void a(com.ironsource.mediationsdk.utils.i iVar) {
        if (iVar == null) {
            return;
        }
        this.k.add(iVar);
    }

    public final synchronized void a(com.ironsource.mediationsdk.utils.l lVar) {
        int i;
        int i2 = lVar != null ? lVar.f11451e : l.a.f11455a;
        a aVar = this.B;
        if (i2 == l.a.f11456b) {
            i = b.f10768c;
        } else {
            int i3 = AnonymousClass3.f10760a[aVar.ordinal()];
            i = i3 != 1 ? i3 != 2 ? i3 != 3 ? b.f10766a : b.f10767b : b.f10770e : b.f10769d;
        }
        this.t = i;
        this.s.a(i);
    }

    @Override // com.ironsource.environment.j
    public final void a(boolean z) {
        if (this.y && z) {
            CountDownTimer countDownTimer = this.j;
            if (countDownTimer != null) {
                countDownTimer.cancel();
            }
            this.y = false;
            this.f10755g = true;
            this.i.post(this.C);
        }
    }

    public final synchronized a b() {
        return this.B;
    }

    public final void b(boolean z) {
        Map<String, String> map;
        if (z && TextUtils.isEmpty(H.a().o) && (map = this.n.f11449c.f11258e.g().f11242a) != null && !map.isEmpty()) {
            for (String str : map.keySet()) {
                if (IronSourceUtils.doesClassExist(str)) {
                    String str2 = map.get(str);
                    if (!TextUtils.isEmpty(str2)) {
                        str = str2;
                    }
                    H.a().d(str);
                    return;
                }
            }
        }
    }

    public final synchronized boolean c() {
        return this.q;
    }
}

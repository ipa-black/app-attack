package com.apm.insight.b;

import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.apm.insight.runtime.u;
import com.explorestack.iab.vast.VastError;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.onesignal.shortcutbadger.impl.NewHtcHomeBadger;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class h {

    /* renamed from: b  reason: collision with root package name */
    public static boolean f730b = false;
    private static int t = 2;

    /* renamed from: a  reason: collision with root package name */
    c f731a;

    /* renamed from: c  reason: collision with root package name */
    private int f732c;

    /* renamed from: d  reason: collision with root package name */
    private volatile int f733d;

    /* renamed from: e  reason: collision with root package name */
    private int f734e;

    /* renamed from: f  reason: collision with root package name */
    private int f735f;

    /* renamed from: g  reason: collision with root package name */
    private f f736g;

    /* renamed from: h  reason: collision with root package name */
    private b f737h;
    private long i;
    private long j;
    private int k;
    private long l;
    private String m;
    private String n;
    private com.apm.insight.b.e o;
    private volatile boolean p;
    private boolean q;
    private final u r;
    private volatile boolean s;
    private Runnable u;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        long f746a;

        /* renamed from: b  reason: collision with root package name */
        long f747b;

        /* renamed from: c  reason: collision with root package name */
        long f748c;

        /* renamed from: d  reason: collision with root package name */
        boolean f749d;

        /* renamed from: e  reason: collision with root package name */
        int f750e;

        /* renamed from: f  reason: collision with root package name */
        StackTraceElement[] f751f;

        private a() {
        }

        void a() {
            this.f746a = -1L;
            this.f747b = -1L;
            this.f748c = -1L;
            this.f750e = -1;
            this.f751f = null;
        }
    }

    /* loaded from: classes.dex */
    private static class b {

        /* renamed from: a  reason: collision with root package name */
        final int f752a;

        /* renamed from: b  reason: collision with root package name */
        a f753b;

        /* renamed from: c  reason: collision with root package name */
        final List<a> f754c;

        /* renamed from: d  reason: collision with root package name */
        private int f755d = 0;

        public b(int i) {
            this.f752a = i;
            this.f754c = new ArrayList(i);
        }

        a a() {
            a aVar = this.f753b;
            if (aVar != null) {
                this.f753b = null;
                return aVar;
            }
            return new a();
        }

        void a(a aVar) {
            int i;
            int size = this.f754c.size();
            int i2 = this.f752a;
            if (size < i2) {
                this.f754c.add(aVar);
                i = this.f754c.size();
            } else {
                int i3 = this.f755d % i2;
                this.f755d = i3;
                a aVar2 = this.f754c.set(i3, aVar);
                aVar2.a();
                this.f753b = aVar2;
                i = this.f755d + 1;
            }
            this.f755d = i;
        }
    }

    /* loaded from: classes.dex */
    public interface c {
    }

    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        long f756a;

        /* renamed from: b  reason: collision with root package name */
        long f757b;

        /* renamed from: c  reason: collision with root package name */
        long f758c;

        /* renamed from: d  reason: collision with root package name */
        long f759d;

        /* renamed from: e  reason: collision with root package name */
        long f760e;
    }

    /* loaded from: classes.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        public long f761a;

        /* renamed from: b  reason: collision with root package name */
        long f762b;

        /* renamed from: c  reason: collision with root package name */
        long f763c;

        /* renamed from: d  reason: collision with root package name */
        int f764d;

        /* renamed from: e  reason: collision with root package name */
        int f765e;

        /* renamed from: f  reason: collision with root package name */
        long f766f;

        /* renamed from: g  reason: collision with root package name */
        long f767g;

        /* renamed from: h  reason: collision with root package name */
        String f768h;
        public String i;
        String j;
        d k;

        private void a(JSONObject jSONObject) {
            jSONObject.put("block_uuid", this.j);
            jSONObject.put("sblock_uuid", this.j);
            jSONObject.put("belong_frame", this.k != null);
            d dVar = this.k;
            if (dVar != null) {
                jSONObject.put("vsyncDelayTime", this.f763c - (dVar.f756a / 1000000));
                jSONObject.put("doFrameTime", (this.k.f757b / 1000000) - this.f763c);
                jSONObject.put("inputHandlingTime", (this.k.f758c / 1000000) - (this.k.f757b / 1000000));
                jSONObject.put("animationsTime", (this.k.f759d / 1000000) - (this.k.f758c / 1000000));
                jSONObject.put("performTraversalsTime", (this.k.f760e / 1000000) - (this.k.f759d / 1000000));
                jSONObject.put("drawTime", this.f762b - (this.k.f760e / 1000000));
            }
        }

        public JSONObject a() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(NotificationCompat.CATEGORY_MESSAGE, h.a(this.f768h));
                jSONObject.put("cpuDuration", this.f767g);
                jSONObject.put("duration", this.f766f);
                jSONObject.put(SessionDescription.ATTR_TYPE, this.f764d);
                jSONObject.put(NewHtcHomeBadger.COUNT, this.f765e);
                jSONObject.put("messageCount", this.f765e);
                jSONObject.put("lastDuration", this.f762b - this.f763c);
                jSONObject.put(TtmlNode.START, this.f761a);
                jSONObject.put(TtmlNode.END, this.f762b);
                a(jSONObject);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            return jSONObject;
        }

        void b() {
            this.f764d = -1;
            this.f765e = -1;
            this.f766f = -1L;
            this.f768h = null;
            this.j = null;
            this.k = null;
            this.i = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class f {

        /* renamed from: a  reason: collision with root package name */
        int f769a;

        /* renamed from: b  reason: collision with root package name */
        int f770b;

        /* renamed from: c  reason: collision with root package name */
        e f771c;

        /* renamed from: d  reason: collision with root package name */
        List<e> f772d = new ArrayList();

        f(int i) {
            this.f769a = i;
        }

        e a(int i) {
            e eVar = this.f771c;
            if (eVar == null) {
                e eVar2 = new e();
                eVar2.f764d = i;
                return eVar2;
            }
            eVar.f764d = i;
            e eVar3 = this.f771c;
            this.f771c = null;
            return eVar3;
        }

        List<e> a() {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            if (this.f772d.size() == this.f769a) {
                for (int i2 = this.f770b; i2 < this.f772d.size(); i2++) {
                    arrayList.add(this.f772d.get(i2));
                }
                while (i < this.f770b - 1) {
                    arrayList.add(this.f772d.get(i));
                    i++;
                }
            } else {
                while (i < this.f772d.size()) {
                    arrayList.add(this.f772d.get(i));
                    i++;
                }
            }
            return arrayList;
        }

        void a(e eVar) {
            int i;
            int size = this.f772d.size();
            int i2 = this.f769a;
            if (size < i2) {
                this.f772d.add(eVar);
                i = this.f772d.size();
            } else {
                int i3 = this.f770b % i2;
                this.f770b = i3;
                e eVar2 = this.f772d.set(i3, eVar);
                eVar2.b();
                this.f771c = eVar2;
                i = this.f770b + 1;
            }
            this.f770b = i;
        }
    }

    public h(int i) {
        this(i, false);
    }

    public h(int i, boolean z) {
        this.f732c = 0;
        this.f733d = 0;
        this.f734e = 100;
        this.f735f = 200;
        this.i = -1L;
        this.j = -1L;
        this.k = -1;
        this.l = -1L;
        this.p = false;
        this.q = false;
        this.s = false;
        this.u = new Runnable() { // from class: com.apm.insight.b.h.2

            /* renamed from: c  reason: collision with root package name */
            private long f741c;

            /* renamed from: b  reason: collision with root package name */
            private long f740b = 0;

            /* renamed from: d  reason: collision with root package name */
            private int f742d = -1;

            /* renamed from: e  reason: collision with root package name */
            private int f743e = 0;

            /* renamed from: f  reason: collision with root package name */
            private int f744f = 0;

            @Override // java.lang.Runnable
            public void run() {
                long uptimeMillis = SystemClock.uptimeMillis();
                a a2 = h.this.f737h.a();
                if (this.f742d == h.this.f733d) {
                    this.f743e++;
                } else {
                    this.f743e = 0;
                    this.f744f = 0;
                    this.f741c = uptimeMillis;
                }
                this.f742d = h.this.f733d;
                int i2 = this.f743e;
                if (i2 > 0 && i2 - this.f744f >= h.t && this.f740b != 0 && uptimeMillis - this.f741c > 700 && h.this.s) {
                    a2.f751f = Looper.getMainLooper().getThread().getStackTrace();
                    this.f744f = this.f743e;
                }
                a2.f749d = h.this.s;
                a2.f748c = (uptimeMillis - this.f740b) - 300;
                a2.f746a = uptimeMillis;
                long uptimeMillis2 = SystemClock.uptimeMillis();
                this.f740b = uptimeMillis2;
                a2.f747b = uptimeMillis2 - uptimeMillis;
                a2.f750e = h.this.f733d;
                h.this.r.a(h.this.u, 300L);
                h.this.f737h.a(a2);
            }
        };
        this.f731a = new c() { // from class: com.apm.insight.b.h.1
        };
        if (!z && !f730b) {
            this.r = null;
            return;
        }
        u uVar = new u("looper_monitor");
        this.r = uVar;
        uVar.b();
        this.f737h = new b(VastError.ERROR_CODE_GENERAL_WRAPPER);
        uVar.a(this.u, 300L);
    }

    private static long a(int i) {
        if (i < 0) {
            return 0L;
        }
        try {
            return com.apm.insight.runtime.g.a(i);
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static String a(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return "unknown message";
        }
        try {
            String[] split = str.split(":");
            String str3 = split.length == 2 ? split[1] : "";
            if (str.contains("{") && str.contains("}")) {
                str2 = str.split("\\{")[0];
                try {
                    str = str2 + str.split("\\}")[1];
                } catch (Throwable unused) {
                    return str2;
                }
            } else {
                str2 = str;
            }
            if (str.contains("@")) {
                String[] split2 = str.split("@");
                if (split2.length > 1) {
                    str = split2[0];
                }
            }
            if (str.contains("(") && str.contains(")") && !str.endsWith(" null")) {
                String[] split3 = str.split("\\(");
                if (split3.length > 1) {
                    str = split3[1];
                }
                str = str.replace(")", "");
            }
            if (str.startsWith(" ")) {
                str = str.replace(" ", "");
            }
            return str + str3;
        } catch (Throwable unused2) {
            return str;
        }
    }

    private void a(int i, long j, String str) {
        a(i, j, str, true);
    }

    private void a(int i, long j, String str, boolean z) {
        this.q = true;
        e a2 = this.f736g.a(i);
        a2.f766f = j - this.i;
        if (z) {
            long currentThreadTimeMillis = SystemClock.currentThreadTimeMillis();
            a2.f767g = currentThreadTimeMillis - this.l;
            this.l = currentThreadTimeMillis;
        } else {
            a2.f767g = -1L;
        }
        a2.f765e = this.f732c;
        a2.f768h = str;
        a2.i = this.m;
        a2.f761a = this.i;
        a2.f762b = j;
        a2.f763c = this.j;
        this.f736g.a(a2);
        this.f732c = 0;
        this.i = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, long j) {
        h hVar;
        String str;
        boolean z2;
        int i;
        int i2 = this.f733d + 1;
        this.f733d = i2;
        this.f733d = i2 & 65535;
        this.q = false;
        if (this.i < 0) {
            this.i = j;
        }
        if (this.j < 0) {
            this.j = j;
        }
        if (this.k < 0) {
            this.k = Process.myTid();
            this.l = SystemClock.currentThreadTimeMillis();
        }
        int i3 = this.f735f;
        if (j - this.i > i3) {
            long j2 = this.j;
            if (j - j2 > i3) {
                int i4 = this.f732c;
                if (z) {
                    if (i4 == 0) {
                        a(1, j, "no message running");
                    } else {
                        a(9, j2, this.m);
                        str = "no message running";
                        z2 = false;
                        i = 1;
                    }
                } else if (i4 == 0) {
                    str = this.n;
                    z2 = true;
                    i = 8;
                } else {
                    hVar = this;
                    hVar.a(9, j2, this.m, false);
                    str = this.n;
                    z2 = true;
                    i = 8;
                    hVar.a(i, j, str, z2);
                }
                hVar = this;
                hVar.a(i, j, str, z2);
            } else {
                a(9, j, this.n);
            }
        }
        this.j = j;
    }

    private void e() {
        this.f734e = 100;
        this.f735f = VastError.ERROR_CODE_GENERAL_WRAPPER;
    }

    static /* synthetic */ int f(h hVar) {
        int i = hVar.f732c;
        hVar.f732c = i + 1;
        return i;
    }

    public e a(long j) {
        e eVar = new e();
        eVar.f768h = this.n;
        eVar.i = this.m;
        eVar.f766f = j - this.j;
        eVar.f767g = a(this.k) - this.l;
        eVar.f765e = this.f732c;
        return eVar;
    }

    public void a() {
        if (this.p) {
            return;
        }
        this.p = true;
        e();
        this.f736g = new f(this.f734e);
        this.o = new com.apm.insight.b.e() { // from class: com.apm.insight.b.h.3
            @Override // com.apm.insight.b.e
            public void a(String str) {
                h.this.s = true;
                h.this.n = str;
                super.a(str);
                h.this.a(true, com.apm.insight.b.e.f721a);
            }

            @Override // com.apm.insight.b.e
            public boolean a() {
                return true;
            }

            @Override // com.apm.insight.b.e
            public void b(String str) {
                super.b(str);
                h.f(h.this);
                h.this.a(false, com.apm.insight.b.e.f721a);
                h hVar = h.this;
                hVar.m = hVar.n;
                h.this.n = "no message running";
                h.this.s = false;
            }
        };
        i.a();
        i.a(this.o);
        k.a(k.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        a();
    }

    public JSONArray c() {
        List<e> a2;
        JSONArray jSONArray = new JSONArray();
        try {
            a2 = this.f736g.a();
        } catch (Throwable unused) {
        }
        if (a2 == null) {
            return jSONArray;
        }
        int i = 0;
        for (e eVar : a2) {
            if (eVar != null) {
                i++;
                jSONArray.put(eVar.a().put("id", i));
            }
        }
        return jSONArray;
    }
}

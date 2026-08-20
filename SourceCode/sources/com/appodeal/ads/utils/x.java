package com.appodeal.ads.utils;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.text.TextUtils;
import com.appodeal.ads.k0;
import com.appodeal.ads.modules.libs.network.NetworkStatus;
import com.appodeal.ads.storage.b;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class x {
    public static final HashMap l = new HashMap();
    public static volatile x m;
    public static final long n;
    public static final long o;
    public static final long p;

    /* renamed from: e  reason: collision with root package name */
    public w f7845e;

    /* renamed from: f  reason: collision with root package name */
    public Long f7846f;

    /* renamed from: g  reason: collision with root package name */
    public Long f7847g;

    /* renamed from: h  reason: collision with root package name */
    public final Handler f7848h;
    public c i;
    public b j;

    /* renamed from: a  reason: collision with root package name */
    public int f7841a = 7;

    /* renamed from: b  reason: collision with root package name */
    public long f7842b = n;

    /* renamed from: c  reason: collision with root package name */
    public long f7843c = o;

    /* renamed from: d  reason: collision with root package name */
    public long f7844d = p;
    public final com.appodeal.ads.storage.o k = com.appodeal.ads.storage.o.f7663b;

    /* loaded from: classes2.dex */
    public static final class a {
        public static x a() {
            x xVar;
            x xVar2 = x.m;
            if (xVar2 == null) {
                synchronized (x.class) {
                    xVar = x.m;
                    if (xVar == null) {
                        xVar = new x();
                        x.m = xVar;
                    }
                }
                return xVar;
            }
            return xVar2;
        }
    }

    /* loaded from: classes2.dex */
    public final class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ x f7849a;

        public b(x this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this.f7849a = this$0;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f7849a.m();
            x xVar = this.f7849a;
            long j = xVar.f7843c;
            if (j > 0) {
                xVar.f7848h.postDelayed(this, j);
            }
        }
    }

    /* loaded from: classes2.dex */
    public final class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final Context f7850a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f7851b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ x f7852c;

        public c(x this$0, Context context, boolean z) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(context, "context");
            this.f7852c = this$0;
            this.f7850a = context;
            this.f7851b = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            long a2 = x.a(this.f7852c);
            if (!this.f7851b && 0 != a2) {
                this.f7852c.a(this.f7850a, a2);
            } else if (NetworkStatus.INSTANCE.isConnected()) {
                Log.log("SessionManager", "sendSessions", TtmlNode.START);
                k0.c();
            } else {
                Log.log("SessionManager", "sendSessions", "skip: no network connection");
                x xVar = this.f7852c;
                xVar.a(this.f7850a, xVar.f7842b);
            }
        }
    }

    /* loaded from: classes2.dex */
    public abstract class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final int f7853a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ x f7854b;

        /* loaded from: classes2.dex */
        public static final class a extends LinkedHashMap<String, JSONObject> {
            public a() {
            }

            @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
            public final /* bridge */ boolean containsKey(Object obj) {
                if (obj == null ? true : obj instanceof String) {
                    return super.containsKey((String) obj);
                }
                return false;
            }

            @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
            public final /* bridge */ boolean containsValue(Object obj) {
                if (obj == null ? true : obj instanceof JSONObject) {
                    return super.containsValue((JSONObject) obj);
                }
                return false;
            }

            @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
            public final /* bridge */ Set<Map.Entry<String, JSONObject>> entrySet() {
                return super.entrySet();
            }

            @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
            public final /* bridge */ Set<String> keySet() {
                return super.keySet();
            }

            @Override // java.util.HashMap, java.util.Map
            public final /* bridge */ boolean remove(Object obj, Object obj2) {
                if (obj == null ? true : obj instanceof String) {
                    if (obj2 != null ? obj2 instanceof JSONObject : true) {
                        return super.remove((String) obj, (JSONObject) obj2);
                    }
                    return false;
                }
                return false;
            }

            @Override // java.util.LinkedHashMap
            public final boolean removeEldestEntry(Map.Entry<String, JSONObject> eldest) {
                Intrinsics.checkNotNullParameter(eldest, "eldest");
                return super.size() > d.this.f7853a;
            }

            @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
            public final /* bridge */ int size() {
                return super.size();
            }

            @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
            public final /* bridge */ Collection<JSONObject> values() {
                return super.values();
            }
        }

        public d(x this$0, int i) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this.f7854b = this$0;
            this.f7853a = i;
        }

        public abstract void a(a aVar);

        @Override // java.lang.Runnable
        public final void run() {
            try {
                a aVar = new a();
                x xVar = this.f7854b;
                x.a(xVar, x.d(xVar), aVar);
                a(aVar);
                com.appodeal.ads.storage.o oVar = this.f7854b.k;
                String jSONArray = new JSONArray((Collection) aVar.values()).toString();
                Intrinsics.checkNotNullExpressionValue(jSONArray, "JSONArray(sessions.values).toString()");
                oVar.b(jSONArray, aVar.size());
            } catch (Throwable th) {
                Log.log(th);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class e extends d {
        public e(x xVar, int i) {
            super(xVar, i);
        }

        @Override // com.appodeal.ads.utils.x.d
        public final void a(d.a sessions) {
            Intrinsics.checkNotNullParameter(sessions, "sessions");
            synchronized (x.l) {
                for (String str : x.l.keySet()) {
                    sessions.remove(str);
                }
                x.l.clear();
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class f extends d {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ w f7856c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(x xVar, w wVar, int i) {
            super(xVar, i);
            this.f7856c = wVar;
        }

        @Override // com.appodeal.ads.utils.x.d
        public final void a(d.a sessions) {
            Intrinsics.checkNotNullParameter(sessions, "sessions");
            sessions.put(this.f7856c.a(), this.f7856c.d());
        }
    }

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        n = timeUnit.toMillis(120L);
        o = timeUnit.toMillis(60L);
        p = timeUnit.toMillis(30L);
    }

    public x() {
        HandlerThread handlerThread = new HandlerThread("AppodealSessionHandler");
        handlerThread.start();
        this.f7848h = new Handler(handlerThread.getLooper());
    }

    public static final long a(x xVar) {
        Long l2 = xVar.f7847g;
        if (l2 == null) {
            return xVar.f7842b;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime() - l2.longValue();
        long j = xVar.f7842b;
        if (elapsedRealtime >= j) {
            return 0L;
        }
        return j - elapsedRealtime;
    }

    public static final JSONArray d(x xVar) {
        xVar.getClass();
        JSONArray jSONArray = new JSONArray();
        try {
            String f2 = xVar.k.f();
            if (f2 == null) {
                f2 = jSONArray.toString();
                Intrinsics.checkNotNullExpressionValue(f2, "sessions.toString()");
            }
            return new JSONArray(f2);
        } catch (Throwable th) {
            Log.log(th);
            return jSONArray;
        }
    }

    public static final void e(x this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m();
    }

    public final synchronized void a(Context context, long j) {
        c cVar = this.i;
        if (cVar != null) {
            this.f7848h.removeCallbacks(cVar);
            this.i = null;
        }
        if (this.f7842b > 0) {
            boolean z = 0 == j;
            c cVar2 = new c(this, context, z);
            this.i = cVar2;
            if (z) {
                this.f7848h.postAtFrontOfQueue(cVar2);
            } else {
                this.f7848h.postDelayed(cVar2, j);
            }
        }
    }

    public final void b() {
        this.f7848h.post(new e(this, this.f7841a));
    }

    public final long c() {
        w wVar = this.f7845e;
        long j = 0;
        if (wVar != null) {
            synchronized (wVar) {
                if (wVar.f7834b != 0) {
                    synchronized (wVar) {
                        wVar.e();
                        j = ((w.l.f7664a.a(b.a.Default).getLong("app_uptime", 0L) + wVar.f7837e) / 1000) / wVar.f7834b;
                    }
                }
            }
        }
        return j;
    }

    public final long e() {
        w wVar = this.f7845e;
        long j = 0;
        if (wVar != null) {
            synchronized (wVar) {
                wVar.e();
                j = (w.l.f7664a.a(b.a.Default).getLong("app_uptime", 0L) + wVar.f7837e) / 1000;
            }
        }
        return j;
    }

    public final long f() {
        w wVar = this.f7845e;
        long j = 0;
        if (wVar != null) {
            synchronized (wVar) {
                wVar.e();
                j = w.l.f7664a.a(b.a.Default).getLong("app_uptime_m", 0L) + wVar.f7838f;
            }
        }
        return j;
    }

    public final long g() {
        long j;
        w wVar = this.f7845e;
        if (wVar == null) {
            return 0L;
        }
        synchronized (wVar) {
            j = wVar.f7834b;
        }
        return j;
    }

    public final long h() {
        long j;
        w wVar = this.f7845e;
        if (wVar == null) {
            return 0L;
        }
        synchronized (wVar) {
            wVar.e();
            j = wVar.f7837e / 1000;
        }
        return j;
    }

    public final long i() {
        long j;
        w wVar = this.f7845e;
        if (wVar == null) {
            return 0L;
        }
        synchronized (wVar) {
            wVar.e();
            j = wVar.f7838f;
        }
        return j;
    }

    public final String j() {
        String str;
        w wVar = this.f7845e;
        if (wVar == null) {
            return null;
        }
        synchronized (wVar) {
            str = wVar.f7833a;
        }
        return str;
    }

    public final void k() {
        w wVar = this.f7845e;
        if (wVar != null) {
            synchronized (wVar) {
                wVar.i = System.currentTimeMillis();
                wVar.j = SystemClock.elapsedRealtime();
                wVar.e();
            }
            this.f7848h.post(new Runnable() { // from class: com.appodeal.ads.utils.x$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    x.e(x.this);
                }
            });
        }
        c cVar = this.i;
        if (cVar != null) {
            this.f7848h.removeCallbacks(cVar);
            this.i = null;
        }
        b bVar = this.j;
        if (bVar == null) {
            return;
        }
        this.f7848h.removeCallbacks(bVar);
        this.j = null;
    }

    public final void l() {
        long elapsedRealtime;
        long j;
        long j2;
        Context applicationContext = com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext();
        w wVar = this.f7845e;
        if (wVar != null) {
            synchronized (wVar) {
                if (wVar.i > 0) {
                    wVar.f7839g = System.currentTimeMillis();
                }
                if (wVar.j > 0) {
                    wVar.f7840h = SystemClock.elapsedRealtime();
                }
            }
            synchronized (wVar) {
                elapsedRealtime = wVar.j > 0 ? SystemClock.elapsedRealtime() - wVar.j : 0L;
            }
            if (elapsedRealtime >= this.f7844d) {
                if (this.k.f7664a.a(b.a.Default).getLong("sessions_size", 0L) >= this.f7841a) {
                    a(applicationContext, 0L);
                } else {
                    Long l2 = this.f7847g;
                    if (l2 == null) {
                        j2 = this.f7842b;
                    } else {
                        long elapsedRealtime2 = SystemClock.elapsedRealtime() - l2.longValue();
                        long j3 = this.f7842b;
                        j2 = elapsedRealtime2 >= j3 ? 0L : j3 - elapsedRealtime2;
                    }
                    a(applicationContext, j2);
                }
                n();
            } else {
                Long l3 = this.f7847g;
                if (l3 == null) {
                    j = this.f7842b;
                } else {
                    long elapsedRealtime3 = SystemClock.elapsedRealtime() - l3.longValue();
                    long j4 = this.f7842b;
                    j = elapsedRealtime3 >= j4 ? 0L : j4 - elapsedRealtime3;
                }
                a(applicationContext, j);
            }
        }
        synchronized (this) {
            b bVar = this.j;
            if (bVar != null) {
                this.f7848h.removeCallbacks(bVar);
                this.j = null;
            }
            if (this.f7843c > 0) {
                b bVar2 = new b(this);
                this.j = bVar2;
                this.f7848h.postDelayed(bVar2, this.f7843c);
            }
        }
    }

    public final synchronized void m() {
        w wVar = this.f7845e;
        if (wVar != null) {
            wVar.c();
        }
    }

    public final void n() {
        long j;
        Long valueOf;
        long longValue;
        w wVar = this.f7845e;
        Long l2 = null;
        if (wVar == null) {
            com.appodeal.ads.storage.o oVar = w.l;
            String m2 = oVar.f7664a.m();
            wVar = !TextUtils.isEmpty(m2) ? new w(m2, oVar.f7664a.h(), oVar.f7664a.j(), oVar.f7664a.i(), oVar.f7664a.l(), oVar.f7664a.k()) : null;
        } else {
            wVar.c();
        }
        if (wVar == null) {
            valueOf = null;
        } else {
            synchronized (wVar) {
                j = wVar.f7834b;
            }
            valueOf = Long.valueOf(j);
        }
        if (valueOf == null) {
            longValue = this.k.f7664a.h();
        } else {
            longValue = valueOf.longValue();
        }
        if (this.f7846f == null) {
            String c2 = this.k.c();
            Long d2 = this.k.d();
            if (c2 == null || StringsKt.isBlank(c2) || longValue == 0) {
                l2 = Long.valueOf(SystemClock.elapsedRealtime());
                this.k.a(l2.longValue());
            } else if (d2 != null) {
                l2 = d2;
            }
            this.f7846f = l2;
        }
        if (wVar != null) {
            this.f7848h.post(new f(this, wVar, this.f7841a));
        }
        w wVar2 = new w(longValue);
        this.f7845e = wVar2;
        wVar2.b();
    }

    public final long d() {
        w wVar = this.f7845e;
        long j = 0;
        if (wVar != null) {
            synchronized (wVar) {
                if (wVar.f7834b != 0) {
                    synchronized (wVar) {
                        wVar.e();
                        j = (w.l.f7664a.a(b.a.Default).getLong("app_uptime_m", 0L) + wVar.f7838f) / wVar.f7834b;
                    }
                }
            }
        }
        return j;
    }

    public static final void a(x xVar, JSONArray jSONArray, d.a aVar) {
        xVar.getClass();
        int length = jSONArray.length();
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                aVar.put(jSONObject.optString("session_uuid"), jSONObject);
            } catch (Throwable th) {
                Log.log(th);
            }
            i = i2;
        }
    }

    public final void a(Context context, JSONObject jsonObject) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        if (jsonObject.has("session_store_size")) {
            this.f7841a = jsonObject.optInt("session_store_size");
        }
        if (jsonObject.has("session_report_interval")) {
            this.f7842b = jsonObject.optLong("session_report_interval");
        }
        if (jsonObject.has("session_update_interval")) {
            this.f7843c = jsonObject.optLong("session_update_interval");
        }
        if (jsonObject.has("session_timeout_duration")) {
            this.f7844d = jsonObject.optLong("session_timeout_duration");
        }
        a(context, this.f7842b);
        synchronized (this) {
            b bVar = this.j;
            if (bVar != null) {
                this.f7848h.removeCallbacks(bVar);
                this.j = null;
            }
            if (this.f7843c > 0) {
                b bVar2 = new b(this);
                this.j = bVar2;
                this.f7848h.postDelayed(bVar2, this.f7843c);
            }
        }
    }

    public final JSONArray a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f7847g = Long.valueOf(SystemClock.elapsedRealtime());
        a(context, this.f7842b);
        JSONArray jSONArray = new JSONArray();
        try {
            String f2 = this.k.f();
            if (f2 == null) {
                f2 = jSONArray.toString();
                Intrinsics.checkNotNullExpressionValue(f2, "sessions.toString()");
            }
            jSONArray = new JSONArray(f2);
        } catch (Throwable th) {
            Log.log(th);
        }
        HashMap hashMap = l;
        synchronized (hashMap) {
            int length = jSONArray.length();
            int i = 0;
            while (i < length) {
                int i2 = i + 1;
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                hashMap.put(jSONObject.optString("session_uuid"), jSONObject);
                i = i2;
            }
            Unit unit = Unit.INSTANCE;
        }
        return jSONArray;
    }
}

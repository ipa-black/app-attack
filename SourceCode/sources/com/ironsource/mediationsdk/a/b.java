package com.ironsource.mediationsdk.a;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import android.util.Base64;
import com.appodeal.ads.modules.common.internal.Constants;
import com.ironsource.environment.a;
import com.ironsource.mediationsdk.H;
import com.ironsource.mediationsdk.IronSourceSegment;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.model.p;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public abstract class b {
    private com.ironsource.mediationsdk.a.a H;
    private int[] J;
    private p L;

    /* renamed from: a  reason: collision with root package name */
    public boolean f10911a;

    /* renamed from: d  reason: collision with root package name */
    com.ironsource.b.a f10914d;

    /* renamed from: e  reason: collision with root package name */
    ArrayList<c> f10915e;

    /* renamed from: g  reason: collision with root package name */
    int f10917g;

    /* renamed from: h  reason: collision with root package name */
    String f10918h;
    Context i;
    int[] l;
    int[] m;
    int[] n;
    int q;
    String r;
    String s;
    Set<Integer> t;
    HandlerThreadC0322b u;
    public IronSourceSegment v;
    private int w = 1;
    private int x = 100;
    private int y = 5000;
    private int z = Constants.VIDEO_MAX_DURATION;
    private int A = 1024;
    private int B = 5;
    private String C = "supersonic_sdk.db";
    private String D = IronSourceConstants.EVENTS_PROVIDER;
    private String E = IronSourceConstants.EVENTS_PLACEMENT_NAME;
    private final String F = "abt";
    private final String G = "mt";

    /* renamed from: b  reason: collision with root package name */
    boolean f10912b = false;

    /* renamed from: c  reason: collision with root package name */
    public boolean f10913c = false;

    /* renamed from: f  reason: collision with root package name */
    public boolean f10916f = true;
    int j = 100;
    private int I = 5000;
    int k = 1;
    private Map<String, String> K = new HashMap();
    Map<String, String> o = new HashMap();
    public String p = "";
    private final Object M = new Object();

    /* loaded from: classes3.dex */
    public enum a {
        NOT_SUPPORTED(-1),
        OFFERWALL(1),
        INTERSTITIAL(2),
        REWARDED_VIDEO(3),
        BANNER(8);
        

        /* renamed from: f  reason: collision with root package name */
        int f10932f;

        a(int i) {
            this.f10932f = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ironsource.mediationsdk.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class HandlerThreadC0322b extends HandlerThread {

        /* renamed from: a  reason: collision with root package name */
        Handler f10933a;

        HandlerThreadC0322b(String str) {
            super(str);
        }

        final void a(Runnable runnable) {
            this.f10933a.post(runnable);
        }
    }

    private ArrayList<c> a(ArrayList<c> arrayList, ArrayList<c> arrayList2, int i) {
        ArrayList<c> arrayList3 = new ArrayList<>();
        try {
            ArrayList arrayList4 = new ArrayList();
            arrayList4.addAll(arrayList);
            arrayList4.addAll(arrayList2);
            Collections.sort(arrayList4, new Comparator<c>() { // from class: com.ironsource.mediationsdk.a.b.3
                @Override // java.util.Comparator
                public final /* synthetic */ int compare(c cVar, c cVar2) {
                    return cVar.b() >= cVar2.b() ? 1 : -1;
                }
            });
            if (arrayList4.size() <= i) {
                arrayList3.addAll(arrayList4);
            } else {
                arrayList3.addAll(arrayList4.subList(0, i));
                this.f10914d.a(arrayList4.subList(i, arrayList4.size()), this.s);
            }
        } catch (Exception e2) {
            IronLog.INTERNAL.error("CombinedEventList exception: " + e2.getMessage());
        }
        return arrayList3;
    }

    static /* synthetic */ void a(b bVar, c cVar, String str) {
        JSONObject d2 = cVar.d();
        if (d2 == null || !d2.has(str)) {
            return;
        }
        try {
            String optString = d2.optString(str, null);
            if (optString != null) {
                cVar.a(str, optString.substring(0, Math.min(optString.length(), 1024)));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a(String str) {
        com.ironsource.mediationsdk.a.a aVar = this.H;
        if (aVar == null || !aVar.c().equals(str)) {
            this.H = c.a(str, this.q);
        }
    }

    public static void a(Map<String, Object> map, int i, String str) {
        map.put(IronSourceConstants.AUCTION_TRIALS, Integer.valueOf(i));
        if (TextUtils.isEmpty(str)) {
            return;
        }
        map.put(IronSourceConstants.AUCTION_FALLBACK, str);
    }

    static boolean a(int[] iArr) {
        return iArr != null && iArr.length > 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int e(int i) {
        a aVar;
        int i2 = a.NOT_SUPPORTED.f10932f;
        if (i == 15 || (i >= 300 && i < 400)) {
            aVar = a.OFFERWALL;
        } else if ((i >= 1000 && i < 2000) || (i >= 91000 && i < 92000)) {
            aVar = a.REWARDED_VIDEO;
        } else if ((i >= 2000 && i < 3000) || (i >= 92000 && i < 93000)) {
            aVar = a.INTERSTITIAL;
        } else if ((i < 3000 || i >= 4000) && (i < 93000 || i >= 94000)) {
            return i2;
        } else {
            aVar = a.BANNER;
        }
        return aVar.f10932f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        ArrayList<c> a2;
        this.f10912b = false;
        synchronized (this.M) {
            a2 = a(this.f10915e, this.f10914d.a(this.s), this.I);
            if (a2.size() > 0) {
                this.f10915e.clear();
                this.f10914d.b(this.s);
            }
        }
        if (a2.size() > 0) {
            this.f10917g = 0;
            JSONObject b2 = com.ironsource.mediationsdk.sdk.e.a().b();
            try {
                try {
                    IronSourceSegment ironSourceSegment = this.v;
                    if (ironSourceSegment != null) {
                        if (ironSourceSegment.getAge() > 0) {
                            b2.put(IronSourceSegment.AGE, this.v.getAge());
                        }
                        if (!TextUtils.isEmpty(this.v.getGender())) {
                            b2.put(IronSourceSegment.GENDER, this.v.getGender());
                        }
                        if (this.v.getLevel() > 0) {
                            b2.put(IronSourceSegment.LEVEL, this.v.getLevel());
                        }
                        if (this.v.getIsPaying() != null) {
                            b2.put(IronSourceSegment.PAYING, this.v.getIsPaying().get());
                        }
                        if (this.v.getIapt() > 0.0d) {
                            b2.put(IronSourceSegment.IAPT, this.v.getIapt());
                        }
                        if (this.v.getUcd() > 0) {
                            b2.put(IronSourceSegment.USER_CREATION_DATE, this.v.getUcd());
                        }
                    }
                    p pVar = this.L;
                    if (pVar != null) {
                        String str = pVar.f11308b;
                        if (!TextUtils.isEmpty(str)) {
                            b2.put("segmentId", str);
                        }
                        JSONObject jSONObject = this.L.f11309c;
                        Iterator<String> keys = jSONObject.keys();
                        while (keys.hasNext()) {
                            String next = keys.next();
                            b2.put(next, jSONObject.get(next));
                        }
                    }
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
                String str2 = this.p;
                if (!TextUtils.isEmpty(str2)) {
                    b2.put("abt", str2);
                }
                String str3 = H.a().o;
                if (!TextUtils.isEmpty(str3)) {
                    b2.put("mt", str3);
                }
                Map<String, String> map = this.K;
                if (!map.isEmpty()) {
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        if (!b2.has(entry.getKey())) {
                            b2.put(entry.getKey(), entry.getValue());
                        }
                    }
                }
                com.ironsource.environment.b.b bVar = new com.ironsource.environment.b.b();
                JSONObject a3 = bVar.f10550b.a(bVar.f10549a);
                Intrinsics.checkNotNullExpressionValue(a3, "mGlobalDataReader.getDataByKeys(mEventsKeyList)");
                Iterator<String> keys2 = a3.keys();
                while (keys2.hasNext()) {
                    String next2 = keys2.next();
                    b2.put(next2, a3.get(next2));
                }
            } catch (JSONException e3) {
                e3.printStackTrace();
            }
            String a4 = this.H.a(a2, b2);
            if (TextUtils.isEmpty(a4)) {
                IronLog.INTERNAL.error("Failed to parse events. Saving them back to storage.");
                a(a2);
                return;
            }
            if (this.f10913c) {
                try {
                    a4 = Base64.encodeToString(a.AnonymousClass1.b(a4), 0);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            com.ironsource.environment.e.c.f10584a.c(new com.ironsource.b.b(new com.ironsource.b.c() { // from class: com.ironsource.mediationsdk.a.b.2
                @Override // com.ironsource.b.c
                public final synchronized void a(final ArrayList<c> arrayList, final boolean z) {
                    b.this.u.a(new Runnable() { // from class: com.ironsource.mediationsdk.a.b.2.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (!z) {
                                IronLog.INTERNAL.error("Failed to send events. Saving them back to storage.");
                                b.this.a(arrayList);
                                return;
                            }
                            ArrayList<c> a5 = b.this.f10914d.a(b.this.s);
                            b.this.f10917g = a5.size() + b.this.f10915e.size();
                        }
                    });
                }
            }, a4, this.H.a(), a2));
        }
    }

    synchronized int a(c cVar) {
        return cVar.a() + Constants.VIDEO_MAX_DURATION;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.f10915e = new ArrayList<>();
        this.f10917g = 0;
        this.H = c.a(this.r, this.q);
        HandlerThreadC0322b handlerThreadC0322b = new HandlerThreadC0322b(this.s + "EventThread");
        this.u = handlerThreadC0322b;
        handlerThreadC0322b.start();
        HandlerThreadC0322b handlerThreadC0322b2 = this.u;
        handlerThreadC0322b2.f10933a = new Handler(handlerThreadC0322b2.getLooper());
        this.f10918h = IronSourceUtils.getSessionId();
        this.t = new HashSet();
        b();
    }

    public final void a(int i) {
        if (i > 0) {
            this.k = i;
        }
    }

    public final synchronized void a(Context context, IronSourceSegment ironSourceSegment) {
        String defaultEventsFormatterType = IronSourceUtils.getDefaultEventsFormatterType(context, this.s, this.r);
        this.r = defaultEventsFormatterType;
        a(defaultEventsFormatterType);
        this.H.f10905c = IronSourceUtils.getDefaultEventsURL(context, this.s, null);
        this.f10914d = com.ironsource.b.a.a(context, "supersonic_sdk.db", 5);
        c();
        this.l = IronSourceUtils.getDefaultOptOutEvents(context, this.s);
        this.m = IronSourceUtils.getDefaultOptInEvents(context, this.s);
        this.n = IronSourceUtils.getDefaultTriggerEvents(context, this.s);
        this.J = IronSourceUtils.getDefaultNonConnectivityEvents(context, this.s);
        this.v = ironSourceSegment;
        this.i = context;
    }

    public final synchronized void a(p pVar) {
        this.L = pVar;
    }

    public final void a(String str, Context context) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.ironsource.mediationsdk.a.a aVar = this.H;
        if (aVar != null) {
            aVar.f10905c = str;
        }
        IronSourceUtils.saveDefaultEventsURL(context, this.s, str);
    }

    protected void a(ArrayList<c> arrayList) {
        if (arrayList != null) {
            synchronized (this.M) {
                this.f10914d.a(arrayList, this.s);
                this.f10917g = this.f10914d.a(this.s).size() + this.f10915e.size();
            }
        }
    }

    public final void a(Map<String, String> map) {
        this.K.putAll(map);
    }

    public final void a(int[] iArr, Context context) {
        this.l = iArr;
        IronSourceUtils.saveDefaultOptOutEvents(context, this.s, iArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(int i, int[] iArr) {
        if (a(iArr)) {
            for (int i2 : iArr) {
                if (i == i2) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    synchronized boolean a(String str, c cVar) {
        if (str.equalsIgnoreCase("none")) {
            return a(this.J) ? a(cVar.a(), this.J) : this.t.contains(Integer.valueOf(cVar.a()));
        }
        return false;
    }

    protected void b() {
    }

    public final void b(int i) {
        if (i > 0) {
            this.j = i;
        }
    }

    public final synchronized void b(final c cVar) {
        this.u.a(new Runnable() { // from class: com.ironsource.mediationsdk.a.b.1
            @Override // java.lang.Runnable
            public final void run() {
                if (cVar == null || !b.this.f10916f) {
                    return;
                }
                cVar.a("eventSessionId", b.this.f10918h);
                String connectionType = IronSourceUtils.getConnectionType(b.this.i);
                if (b.this.g(cVar)) {
                    cVar.a("connectionType", connectionType);
                }
                if (b.this.a(connectionType, cVar)) {
                    c cVar2 = cVar;
                    cVar2.a(b.this.a(cVar2));
                }
                int e2 = b.e(cVar.a());
                if (e2 != a.NOT_SUPPORTED.f10932f) {
                    cVar.a("adUnit", Integer.valueOf(e2));
                }
                b.a(b.this, cVar, IronSourceConstants.EVENTS_ERROR_REASON);
                b.a(b.this, cVar, IronSourceConstants.EVENTS_EXT1);
                if (!b.this.o.isEmpty()) {
                    for (Map.Entry<String, String> entry : b.this.o.entrySet()) {
                        if (!cVar.d().has(entry.getKey()) && entry.getKey() != "eventId" && entry.getKey() != "timestamp") {
                            cVar.a(entry.getKey(), entry.getValue());
                        }
                    }
                }
                b bVar = b.this;
                c cVar3 = cVar;
                boolean z = false;
                if (cVar3 != null ? b.a(bVar.l) ? !bVar.a(cVar3.a(), bVar.l) : b.a(bVar.m) ? bVar.a(cVar3.a(), bVar.m) : true : false) {
                    if (b.this.f(cVar)) {
                        JSONObject d2 = cVar.d();
                        if (!(d2 == null ? false : d2.has(IronSourceConstants.KEY_SESSION_DEPTH))) {
                            cVar.a(IronSourceConstants.KEY_SESSION_DEPTH, Integer.valueOf(b.this.e(cVar)));
                        }
                    }
                    if (!TextUtils.isEmpty(b.this.d(cVar.a())) && b.this.c(cVar)) {
                        c cVar4 = cVar;
                        cVar4.a(IronSourceConstants.EVENTS_PLACEMENT_NAME, b.this.d(cVar4.a()));
                    }
                    long firstSessionTimestamp = IronSourceUtils.getFirstSessionTimestamp(b.this.i);
                    if (firstSessionTimestamp != -1) {
                        cVar.a(IronSourceConstants.FIRST_SESSION_TIMESTAMP, Long.valueOf(firstSessionTimestamp));
                    }
                    try {
                        IronLog.EVENT.verbose(("{\"eventId\":" + cVar.a() + ",\"timestamp\":" + cVar.b() + "," + cVar.c().substring(1)).replace(",", "\n"));
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    b.this.f10915e.add(cVar);
                    b.this.f10917g++;
                }
                boolean a2 = b.a(b.this.n) ? b.this.a(cVar.a(), b.this.n) : b.this.d(cVar);
                if (!b.this.f10912b && a2) {
                    b.this.f10912b = true;
                }
                if (b.this.f10914d != null) {
                    b bVar2 = b.this;
                    if ((bVar2.f10917g >= bVar2.j || bVar2.f10912b) && bVar2.f10911a) {
                        b.this.e();
                        return;
                    }
                    b bVar3 = b.this;
                    ArrayList<c> arrayList = bVar3.f10915e;
                    if (arrayList != null && arrayList.size() >= bVar3.k) {
                        z = true;
                    }
                    if (z || a2) {
                        b.this.c();
                    }
                }
            }
        });
    }

    public final void b(String str, Context context) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.r = str;
        IronSourceUtils.saveDefaultEventsFormatterType(context, this.s, str);
        a(str);
    }

    public final void b(Map<String, String> map) {
        this.o.putAll(map);
    }

    public final void b(int[] iArr, Context context) {
        this.m = iArr;
        IronSourceUtils.saveDefaultOptInEvents(context, this.s, iArr);
    }

    void c() {
        synchronized (this.M) {
            this.f10914d.a(this.f10915e, this.s);
            this.f10915e.clear();
        }
    }

    public final void c(int i) {
        if (i > 0) {
            this.I = i;
        }
    }

    public final void c(int[] iArr, Context context) {
        this.n = iArr;
        IronSourceUtils.saveDefaultTriggerEvents(context, this.s, iArr);
    }

    protected abstract boolean c(c cVar);

    protected abstract String d(int i);

    public final void d() {
        e();
    }

    public final void d(int[] iArr, Context context) {
        this.J = iArr;
        IronSourceUtils.saveDefaultNonConnectivityEvents(context, this.s, iArr);
    }

    protected abstract boolean d(c cVar);

    protected abstract int e(c cVar);

    protected boolean f(c cVar) {
        return (cVar.a() == 14 || cVar.a() == 114 || cVar.a() == 514 || cVar.a() == 140 || cVar.a() == 40 || cVar.a() == 41 || cVar.a() == 50 || cVar.a() == 51 || cVar.a() == 52) ? false : true;
    }

    protected boolean g(c cVar) {
        return (cVar.a() == 40 || cVar.a() == 41 || cVar.a() == 50 || cVar.a() == 51 || cVar.a() == 52) ? false : true;
    }
}

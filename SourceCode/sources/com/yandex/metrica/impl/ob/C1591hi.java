package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import com.yandex.metrica.IIdentifierCallback;
import com.yandex.metrica.IParamsCallback;
import com.yandex.metrica.impl.ob.ResultReceiverC1523f0;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: com.yandex.metrica.impl.ob.hi  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1591hi implements InterfaceC1640ji, Q0 {
    static final Map<EnumC1566gi, IParamsCallback.Reason> j = Collections.unmodifiableMap(new a());

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f14865a;

    /* renamed from: b  reason: collision with root package name */
    private final T1 f14866b;

    /* renamed from: c  reason: collision with root package name */
    private final C1715mi f14867c;

    /* renamed from: d  reason: collision with root package name */
    private final Handler f14868d;

    /* renamed from: e  reason: collision with root package name */
    private C1470cm f14869e;

    /* renamed from: f  reason: collision with root package name */
    private final ResultReceiverC1523f0.a f14870f;

    /* renamed from: g  reason: collision with root package name */
    private final Object f14871g;

    /* renamed from: h  reason: collision with root package name */
    private final Map<Yh, List<String>> f14872h;
    private Map<String, String> i;

    /* renamed from: com.yandex.metrica.impl.ob.hi$a */
    /* loaded from: classes5.dex */
    class a extends HashMap<EnumC1566gi, IParamsCallback.Reason> {
        a() {
            put(EnumC1566gi.UNKNOWN, IParamsCallback.Reason.UNKNOWN);
            put(EnumC1566gi.NETWORK, IParamsCallback.Reason.NETWORK);
            put(EnumC1566gi.PARSE, IParamsCallback.Reason.INVALID_RESPONSE);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.hi$b */
    /* loaded from: classes5.dex */
    class b implements ResultReceiverC1523f0.a {
        b(C1591hi c1591hi) {
        }

        @Override // com.yandex.metrica.impl.ob.ResultReceiverC1523f0.a
        public void a(int i, Bundle bundle) {
        }
    }

    public C1591hi(Context context, T1 t1, C1432b9 c1432b9, Handler handler) {
        this(t1, new C1715mi(context, c1432b9), handler);
    }

    private void f() {
        WeakHashMap weakHashMap = new WeakHashMap();
        for (Map.Entry<Yh, List<String>> entry : this.f14872h.entrySet()) {
            List<String> value = entry.getValue();
            if (this.f14867c.a((Collection<String>) value)) {
                weakHashMap.put(entry.getKey(), value);
            }
        }
        for (Map.Entry entry2 : weakHashMap.entrySet()) {
            Yh yh = (Yh) entry2.getKey();
            if (yh != null) {
                a(yh, new Bundle());
            }
        }
        weakHashMap.clear();
    }

    @Override // com.yandex.metrica.impl.ob.Q0
    public long a() {
        return this.f14867c.e();
    }

    public String b() {
        return this.f14867c.c();
    }

    public C1829ra c() {
        return this.f14867c.d();
    }

    public C1544fl d() {
        return this.f14867c.f();
    }

    public String e() {
        return this.f14867c.g();
    }

    public void g() {
        boolean b2;
        synchronized (this.f14871g) {
            C1715mi c1715mi = this.f14867c;
            synchronized (c1715mi) {
                b2 = c1715mi.b(Arrays.asList(IParamsCallback.YANDEX_MOBILE_METRICA_CLIDS, "appmetrica_device_id_hash", "yandex_mobile_metrica_device_id", "yandex_mobile_metrica_get_ad_url", "yandex_mobile_metrica_report_ad_url", "yandex_mobile_metrica_uuid"));
            }
            if (b2) {
                this.f14866b.a(this.f14865a, new ResultReceiverC1523f0(this.f14868d, this.f14870f), this.i);
            }
        }
    }

    C1591hi(T1 t1, C1715mi c1715mi, Handler handler) {
        this.f14865a = Arrays.asList("yandex_mobile_metrica_uuid", "yandex_mobile_metrica_device_id", "appmetrica_device_id_hash", "yandex_mobile_metrica_get_ad_url", "yandex_mobile_metrica_report_ad_url", IParamsCallback.YANDEX_MOBILE_METRICA_CLIDS);
        this.f14871g = new Object();
        this.f14872h = new WeakHashMap();
        this.f14866b = t1;
        this.f14867c = c1715mi;
        this.f14868d = handler;
        this.f14870f = new b(this);
    }

    public void a(IIdentifierCallback iIdentifierCallback, List<String> list, Map<String, String> map) {
        Qh qh = new Qh(iIdentifierCallback);
        synchronized (this.f14871g) {
            this.f14867c.a(map);
            if (this.f14872h.isEmpty()) {
                this.f14866b.g();
            }
            this.f14872h.put(qh, list);
            if (this.f14867c.b(list)) {
                this.f14866b.a(list, new ResultReceiverC1523f0(this.f14868d, new C1615ii(this, qh)), map);
            } else {
                a(qh, new Bundle());
            }
        }
    }

    public void b(String str) {
        synchronized (this.f14871g) {
            this.f14866b.b(str);
        }
    }

    public void a(Bundle bundle, Yh yh) {
        synchronized (this.f14871g) {
            this.f14867c.a(bundle);
            f();
            f();
            if (yh != null) {
                a(yh, bundle);
            }
        }
    }

    public void a(C1470cm c1470cm) {
        this.f14869e = c1470cm;
    }

    public void a(List<String> list) {
        synchronized (this.f14871g) {
            List<String> b2 = this.f14867c.b();
            if (A2.b(list)) {
                if (!A2.b(b2)) {
                    this.f14867c.a((List<String>) null);
                    this.f14866b.a((List<String>) null);
                }
            } else if (!A2.a(list, b2)) {
                this.f14867c.a(list);
                this.f14866b.a(list);
            } else {
                this.f14866b.a(b2);
            }
        }
    }

    public void a(Map<String, String> map) {
        if (A2.b(map)) {
            return;
        }
        synchronized (this.f14871g) {
            Map<String, String> i = Tl.i(map);
            this.i = i;
            this.f14866b.a(i);
            this.f14867c.a(i);
        }
    }

    public void a(String str) {
        synchronized (this.f14871g) {
            this.f14866b.a(str);
        }
    }

    public void a(InterfaceC1569gl interfaceC1569gl) {
        this.f14867c.a(interfaceC1569gl);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.yandex.metrica.impl.ob.Yh r6, android.os.Bundle r7) {
        /*
            r5 = this;
            java.util.Map<com.yandex.metrica.impl.ob.Yh, java.util.List<java.lang.String>> r0 = r5.f14872h
            boolean r0 = r0.containsKey(r6)
            if (r0 == 0) goto L98
            java.util.Map<com.yandex.metrica.impl.ob.Yh, java.util.List<java.lang.String>> r0 = r5.f14872h
            java.lang.Object r0 = r0.get(r6)
            java.util.List r0 = (java.util.List) r0
            com.yandex.metrica.impl.ob.mi r1 = r5.f14867c
            boolean r1 = r1.a(r0)
            r2 = 0
            if (r1 == 0) goto L2a
            if (r0 != 0) goto L1c
            goto L26
        L1c:
            java.util.HashMap r2 = new java.util.HashMap
            r2.<init>()
            com.yandex.metrica.impl.ob.mi r7 = r5.f14867c
            r7.a(r0, r2)
        L26:
            r6.onReceive(r2)
            goto L86
        L2a:
            java.lang.String r1 = "startup_error_key_code"
            boolean r3 = r7.containsKey(r1)
            if (r3 == 0) goto L45
            int r7 = r7.getInt(r1)
            com.yandex.metrica.impl.ob.gi r1 = com.yandex.metrica.impl.ob.EnumC1566gi.UNKNOWN
            r3 = 1
            if (r7 == r3) goto L42
            r3 = 2
            if (r7 == r3) goto L3f
            goto L46
        L3f:
            com.yandex.metrica.impl.ob.gi r1 = com.yandex.metrica.impl.ob.EnumC1566gi.PARSE
            goto L46
        L42:
            com.yandex.metrica.impl.ob.gi r1 = com.yandex.metrica.impl.ob.EnumC1566gi.NETWORK
            goto L46
        L45:
            r1 = r2
        L46:
            if (r1 != 0) goto L64
            com.yandex.metrica.impl.ob.mi r7 = r5.f14867c
            boolean r7 = r7.a()
            if (r7 != 0) goto L62
            com.yandex.metrica.impl.ob.cm r7 = r5.f14869e
            if (r7 == 0) goto L5f
            java.util.Map<java.lang.String, java.lang.String> r3 = r5.i
            java.lang.Object[] r3 = new java.lang.Object[]{r3}
            java.lang.String r4 = "Clids error. Passed clids: %s, and clids from server are empty."
            r7.fw(r4, r3)
        L5f:
            com.yandex.metrica.IParamsCallback$Reason r7 = com.yandex.metrica.IParamsCallback.Reason.INCONSISTENT_CLIDS
            goto L65
        L62:
            com.yandex.metrica.impl.ob.gi r1 = com.yandex.metrica.impl.ob.EnumC1566gi.UNKNOWN
        L64:
            r7 = r2
        L65:
            if (r7 != 0) goto L76
            java.util.Map<com.yandex.metrica.impl.ob.gi, com.yandex.metrica.IParamsCallback$Reason> r7 = com.yandex.metrica.impl.ob.C1591hi.j
            com.yandex.metrica.IParamsCallback$Reason r3 = com.yandex.metrica.IParamsCallback.Reason.UNKNOWN
            java.lang.Object r7 = r7.get(r1)
            if (r7 != 0) goto L72
            goto L73
        L72:
            r3 = r7
        L73:
            r7 = r3
            com.yandex.metrica.IParamsCallback$Reason r7 = (com.yandex.metrica.IParamsCallback.Reason) r7
        L76:
            if (r0 != 0) goto L79
            goto L83
        L79:
            java.util.HashMap r2 = new java.util.HashMap
            r2.<init>()
            com.yandex.metrica.impl.ob.mi r1 = r5.f14867c
            r1.a(r0, r2)
        L83:
            r6.a(r7, r2)
        L86:
            java.util.Map<com.yandex.metrica.impl.ob.Yh, java.util.List<java.lang.String>> r7 = r5.f14872h
            r7.remove(r6)
            java.util.Map<com.yandex.metrica.impl.ob.Yh, java.util.List<java.lang.String>> r6 = r5.f14872h
            boolean r6 = r6.isEmpty()
            if (r6 == 0) goto L98
            com.yandex.metrica.impl.ob.T1 r6 = r5.f14866b
            r6.f()
        L98:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C1591hi.a(com.yandex.metrica.impl.ob.Yh, android.os.Bundle):void");
    }
}

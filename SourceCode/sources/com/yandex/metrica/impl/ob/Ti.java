package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import android.util.Pair;
import com.yandex.metrica.impl.ob.If;
import com.yandex.metrica.impl.ob.Oh;
import com.yandex.metrica.impl.ob.Tl;
import com.yandex.metrica.impl.ob.Ui;
import com.yandex.metrica.networktasks.api.RetryPolicyConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class Ti {

    /* renamed from: a  reason: collision with root package name */
    private final Ii f13971a;

    /* renamed from: b  reason: collision with root package name */
    private final Hi f13972b;

    /* renamed from: c  reason: collision with root package name */
    private final Oi f13973c;

    /* renamed from: d  reason: collision with root package name */
    private final Ri f13974d;

    /* renamed from: e  reason: collision with root package name */
    private final Qi f13975e;

    /* renamed from: f  reason: collision with root package name */
    private final Ni f13976f;

    /* renamed from: g  reason: collision with root package name */
    private final Si f13977g;

    /* renamed from: h  reason: collision with root package name */
    private final Ji f13978h;
    private final Wi i;
    private final Li j;
    private final Pi k;
    private final Z9 l;
    private final Yi m;
    private final Xi n;
    private final Ci o;
    private final Di p;
    private final Ei q;
    private final Bi r;
    private final Ki s;
    private final Fi t;
    private final Gi u;
    private final Vi v;
    private final Mi w;

    public Ti() {
        this(new Ki(), new Ii(), new Hi(), new Oi(), new Ri(), new Qi(), new Ni(), new Si(), new Ji(), new Wi(), new Li(), new Pi(), new Z9(), new Yi(), new Xi(), new Di(), new Ei(), new Ci(), new Bi(), new Fi(), new Gi(), new Vi(), new Mi());
    }

    public Ui a(byte[] bArr) {
        String str;
        String str2;
        Ui ui = new Ui();
        try {
            this.s.getClass();
            Tl.a aVar = new Tl.a(new String(bArr, com.google.android.exoplayer2.C.UTF8_NAME));
            JSONObject optJSONObject = aVar.optJSONObject("device_id");
            if (optJSONObject == null) {
                str = "";
                str2 = "";
            } else {
                str = optJSONObject.optString("hash");
                str2 = optJSONObject.optString("value");
            }
            ui.d(str2);
            ui.c(str);
            a(ui, aVar);
            ui.a(Ui.a.OK);
            return ui;
        } catch (Throwable unused) {
            Ui ui2 = new Ui();
            ui2.a(Ui.a.BAD);
            return ui2;
        }
    }

    public Ti(Ki ki, Ii ii, Hi hi, Oi oi, Ri ri, Qi qi, Ni ni, Si si, Ji ji, Wi wi, Li li, Pi pi, Z9 z9, Yi yi, Xi xi, Di di, Ei ei, Ci ci, Bi bi, Fi fi, Gi gi, Vi vi, Mi mi) {
        this.f13971a = ii;
        this.f13972b = hi;
        this.f13973c = oi;
        this.f13974d = ri;
        this.f13975e = qi;
        this.f13976f = ni;
        this.f13977g = si;
        this.f13978h = ji;
        this.i = wi;
        this.j = li;
        this.k = pi;
        this.l = z9;
        this.m = yi;
        this.n = xi;
        this.p = di;
        this.q = ei;
        this.o = ci;
        this.r = bi;
        this.s = ki;
        this.t = fi;
        this.u = gi;
        this.v = vi;
        this.w = mi;
    }

    private void a(Ui ui, Tl.a aVar) throws JSONException {
        long j;
        long j2;
        JSONArray optJSONArray;
        JSONArray optJSONArray2;
        JSONObject optJSONObject;
        JSONObject optJSONObject2;
        JSONObject optJSONObject3 = aVar.optJSONObject("queries");
        if (optJSONObject3 != null && (optJSONObject2 = optJSONObject3.optJSONObject("list")) != null) {
            JSONObject optJSONObject4 = optJSONObject2.optJSONObject("sdk_list");
            if (optJSONObject4 != null) {
                ui.h(optJSONObject4.optString("url", null));
            }
            JSONObject optJSONObject5 = optJSONObject2.optJSONObject("host");
            if (optJSONObject5 != null) {
                ui.a(optJSONObject5.optString("url", null));
            }
        }
        Object jSONObject = new JSONObject();
        try {
            jSONObject = aVar.get("distribution_customization");
        } catch (Throwable unused) {
        }
        JSONObject optJSONObject6 = ((JSONObject) jSONObject).optJSONObject("clids");
        if (optJSONObject6 != null) {
            HashMap hashMap = new HashMap();
            Iterator<String> keys = optJSONObject6.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                JSONObject optJSONObject7 = optJSONObject6.optJSONObject(next);
                if (optJSONObject7 != null && optJSONObject7.has("value")) {
                    hashMap.put(next, optJSONObject7.getString("value"));
                }
            }
            ui.e(Tl.c(hashMap));
        }
        JSONObject optJSONObject8 = aVar.optJSONObject("locale");
        ui.b((optJSONObject8 == null || (optJSONObject = optJSONObject8.optJSONObject("country")) == null || !optJSONObject.optBoolean("reliable", false)) ? "" : optJSONObject.optString("value", ""));
        JSONObject optJSONObject9 = aVar.optJSONObject("time");
        if (optJSONObject9 != null) {
            try {
                ui.a(Long.valueOf(optJSONObject9.getLong("max_valid_difference_seconds")));
            } catch (Throwable unused2) {
            }
        }
        If.s sVar = new If.s();
        JSONObject optJSONObject10 = aVar.optJSONObject("stat_sending");
        if (optJSONObject10 != null) {
            sVar.f13168a = Tl.a(Tl.a(optJSONObject10, "disabled_reporting_interval_seconds", (Long) null), TimeUnit.SECONDS, sVar.f13168a);
        }
        ui.a(this.l.toModel(sVar));
        ArrayList arrayList = new ArrayList();
        JSONObject optJSONObject11 = aVar.optJSONObject("mediascope_api_keys");
        if (optJSONObject11 != null && (optJSONArray2 = optJSONObject11.optJSONArray("list")) != null) {
            for (int i = 0; i < optJSONArray2.length(); i++) {
                try {
                    arrayList.add(optJSONArray2.getString(i));
                } catch (Throwable unused3) {
                }
            }
        }
        ui.d(arrayList);
        this.f13972b.a(ui, aVar);
        this.f13971a.a(ui, aVar);
        this.f13973c.getClass();
        JSONObject optJSONObject12 = aVar.optJSONObject("permissions");
        if (optJSONObject12 != null && (optJSONArray = optJSONObject12.optJSONArray("list")) != null) {
            for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                JSONObject optJSONObject13 = optJSONArray.optJSONObject(i2);
                if (optJSONObject13 != null) {
                    String optString = optJSONObject13.optString("name");
                    boolean optBoolean = optJSONObject13.optBoolean("enabled");
                    if (TextUtils.isEmpty(optString)) {
                        ui.a("", false);
                    } else {
                        ui.a(optString, optBoolean);
                    }
                }
            }
        }
        this.f13974d.a(ui, aVar);
        this.f13975e.getClass();
        If r0 = new If();
        JSONObject optJSONObject14 = aVar.optJSONObject("retry_policy");
        int i3 = r0.H;
        int i4 = r0.I;
        if (optJSONObject14 != null) {
            i3 = optJSONObject14.optInt("max_interval_seconds", i3);
            i4 = optJSONObject14.optInt("exponential_multiplier", r0.I);
        }
        ui.a(new RetryPolicyConfig(i3, i4));
        this.f13976f.getClass();
        if (ui.e().f13887c) {
            JSONObject optJSONObject15 = aVar.optJSONObject("permissions_collecting");
            If.n nVar = new If.n();
            if (optJSONObject15 != null) {
                j = optJSONObject15.optLong("check_interval_seconds", nVar.f13143a);
                j2 = optJSONObject15.optLong("force_send_interval_seconds", nVar.f13144b);
            } else {
                j = nVar.f13143a;
                j2 = nVar.f13144b;
            }
            ui.a(new C1416ai(j, j2));
        }
        this.f13977g.a(ui, aVar);
        this.f13978h.a(ui, aVar);
        this.j.a(ui, aVar);
        this.k.a(ui, aVar);
        this.m.a(ui, aVar);
        ui.b(this.n.a(aVar, "ui_event_sending", C1697m0.b()));
        ui.c(this.n.a(aVar, "ui_raw_event_sending", C1697m0.b()));
        ui.a(this.n.a(aVar, "ui_collecting_for_bridge", C1697m0.a()));
        this.o.a(ui, aVar);
        ui.a(this.i.a(aVar, "throttling"));
        ui.a(this.p.a(aVar));
        this.q.a(ui, aVar);
        this.r.getClass();
        JSONObject optJSONObject16 = aVar.optJSONObject("attribution");
        if (optJSONObject16 != null) {
            ArrayList arrayList2 = new ArrayList();
            JSONArray optJSONArray3 = optJSONObject16.optJSONArray("deeplink_conditions");
            if (optJSONArray3 != null) {
                for (int i5 = 0; i5 < optJSONArray3.length(); i5++) {
                    JSONObject optJSONObject17 = optJSONArray3.optJSONObject(i5);
                    String optString2 = optJSONObject17.optString("key", null);
                    if (!TextUtils.isEmpty(optString2)) {
                        String optString3 = optJSONObject17.optString("value", null);
                        arrayList2.add(new Pair(optString2, optString3 == null ? null : new Oh.a(optString3)));
                    }
                }
            }
            ui.a(new Oh(arrayList2));
        }
        this.t.a(ui, aVar);
        if (ui.e().w) {
            this.u.a(ui, aVar);
        }
        this.v.a(ui, aVar);
        this.w.a(ui, aVar);
    }
}

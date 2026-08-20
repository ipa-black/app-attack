package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import android.content.Context;
import android.location.Location;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.yandex.metrica.impl.ob.C1759oc;
import com.yandex.metrica.impl.ob.C1842s;
import com.yandex.metrica.impl.ob.C1909ui;
import com.yandex.metrica.impl.ob.zn;
import java.util.Collection;
import java.util.EnumMap;
import java.util.LinkedList;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.i0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1598i0 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f14887a;

    /* renamed from: b  reason: collision with root package name */
    private final E f14888b;

    /* renamed from: c  reason: collision with root package name */
    private final C1938w f14889c;

    /* renamed from: d  reason: collision with root package name */
    private final C1927vc f14890d;

    /* renamed from: e  reason: collision with root package name */
    private final I2 f14891e;

    /* renamed from: f  reason: collision with root package name */
    private final D9 f14892f;

    /* renamed from: g  reason: collision with root package name */
    private ContentValues f14893g;

    /* renamed from: h  reason: collision with root package name */
    private Lg f14894h;

    public C1598i0(Context context) {
        this(context, F0.g().c(), F0.g().b(), C1927vc.a(context), H2.a(context));
    }

    public C1598i0 a(ContentValues contentValues) {
        this.f14893g = contentValues;
        return this;
    }

    public C1598i0 a(Lg lg) {
        this.f14894h = lg;
        return this;
    }

    public void a() {
        JSONObject jSONObject = new JSONObject();
        try {
            a(jSONObject);
        } catch (Throwable unused) {
            jSONObject = new JSONObject();
        }
        this.f14893g.put("report_request_parameters", jSONObject.toString());
    }

    C1598i0(Context context, E e2, C1938w c1938w, C1927vc c1927vc, H2 h2) {
        this.f14892f = new D9();
        this.f14887a = context;
        this.f14888b = e2;
        this.f14889c = c1938w;
        this.f14890d = c1927vc;
        this.f14891e = h2.a();
    }

    private void a(JSONObject jSONObject) throws JSONException {
        JSONObject putOpt = jSONObject.putOpt("dId", this.f14894h.g()).putOpt("uId", this.f14894h.w()).putOpt("appVer", this.f14894h.f()).putOpt("appBuild", this.f14894h.b());
        this.f14894h.getClass();
        JSONObject putOpt2 = putOpt.putOpt("analyticsSdkVersionName", "5.3.0");
        this.f14894h.getClass();
        JSONObject putOpt3 = putOpt2.putOpt("kitBuildNumber", "45003240").putOpt("kitBuildType", this.f14894h.j()).putOpt("osVer", this.f14894h.o()).putOpt("osApiLev", Integer.valueOf(this.f14894h.n())).putOpt("lang", this.f14894h.k()).putOpt("root", this.f14894h.h()).putOpt("app_debuggable", this.f14894h.z()).putOpt("app_framework", this.f14894h.c()).putOpt("attribution_id", Integer.valueOf(this.f14894h.C()));
        this.f14894h.getClass();
        putOpt3.putOpt("commit_hash", "a72bf6f57701ed3c2b8ed570054febbff4e58c12");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a(Bm bm, C1842s.a aVar, vn<C1909ui.b, Object> vnVar) {
        Location location;
        K2 k2;
        C1448c0 c1448c0 = bm.f12718a;
        this.f14893g.put("name", c1448c0.f14507a);
        this.f14893g.put("value", c1448c0.f14508b);
        this.f14893g.put(SessionDescription.ATTR_TYPE, Integer.valueOf(c1448c0.f14511e));
        this.f14893g.put("custom_type", Integer.valueOf(c1448c0.f14512f));
        this.f14893g.put("error_environment", c1448c0.h());
        this.f14893g.put("user_info", c1448c0.p());
        this.f14893g.put("truncated", Integer.valueOf(c1448c0.f14514h));
        this.f14893g.put("connection_type", Integer.valueOf(H1.b(this.f14887a)));
        this.f14893g.put("profile_id", c1448c0.m());
        this.f14893g.put("encrypting_mode", Integer.valueOf(bm.f12719b.a()));
        this.f14893g.put("first_occurrence_status", Integer.valueOf(c1448c0.j().f12776a));
        EnumC1987y0 n = c1448c0.n();
        if (n != null) {
            this.f14893g.put("source", Integer.valueOf(n.f16067a));
        }
        Boolean c2 = c1448c0.c();
        if (c2 != null) {
            this.f14893g.put("attribution_id_changed", c2);
        }
        this.f14893g.put("open_id", c1448c0.k());
        this.f14893g.put("extras", this.f14892f.fromModel(c1448c0.i()));
        this.f14893g.put("app_environment", aVar.f15699a);
        this.f14893g.put("app_environment_revision", Long.valueOf(aVar.f15700b));
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("enabled", this.f14894h.Q());
            if (this.f14894h.Q()) {
                location = this.f14894h.H();
                if (location == null) {
                    location = this.f14890d.a();
                    k2 = null;
                } else {
                    k2 = K2.a(location);
                }
            } else {
                location = null;
                k2 = null;
            }
            if (k2 == null && location != null) {
                k2 = K2.b(location);
            }
            if (k2 != null) {
                a(jSONObject, k2);
            }
            this.f14893g.put("location_info", jSONObject.toString());
        } catch (Throwable unused) {
        }
        EnumMap enumMap = new EnumMap(C1909ui.b.class);
        Xj v = F0.g().v();
        LinkedList linkedList = new LinkedList();
        v.a(new C1573h0(this, linkedList));
        C1909ui.b bVar = C1909ui.b.WIFI;
        enumMap.put((EnumMap) bVar, (C1909ui.b) this.f14891e.a());
        C1909ui.b bVar2 = C1909ui.b.CELL;
        enumMap.put((EnumMap) bVar2, (C1909ui.b) (linkedList.isEmpty() ? null : (Collection) linkedList.getFirst()));
        zn<Map<C1909ui.b, Object>> a2 = vnVar.a(enumMap);
        this.f14893g.put("has_omitted_data", Integer.valueOf(a2.f16179a == zn.a.NOT_CHANGED ? 1 : 0));
        zn.a aVar2 = a2.f16179a;
        D d2 = a2.f16180b;
        Collection collection = d2 == 0 ? null : (Collection) ((Map) d2).get(bVar2);
        v.a(new C1548g0(this));
        zn.a aVar3 = zn.a.NEW;
        if ((aVar2 == aVar3 || aVar2 == zn.a.REFRESH) && collection != null) {
            this.f14893g.put("cell_info", Tl.a((Collection<C1910uj>) collection).toString());
        }
        zn.a aVar4 = a2.f16179a;
        D d3 = a2.f16180b;
        Collection collection2 = d3 != 0 ? (Collection) ((Map) d3).get(bVar) : null;
        if ((aVar4 == zn.a.REFRESH || aVar4 == aVar3) && collection2 != null) {
            this.f14893g.put("wifi_network_info", F2.a(collection2).toString());
        }
        this.f14893g.put("battery_charge_type", Integer.valueOf(this.f14888b.b().a()));
        this.f14893g.put("collection_mode", C1759oc.a.a(this.f14889c.c()).a());
    }

    private void a(JSONObject jSONObject, K2 k2) throws JSONException {
        jSONObject.put(com.appnext.base.b.i.fC, k2.getLatitude());
        jSONObject.put("lon", k2.getLongitude());
        jSONObject.putOpt("timestamp", Long.valueOf(k2.getTime()));
        jSONObject.putOpt("precision", k2.hasAccuracy() ? Float.valueOf(k2.getAccuracy()) : null);
        jSONObject.putOpt("direction", k2.hasBearing() ? Float.valueOf(k2.getBearing()) : null);
        jSONObject.putOpt("speed", k2.hasSpeed() ? Float.valueOf(k2.getSpeed()) : null);
        jSONObject.putOpt("altitude", k2.hasAltitude() ? Double.valueOf(k2.getAltitude()) : null);
        jSONObject.putOpt(IronSourceConstants.EVENTS_PROVIDER, C1422b.a(k2.getProvider(), (String) null));
        jSONObject.putOpt("original_provider", k2.a());
    }
}

package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import android.util.Pair;
import com.google.protobuf.nano.ym.MessageNano;
import com.yandex.metrica.coreutils.collection.CollectionUtils;
import com.yandex.metrica.coreutils.services.SystemTimeProvider;
import com.yandex.metrica.impl.ob.C2010z;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.c0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1448c0 implements Parcelable {
    public static final Parcelable.Creator<C1448c0> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    String f14507a;

    /* renamed from: b  reason: collision with root package name */
    String f14508b;

    /* renamed from: c  reason: collision with root package name */
    private String f14509c;

    /* renamed from: d  reason: collision with root package name */
    private String f14510d;

    /* renamed from: e  reason: collision with root package name */
    int f14511e;

    /* renamed from: f  reason: collision with root package name */
    int f14512f;

    /* renamed from: g  reason: collision with root package name */
    private Pair<String, String> f14513g;

    /* renamed from: h  reason: collision with root package name */
    int f14514h;
    private String i;
    private long j;
    private long k;
    private D0 l;
    private EnumC1987y0 m;
    private Bundle n;
    private Boolean o;
    private Integer p;
    private Map<String, byte[]> q;

    /* renamed from: com.yandex.metrica.impl.ob.c0$a */
    /* loaded from: classes5.dex */
    class a implements Parcelable.Creator<C1448c0> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        public C1448c0 createFromParcel(Parcel parcel) {
            Bundle readBundle = parcel.readBundle(ResultReceiverC1523f0.class.getClassLoader());
            EnumC1987y0 a2 = readBundle.containsKey("CounterReport.Source") ? EnumC1987y0.a(readBundle.getInt("CounterReport.Source")) : null;
            C1448c0 c1448c0 = new C1448c0();
            c1448c0.f14511e = readBundle.getInt("CounterReport.Type", EnumC1399a1.EVENT_TYPE_UNDEFINED.b());
            c1448c0.f14512f = readBundle.getInt("CounterReport.CustomType");
            String string = readBundle.getString("CounterReport.Value");
            if (string == null) {
                string = "";
            }
            c1448c0.f14508b = string;
            C1448c0 a3 = C1448c0.a(c1448c0.e(readBundle.getString("CounterReport.UserInfo")).c(readBundle.getString("CounterReport.Environment")).b(readBundle.getString("CounterReport.Event")), (readBundle.containsKey("CounterReport.AppEnvironmentDiffKey") && readBundle.containsKey("CounterReport.AppEnvironmentDiffValue")) ? new Pair(readBundle.getString("CounterReport.AppEnvironmentDiffKey"), readBundle.getString("CounterReport.AppEnvironmentDiffValue")) : null);
            a3.f14514h = readBundle.getInt("CounterReport.TRUNCATED");
            return a3.d(readBundle.getString("CounterReport.ProfileID")).a(readBundle.getLong("CounterReport.CreationElapsedRealtime")).b(readBundle.getLong("CounterReport.CreationTimestamp")).a(D0.a(Integer.valueOf(readBundle.getInt("CounterReport.UniquenessStatus")))).a(a2).c(readBundle.getBundle("CounterReport.Payload")).a(readBundle.containsKey("CounterReport.AttributionIdChanged") ? Boolean.valueOf(readBundle.getBoolean("CounterReport.AttributionIdChanged")) : null).a(readBundle.containsKey("CounterReport.OpenId") ? Integer.valueOf(readBundle.getInt("CounterReport.OpenId")) : null).a(CollectionUtils.bundleToMap(readBundle.getBundle("CounterReport.Extras")));
        }

        @Override // android.os.Parcelable.Creator
        public C1448c0[] newArray(int i) {
            return new C1448c0[i];
        }
    }

    public C1448c0() {
        this("", 0);
    }

    public C1448c0 a(byte[] bArr) {
        this.f14508b = new String(Base64.encode(bArr, 0));
        return this;
    }

    public C1448c0 b(String str) {
        this.f14507a = str;
        return this;
    }

    public C1448c0 c(String str) {
        this.f14510d = str;
        return this;
    }

    public int d() {
        return this.f14514h;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public C1448c0 e(String str) {
        this.f14509c = str;
        return this;
    }

    public C1448c0 f(String str) {
        this.f14508b = str;
        return this;
    }

    public String g() {
        return this.f14507a;
    }

    public String h() {
        return this.f14510d;
    }

    public Map<String, byte[]> i() {
        return this.q;
    }

    public D0 j() {
        return this.l;
    }

    public Integer k() {
        return this.p;
    }

    public Bundle l() {
        return this.n;
    }

    public String m() {
        return this.i;
    }

    public EnumC1987y0 n() {
        return this.m;
    }

    public int o() {
        return this.f14511e;
    }

    public String p() {
        return this.f14509c;
    }

    public String q() {
        return this.f14508b;
    }

    public byte[] r() {
        return Base64.decode(this.f14508b, 0);
    }

    public String toString() {
        return String.format(Locale.US, "[event: %s, type: %s, value: %s]", this.f14507a, EnumC1399a1.a(this.f14511e).a(), A2.a(this.f14508b, 500));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        Bundle bundle = new Bundle();
        bundle.putString("CounterReport.Event", this.f14507a);
        bundle.putString("CounterReport.Value", this.f14508b);
        bundle.putInt("CounterReport.Type", this.f14511e);
        bundle.putInt("CounterReport.CustomType", this.f14512f);
        bundle.putInt("CounterReport.TRUNCATED", this.f14514h);
        bundle.putString("CounterReport.ProfileID", this.i);
        bundle.putInt("CounterReport.UniquenessStatus", this.l.f12776a);
        Bundle bundle2 = this.n;
        if (bundle2 != null) {
            bundle.putParcelable("CounterReport.Payload", bundle2);
        }
        String str = this.f14510d;
        if (str != null) {
            bundle.putString("CounterReport.Environment", str);
        }
        String str2 = this.f14509c;
        if (str2 != null) {
            bundle.putString("CounterReport.UserInfo", str2);
        }
        Pair<String, String> pair = this.f14513g;
        if (pair != null) {
            bundle.putString("CounterReport.AppEnvironmentDiffKey", (String) pair.first);
            bundle.putString("CounterReport.AppEnvironmentDiffValue", (String) pair.second);
        }
        bundle.putLong("CounterReport.CreationElapsedRealtime", this.j);
        bundle.putLong("CounterReport.CreationTimestamp", this.k);
        EnumC1987y0 enumC1987y0 = this.m;
        if (enumC1987y0 != null) {
            bundle.putInt("CounterReport.Source", enumC1987y0.f16067a);
        }
        Boolean bool = this.o;
        if (bool != null) {
            bundle.putBoolean("CounterReport.AttributionIdChanged", bool.booleanValue());
        }
        Integer num = this.p;
        if (num != null) {
            bundle.putInt("CounterReport.OpenId", num.intValue());
        }
        bundle.putBundle("CounterReport.Extras", CollectionUtils.mapToBundle(this.q));
        parcel.writeBundle(bundle);
    }

    public C1448c0(String str, int i) {
        this("", str, i);
    }

    public C1448c0 a(int i) {
        this.f14511e = i;
        return this;
    }

    public Pair<String, String> b() {
        return this.f14513g;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public C1448c0 c(Bundle bundle) {
        this.n = bundle;
        return this;
    }

    public C1448c0 d(String str) {
        this.i = str;
        return this;
    }

    public long e() {
        return this.j;
    }

    public long f() {
        return this.k;
    }

    public C1448c0(String str, String str2, int i) {
        this(str, str2, i, new SystemTimeProvider());
    }

    private static C1448c0 d(C1448c0 c1448c0) {
        C1448c0 c1448c02 = new C1448c0();
        c1448c02.k = c1448c0.k;
        c1448c02.j = c1448c0.j;
        c1448c02.f14509c = c1448c0.f14509c;
        c1448c02.f14513g = c1448c0.f14513g;
        c1448c02.f14510d = c1448c0.f14510d;
        c1448c02.n = c1448c0.n;
        c1448c02.q = c1448c0.q;
        c1448c02.i = c1448c0.i;
        return c1448c02;
    }

    public static C1448c0 e(C1448c0 c1448c0) {
        return a(c1448c0, EnumC1399a1.EVENT_TYPE_APP_UPDATE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1448c0 a(String str, String str2) {
        if (this.f14513g == null) {
            this.f14513g = new Pair<>(str, str2);
        }
        return this;
    }

    protected C1448c0 b(long j) {
        this.k = j;
        return this;
    }

    public Boolean c() {
        return this.o;
    }

    public C1448c0(String str, String str2, int i, SystemTimeProvider systemTimeProvider) {
        this.l = D0.UNKNOWN;
        this.q = new HashMap();
        this.f14507a = str2;
        this.f14511e = i;
        this.f14508b = str;
        this.j = systemTimeProvider.elapsedRealtime();
        this.k = systemTimeProvider.currentTimeMillis();
    }

    public static C1448c0 c(C1448c0 c1448c0) {
        return a(c1448c0, EnumC1399a1.EVENT_TYPE_INIT);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bundle b(Bundle bundle) {
        bundle.putParcelable("CounterReport.Object", this);
        return bundle;
    }

    static C1448c0 a(C1448c0 c1448c0, Pair pair) {
        c1448c0.f14513g = pair;
        return c1448c0;
    }

    public static C1448c0 b(C1448c0 c1448c0) {
        return a(c1448c0, EnumC1399a1.EVENT_TYPE_FIRST_ACTIVATION);
    }

    protected C1448c0 a(long j) {
        this.j = j;
        return this;
    }

    public C1448c0 a(D0 d0) {
        this.l = d0;
        return this;
    }

    public C1448c0 a(EnumC1987y0 enumC1987y0) {
        this.m = enumC1987y0;
        return this;
    }

    public C1448c0 a(Boolean bool) {
        this.o = bool;
        return this;
    }

    public C1448c0 a(Integer num) {
        this.p = num;
        return this;
    }

    public C1448c0 a(Map<String, byte[]> map) {
        this.q = map;
        return this;
    }

    public static C1448c0 a(Bundle bundle) {
        if (bundle != null) {
            try {
                C1448c0 c1448c0 = (C1448c0) bundle.getParcelable("CounterReport.Object");
                if (c1448c0 != null) {
                    return c1448c0;
                }
            } catch (Throwable unused) {
                return new C1448c0();
            }
        }
        return new C1448c0();
    }

    private static C1448c0 a(C1448c0 c1448c0, EnumC1399a1 enumC1399a1) {
        C1448c0 d2 = d(c1448c0);
        d2.f14511e = enumC1399a1.b();
        return d2;
    }

    public static C1448c0 a(C1448c0 c1448c0) {
        return a(c1448c0, EnumC1399a1.EVENT_TYPE_ALIVE);
    }

    public static C1448c0 a(C1448c0 c1448c0, A0 a0) {
        C1448c0 a2 = a(c1448c0, EnumC1399a1.EVENT_TYPE_START);
        String a3 = a0.a();
        C1737nf c1737nf = new C1737nf();
        if (a3 != null) {
            c1737nf.f15250a = a3.getBytes();
        }
        a2.a(MessageNano.toByteArray(c1737nf));
        a2.k = c1448c0.k;
        a2.j = c1448c0.j;
        return a2;
    }

    public static C1448c0 a(C1448c0 c1448c0, L3 l3) {
        Context g2 = l3.g();
        Y0 c2 = new Y0(g2, new C1796q0(g2)).c();
        try {
            c2.b();
        } catch (Throwable unused) {
        }
        C1448c0 d2 = d(c1448c0);
        d2.f14511e = EnumC1399a1.EVENT_TYPE_IDENTITY.b();
        d2.f14508b = c2.a();
        return d2;
    }

    public static C1448c0 a(C1448c0 c1448c0, Collection<Bd> collection, C2010z c2010z, C1914v c1914v, List<String> list) {
        String str;
        String str2;
        C1448c0 d2 = d(c1448c0);
        try {
            JSONArray jSONArray = new JSONArray();
            for (Bd bd : collection) {
                jSONArray.put(new JSONObject().put("name", bd.f12697a).put("granted", bd.f12698b));
            }
            JSONObject jSONObject = new JSONObject();
            if (c2010z != null) {
                jSONObject.put("background_restricted", c2010z.f16123b);
                C2010z.a aVar = c2010z.f16122a;
                c1914v.getClass();
                if (aVar != null) {
                    int ordinal = aVar.ordinal();
                    if (ordinal == 0) {
                        str2 = "ACTIVE";
                    } else if (ordinal == 1) {
                        str2 = "WORKING_SET";
                    } else if (ordinal == 2) {
                        str2 = "FREQUENT";
                    } else if (ordinal == 3) {
                        str2 = "RARE";
                    } else if (ordinal == 4) {
                        str2 = "RESTRICTED";
                    }
                    jSONObject.put("app_standby_bucket", str2);
                }
                str2 = null;
                jSONObject.put("app_standby_bucket", str2);
            }
            str = new JSONObject().put("permissions", jSONArray).put("background_restrictions", jSONObject).put("available_providers", new JSONArray((Collection) list)).toString();
        } catch (Throwable unused) {
            str = "";
        }
        d2.f14511e = EnumC1399a1.EVENT_TYPE_PERMISSIONS.b();
        d2.f14508b = str;
        return d2;
    }

    public static C1448c0 a(C1448c0 c1448c0, String str) {
        C1448c0 d2 = d(c1448c0);
        d2.f14511e = EnumC1399a1.EVENT_TYPE_APP_FEATURES.b();
        d2.f14508b = str;
        return d2;
    }

    public static C1448c0 a() {
        C1448c0 c1448c0 = new C1448c0();
        c1448c0.f14511e = EnumC1399a1.EVENT_TYPE_SEND_REVENUE_EVENT.b();
        return c1448c0;
    }

    public static C1448c0 a(String str) {
        C1448c0 c1448c0 = new C1448c0();
        c1448c0.f14511e = EnumC1399a1.EVENT_TYPE_WEBVIEW_SYNC.b();
        c1448c0.f14508b = str;
        c1448c0.m = EnumC1987y0.JS;
        return c1448c0;
    }
}

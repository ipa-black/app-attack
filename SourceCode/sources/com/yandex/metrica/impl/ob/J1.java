package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import android.text.TextUtils;
import android.util.Base64;
import android.util.SparseArray;
import com.google.protobuf.nano.ym.MessageNano;
import com.yandex.metrica.impl.ob.C1759oc;
import com.yandex.metrica.impl.ob.C1811qf;
import com.yandex.metrica.impl.ob.E;
import java.util.Collections;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class J1 {

    /* renamed from: a  reason: collision with root package name */
    private static Map<EnumC1529f6, Integer> f13231a;

    /* renamed from: b  reason: collision with root package name */
    private static SparseArray<EnumC1529f6> f13232b;

    /* renamed from: c  reason: collision with root package name */
    private static final Map<EnumC1399a1, Integer> f13233c;

    /* renamed from: d  reason: collision with root package name */
    private static final Map<EnumC1399a1, C1833re> f13234d;

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ int f13235e = 0;

    /* loaded from: classes5.dex */
    class a implements Ge {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.Ge
        public byte[] a(C1810qe c1810qe, Lg lg) {
            if (!TextUtils.isEmpty(c1810qe.f15503b)) {
                try {
                    C1489dg a2 = C1489dg.a(Base64.decode(c1810qe.f15503b, 0));
                    C1858sf c1858sf = new C1858sf();
                    String str = a2.f14597a;
                    c1858sf.f15714a = str == null ? new byte[0] : str.getBytes();
                    c1858sf.f15716c = a2.f14598b;
                    c1858sf.f15715b = a2.f14599c;
                    int ordinal = a2.f14600d.ordinal();
                    int i = 1;
                    if (ordinal != 1) {
                        i = 2;
                        if (ordinal != 2) {
                            i = 0;
                        }
                    }
                    c1858sf.f15717d = i;
                    return MessageNano.toByteArray(c1858sf);
                } catch (Throwable unused) {
                }
            }
            return new byte[0];
        }
    }

    /* loaded from: classes5.dex */
    class b implements InterfaceC1857se {
        b() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1857se
        public Integer a(C1810qe c1810qe) {
            return c1810qe.k;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        EnumC1529f6 enumC1529f6 = EnumC1529f6.FOREGROUND;
        hashMap.put(enumC1529f6, 0);
        EnumC1529f6 enumC1529f62 = EnumC1529f6.BACKGROUND;
        hashMap.put(enumC1529f62, 1);
        f13231a = Collections.unmodifiableMap(hashMap);
        SparseArray<EnumC1529f6> sparseArray = new SparseArray<>();
        sparseArray.put(0, enumC1529f6);
        sparseArray.put(1, enumC1529f62);
        f13232b = sparseArray;
        HashMap hashMap2 = new HashMap();
        EnumC1399a1 enumC1399a1 = EnumC1399a1.EVENT_TYPE_INIT;
        hashMap2.put(enumC1399a1, 1);
        EnumC1399a1 enumC1399a12 = EnumC1399a1.EVENT_TYPE_REGULAR;
        hashMap2.put(enumC1399a12, 4);
        EnumC1399a1 enumC1399a13 = EnumC1399a1.EVENT_TYPE_SEND_REFERRER;
        hashMap2.put(enumC1399a13, 5);
        EnumC1399a1 enumC1399a14 = EnumC1399a1.EVENT_TYPE_ALIVE;
        hashMap2.put(enumC1399a14, 7);
        EnumC1399a1 enumC1399a15 = EnumC1399a1.EVENT_TYPE_EXCEPTION_UNHANDLED;
        hashMap2.put(enumC1399a15, 3);
        EnumC1399a1 enumC1399a16 = EnumC1399a1.EVENT_TYPE_EXCEPTION_UNHANDLED_PROTOBUF;
        hashMap2.put(enumC1399a16, 26);
        EnumC1399a1 enumC1399a17 = EnumC1399a1.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_INTENT;
        hashMap2.put(enumC1399a17, 26);
        EnumC1399a1 enumC1399a18 = EnumC1399a1.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_FILE;
        hashMap2.put(enumC1399a18, 26);
        EnumC1399a1 enumC1399a19 = EnumC1399a1.EVENT_TYPE_ANR;
        hashMap2.put(enumC1399a19, 25);
        EnumC1399a1 enumC1399a110 = EnumC1399a1.EVENT_TYPE_PREV_SESSION_NATIVE_CRASH;
        hashMap2.put(enumC1399a110, 3);
        EnumC1399a1 enumC1399a111 = EnumC1399a1.EVENT_TYPE_PREV_SESSION_NATIVE_CRASH_PROTOBUF;
        hashMap2.put(enumC1399a111, 26);
        EnumC1399a1 enumC1399a112 = EnumC1399a1.EVENT_TYPE_CURRENT_SESSION_NATIVE_CRASH;
        hashMap2.put(enumC1399a112, 3);
        EnumC1399a1 enumC1399a113 = EnumC1399a1.EVENT_TYPE_CURRENT_SESSION_NATIVE_CRASH_PROTOBUF;
        hashMap2.put(enumC1399a113, 26);
        EnumC1399a1 enumC1399a114 = EnumC1399a1.EVENT_TYPE_CURRENT_SESSION_CRASHPAD_CRASH_PROTOBUF;
        hashMap2.put(enumC1399a114, 26);
        EnumC1399a1 enumC1399a115 = EnumC1399a1.EVENT_TYPE_API_NATIVE_CRASH_PROTOBUF;
        hashMap2.put(enumC1399a115, 26);
        EnumC1399a1 enumC1399a116 = EnumC1399a1.EVENT_TYPE_EXCEPTION_USER;
        hashMap2.put(enumC1399a116, 6);
        EnumC1399a1 enumC1399a117 = EnumC1399a1.EVENT_TYPE_EXCEPTION_USER_PROTOBUF;
        hashMap2.put(enumC1399a117, 27);
        EnumC1399a1 enumC1399a118 = EnumC1399a1.EVENT_TYPE_EXCEPTION_USER_CUSTOM_PROTOBUF;
        hashMap2.put(enumC1399a118, 27);
        EnumC1399a1 enumC1399a119 = EnumC1399a1.EVENT_TYPE_IDENTITY;
        hashMap2.put(enumC1399a119, 8);
        hashMap2.put(EnumC1399a1.EVENT_TYPE_IDENTITY_LIGHT, 28);
        EnumC1399a1 enumC1399a120 = EnumC1399a1.EVENT_TYPE_STATBOX;
        hashMap2.put(enumC1399a120, 11);
        EnumC1399a1 enumC1399a121 = EnumC1399a1.EVENT_TYPE_SET_USER_INFO;
        hashMap2.put(enumC1399a121, 12);
        EnumC1399a1 enumC1399a122 = EnumC1399a1.EVENT_TYPE_REPORT_USER_INFO;
        hashMap2.put(enumC1399a122, 12);
        EnumC1399a1 enumC1399a123 = EnumC1399a1.EVENT_TYPE_FIRST_ACTIVATION;
        hashMap2.put(enumC1399a123, 13);
        EnumC1399a1 enumC1399a124 = EnumC1399a1.EVENT_TYPE_START;
        hashMap2.put(enumC1399a124, 2);
        EnumC1399a1 enumC1399a125 = EnumC1399a1.EVENT_TYPE_APP_OPEN;
        hashMap2.put(enumC1399a125, 16);
        EnumC1399a1 enumC1399a126 = EnumC1399a1.EVENT_TYPE_APP_UPDATE;
        hashMap2.put(enumC1399a126, 17);
        EnumC1399a1 enumC1399a127 = EnumC1399a1.EVENT_TYPE_PERMISSIONS;
        hashMap2.put(enumC1399a127, 18);
        EnumC1399a1 enumC1399a128 = EnumC1399a1.EVENT_TYPE_APP_FEATURES;
        hashMap2.put(enumC1399a128, 19);
        EnumC1399a1 enumC1399a129 = EnumC1399a1.EVENT_TYPE_SEND_USER_PROFILE;
        hashMap2.put(enumC1399a129, 20);
        EnumC1399a1 enumC1399a130 = EnumC1399a1.EVENT_TYPE_SEND_REVENUE_EVENT;
        hashMap2.put(enumC1399a130, 21);
        EnumC1399a1 enumC1399a131 = EnumC1399a1.EVENT_TYPE_SEND_AD_REVENUE_EVENT;
        hashMap2.put(enumC1399a131, 40);
        EnumC1399a1 enumC1399a132 = EnumC1399a1.EVENT_TYPE_SEND_ECOMMERCE_EVENT;
        hashMap2.put(enumC1399a132, 35);
        hashMap2.put(EnumC1399a1.EVENT_TYPE_CLEANUP, 29);
        EnumC1399a1 enumC1399a133 = EnumC1399a1.EVENT_TYPE_VIEW_TREE;
        hashMap2.put(enumC1399a133, 30);
        EnumC1399a1 enumC1399a134 = EnumC1399a1.EVENT_TYPE_RAW_VIEW_TREE;
        hashMap2.put(enumC1399a134, 34);
        EnumC1399a1 enumC1399a135 = EnumC1399a1.EVENT_TYPE_STATBOX_EXP;
        hashMap2.put(enumC1399a135, 36);
        EnumC1399a1 enumC1399a136 = EnumC1399a1.EVENT_TYPE_WEBVIEW_SYNC;
        hashMap2.put(enumC1399a136, 38);
        f13233c = Collections.unmodifiableMap(hashMap2);
        HashMap hashMap3 = new HashMap();
        C1711me c1711me = new C1711me();
        C1786pe c1786pe = new C1786pe();
        C1736ne c1736ne = new C1736ne();
        C1636je c1636je = new C1636je();
        Fe fe = new Fe();
        Be be = new Be();
        C1833re a2 = C1833re.a().a((Ge) be).a((InterfaceC1761oe) be).a();
        C1833re a3 = C1833re.a().a(c1786pe).a();
        C1833re a4 = C1833re.a().a(c1636je).a();
        C1833re a5 = C1833re.a().a(fe).a();
        C1833re a6 = C1833re.a().a(c1711me).a();
        C1833re a7 = C1833re.a().a(new He()).a();
        hashMap3.put(enumC1399a12, a3);
        hashMap3.put(enumC1399a13, C1833re.a().a(new a()).a());
        hashMap3.put(enumC1399a14, C1833re.a().a(c1711me).a(c1736ne).a(new C1661ke()).a(new C1686le()).a());
        hashMap3.put(enumC1399a110, a2);
        hashMap3.put(enumC1399a112, a2);
        hashMap3.put(enumC1399a111, a2);
        hashMap3.put(enumC1399a113, a2);
        hashMap3.put(enumC1399a114, a2);
        hashMap3.put(enumC1399a115, a2);
        hashMap3.put(enumC1399a116, a3);
        hashMap3.put(enumC1399a117, a4);
        hashMap3.put(enumC1399a118, a4);
        hashMap3.put(enumC1399a119, C1833re.a().a(c1786pe).a(new C1953we()).a());
        hashMap3.put(enumC1399a120, a3);
        hashMap3.put(enumC1399a121, a3);
        hashMap3.put(enumC1399a122, a3);
        hashMap3.put(enumC1399a15, a3);
        hashMap3.put(enumC1399a16, a4);
        hashMap3.put(enumC1399a17, a4);
        hashMap3.put(enumC1399a18, a4);
        hashMap3.put(enumC1399a19, a4);
        hashMap3.put(enumC1399a124, C1833re.a().a(new C1711me()).a(c1636je).a());
        hashMap3.put(EnumC1399a1.EVENT_TYPE_CUSTOM_EVENT, C1833re.a().a(new b()).a());
        hashMap3.put(enumC1399a125, a3);
        hashMap3.put(enumC1399a127, a6);
        hashMap3.put(enumC1399a128, a6);
        hashMap3.put(enumC1399a129, a4);
        hashMap3.put(enumC1399a130, a4);
        hashMap3.put(enumC1399a131, a4);
        hashMap3.put(enumC1399a132, a5);
        hashMap3.put(enumC1399a133, a3);
        hashMap3.put(enumC1399a134, a3);
        hashMap3.put(enumC1399a1, a7);
        hashMap3.put(enumC1399a126, a7);
        hashMap3.put(enumC1399a123, a3);
        hashMap3.put(enumC1399a135, a3);
        hashMap3.put(enumC1399a136, a3);
        f13234d = Collections.unmodifiableMap(hashMap3);
    }

    public static C1811qf.f a(ContentValues contentValues) {
        Long asLong = contentValues.getAsLong("start_time");
        Long asLong2 = contentValues.getAsLong("server_time_offset");
        Boolean asBoolean = contentValues.getAsBoolean("obtained_before_first_sync");
        C1811qf.f fVar = new C1811qf.f();
        if (asLong != null) {
            fVar.f15567a = asLong.longValue();
            fVar.f15568b = ((GregorianCalendar) GregorianCalendar.getInstance()).getTimeZone().getOffset(asLong.longValue() * 1000) / 1000;
        }
        if (asLong2 != null) {
            fVar.f15569c = asLong2.longValue();
        }
        if (asBoolean != null) {
            fVar.f15570d = asBoolean.booleanValue();
        }
        return fVar;
    }

    public static C1762of[] b(JSONArray jSONArray) {
        try {
            C1762of[] c1762ofArr = new C1762of[jSONArray.length()];
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i);
                    if (optJSONObject != null) {
                        c1762ofArr[i] = b(optJSONObject);
                    }
                } catch (Throwable unused) {
                    return c1762ofArr;
                }
            }
            return c1762ofArr;
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static C1762of b(JSONObject jSONObject) {
        C1762of c1762of = new C1762of();
        int optInt = jSONObject.optInt("signal_strength", c1762of.f15340b);
        if (optInt != -1) {
            c1762of.f15340b = optInt;
        }
        c1762of.f15339a = jSONObject.optInt("cell_id", c1762of.f15339a);
        c1762of.f15341c = jSONObject.optInt("lac", c1762of.f15341c);
        c1762of.f15342d = jSONObject.optInt("country_code", c1762of.f15342d);
        c1762of.f15343e = jSONObject.optInt("operator_id", c1762of.f15343e);
        c1762of.f15344f = jSONObject.optString("operator_name", c1762of.f15344f);
        c1762of.f15345g = jSONObject.optBoolean("is_connected", c1762of.f15345g);
        c1762of.f15346h = jSONObject.optInt("cell_type", 0);
        c1762of.i = jSONObject.optInt("pci", c1762of.i);
        c1762of.j = jSONObject.optLong("last_visible_time_offset", c1762of.j);
        c1762of.k = jSONObject.optInt("lte_rsrq", c1762of.k);
        c1762of.l = jSONObject.optInt("lte_rssnr", c1762of.l);
        c1762of.n = jSONObject.optInt("arfcn", c1762of.n);
        c1762of.m = jSONObject.optInt("lte_rssi", c1762of.m);
        c1762of.o = jSONObject.optInt("lte_bandwidth", c1762of.o);
        c1762of.p = jSONObject.optInt("lte_cqi", c1762of.p);
        return c1762of;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static EnumC1529f6 a(int i) {
        EnumC1529f6 enumC1529f6 = f13232b.get(i);
        return enumC1529f6 == null ? EnumC1529f6.FOREGROUND : enumC1529f6;
    }

    public static C1834rf[] a(JSONArray jSONArray) {
        try {
            C1834rf[] c1834rfArr = new C1834rf[jSONArray.length()];
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    c1834rfArr[i] = a(jSONArray.getJSONObject(i));
                } catch (Throwable unused) {
                    return c1834rfArr;
                }
            }
            return c1834rfArr;
        } catch (Throwable unused2) {
            return null;
        }
    }

    private static C1834rf a(JSONObject jSONObject) {
        try {
            C1834rf c1834rf = new C1834rf();
            c1834rf.f15648a = jSONObject.getString("mac");
            c1834rf.f15649b = jSONObject.getInt("signal_strength");
            c1834rf.f15650c = jSONObject.getString("ssid");
            c1834rf.f15651d = jSONObject.optBoolean("is_connected");
            c1834rf.f15652e = jSONObject.optLong("last_visible_offset_seconds", 0L);
            return c1834rf;
        } catch (Throwable unused) {
            C1834rf c1834rf2 = new C1834rf();
            c1834rf2.f15648a = jSONObject.optString("mac");
            return c1834rf2;
        }
    }

    public static Integer b(EnumC1399a1 enumC1399a1) {
        if (enumC1399a1 == null) {
            return null;
        }
        return f13233c.get(enumC1399a1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(EnumC1529f6 enumC1529f6) {
        Integer num = f13231a.get(enumC1529f6);
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public static C1833re a(EnumC1399a1 enumC1399a1) {
        C1833re c1833re = enumC1399a1 != null ? f13234d.get(enumC1399a1) : null;
        return c1833re == null ? C1833re.b() : c1833re;
    }

    public static int a(E.b.a aVar) {
        int ordinal = aVar.ordinal();
        int i = 1;
        if (ordinal != 1) {
            i = 2;
            if (ordinal != 2) {
                i = 3;
                if (ordinal != 3) {
                    i = 4;
                    if (ordinal != 4) {
                        return 0;
                    }
                }
            }
        }
        return i;
    }

    public static int a(C1759oc.a aVar) {
        int ordinal = aVar.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                return ordinal != 3 ? 3 : 2;
            }
            return 1;
        }
        return 0;
    }
}

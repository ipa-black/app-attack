package com.applovin.exoplayer2.e.c;

import com.applovin.exoplayer2.e.g;
import com.applovin.exoplayer2.l.y;
import com.google.android.exoplayer2.C;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
final class c extends d {

    /* renamed from: b  reason: collision with root package name */
    private long f2119b;

    /* renamed from: c  reason: collision with root package name */
    private long[] f2120c;

    /* renamed from: d  reason: collision with root package name */
    private long[] f2121d;

    public c() {
        super(new g());
        this.f2119b = C.TIME_UNSET;
        this.f2120c = new long[0];
        this.f2121d = new long[0];
    }

    private static Object a(y yVar, int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 8) {
                            if (i != 10) {
                                if (i != 11) {
                                    return null;
                                }
                                return i(yVar);
                            }
                            return f(yVar);
                        }
                        return h(yVar);
                    }
                    return g(yVar);
                }
                return e(yVar);
            }
            return c(yVar);
        }
        return d(yVar);
    }

    private static int b(y yVar) {
        return yVar.h();
    }

    private static Boolean c(y yVar) {
        return Boolean.valueOf(yVar.h() == 1);
    }

    private static Double d(y yVar) {
        return Double.valueOf(Double.longBitsToDouble(yVar.s()));
    }

    private static String e(y yVar) {
        int i = yVar.i();
        int c2 = yVar.c();
        yVar.e(i);
        return new String(yVar.d(), c2, i);
    }

    private static ArrayList<Object> f(y yVar) {
        int w = yVar.w();
        ArrayList<Object> arrayList = new ArrayList<>(w);
        for (int i = 0; i < w; i++) {
            Object a2 = a(yVar, b(yVar));
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        return arrayList;
    }

    private static HashMap<String, Object> g(y yVar) {
        HashMap<String, Object> hashMap = new HashMap<>();
        while (true) {
            String e2 = e(yVar);
            int b2 = b(yVar);
            if (b2 == 9) {
                return hashMap;
            }
            Object a2 = a(yVar, b2);
            if (a2 != null) {
                hashMap.put(e2, a2);
            }
        }
    }

    private static HashMap<String, Object> h(y yVar) {
        int w = yVar.w();
        HashMap<String, Object> hashMap = new HashMap<>(w);
        for (int i = 0; i < w; i++) {
            String e2 = e(yVar);
            Object a2 = a(yVar, b(yVar));
            if (a2 != null) {
                hashMap.put(e2, a2);
            }
        }
        return hashMap;
    }

    private static Date i(y yVar) {
        Date date = new Date((long) d(yVar).doubleValue());
        yVar.e(2);
        return date;
    }

    public long a() {
        return this.f2119b;
    }

    @Override // com.applovin.exoplayer2.e.c.d
    protected boolean a(y yVar) {
        return true;
    }

    @Override // com.applovin.exoplayer2.e.c.d
    protected boolean a(y yVar, long j) {
        if (b(yVar) == 2 && "onMetaData".equals(e(yVar)) && b(yVar) == 8) {
            HashMap<String, Object> h2 = h(yVar);
            Object obj = h2.get("duration");
            if (obj instanceof Double) {
                double doubleValue = ((Double) obj).doubleValue();
                if (doubleValue > 0.0d) {
                    this.f2119b = (long) (doubleValue * 1000000.0d);
                }
            }
            Object obj2 = h2.get("keyframes");
            if (obj2 instanceof Map) {
                Map map = (Map) obj2;
                Object obj3 = map.get("filepositions");
                Object obj4 = map.get("times");
                if ((obj3 instanceof List) && (obj4 instanceof List)) {
                    List list = (List) obj3;
                    List list2 = (List) obj4;
                    int size = list2.size();
                    this.f2120c = new long[size];
                    this.f2121d = new long[size];
                    for (int i = 0; i < size; i++) {
                        Object obj5 = list.get(i);
                        Object obj6 = list2.get(i);
                        if (!(obj6 instanceof Double) || !(obj5 instanceof Double)) {
                            this.f2120c = new long[0];
                            this.f2121d = new long[0];
                            break;
                        }
                        this.f2120c[i] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                        this.f2121d[i] = ((Double) obj5).longValue();
                    }
                }
            }
            return false;
        }
        return false;
    }

    public long[] b() {
        return this.f2120c;
    }

    public long[] c() {
        return this.f2121d;
    }
}

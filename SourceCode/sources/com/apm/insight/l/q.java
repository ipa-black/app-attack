package com.apm.insight.l;

import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    private static int f1018a;

    public static int a(Object obj, int i) {
        if (obj == null) {
            return i;
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (obj instanceof String) {
            try {
                return Integer.parseInt(String.valueOf(obj));
            } catch (Throwable unused) {
            }
        }
        return i;
    }

    public static Float a(Map<? super String, Float> map) {
        float f2 = 0.0f;
        for (Float f3 : map.values()) {
            if (f3 != null) {
                f2 += f3.floatValue();
            }
        }
        return Float.valueOf(f2);
    }

    public static Long a(Map<? super String, Long> map, String str, Long l) {
        if (str == null || map == null) {
            return -1L;
        }
        Long l2 = map.get(str);
        if (l2 != null) {
            l = Long.valueOf(l2.longValue() + l.longValue());
        }
        map.put(str, l);
        return l;
    }

    public static void a(JSONObject jSONObject) {
    }

    public static boolean a(int i) {
        return false;
    }

    public static int b(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            return i != 5 ? 0 : 128;
                        }
                        return 64;
                    }
                    return 32;
                }
                return 16;
            }
            return 8;
        }
        return 4;
    }
}

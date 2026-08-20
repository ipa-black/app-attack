package com.appodeal.ads.segments;

import com.appodeal.ads.utils.Version;
/* loaded from: classes2.dex */
public final class d {
    public static boolean a(i iVar, Object obj) {
        int a2 = com.appodeal.ads.m.a(iVar.f7519d);
        return a2 != 0 ? (a2 == 1 || a2 == 3 || a2 == 5 || a2 == 6) && obj != null && obj.equals(iVar.f7518c) : ((Version) iVar.f7518c).compareTo((Version) obj) == 0;
    }

    public static boolean b(i iVar, Object obj) {
        int a2 = com.appodeal.ads.m.a(iVar.f7519d);
        if (a2 != 1) {
            if (a2 == 2) {
                String str = (String) obj;
                for (String str2 : (String[]) iVar.f7518c) {
                    if (str.equals(str2)) {
                        return true;
                    }
                }
                return false;
            } else if (a2 != 4) {
                if (a2 != 7) {
                    return false;
                }
                String str3 = (String) iVar.f7518c;
                int intValue = ((Integer) obj).intValue();
                return intValue >= 0 && str3.length() > intValue && str3.charAt(intValue) == '1';
            } else {
                Integer num = (Integer) obj;
                for (Integer num2 : (Integer[]) iVar.f7518c) {
                    if (num2.equals(num)) {
                        return true;
                    }
                }
                return false;
            }
        }
        return ((String) obj).toLowerCase().contains(((String) iVar.f7518c).toLowerCase());
    }

    public static boolean c(i iVar, Object obj) {
        int i = iVar.f7519d;
        return i == 6 ? ((Float) iVar.f7518c).floatValue() > ((Float) obj).floatValue() : i == 4 ? ((Integer) iVar.f7518c).intValue() > ((Integer) obj).intValue() : i == 1 && ((Version) iVar.f7518c).compareTo((Version) obj) > 0;
    }

    public static boolean d(i iVar, Object obj) {
        return a(iVar, obj) || c(iVar, obj);
    }

    public static boolean e(i iVar, Object obj) {
        int i = iVar.f7519d;
        return i == 6 ? ((Float) obj).floatValue() % ((Float) iVar.f7518c).floatValue() == 0.0f : i == 4 && ((Integer) obj).intValue() % ((Integer) iVar.f7518c).intValue() == 0;
    }

    public static boolean f(i iVar, Object obj) {
        int i = iVar.f7519d;
        return i == 6 ? ((Float) iVar.f7518c).floatValue() < ((Float) obj).floatValue() : i == 4 ? ((Integer) iVar.f7518c).intValue() < ((Integer) obj).intValue() : i == 1 && ((Version) iVar.f7518c).compareTo((Version) obj) < 0;
    }

    public static boolean g(i iVar, Object obj) {
        return a(iVar, obj) || f(iVar, obj);
    }
}

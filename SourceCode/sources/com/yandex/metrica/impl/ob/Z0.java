package com.yandex.metrica.impl.ob;

import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes5.dex */
public class Z0 {

    /* loaded from: classes5.dex */
    static class a extends RuntimeException {
        public a(String str) {
            super(str);
        }
    }

    public static String a(int i) {
        Map<String, Integer> map = C1550g2.f14772a;
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, Integer> entry : C1550g2.f14772a.entrySet()) {
            if (entry.getValue().intValue() == i) {
                arrayList.add(entry.getKey());
            }
        }
        if (arrayList.size() == 1) {
            return (String) arrayList.get(0);
        }
        if (arrayList.size() == 0) {
            return "unknown";
        }
        return String.format("One of %s", arrayList);
    }

    public static boolean a(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }
}

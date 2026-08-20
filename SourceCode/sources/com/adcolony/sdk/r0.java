package com.adcolony.sdk;

import android.os.Bundle;
import java.util.HashMap;
/* loaded from: classes.dex */
class r0 {

    /* renamed from: a  reason: collision with root package name */
    private static int f519a;

    /* renamed from: b  reason: collision with root package name */
    private static HashMap<String, Integer> f520b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private static HashMap<String, Integer> f521c = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(int i, Bundle bundle) {
        int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        if (i == 0) {
            if (currentTimeMillis - f519a < 5) {
                return true;
            }
            f519a = currentTimeMillis;
            return false;
        } else if (i == 1 && bundle != null) {
            String string = bundle.getString("zone_id");
            if (f520b.get(string) == null) {
                f520b.put(string, Integer.valueOf(currentTimeMillis));
            }
            if (f521c.get(string) == null) {
                f521c.put(string, 0);
            }
            if (currentTimeMillis - f520b.get(string).intValue() > 1) {
                f521c.put(string, 1);
                f520b.put(string, Integer.valueOf(currentTimeMillis));
                return false;
            }
            int intValue = f521c.get(string).intValue() + 1;
            f521c.put(string, Integer.valueOf(intValue));
            return intValue > 3;
        } else {
            return false;
        }
    }
}

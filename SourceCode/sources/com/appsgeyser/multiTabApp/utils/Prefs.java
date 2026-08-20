package com.appsgeyser.multiTabApp.utils;

import android.content.Context;
import android.content.SharedPreferences;
/* loaded from: classes2.dex */
public final class Prefs {
    public static SharedPreferences get(Context context) {
        return context.getSharedPreferences("CTP_PREFS", 0);
    }
}

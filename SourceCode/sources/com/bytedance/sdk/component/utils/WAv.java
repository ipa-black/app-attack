package com.bytedance.sdk.component.utils;

import android.content.Context;
import android.content.res.Configuration;
import java.util.Locale;
/* compiled from: LanguageUtils.java */
/* loaded from: classes2.dex */
public class WAv {
    private static Context Qhi;

    public static void Qhi(Context context, String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        try {
            Qhi = context.createConfigurationContext(cJ(context, str, str2));
        } catch (Throwable th) {
            ABk.cJ(th.getMessage());
        }
        MQ.Qhi(Qhi);
    }

    private static Configuration cJ(Context context, String str, String str2) {
        Configuration configuration = new Configuration(context.getResources().getConfiguration());
        configuration.setLocale(new Locale(str, str2));
        return configuration;
    }
}

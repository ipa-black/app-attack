package com.appnext.base.b;

import android.content.Context;
/* loaded from: classes.dex */
public final class e {
    private static Context fr;

    private e() {
    }

    public static void init(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("context shouldn't be null");
        }
        fr = context.getApplicationContext();
    }

    public static Context getContext() {
        return fr;
    }

    public static String getPackageName() {
        return fr.getPackageName();
    }
}

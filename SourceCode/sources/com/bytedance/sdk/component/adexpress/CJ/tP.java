package com.bytedance.sdk.component.adexpress.CJ;

import android.content.Context;
import android.text.TextUtils;
/* compiled from: DeviceUtil.java */
/* loaded from: classes2.dex */
public class tP {
    public static boolean Qhi(Context context) {
        return context != null && TextUtils.getLayoutDirectionFromLocale(context.getResources().getConfiguration().locale) == 1 && (context.getApplicationInfo().flags & 4194304) == 4194304;
    }
}

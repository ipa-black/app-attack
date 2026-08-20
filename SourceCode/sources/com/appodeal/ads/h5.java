package com.appodeal.ads;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes.dex */
public final class h5 {

    /* renamed from: a  reason: collision with root package name */
    public static final Handler f6714a = new Handler(Looper.getMainLooper());

    public static void a(Runnable runnable) {
        f6714a.post(runnable);
    }

    public static void a(Runnable runnable, long j) {
        f6714a.postDelayed(runnable, j);
    }
}

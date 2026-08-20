package com.yandex.metrica.impl.ob;

import android.content.ComponentName;
import android.content.Context;
import com.yandex.metrica.PreloadInfoContentProvider;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.JvmStatic;
/* loaded from: classes5.dex */
public final class Y {

    /* renamed from: a  reason: collision with root package name */
    private static volatile CountDownLatch f14291a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile PreloadInfoContentProvider f14292b;

    @JvmStatic
    public static final void a(PreloadInfoContentProvider preloadInfoContentProvider) {
        f14291a = new CountDownLatch(1);
        f14292b = preloadInfoContentProvider;
    }

    @JvmStatic
    public static final void a() {
        CountDownLatch countDownLatch = f14291a;
        if (countDownLatch != null) {
            countDownLatch.countDown();
        }
    }

    @JvmStatic
    public static final void a(Context context) {
        CountDownLatch countDownLatch = f14291a;
        if (countDownLatch != null) {
            countDownLatch.await(1L, TimeUnit.SECONDS);
            try {
                context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, PreloadInfoContentProvider.class), 2, 1);
                PreloadInfoContentProvider preloadInfoContentProvider = f14292b;
                if (preloadInfoContentProvider != null) {
                    preloadInfoContentProvider.disable();
                }
            } catch (Throwable unused) {
            }
            f14291a = null;
        }
    }
}

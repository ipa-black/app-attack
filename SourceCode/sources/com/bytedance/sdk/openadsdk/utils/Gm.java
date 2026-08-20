package com.bytedance.sdk.openadsdk.utils;

import android.text.TextUtils;
import java.io.Closeable;
import java.io.File;
/* compiled from: FileCacheUtils.java */
/* loaded from: classes2.dex */
public class Gm {
    private static String Qhi;

    public static String Qhi() {
        if (TextUtils.isEmpty(Qhi)) {
            Qhi = com.bykv.vk.openvk.component.video.api.ac.Qhi().getCacheDir() + File.separator + "proxy_cache";
        }
        return Qhi;
    }

    public static void Qhi(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
                th.getMessage();
            }
        }
    }
}

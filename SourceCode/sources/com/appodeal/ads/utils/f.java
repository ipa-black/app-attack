package com.appodeal.ads.utils;

import android.content.Context;
import android.os.Environment;
import com.google.android.exoplayer2.upstream.cache.CacheDataSink;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final ArrayList f7770a = new ArrayList();

    public static void a(Context context) {
        ArrayList arrayList = f7770a;
        arrayList.clear();
        arrayList.add(new File(context.getExternalFilesDir(null), "/native_cache_image/"));
        arrayList.add(new File(context.getFilesDir(), "adc/media"));
        arrayList.add(new File(context.getFilesDir(), "adc3"));
        arrayList.add(new File(context.getExternalFilesDir(null), "al"));
        arrayList.add(new File(context.getCacheDir(), "al"));
        arrayList.add(new File(context.getExternalCacheDir(), "UnityAdsVideoCache"));
        arrayList.add(new File(context.getExternalCacheDir(), "UnityAdsCache"));
        arrayList.add(new File(Environment.getExternalStorageDirectory(), "UnityAdsVideoCache"));
        arrayList.add(new File(context.getFilesDir(), "UnityAdsVideoCache"));
        arrayList.add(new File(context.getFilesDir(), "UnityAdsCache"));
        try {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                File file = (File) it.next();
                try {
                    if (b(file) >= CacheDataSink.DEFAULT_FRAGMENT_SIZE) {
                        a(file);
                    }
                } catch (Exception e2) {
                    Log.log(e2);
                }
            }
        } catch (Exception unused) {
        }
    }

    public static void a(File file) {
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                a(file2);
            }
        } else if (!file.exists()) {
            return;
        }
        file.delete();
    }

    public static long b(File file) {
        long j = 0;
        if (file.exists()) {
            if (file.isDirectory()) {
                File[] listFiles = file.listFiles();
                if (listFiles != null) {
                    for (File file2 : listFiles) {
                        j += b(file2);
                    }
                    return j;
                }
                return 0L;
            }
            return file.length();
        }
        return 0L;
    }
}

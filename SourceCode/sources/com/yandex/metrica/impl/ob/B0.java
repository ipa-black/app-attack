package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.coreutils.io.FileUtils;
import java.io.File;
/* loaded from: classes5.dex */
public class B0 {
    public File a(Context context, String str) {
        File storageDirectory = FileUtils.getStorageDirectory(context);
        if (storageDirectory == null) {
            return null;
        }
        return new File(storageDirectory, str);
    }

    public String b(Context context, String str) {
        File storageDirectory = FileUtils.getStorageDirectory(context);
        if (storageDirectory == null) {
            return null;
        }
        return storageDirectory.getAbsolutePath() + "/" + str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002c, code lost:
        if (r0 != null) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.io.File c(android.content.Context r8) {
        /*
            r7 = this;
            java.lang.String r0 = "persist.yndx.metrica.db.dir"
            java.lang.String r1 = "android.os.SystemProperties"
            r2 = 0
            java.lang.Class<android.content.Context> r3 = android.content.Context.class
            java.lang.ClassLoader r3 = r3.getClassLoader()     // Catch: java.lang.Exception -> L2f
            r4 = 1
            java.lang.Class r1 = java.lang.Class.forName(r1, r4, r3)     // Catch: java.lang.Exception -> L2f
            java.lang.String r3 = "get"
            java.lang.Class[] r4 = new java.lang.Class[r4]     // Catch: java.lang.Exception -> L2f
            java.lang.Class<java.lang.String> r5 = java.lang.String.class
            r6 = 0
            r4[r6] = r5     // Catch: java.lang.Exception -> L2f
            java.lang.reflect.Method r3 = r1.getMethod(r3, r4)     // Catch: java.lang.Exception -> L2f
            java.lang.Object[] r0 = new java.lang.Object[]{r0}     // Catch: java.lang.Exception -> L2f
            java.lang.Object r0 = r3.invoke(r1, r0)     // Catch: java.lang.Exception -> L2f
            boolean r1 = r0 instanceof java.lang.String     // Catch: java.lang.Exception -> L2f
            if (r1 != 0) goto L2a
            r0 = r2
        L2a:
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Exception -> L2f
            if (r0 == 0) goto L2f
            goto L31
        L2f:
            java.lang.String r0 = ""
        L31:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L38
            return r2
        L38:
            java.io.File r1 = new java.io.File
            java.lang.String r8 = r8.getPackageName()
            r1.<init>(r0, r8)
            r1.mkdirs()     // Catch: java.lang.Exception -> L45
            return r1
        L45:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.B0.c(android.content.Context):java.io.File");
    }

    public File a(File file, String str) {
        if (file == null) {
            return null;
        }
        return b(file.getAbsoluteFile(), str);
    }

    public File b(Context context) {
        return a(context, "YandexMetricaNativeCrashes");
    }

    public File a(Context context) {
        File parentFile;
        if (A2.a(24)) {
            parentFile = context.getDataDir();
        } else {
            File filesDir = context.getFilesDir();
            parentFile = filesDir == null ? null : filesDir.getParentFile();
        }
        if (parentFile == null) {
            return null;
        }
        File file = new File(parentFile, "lib");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public File b(File file, String str) {
        if (file == null) {
            return null;
        }
        return new File(file, str);
    }
}

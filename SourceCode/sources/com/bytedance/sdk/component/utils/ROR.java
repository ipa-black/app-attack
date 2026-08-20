package com.bytedance.sdk.component.utils;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
/* compiled from: FileUtils.java */
/* loaded from: classes2.dex */
public class ROR {
    public static File Qhi(Context context, boolean z, String str, String str2) {
        String cJ = cJ(context);
        if (z) {
            str = Qhi(context) + "-" + str;
        }
        if (cJ != null && !cJ.endsWith(File.separator)) {
            cJ = cJ + File.separator;
        }
        String str3 = cJ + str;
        File file = new File(str3);
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(str3, str2);
    }

    public static File Qhi(Context context, boolean z, String str) {
        String absolutePath = context.getCacheDir().getAbsolutePath();
        if (z) {
            str = Qhi(context) + "-" + str;
        }
        if (absolutePath != null && !absolutePath.endsWith(File.separator)) {
            absolutePath = absolutePath + File.separator;
        }
        File file = new File(absolutePath + str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    private static String cJ(Context context) {
        File cacheDir;
        if (context == null || (cacheDir = context.getCacheDir()) == null) {
            return null;
        }
        return cacheDir.getPath();
    }

    public static List<File> Qhi(File file) {
        LinkedList linkedList = new LinkedList();
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            List<File> asList = Arrays.asList(listFiles);
            Collections.sort(asList, new Qhi(null));
            return asList;
        }
        return linkedList;
    }

    public static void cJ(File file) throws IOException {
        if (file.exists()) {
            ABk.Qhi("splashLoadAd", "update file modify time");
            long currentTimeMillis = System.currentTimeMillis();
            if (file.setLastModified(currentTimeMillis)) {
                return;
            }
            fl(file);
            if (file.lastModified() < currentTimeMillis) {
                new StringBuilder("Last modified date ").append(new Date(file.lastModified()));
                file.getAbsolutePath();
            }
        }
    }

    public static void ac(File file) {
        if (file == null || !file.exists()) {
            return;
        }
        if (file.isFile()) {
            try {
                file.delete();
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null && listFiles.length > 0) {
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    ac(file2);
                } else {
                    try {
                        file2.delete();
                    } catch (Throwable unused2) {
                    }
                }
            }
        }
        try {
            file.delete();
        } catch (Throwable unused3) {
        }
    }

    private static void fl(File file) throws IOException {
        RandomAccessFile randomAccessFile;
        long j;
        long length = file.length();
        if (length == 0) {
            Tgh(file);
            return;
        }
        try {
            randomAccessFile = new RandomAccessFile(file, "rwd");
            j = length - 1;
        } catch (Throwable unused) {
            randomAccessFile = null;
        }
        try {
            randomAccessFile.seek(j);
            byte readByte = randomAccessFile.readByte();
            randomAccessFile.seek(j);
            randomAccessFile.write(readByte);
            randomAccessFile.close();
        } catch (Throwable unused2) {
            if (randomAccessFile != null) {
                randomAccessFile.close();
            }
        }
    }

    private static void Tgh(File file) throws IOException {
        if (!file.delete() || !file.createNewFile()) {
            throw new IOException("Error recreate zero-size file ".concat(String.valueOf(file)));
        }
    }

    /* compiled from: FileUtils.java */
    /* loaded from: classes2.dex */
    private static final class Qhi implements Comparator<File> {
        private int Qhi(long j, long j2) {
            int i = (j > j2 ? 1 : (j == j2 ? 0 : -1));
            if (i < 0) {
                return -1;
            }
            return i == 0 ? 0 : 1;
        }

        private Qhi() {
        }

        /* synthetic */ Qhi(AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // java.util.Comparator
        /* renamed from: Qhi */
        public int compare(File file, File file2) {
            return Qhi(file.lastModified(), file2.lastModified());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0048, code lost:
        if (r2 == null) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] CJ(java.io.File r7) {
        /*
            r0 = 0
            if (r7 == 0) goto L4b
            boolean r1 = r7.isFile()
            if (r1 == 0) goto L4b
            boolean r1 = r7.exists()
            if (r1 == 0) goto L4b
            boolean r1 = r7.canRead()
            if (r1 == 0) goto L4b
            long r1 = r7.length()
            r3 = 0
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 <= 0) goto L4b
            long r1 = r7.length()     // Catch: java.lang.Throwable -> L47
            java.lang.Long r1 = java.lang.Long.valueOf(r1)     // Catch: java.lang.Throwable -> L47
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L47
            r2.<init>(r7)     // Catch: java.lang.Throwable -> L47
            int r7 = r1.intValue()     // Catch: java.lang.Throwable -> L48
            byte[] r7 = new byte[r7]     // Catch: java.lang.Throwable -> L48
            int r3 = r2.read(r7)     // Catch: java.lang.Throwable -> L48
            long r3 = (long) r3     // Catch: java.lang.Throwable -> L48
            long r5 = r1.longValue()     // Catch: java.lang.Throwable -> L48
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 != 0) goto L43
            r2.close()     // Catch: java.lang.Throwable -> L42
        L42:
            return r7
        L43:
            r2.close()     // Catch: java.lang.Throwable -> L4b
            goto L4b
        L47:
            r2 = r0
        L48:
            if (r2 == 0) goto L4b
            goto L43
        L4b:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.utils.ROR.CJ(java.io.File):byte[]");
    }

    /* compiled from: FileUtils.java */
    /* renamed from: com.bytedance.sdk.component.utils.ROR$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    static class AnonymousClass1 implements Comparator<File> {
        @Override // java.util.Comparator
        public /* bridge */ /* synthetic */ int compare(File file, File file2) {
            throw null;
        }
    }

    public static String Qhi(Context context) {
        String Qhi2 = tP.Qhi(context);
        return (TextUtils.isEmpty(Qhi2) || !Qhi2.contains(":")) ? Qhi2 : Qhi2.replace(":", "-");
    }
}

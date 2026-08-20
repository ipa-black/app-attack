package com.bykv.vk.openvk.component.video.Qhi.fl;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
/* compiled from: VideoFilesUtils.java */
/* loaded from: classes2.dex */
public class cJ {
    public static long Qhi(String str, String str2) {
        File ac = ac(str, str2);
        if (ac.exists()) {
            return ac.length();
        }
        File cJ = cJ(str, str2);
        if (cJ.exists()) {
            return cJ.length();
        }
        return 0L;
    }

    public static File cJ(String str, String str2) {
        File file = new File(str);
        if (file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(file, str2 + ".temp");
    }

    public static File ac(String str, String str2) {
        File file = new File(str);
        if (file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(file, str2);
    }

    public static void Qhi(RandomAccessFile randomAccessFile, byte[] bArr, int i, int i2, String str) throws IOException {
        try {
            randomAccessFile.seek(i);
            randomAccessFile.write(bArr, 0, i2);
        } catch (Throwable unused) {
        }
    }
}

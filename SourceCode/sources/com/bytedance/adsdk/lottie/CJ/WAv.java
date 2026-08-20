package com.bytedance.adsdk.lottie.CJ;

import android.util.Pair;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: NetworkCache.java */
/* loaded from: classes2.dex */
public class WAv {
    private final Sf Qhi;

    public WAv(Sf sf) {
        this.Qhi = sf;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Pair<Tgh, InputStream> Qhi(String str) {
        Tgh tgh;
        try {
            File cJ = cJ(str);
            if (cJ == null) {
                return null;
            }
            FileInputStream fileInputStream = new FileInputStream(cJ);
            if (cJ.getAbsolutePath().endsWith(".zip")) {
                tgh = Tgh.ZIP;
            } else {
                tgh = Tgh.JSON;
            }
            cJ.getAbsolutePath();
            return new Pair<>(tgh, fileInputStream);
        } catch (FileNotFoundException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public File Qhi(String str, InputStream inputStream, Tgh tgh) throws IOException {
        File file = new File(Qhi(), Qhi(str, tgh, true));
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    return file;
                }
            }
        } finally {
            inputStream.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi(String str, Tgh tgh) {
        File file = new File(Qhi(), Qhi(str, tgh, true));
        File file2 = new File(file.getAbsolutePath().replace(".temp", ""));
        boolean renameTo = file.renameTo(file2);
        new StringBuilder("Copying temp file to real file (").append(file2);
        if (renameTo) {
            return;
        }
        file.getAbsolutePath();
        file2.getAbsolutePath();
    }

    private File cJ(String str) throws FileNotFoundException {
        File file = new File(Qhi(), Qhi(str, Tgh.JSON, false));
        if (file.exists()) {
            return file;
        }
        File file2 = new File(Qhi(), Qhi(str, Tgh.ZIP, false));
        if (file2.exists()) {
            return file2;
        }
        return null;
    }

    private File Qhi() {
        File Qhi = this.Qhi.Qhi();
        if (Qhi.isFile()) {
            Qhi.delete();
        }
        if (!Qhi.exists()) {
            Qhi.mkdirs();
        }
        return Qhi;
    }

    private static String Qhi(String str, Tgh tgh, boolean z) {
        return "lottie_cache_" + str.replaceAll("\\W+", "") + (z ? tgh.Qhi() : tgh.ac);
    }
}

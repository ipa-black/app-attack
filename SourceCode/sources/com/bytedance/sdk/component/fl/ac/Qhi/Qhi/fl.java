package com.bytedance.sdk.component.fl.ac.Qhi.Qhi;

import com.google.android.exoplayer2.C;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
/* compiled from: Util.java */
/* loaded from: classes2.dex */
final class fl {
    static final Charset Qhi = Charset.forName(C.ASCII_NAME);
    static final Charset cJ = Charset.forName(C.UTF8_NAME);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void Qhi(File file) throws IOException {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            throw new IOException("not a readable directory: ".concat(String.valueOf(file)));
        }
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                Qhi(file2);
            }
            if (!file2.delete()) {
                throw new IOException("failed to delete file: ".concat(String.valueOf(file2)));
            }
        }
    }
}

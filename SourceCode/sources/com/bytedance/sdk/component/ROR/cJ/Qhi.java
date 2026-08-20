package com.bytedance.sdk.component.ROR.cJ;

import android.text.TextUtils;
import com.bytedance.sdk.component.cJ.Qhi.iMK;
import com.bytedance.sdk.component.cJ.Qhi.zc;
import com.google.common.net.HttpHeaders;
import java.io.File;
import java.io.IOException;
import java.util.Map;
/* compiled from: DownloadExecutor.java */
/* loaded from: classes2.dex */
public class Qhi extends ac {
    public File Qhi;
    public File cJ;

    public Qhi(zc zcVar) {
        super(zcVar);
    }

    public void Qhi(String str, String str2) {
        File file = new File(str);
        if (file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        this.Qhi = new File(str, str2);
        this.cJ = new File(str, str2 + ".temp");
    }

    public void Qhi(final com.bytedance.sdk.component.ROR.Qhi.Qhi qhi) {
        File file = this.Qhi;
        if (file == null || this.cJ == null) {
            if (qhi != null) {
                qhi.Qhi(this, new IOException("File info is null, please exec setFileInfo(String dir, String fileName)"));
                return;
            }
            return;
        }
        if (file.exists() && this.Qhi.length() != 0 && qhi != null) {
            long currentTimeMillis = System.currentTimeMillis();
            com.bytedance.sdk.component.ROR.cJ cJVar = new com.bytedance.sdk.component.ROR.cJ(true, 200, "Success", null, null, currentTimeMillis, currentTimeMillis);
            cJVar.Qhi(this.Qhi);
            qhi.Qhi(this, cJVar);
            return;
        }
        long length = this.cJ.length();
        final long j = length >= 0 ? length : 0L;
        iMK.Qhi qhi2 = new iMK.Qhi();
        qhi2.Qhi((Object) cJ());
        cJ("Range", "bytes=" + j + "-");
        if (TextUtils.isEmpty(this.Sf)) {
            qhi.Qhi(this, new IOException("Url is Empty"));
            return;
        }
        try {
            qhi2.cJ(this.Sf);
            if (!TextUtils.isEmpty(this.fl)) {
                qhi2.Qhi(this.fl);
            }
            if (this.Tgh > 0) {
                qhi2.Qhi(this.Tgh);
            }
            Qhi(qhi2);
            this.ac.Qhi(qhi2.Qhi().cJ()).Qhi(new com.bytedance.sdk.component.cJ.Qhi.ac() { // from class: com.bytedance.sdk.component.ROR.cJ.Qhi.1
                @Override // com.bytedance.sdk.component.cJ.Qhi.ac
                public void Qhi(com.bytedance.sdk.component.cJ.Qhi.cJ cJVar2, IOException iOException) {
                    com.bytedance.sdk.component.ROR.Qhi.Qhi qhi3 = qhi;
                    if (qhi3 != null) {
                        qhi3.Qhi(Qhi.this, iOException);
                    }
                    Qhi.this.ac();
                }

                /* JADX WARN: Removed duplicated region for block: B:130:0x020a A[EXC_TOP_SPLITTER, SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:135:0x018d A[EDGE_INSN: B:135:0x018d->B:66:0x018d ?: BREAK  , SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:55:0x0161  */
                /* JADX WARN: Removed duplicated region for block: B:68:0x0192 A[Catch: all -> 0x0188, TryCatch #6 {all -> 0x0188, blocks: (B:56:0x0169, B:58:0x016f, B:62:0x017a, B:68:0x0192, B:71:0x019e, B:73:0x01a8, B:75:0x01b4, B:77:0x01c2, B:78:0x01d1, B:79:0x01de, B:83:0x01fa), top: B:124:0x0169 }] */
                /* JADX WARN: Removed duplicated region for block: B:81:0x01f7  */
                /* JADX WARN: Removed duplicated region for block: B:82:0x01f9  */
                @Override // com.bytedance.sdk.component.cJ.Qhi.ac
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void Qhi(com.bytedance.sdk.component.cJ.Qhi.cJ r19, com.bytedance.sdk.component.cJ.Qhi.hpZ r20) throws java.io.IOException {
                    /*
                        Method dump skipped, instructions count: 584
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.ROR.cJ.Qhi.AnonymousClass1.Qhi(com.bytedance.sdk.component.cJ.Qhi.cJ, com.bytedance.sdk.component.cJ.Qhi.hpZ):void");
                }
            });
        } catch (IllegalArgumentException unused) {
            qhi.Qhi(this, new IOException("Url is not a valid HTTP or HTTPS URL"));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:146:0x0240 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:170:0x01e6 A[EDGE_INSN: B:170:0x01e6->B:80:0x01e6 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01be A[Catch: all -> 0x0248, TryCatch #4 {all -> 0x0248, blocks: (B:64:0x019f, B:66:0x01a5, B:68:0x01a9, B:69:0x01af, B:70:0x01b6, B:72:0x01be, B:74:0x01ce, B:78:0x01d7, B:82:0x01eb, B:90:0x0203, B:92:0x020b, B:94:0x0215, B:96:0x021f, B:106:0x0239, B:87:0x01f9), top: B:152:0x019f }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01eb A[Catch: all -> 0x0248, TryCatch #4 {all -> 0x0248, blocks: (B:64:0x019f, B:66:0x01a5, B:68:0x01a9, B:69:0x01af, B:70:0x01b6, B:72:0x01be, B:74:0x01ce, B:78:0x01d7, B:82:0x01eb, B:90:0x0203, B:92:0x020b, B:94:0x0215, B:96:0x021f, B:106:0x0239, B:87:0x01f9), top: B:152:0x019f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.bytedance.sdk.component.ROR.cJ Qhi() {
        /*
            Method dump skipped, instructions count: 625
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.ROR.cJ.Qhi.Qhi():com.bytedance.sdk.component.ROR.cJ");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean fl(Map<String, String> map) {
        if (TextUtils.equals(map.get(HttpHeaders.ACCEPT_RANGES), "bytes") || TextUtils.equals(map.get("accept-ranges"), "bytes")) {
            return true;
        }
        String str = map.get(HttpHeaders.CONTENT_RANGE);
        if (TextUtils.isEmpty(str)) {
            str = map.get("content-range");
        }
        return str != null && str.startsWith("bytes");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long Tgh(Map<String, String> map) {
        String str;
        if (map.containsKey("content-length")) {
            str = map.get("content-length");
        } else {
            str = map.containsKey("Content-Length") ? map.get("Content-Length") : null;
        }
        if (TextUtils.isEmpty(str) || str == null) {
            return 0L;
        }
        try {
            return Long.valueOf(str).longValue();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean ROR(Map<String, String> map) {
        return TextUtils.equals(map.get("Content-Encoding"), "gzip");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ac() {
        try {
            this.Qhi.delete();
        } catch (Throwable unused) {
        }
        try {
            this.cJ.delete();
        } catch (Throwable unused2) {
        }
    }
}

package com.bytedance.sdk.component.adexpress.Qhi.cJ;

import com.bytedance.sdk.component.utils.ABk;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import org.json.JSONObject;
/* compiled from: Version.java */
/* loaded from: classes2.dex */
public class hm {
    private static com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi Qhi;

    public static void Qhi() {
        FileInputStream fileInputStream;
        Throwable th;
        FileInputStream fileInputStream2 = null;
        try {
            File file = new File(Tgh.Sf(), "temp_pkg_info.json");
            Long valueOf = Long.valueOf(file.length());
            if (valueOf.longValue() > 0 && file.exists() && file.isFile()) {
                byte[] bArr = new byte[valueOf.intValue()];
                fileInputStream = new FileInputStream(file);
                try {
                    fileInputStream.read(bArr);
                    com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi Qhi2 = com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi.Qhi(new JSONObject(new String(bArr, "utf-8")));
                    if (Qhi2 != null) {
                        Qhi = Qhi2;
                        Qhi.ac();
                    }
                    fileInputStream2 = fileInputStream;
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        ABk.Qhi("Version", "version init error", th);
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                                return;
                            } catch (IOException unused) {
                                return;
                            }
                        }
                        return;
                    } catch (Throwable th3) {
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException unused2) {
                            }
                        }
                        throw th3;
                    }
                }
            }
            if (fileInputStream2 != null) {
                try {
                    fileInputStream2.close();
                } catch (IOException unused3) {
                }
            }
        } catch (Throwable th4) {
            fileInputStream = null;
            th = th4;
        }
    }

    public static synchronized com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi cJ() {
        com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi qhi;
        synchronized (hm.class) {
            qhi = Qhi;
        }
        return qhi;
    }

    public static synchronized void Qhi(com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi qhi) {
        synchronized (hm.class) {
            if (qhi != null) {
                if (qhi.ROR()) {
                    Qhi = qhi;
                }
            }
        }
    }

    public static void ac() {
        Tgh.Qhi(Tgh.Sf(), cJ(), "temp_pkg_info.json");
    }

    public static boolean Qhi(String str) {
        return Tgh.Qhi(cJ(), str);
    }

    public static boolean cJ(com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi qhi) {
        return Tgh.ac(cJ(), qhi);
    }

    public static void CJ() {
        Tgh.cJ(Tgh.Sf(), cJ(), "temp_pkg_info.json");
        Qhi = null;
    }
}

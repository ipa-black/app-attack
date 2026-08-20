package com.bytedance.adsdk.lottie.CJ;

import android.content.Context;
import android.util.Pair;
import com.bytedance.adsdk.lottie.zc;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipInputStream;
/* compiled from: NetworkFetcher.java */
/* loaded from: classes2.dex */
public class Gm {
    private final WAv Qhi;
    private final hm cJ;

    public Gm(WAv wAv, hm hmVar) {
        this.Qhi = wAv;
        this.cJ = hmVar;
    }

    public zc<com.bytedance.adsdk.lottie.ROR> Qhi(Context context, String str, String str2) {
        com.bytedance.adsdk.lottie.ROR cJ = cJ(context, str, str2);
        if (cJ != null) {
            return new zc<>(cJ);
        }
        return ac(context, str, str2);
    }

    private com.bytedance.adsdk.lottie.ROR cJ(Context context, String str, String str2) {
        WAv wAv;
        Pair<Tgh, InputStream> Qhi;
        zc<com.bytedance.adsdk.lottie.ROR> cJ;
        if (str2 == null || (wAv = this.Qhi) == null || (Qhi = wAv.Qhi(str)) == null) {
            return null;
        }
        Tgh tgh = (Tgh) Qhi.first;
        InputStream inputStream = (InputStream) Qhi.second;
        if (tgh == Tgh.ZIP) {
            cJ = com.bytedance.adsdk.lottie.Sf.Qhi(context, new ZipInputStream(inputStream), str2);
        } else {
            cJ = com.bytedance.adsdk.lottie.Sf.cJ(inputStream, str2);
        }
        if (cJ.Qhi() != null) {
            return cJ.Qhi();
        }
        return null;
    }

    private zc<com.bytedance.adsdk.lottie.ROR> ac(Context context, String str, String str2) {
        ROR ror = null;
        try {
            try {
                ROR Qhi = this.cJ.Qhi(str);
                if (Qhi.Qhi()) {
                    zc<com.bytedance.adsdk.lottie.ROR> Qhi2 = Qhi(context, str, Qhi.cJ(), Qhi.ac(), str2);
                    Qhi2.Qhi();
                    if (Qhi != null) {
                        try {
                            Qhi.close();
                        } catch (IOException unused) {
                        }
                    }
                    return Qhi2;
                }
                zc<com.bytedance.adsdk.lottie.ROR> zcVar = new zc<>(new IllegalArgumentException(Qhi.CJ()));
                if (Qhi != null) {
                    try {
                        Qhi.close();
                    } catch (IOException unused2) {
                    }
                }
                return zcVar;
            } catch (Exception e2) {
                zc<com.bytedance.adsdk.lottie.ROR> zcVar2 = new zc<>(e2);
                if (0 != 0) {
                    try {
                        ror.close();
                    } catch (IOException unused3) {
                    }
                }
                return zcVar2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    ror.close();
                } catch (IOException unused4) {
                }
            }
            throw th;
        }
    }

    private zc<com.bytedance.adsdk.lottie.ROR> Qhi(Context context, String str, InputStream inputStream, String str2, String str3) throws IOException {
        zc<com.bytedance.adsdk.lottie.ROR> Qhi;
        Tgh tgh;
        WAv wAv;
        if (str2 == null) {
            str2 = "application/json";
        }
        if (str2.contains("application/zip") || str2.contains("application/x-zip") || str2.contains("application/x-zip-compressed") || str.split("\\?")[0].endsWith(".lottie")) {
            Tgh tgh2 = Tgh.ZIP;
            Qhi = Qhi(context, str, inputStream, str3);
            tgh = tgh2;
        } else {
            tgh = Tgh.JSON;
            Qhi = Qhi(str, inputStream, str3);
        }
        if (str3 != null && Qhi.Qhi() != null && (wAv = this.Qhi) != null) {
            wAv.Qhi(str, tgh);
        }
        return Qhi;
    }

    private zc<com.bytedance.adsdk.lottie.ROR> Qhi(Context context, String str, InputStream inputStream, String str2) throws IOException {
        WAv wAv;
        if (str2 == null || (wAv = this.Qhi) == null) {
            return com.bytedance.adsdk.lottie.Sf.Qhi(context, new ZipInputStream(inputStream), (String) null);
        }
        return com.bytedance.adsdk.lottie.Sf.Qhi(context, new ZipInputStream(new FileInputStream(wAv.Qhi(str, inputStream, Tgh.ZIP))), str);
    }

    private zc<com.bytedance.adsdk.lottie.ROR> Qhi(String str, InputStream inputStream, String str2) throws IOException {
        WAv wAv;
        if (str2 == null || (wAv = this.Qhi) == null) {
            return com.bytedance.adsdk.lottie.Sf.cJ(inputStream, (String) null);
        }
        return com.bytedance.adsdk.lottie.Sf.cJ(new FileInputStream(wAv.Qhi(str, inputStream, Tgh.JSON).getAbsolutePath()), str);
    }
}

package com.bytedance.adsdk.lottie;

import android.content.Context;
import android.os.Trace;
import java.io.File;
/* compiled from: L.java */
/* loaded from: classes2.dex */
public class Tgh {
    private static boolean CJ = true;
    private static volatile com.bytedance.adsdk.lottie.CJ.Gm Gm = null;
    public static boolean Qhi = false;
    private static int ROR = 0;
    private static int Sf = 0;
    private static long[] Tgh = null;
    private static com.bytedance.adsdk.lottie.CJ.Sf WAv = null;
    private static boolean ac = true;
    private static boolean cJ = false;
    private static String[] fl;
    private static com.bytedance.adsdk.lottie.CJ.hm hm;
    private static volatile com.bytedance.adsdk.lottie.CJ.WAv zc;

    public static void Qhi(String str) {
        if (cJ) {
            int i = ROR;
            if (i == 20) {
                Sf++;
                return;
            }
            fl[i] = str;
            Tgh[i] = System.nanoTime();
            Trace.beginSection(str);
            ROR++;
        }
    }

    public static float cJ(String str) {
        int i = Sf;
        if (i > 0) {
            Sf = i - 1;
            return 0.0f;
        } else if (cJ) {
            int i2 = ROR - 1;
            ROR = i2;
            if (i2 == -1) {
                throw new IllegalStateException("Can't end trace section. There are none.");
            }
            if (!str.equals(fl[i2])) {
                throw new IllegalStateException("Unbalanced trace call " + str + ". Expected " + fl[ROR] + ".");
            }
            Trace.endSection();
            return ((float) (System.nanoTime() - Tgh[ROR])) / 1000000.0f;
        } else {
            return 0.0f;
        }
    }

    public static com.bytedance.adsdk.lottie.CJ.Gm Qhi(Context context) {
        com.bytedance.adsdk.lottie.CJ.Gm gm;
        com.bytedance.adsdk.lottie.CJ.Gm gm2 = Gm;
        if (gm2 == null) {
            synchronized (com.bytedance.adsdk.lottie.CJ.Gm.class) {
                gm = Gm;
                if (gm == null) {
                    com.bytedance.adsdk.lottie.CJ.WAv cJ2 = cJ(context);
                    com.bytedance.adsdk.lottie.CJ.hm hmVar = hm;
                    if (hmVar == null) {
                        hmVar = new com.bytedance.adsdk.lottie.CJ.fl();
                    }
                    gm = new com.bytedance.adsdk.lottie.CJ.Gm(cJ2, hmVar);
                    Gm = gm;
                }
            }
            return gm;
        }
        return gm2;
    }

    public static com.bytedance.adsdk.lottie.CJ.WAv cJ(Context context) {
        com.bytedance.adsdk.lottie.CJ.WAv wAv;
        if (ac) {
            final Context applicationContext = context.getApplicationContext();
            com.bytedance.adsdk.lottie.CJ.WAv wAv2 = zc;
            if (wAv2 == null) {
                synchronized (com.bytedance.adsdk.lottie.CJ.WAv.class) {
                    wAv = zc;
                    if (wAv == null) {
                        com.bytedance.adsdk.lottie.CJ.Sf sf = WAv;
                        if (sf == null) {
                            sf = new com.bytedance.adsdk.lottie.CJ.Sf() { // from class: com.bytedance.adsdk.lottie.Tgh.1
                                @Override // com.bytedance.adsdk.lottie.CJ.Sf
                                public File Qhi() {
                                    return new File(applicationContext.getCacheDir(), "lottie_network_cache");
                                }
                            };
                        }
                        wAv = new com.bytedance.adsdk.lottie.CJ.WAv(sf);
                        zc = wAv;
                    }
                }
                return wAv;
            }
            return wAv2;
        }
        return null;
    }

    public static boolean Qhi() {
        return CJ;
    }
}

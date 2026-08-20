package com.bytedance.sdk.openadsdk.ROR;

import android.content.Context;
import com.bytedance.sdk.component.cJ.Qhi.ROR;
import com.bytedance.sdk.component.cJ.Qhi.iMK;
import com.bytedance.sdk.component.cJ.Qhi.zc;
import com.bytedance.sdk.component.fl.EBS;
import com.bytedance.sdk.component.fl.Gm;
import com.bytedance.sdk.component.fl.ac.Tgh;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.model.hpZ;
import com.bytedance.sdk.openadsdk.utils.lB;
import com.bytedance.sdk.openadsdk.utils.lG;
import com.bytedance.sdk.openadsdk.utils.zn;
import java.io.File;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
/* compiled from: ImageLoaderWrapper.java */
/* loaded from: classes2.dex */
public class fl {
    public static Gm Qhi(String str) {
        return Qhi.cJ(str);
    }

    public static Gm Qhi(hpZ hpz) {
        return Qhi.cJ(hpz);
    }

    public static InputStream Qhi(String str, String str2) {
        return Qhi.cJ(str, str2);
    }

    public static boolean Qhi(String str, String str2, String str3) {
        return Qhi.cJ(str, str2, str3);
    }

    public static com.bytedance.sdk.component.fl.hpZ Qhi() {
        return Qhi.Qhi;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImageLoaderWrapper.java */
    /* loaded from: classes2.dex */
    public static final class Qhi {
        private static final com.bytedance.sdk.component.fl.hpZ Qhi = Qhi(HzH.Qhi());

        private static com.bytedance.sdk.component.fl.hpZ Qhi(Context context) {
            return com.bytedance.sdk.component.fl.ac.cJ.Qhi(context, new Tgh.Qhi().Qhi(new com.bytedance.sdk.component.fl.ac.Qhi.Qhi(Math.max(Math.min(Long.valueOf(Runtime.getRuntime().maxMemory()).intValue() / 16, 83886080), 10485760), 41943040L, new File(CacheDirFactory.getImageCacheDir()))).Qhi(new EBS() { // from class: com.bytedance.sdk.openadsdk.ROR.fl.Qhi.2
                @Override // com.bytedance.sdk.component.fl.EBS
                public ExecutorService Qhi() {
                    return lG.cJ();
                }
            }).Qhi(new com.bytedance.sdk.component.fl.fl() { // from class: com.bytedance.sdk.openadsdk.ROR.fl.Qhi.1
                @Override // com.bytedance.sdk.component.fl.fl
                /* renamed from: cJ */
                public com.bytedance.sdk.component.fl.cJ.fl Qhi(com.bytedance.sdk.component.fl.Tgh tgh) {
                    zc fl = com.bytedance.sdk.openadsdk.iMK.ac.Qhi().cJ().fl();
                    iMK cJ = new iMK.Qhi().cJ(tgh.Qhi()).Qhi().cJ();
                    com.bytedance.sdk.component.cJ.Qhi.hpZ hpz = null;
                    com.bytedance.sdk.component.fl.cJ.Tgh tgh2 = tgh.ac() ? new com.bytedance.sdk.component.fl.cJ.Tgh() : null;
                    if (tgh2 != null) {
                        tgh2.Qhi(System.currentTimeMillis());
                    }
                    try {
                        hpz = fl.Qhi(cJ).Qhi();
                        if (tgh2 != null) {
                            tgh2.cJ(System.currentTimeMillis());
                        }
                        Map<String, String> Qhi2 = Qhi(tgh, hpz);
                        byte[] CJ = hpz.Tgh().CJ();
                        if (tgh2 != null) {
                            tgh2.ac(System.currentTimeMillis());
                        }
                        com.bytedance.sdk.component.fl.cJ.fl flVar = new com.bytedance.sdk.component.fl.cJ.fl(hpz.ac(), CJ, "", Qhi2);
                        flVar.Qhi(tgh2);
                        return flVar;
                    } catch (Throwable th) {
                        try {
                            return Qhi(tgh2, th);
                        } finally {
                            com.bytedance.sdk.component.fl.ac.ac.cJ.Qhi(hpz);
                        }
                    }
                }

                private Map<String, String> Qhi(com.bytedance.sdk.component.fl.Tgh tgh, com.bytedance.sdk.component.cJ.Qhi.hpZ hpz) {
                    if (tgh.cJ()) {
                        ROR ROR = hpz.ROR();
                        HashMap hashMap = new HashMap();
                        int Qhi2 = ROR.Qhi();
                        for (int i = 0; i < Qhi2; i++) {
                            String Qhi3 = ROR.Qhi(i);
                            String cJ = ROR.cJ(i);
                            if (Qhi3 != null) {
                                hashMap.put(Qhi3, cJ);
                            }
                        }
                        return hashMap;
                    }
                    return null;
                }

                private com.bytedance.sdk.component.fl.cJ.fl Qhi(com.bytedance.sdk.component.fl.cJ.Tgh tgh, Throwable th) {
                    th.getMessage();
                    if (tgh != null) {
                        tgh.ac(System.currentTimeMillis());
                    }
                    com.bytedance.sdk.component.fl.cJ.fl flVar = new com.bytedance.sdk.component.fl.cJ.fl(98765, th, "net failed");
                    flVar.Qhi(tgh);
                    return flVar;
                }
            }).Qhi());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Gm cJ(String str) {
            return Qhi(Qhi.Qhi(str).fl(zn.CJ(HzH.Qhi())).CJ(zn.ac(HzH.Qhi())));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Gm cJ(hpZ hpz) {
            return Qhi(Qhi.Qhi(hpz.Qhi()).Qhi(hpz.cJ()).cJ(hpz.ac()).fl(zn.CJ(HzH.Qhi())).CJ(zn.ac(HzH.Qhi())).Qhi(hpz.ROR()));
        }

        private static Gm Qhi(Gm gm) {
            return lB.Qhi() ? gm.Qhi(new Tgh()) : gm;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static InputStream cJ(String str, String str2) {
            return Qhi.Qhi(str, str2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean cJ(String str, String str2, String str3) {
            return Qhi.Qhi(str, str2, str3);
        }
    }
}

package com.bytedance.sdk.openadsdk.core;

import android.os.Build;
import com.appodeal.ads.modules.common.internal.Constants;
import com.bytedance.sdk.component.embedapplog.PangleEncryptConstant;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;
/* compiled from: PglEncryptStatisticsHelper.java */
/* loaded from: classes2.dex */
public class EBS {
    private static final AtomicInteger CJ;
    private static final AtomicInteger Qhi;
    private static final AtomicInteger ac;
    private static final AtomicInteger cJ;

    static {
        AtomicInteger atomicInteger = new AtomicInteger();
        Qhi = atomicInteger;
        AtomicInteger atomicInteger2 = new AtomicInteger();
        cJ = atomicInteger2;
        AtomicInteger atomicInteger3 = new AtomicInteger();
        ac = atomicInteger3;
        AtomicInteger atomicInteger4 = new AtomicInteger();
        CJ = atomicInteger4;
        atomicInteger.addAndGet(com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("encrypt_statistics_file", "encrypt_success_count", 0));
        atomicInteger2.addAndGet(com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("encrypt_statistics_file", "encrypt_fail_count", 0));
        atomicInteger3.addAndGet(com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("encrypt_statistics_file", "decrypt_success_count", 0));
        atomicInteger4.addAndGet(com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("encrypt_statistics_file", "decrypt_fail_count", 0));
    }

    public static void Qhi() {
        try {
            long Qhi2 = com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("encrypt_statistics_file", "upload_time_key", 0L);
            int i = (Qhi2 > 0L ? 1 : (Qhi2 == 0L ? 0 : -1));
            if (i > 0 && System.currentTimeMillis() - Qhi2 >= Constants.MILLIS_IN_DAY) {
                cJ();
                synchronized (EBS.class) {
                    Qhi.set(0);
                    cJ.set(0);
                    ac.set(0);
                    CJ.set(0);
                    com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("encrypt_statistics_file");
                    com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("encrypt_statistics_file", "upload_time_key", Long.valueOf(System.currentTimeMillis()));
                }
            } else if (i <= 0 || Qhi2 > System.currentTimeMillis()) {
                com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("encrypt_statistics_file", "upload_time_key", Long.valueOf(System.currentTimeMillis()));
            }
        } catch (Throwable unused) {
        }
    }

    private static void cJ() {
        final int i = Qhi.get();
        final int i2 = cJ.get();
        final int i3 = ac.get();
        final int i4 = CJ.get();
        com.bytedance.sdk.openadsdk.Gm.ac.Qhi("crypt_v4_statistics", false, new com.bytedance.sdk.openadsdk.Gm.cJ() { // from class: com.bytedance.sdk.openadsdk.core.EBS.1
            @Override // com.bytedance.sdk.openadsdk.Gm.cJ
            public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("encrypt_success_count", i);
                    jSONObject.put("encrypt_fail_count", i2);
                    jSONObject.put("decrypt_success_count", i3);
                    jSONObject.put("decrypt_fail_count", i4);
                } catch (Throwable unused) {
                }
                return com.bytedance.sdk.openadsdk.Gm.Qhi.fl.cJ().Qhi("crypt_v4_statistics").cJ(jSONObject.toString());
            }
        });
    }

    public static void Qhi(final int i, final PangleEncryptConstant.CryptDataScene cryptDataScene, final int i2) {
        com.bytedance.sdk.openadsdk.Gm.ac.Qhi("crypt_v4_fail", false, new com.bytedance.sdk.openadsdk.Gm.cJ() { // from class: com.bytedance.sdk.openadsdk.core.EBS.2
            @Override // com.bytedance.sdk.openadsdk.Gm.cJ
            public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("crypt", i);
                    jSONObject.put("scene", cryptDataScene.value());
                    jSONObject.put(IronSourceConstants.EVENTS_ERROR_REASON, i2);
                    if (i2 == 6) {
                        jSONObject.put("model", Build.MODEL);
                        jSONObject.put("vendor", Build.MANUFACTURER);
                    }
                } catch (Throwable unused) {
                }
                return com.bytedance.sdk.openadsdk.Gm.Qhi.fl.cJ().Qhi("crypt_v4_fail").cJ(jSONObject.toString());
            }
        });
    }

    public static synchronized void Qhi(boolean z) {
        synchronized (EBS.class) {
            if (z) {
                com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("encrypt_statistics_file", "decrypt_success_count", Integer.valueOf(ac.incrementAndGet()));
            } else {
                com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("encrypt_statistics_file", "decrypt_fail_count", Integer.valueOf(ac.incrementAndGet()));
            }
        }
    }

    public static void Qhi(JSONObject jSONObject) {
        cJ(jSONObject != null && jSONObject.optInt("cypher") == 4);
    }

    public static synchronized void cJ(boolean z) {
        synchronized (EBS.class) {
            if (z) {
                com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("encrypt_statistics_file", "encrypt_success_count", Integer.valueOf(Qhi.incrementAndGet()));
            } else {
                com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("encrypt_statistics_file", "encrypt_fail_count", Integer.valueOf(cJ.incrementAndGet()));
            }
        }
    }
}

package com.bytedance.sdk.openadsdk.HzH;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.component.utils.bxS;
import com.bytedance.sdk.openadsdk.CJ.tP;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.hm;
import com.bytedance.sdk.openadsdk.core.iMK;
import com.bytedance.sdk.openadsdk.core.settings.pA;
import com.bytedance.sdk.openadsdk.kYc.ac;
import com.bytedance.sdk.openadsdk.kYc.fl;
import com.bytedance.sdk.openadsdk.utils.js;
import com.bytedance.sdk.openadsdk.utils.lG;
import com.onesignal.outcomes.OSOutcomeConstants;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import org.json.JSONObject;
/* compiled from: StrategyCenterUtils.java */
/* loaded from: classes2.dex */
public class Qhi {
    public static final ConcurrentHashMap<String, Object> Qhi = new ConcurrentHashMap<>();
    private static volatile ac cJ;

    public static ac Qhi(final Context context, final String str) {
        if (cJ == null) {
            synchronized (Qhi.class) {
                if (cJ == null) {
                    ac acVar = new ac(new fl() { // from class: com.bytedance.sdk.openadsdk.HzH.Qhi.1
                        @Override // com.bytedance.sdk.openadsdk.kYc.fl
                        public ExecutorService Qhi() {
                            return lG.CJ();
                        }

                        @Override // com.bytedance.sdk.openadsdk.kYc.fl
                        public Context cJ() {
                            Context context2 = context;
                            return context2 != null ? context2 : HzH.Qhi();
                        }

                        @Override // com.bytedance.sdk.openadsdk.kYc.fl
                        public String ac() {
                            return "pag_adn_strategy_center";
                        }

                        @Override // com.bytedance.sdk.openadsdk.kYc.fl
                        public Handler CJ() {
                            return iMK.cJ();
                        }

                        @Override // com.bytedance.sdk.openadsdk.kYc.fl
                        public String fl() {
                            return js.CJ("/api/ad/union/sdk/strategies/adn");
                        }

                        @Override // com.bytedance.sdk.openadsdk.kYc.fl
                        public JSONObject Tgh() {
                            try {
                                JSONObject Qhi2 = pA.Qhi(bxS.Qhi(HzH.Qhi(), 0L));
                                if (!Qhi2.has(OSOutcomeConstants.APP_ID)) {
                                    if (!TextUtils.isEmpty(str)) {
                                        Qhi2.put(OSOutcomeConstants.APP_ID, str);
                                    } else if (TextUtils.isEmpty(hm.cJ().CJ())) {
                                        return null;
                                    } else {
                                        Qhi2.put(OSOutcomeConstants.APP_ID, hm.cJ().CJ());
                                    }
                                }
                                return com.bytedance.sdk.component.utils.Qhi.Qhi(Qhi2);
                            } catch (Throwable th) {
                                ABk.Qhi("StrategyUtils", th.getMessage());
                                return null;
                            }
                        }

                        @Override // com.bytedance.sdk.openadsdk.kYc.fl
                        public Map<String, String> ROR() {
                            HashMap hashMap = new HashMap();
                            hashMap.put("User-Agent", js.ac());
                            return hashMap;
                        }

                        @Override // com.bytedance.sdk.openadsdk.kYc.fl
                        public JSONObject Qhi(JSONObject jSONObject) {
                            int optInt = jSONObject.optInt("cypher", -1);
                            if (optInt != -1 && optInt == 3) {
                                String ac = com.bytedance.sdk.component.utils.Qhi.ac(jSONObject.optString("message"));
                                if (TextUtils.isEmpty(ac)) {
                                    return jSONObject;
                                }
                                try {
                                    return new JSONObject(ac);
                                } catch (Throwable unused) {
                                    return jSONObject;
                                }
                            }
                            return jSONObject;
                        }
                    });
                    cJ = acVar;
                    acVar.Qhi(new com.bytedance.sdk.openadsdk.kYc.Qhi() { // from class: com.bytedance.sdk.openadsdk.HzH.Qhi.2
                        @Override // com.bytedance.sdk.openadsdk.kYc.Qhi
                        public void Qhi() {
                            com.bytedance.sdk.openadsdk.ABk.ac.Qhi(new com.bytedance.sdk.openadsdk.ABk.fl() { // from class: com.bytedance.sdk.openadsdk.HzH.Qhi.2.1
                                @Override // com.bytedance.sdk.openadsdk.ABk.fl
                                public com.bytedance.sdk.openadsdk.ABk.cJ.Qhi generatorModel() {
                                    com.bytedance.sdk.openadsdk.ABk.cJ.Qhi qhi = new com.bytedance.sdk.openadsdk.ABk.cJ.Qhi();
                                    qhi.cJ("strategy_fetch");
                                    return qhi;
                                }
                            });
                        }

                        @Override // com.bytedance.sdk.openadsdk.kYc.Qhi
                        public void cJ() {
                            com.bytedance.sdk.openadsdk.ABk.ac.cJ(new com.bytedance.sdk.openadsdk.ABk.fl() { // from class: com.bytedance.sdk.openadsdk.HzH.Qhi.2.2
                                @Override // com.bytedance.sdk.openadsdk.ABk.fl
                                public com.bytedance.sdk.openadsdk.ABk.cJ.Qhi generatorModel() {
                                    com.bytedance.sdk.openadsdk.ABk.cJ.Qhi qhi = new com.bytedance.sdk.openadsdk.ABk.cJ.Qhi();
                                    qhi.cJ("strategy_fetch");
                                    return qhi;
                                }
                            });
                            tP.Qhi().cJ();
                        }

                        @Override // com.bytedance.sdk.openadsdk.kYc.Qhi
                        public void Qhi(int i, String str2) {
                            com.bytedance.sdk.openadsdk.ABk.ac.ac(new com.bytedance.sdk.openadsdk.ABk.fl() { // from class: com.bytedance.sdk.openadsdk.HzH.Qhi.2.3
                                @Override // com.bytedance.sdk.openadsdk.ABk.fl
                                public com.bytedance.sdk.openadsdk.ABk.cJ.Qhi generatorModel() {
                                    com.bytedance.sdk.openadsdk.ABk.cJ.Qhi qhi = new com.bytedance.sdk.openadsdk.ABk.cJ.Qhi();
                                    qhi.cJ("strategy_fetch");
                                    return qhi;
                                }
                            });
                        }
                    });
                }
            }
        }
        return cJ;
    }

    private static ac cJ() {
        return Qhi(HzH.Qhi(), hm.cJ().CJ());
    }

    public static int Qhi(String str, int i) {
        return cJ().Qhi(str, i);
    }

    public static boolean Qhi(String str, boolean z) {
        return cJ().Qhi(str, z);
    }

    public static String Qhi(String str, String str2) {
        return cJ().Qhi(str, str2);
    }

    public static int Qhi(String str, String str2, int i) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            String str3 = str + "_" + str2;
            ConcurrentHashMap<String, Object> concurrentHashMap = Qhi;
            Object obj = concurrentHashMap.get(str3);
            if (obj != null && (obj instanceof Integer)) {
                return ((Integer) obj).intValue();
            }
            try {
                String Qhi2 = cJ().Qhi(str, "");
                if (TextUtils.isEmpty(Qhi2)) {
                    return i;
                }
                int optInt = new JSONObject(Qhi2).optInt(str2, i);
                concurrentHashMap.put(str3, Integer.valueOf(optInt));
                return optInt;
            } catch (Throwable th) {
                ABk.Qhi("StrategyUtils", th.getMessage());
            }
        }
        return i;
    }

    public static void Qhi() {
        cJ().Qhi();
    }
}

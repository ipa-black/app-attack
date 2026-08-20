package com.bytedance.sdk.openadsdk.core.ugen.Qhi;

import android.text.TextUtils;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.hm;
import com.bytedance.sdk.openadsdk.utils.lG;
import com.google.android.gms.common.internal.ImagesContract;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: UGenTemplateManager.java */
/* loaded from: classes2.dex */
public class cJ {
    private static volatile cJ Qhi;

    /* compiled from: UGenTemplateManager.java */
    /* loaded from: classes2.dex */
    public interface Qhi {
        void Qhi(int i, String str, String str2);

        void Qhi(JSONObject jSONObject, String str);
    }

    public static cJ Qhi() {
        if (Qhi == null) {
            synchronized (cJ.class) {
                if (Qhi == null) {
                    Qhi = new cJ();
                }
            }
        }
        return Qhi;
    }

    public void Qhi(com.bytedance.sdk.openadsdk.core.ugen.fl.Qhi qhi, String str) {
        if (qhi == null) {
            return;
        }
        if (TextUtils.isEmpty(qhi.Qhi())) {
            ABk.Qhi("UGTemplateManager", "save ugen template error : tmpId is empty");
            return;
        }
        final String str2 = str + "_" + qhi.Qhi();
        final String ac = qhi.ac();
        final String cJ = qhi.cJ();
        final String CJ = qhi.CJ();
        String fl = qhi.fl();
        if (TextUtils.isEmpty(fl) && str.equals("ad")) {
            fl = hm.cJ().CJ();
        }
        final String str3 = fl;
        lG.Qhi(new com.bytedance.sdk.component.Sf.hm("saveUGenTemplate") { // from class: com.bytedance.sdk.openadsdk.core.ugen.Qhi.cJ.1
            @Override // java.lang.Runnable
            public void run() {
                cJ.this.Qhi(str2, ac, cJ, CJ, str3);
            }
        }, 10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(String str, String str2, String str3, String str4, String str5) {
        if (Qhi(str, str3) != null) {
            if (TextUtils.isEmpty(str4) || TextUtils.isEmpty(str3)) {
                return;
            }
            cJ(str2, str3, str5, str4, str);
        } else if (TextUtils.isEmpty(str4)) {
            Qhi(str2, str, str3, str5, (Qhi) null);
        } else {
            cJ(str2, str3, str5, str4, str);
        }
    }

    public void Qhi(String str, String str2, String str3, String str4, String str5, final Qhi qhi) {
        if (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) {
            if (qhi != null) {
                qhi.Qhi(1, "id  or md5 is empty", "net");
                return;
            }
            return;
        }
        String str6 = str + "_" + str3;
        com.bytedance.sdk.openadsdk.core.ugen.Qhi.Qhi Qhi2 = Qhi(str6, str4);
        if (Qhi2 == null || TextUtils.isEmpty(Qhi2.fl())) {
            Qhi(str2, str6, str4, str5, new Qhi() { // from class: com.bytedance.sdk.openadsdk.core.ugen.Qhi.cJ.2
                @Override // com.bytedance.sdk.openadsdk.core.ugen.Qhi.cJ.Qhi
                public void Qhi(JSONObject jSONObject, String str7) {
                    Qhi qhi2 = qhi;
                    if (qhi2 != null) {
                        qhi2.Qhi(jSONObject, str7);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.ugen.Qhi.cJ.Qhi
                public void Qhi(int i, String str7, String str8) {
                    Qhi qhi2 = qhi;
                    if (qhi2 != null) {
                        qhi2.Qhi(i, str7, str8);
                    }
                }
            });
            return;
        }
        Qhi(Qhi2);
        if (qhi != null) {
            try {
                qhi.Qhi(new JSONObject(Qhi2.fl()), ImagesContract.LOCAL);
            } catch (JSONException unused) {
                qhi.Qhi(2, "parse json exception data is " + Qhi2.fl(), ImagesContract.LOCAL);
            }
        }
    }

    private void Qhi(final String str, final String str2, final String str3, final String str4, final Qhi qhi) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            if (qhi != null) {
                qhi.Qhi(1, "template url or id  or md5 is empty", "net");
                return;
            }
            return;
        }
        com.bytedance.sdk.component.ROR.cJ.cJ ac = com.bytedance.sdk.openadsdk.iMK.ac.Qhi().cJ().ac();
        ac.cJ(str);
        ac.Qhi(7);
        ac.Qhi("load_ug_t");
        ac.Qhi(new com.bytedance.sdk.component.ROR.Qhi.Qhi() { // from class: com.bytedance.sdk.openadsdk.core.ugen.Qhi.cJ.3
            @Override // com.bytedance.sdk.component.ROR.Qhi.Qhi
            public void Qhi(com.bytedance.sdk.component.ROR.cJ.ac acVar, com.bytedance.sdk.component.ROR.cJ cJVar) {
                if (cJVar == null) {
                    return;
                }
                if (cJVar.Tgh()) {
                    String CJ = cJVar.CJ();
                    if (TextUtils.isEmpty(CJ)) {
                        Qhi qhi2 = qhi;
                        if (qhi2 != null) {
                            qhi2.Qhi(3, "net data is null", "net");
                            return;
                        }
                        return;
                    }
                    ac.Qhi().Qhi(new com.bytedance.sdk.openadsdk.core.ugen.Qhi.Qhi().Qhi(str2).cJ(str3).ac(str).fl(str4).CJ(CJ).Qhi(Long.valueOf(System.currentTimeMillis())));
                    cJ.this.cJ();
                    if (qhi != null) {
                        try {
                            qhi.Qhi(new JSONObject(CJ), "net");
                            return;
                        } catch (JSONException unused) {
                            qhi.Qhi(2, "parse json exception data is".concat(String.valueOf(CJ)), "net");
                            return;
                        }
                    }
                    return;
                }
                Qhi qhi3 = qhi;
                if (qhi3 != null) {
                    qhi3.Qhi(3, "net code error code is " + cJVar.Qhi() + " message is " + cJVar.cJ(), "net");
                }
            }

            @Override // com.bytedance.sdk.component.ROR.Qhi.Qhi
            public void Qhi(com.bytedance.sdk.component.ROR.cJ.ac acVar, IOException iOException) {
                Qhi qhi2 = qhi;
                if (qhi2 != null) {
                    qhi2.Qhi(3, "net error " + iOException.getMessage(), "net");
                }
            }
        });
    }

    public Set<com.bytedance.sdk.openadsdk.core.ugen.Qhi.Qhi> Qhi(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return ac.Qhi().Qhi(str);
    }

    public String Qhi(String str, String str2, String str3) {
        com.bytedance.sdk.openadsdk.core.ugen.Qhi.Qhi Qhi2 = Qhi(str + "_" + str2, str3);
        if (Qhi2 == null) {
            return null;
        }
        Qhi(Qhi2);
        return Qhi2.fl();
    }

    private com.bytedance.sdk.openadsdk.core.ugen.Qhi.Qhi Qhi(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return ac.Qhi().Qhi(str, str2);
    }

    private void cJ(String str, String str2, String str3, String str4, String str5) {
        com.bytedance.sdk.openadsdk.core.ugen.Qhi.Qhi qhi = new com.bytedance.sdk.openadsdk.core.ugen.Qhi.Qhi();
        qhi.ac(str).fl(str3).CJ(str4).cJ(str2).Qhi(str5).Qhi(Long.valueOf(System.currentTimeMillis()));
        ac.Qhi().Qhi(qhi);
        cJ();
    }

    private void Qhi(final com.bytedance.sdk.openadsdk.core.ugen.Qhi.Qhi qhi) {
        qhi.Qhi(Long.valueOf(System.currentTimeMillis()));
        lG.Qhi(new com.bytedance.sdk.component.Sf.hm("updateTmplTime") { // from class: com.bytedance.sdk.openadsdk.core.ugen.Qhi.cJ.4
            @Override // java.lang.Runnable
            public void run() {
                ac.Qhi().Qhi(qhi);
            }
        }, 10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cJ() {
        int CJ = HzH.CJ().CJ();
        if (CJ <= 0) {
            CJ = 100;
        }
        List<com.bytedance.sdk.openadsdk.core.ugen.Qhi.Qhi> cJ = ac.Qhi().cJ();
        if (cJ == null || cJ.isEmpty() || CJ >= cJ.size()) {
            if (cJ == null) {
                return;
            }
            cJ.size();
            return;
        }
        int size = (int) (cJ.size() - (CJ * 0.75f));
        if (size <= 0) {
            return;
        }
        TreeMap treeMap = new TreeMap();
        for (com.bytedance.sdk.openadsdk.core.ugen.Qhi.Qhi qhi : cJ) {
            treeMap.put(qhi.CJ(), qhi);
        }
        HashSet hashSet = new HashSet();
        int i = 0;
        for (Map.Entry entry : treeMap.entrySet()) {
            if (entry != null && i < size) {
                i++;
                com.bytedance.sdk.openadsdk.core.ugen.Qhi.Qhi qhi2 = (com.bytedance.sdk.openadsdk.core.ugen.Qhi.Qhi) entry.getValue();
                if (qhi2 != null) {
                    hashSet.add(qhi2.Qhi());
                }
            }
        }
        Qhi(hashSet);
    }

    public void Qhi(Set<String> set) {
        try {
            ac.Qhi().Qhi(set);
        } catch (Throwable th) {
            th.getMessage();
        }
    }
}

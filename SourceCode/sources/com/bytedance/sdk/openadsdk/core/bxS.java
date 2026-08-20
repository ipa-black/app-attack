package com.bytedance.sdk.openadsdk.core;

import android.text.TextUtils;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: RitInfo.java */
/* loaded from: classes2.dex */
public class bxS {
    public static ConcurrentHashMap<Integer, bxS> Qhi = new ConcurrentHashMap<>();
    private int CJ;
    private String Tgh;
    private int fl;
    private String cJ = "";
    private String ac = "";

    public String Qhi() {
        return this.Tgh;
    }

    public String cJ() {
        return this.cJ;
    }

    public String ac() {
        return this.ac;
    }

    public int CJ() {
        return this.CJ;
    }

    public void Qhi(int i) {
        this.CJ = i;
    }

    public int fl() {
        return this.fl;
    }

    public void cJ(int i) {
        this.fl = i;
    }

    private void Tgh() {
        this.cJ = "";
        this.ac = "";
        this.CJ = 0;
        this.fl = 0;
    }

    public void Qhi(com.bytedance.sdk.openadsdk.core.model.tP tPVar) {
        if (tPVar != null) {
            String jWV = tPVar.jWV();
            if (!TextUtils.isEmpty(jWV)) {
                this.Tgh = jWV;
            }
            String YB = tPVar.YB();
            if (TextUtils.isEmpty(YB) && tPVar.IC()) {
                YB = tPVar.cJP().hm();
            }
            if (!TextUtils.isEmpty(YB)) {
                String[] split = YB.split("/");
                if (split.length >= 3) {
                    this.cJ = split[2];
                }
            }
            if (tPVar.pv() == null || TextUtils.isEmpty(tPVar.pv().ac())) {
                return;
            }
            this.ac = tPVar.pv().ac();
        }
    }

    public static void cJ(com.bytedance.sdk.openadsdk.core.model.tP tPVar) {
        if (tPVar == null || TextUtils.isEmpty(tPVar.EGK())) {
            return;
        }
        Integer valueOf = Integer.valueOf(tPVar.Hy());
        if (valueOf.intValue() == 0) {
            return;
        }
        if (Qhi == null) {
            Qhi = new ConcurrentHashMap<>();
        }
        bxS bxs = Qhi.containsKey(valueOf) ? Qhi.get(valueOf) : null;
        if (bxs == null) {
            bxs = new bxS();
        }
        String jWV = tPVar.jWV();
        if (TextUtils.isEmpty(jWV) || !jWV.equals(bxs.Qhi())) {
            bxs.Tgh();
            bxs.Qhi(tPVar);
            Qhi.put(valueOf, bxs);
        }
    }

    public static void ac(int i) {
        bxS bxs;
        if (i == 0) {
            return;
        }
        if (Qhi == null) {
            Qhi = new ConcurrentHashMap<>();
        }
        if (!Qhi.containsKey(Integer.valueOf(i)) || (bxs = Qhi.get(Integer.valueOf(i))) == null) {
            return;
        }
        bxs.cJ(1);
    }

    public static void ac(com.bytedance.sdk.openadsdk.core.model.tP tPVar) {
        bxS bxs;
        if (tPVar == null) {
            return;
        }
        Integer valueOf = Integer.valueOf(tPVar.Hy());
        if (valueOf.intValue() == 0) {
            return;
        }
        if (Qhi == null) {
            Qhi = new ConcurrentHashMap<>();
        }
        if (!Qhi.containsKey(valueOf) || (bxs = Qhi.get(valueOf)) == null) {
            return;
        }
        bxs.Qhi(1);
    }
}

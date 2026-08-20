package com.bytedance.sdk.openadsdk.CJ;

import com.bytedance.sdk.openadsdk.HzH.Qhi;
import com.bytedance.sdk.openadsdk.core.ac;
import com.bytedance.sdk.openadsdk.core.iMK;
import com.onesignal.outcomes.data.OutcomeEventsTable;
/* compiled from: FeatureCaculateConfig.java */
/* loaded from: classes2.dex */
public class tP {
    private static volatile tP Qhi;
    private boolean ABk;
    private boolean CJ;
    private boolean Gm;
    private int[] ROR;
    private int[] Sf;
    private int[] Tgh;
    private boolean WAv;
    private boolean ac;
    private boolean cJ;
    private int[] fl;
    private int[] hm;
    private boolean hpZ;
    private boolean iMK;
    private int pA;
    private int[] zc;

    private tP() {
        cJ();
    }

    public static tP Qhi() {
        if (Qhi == null) {
            synchronized (ac.class) {
                if (Qhi == null) {
                    Qhi = new tP();
                }
            }
        }
        return Qhi;
    }

    public void cJ() {
        iMK.cJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.CJ.tP.1
            @Override // java.lang.Runnable
            public void run() {
                tP.this.iMK = Qhi.Qhi("feature_switch", false);
                if (tP.this.iMK) {
                    try {
                        tP.this.pA = Qhi.Qhi("feature_timer_interval", 10000);
                        tP.this.hpZ = Qhi.Qhi("enable_feature_cids", true);
                        String[] split = Qhi.Qhi("pag_ad_show_cnt", "1,3,5&session").split("&");
                        String[] split2 = Qhi.Qhi("pag_ad_click_cnt", "1,3,5&session").split("&");
                        String[] split3 = Qhi.Qhi("pag_video_play_cnt", "1,3,5&session").split("&");
                        String[] split4 = Qhi.Qhi("pag_dislike_cnt", "1,3,5session").split(",");
                        tP tPVar = tP.this;
                        tPVar.cJ = tPVar.Qhi(split);
                        tP tPVar2 = tP.this;
                        tPVar2.ac = tPVar2.Qhi(split2);
                        tP tPVar3 = tP.this;
                        tPVar3.CJ = tPVar3.Qhi(split3);
                        tP tPVar4 = tP.this;
                        tPVar4.fl = tPVar4.cJ(split);
                        tP tPVar5 = tP.this;
                        tPVar5.Tgh = tPVar5.cJ(split2);
                        tP tPVar6 = tP.this;
                        tPVar6.ROR = tPVar6.cJ(split3);
                        tP tPVar7 = tP.this;
                        tPVar7.zc = tPVar7.ac(split4);
                        String[] split5 = Qhi.Qhi("pag_landingPage_stay_time", "1,3,5&session").split("&");
                        String[] split6 = Qhi.Qhi("pag_video_stay_time", "1,3,5&session").split("&");
                        tP tPVar8 = tP.this;
                        tPVar8.WAv = tPVar8.Qhi(split5);
                        tP tPVar9 = tP.this;
                        tPVar9.Gm = tPVar9.Qhi(split6);
                        tP tPVar10 = tP.this;
                        tPVar10.Sf = tPVar10.cJ(split5);
                        tP tPVar11 = tP.this;
                        tPVar11.hm = tPVar11.cJ(split6);
                        tP.this.ABk = Qhi.Qhi("pag_video_30p_session", true);
                    } catch (Throwable unused) {
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Qhi(String[] strArr) {
        if (strArr.length == 2) {
            return OutcomeEventsTable.COLUMN_NAME_SESSION.equals(strArr[1]);
        }
        if (strArr.length == 1) {
            return OutcomeEventsTable.COLUMN_NAME_SESSION.equals(strArr[0]);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int[] cJ(String[] strArr) {
        if (strArr.length > 0) {
            return ac(strArr[0].split(","));
        }
        return new int[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int[] ac(String[] strArr) {
        int length = strArr.length;
        int[] iArr = new int[length];
        int i = 0;
        for (String str : strArr) {
            try {
                int parseInt = Integer.parseInt(str);
                iArr[i] = parseInt;
                if (parseInt > 0) {
                    i++;
                }
            } catch (NumberFormatException unused) {
            }
        }
        if (i != length) {
            int[] iArr2 = new int[i];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            return iArr2;
        }
        return iArr;
    }

    public boolean ac() {
        return this.iMK;
    }

    public int CJ() {
        return this.pA;
    }

    public boolean fl() {
        return this.hpZ;
    }

    public boolean Tgh() {
        return this.cJ;
    }

    public boolean ROR() {
        return this.ac;
    }

    public boolean Sf() {
        return this.CJ;
    }

    public int[] hm() {
        return this.fl;
    }

    public int[] WAv() {
        return this.Tgh;
    }

    public int[] Gm() {
        return this.ROR;
    }

    public int[] zc() {
        return this.Sf;
    }

    public int[] ABk() {
        return this.hm;
    }

    public boolean iMK() {
        return this.WAv;
    }

    public boolean pA() {
        return this.Gm;
    }

    public int[] hpZ() {
        return this.zc;
    }

    public boolean HzH() {
        return this.ABk;
    }
}

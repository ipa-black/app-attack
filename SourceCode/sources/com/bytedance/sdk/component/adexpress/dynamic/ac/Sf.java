package com.bytedance.sdk.component.adexpress.dynamic.ac;

import android.graphics.Color;
import android.text.TextUtils;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.appodeal.ads.modules.common.internal.Constants;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.dynamic.CJ.ABk;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import org.json.JSONObject;
/* compiled from: DynamicLayoutNativeValue.java */
/* loaded from: classes2.dex */
public class Sf {
    private ROR CJ;
    public int Qhi;
    private String Tgh;
    public JSONObject ac;
    public String cJ;
    private Tgh fl;

    public Sf(Tgh tgh) {
        this.fl = tgh;
        this.Qhi = tgh.Qhi();
        this.cJ = tgh.ac();
        this.ac = tgh.fl().EGK();
        this.Tgh = tgh.CJ();
        if (com.bytedance.sdk.component.adexpress.fl.ac() == 1) {
            this.CJ = tgh.ROR();
        } else {
            this.CJ = tgh.fl();
        }
        if (com.bytedance.sdk.component.adexpress.fl.cJ()) {
            this.CJ = tgh.fl();
        }
    }

    public int Qhi() {
        return (int) this.CJ.iMK();
    }

    public int cJ() {
        return (int) this.CJ.HzH();
    }

    public int ac() {
        return (int) this.CJ.pA();
    }

    public int CJ() {
        return (int) this.CJ.hpZ();
    }

    public float fl() {
        return this.CJ.kYc();
    }

    public String Tgh() {
        if (this.Qhi == 0) {
            if (!TextUtils.isEmpty(this.cJ)) {
                return this.cJ;
            }
            return this.ac.optString(CQU.ac(com.bytedance.sdk.component.adexpress.fl.Qhi()));
        }
        return "";
    }

    public int ROR() {
        return Qhi(this.CJ.EBS());
    }

    public int Sf() {
        String qMt = this.CJ.qMt();
        if (TtmlNode.LEFT.equals(qMt)) {
            return 17;
        }
        if (TtmlNode.CENTER.equals(qMt)) {
            return 4;
        }
        return TtmlNode.RIGHT.equals(qMt) ? 3 : 2;
    }

    public int hm() {
        int Sf = Sf();
        if (Sf == 4) {
            return 17;
        }
        return Sf == 3 ? GravityCompat.END : GravityCompat.START;
    }

    public String WAv() {
        int i = this.Qhi;
        if (i == 2 || i == 13) {
            return this.cJ;
        }
        return "";
    }

    public String Gm() {
        if (this.Qhi == 1) {
            return this.cJ;
        }
        return "";
    }

    public String zc() {
        return this.Tgh;
    }

    public double ABk() {
        if (this.Qhi == 11) {
            try {
                double parseDouble = Double.parseDouble(this.cJ);
                return !com.bytedance.sdk.component.adexpress.fl.cJ() ? (int) parseDouble : parseDouble;
            } catch (NumberFormatException unused) {
            }
        }
        return -1.0d;
    }

    public double iMK() {
        return this.CJ.tP();
    }

    public float pA() {
        return this.CJ.Gm();
    }

    public int hpZ() {
        return Qhi(this.CJ.pM());
    }

    public float HzH() {
        return this.CJ.zc();
    }

    public int kYc() {
        return this.CJ.HWc();
    }

    public int tP() {
        return this.CJ.YD();
    }

    public boolean MQ() {
        return this.CJ.SNp();
    }

    public String qMt() {
        return this.CJ.Dww();
    }

    public void Qhi(float f2) {
        this.CJ.Qhi(f2);
    }

    public boolean EBS() {
        return this.CJ.xyz();
    }

    public int bxS() {
        return this.CJ.jPH();
    }

    public String Dww() {
        return this.CJ.yN();
    }

    public String CQU() {
        return this.CJ.Ls();
    }

    public long pM() {
        return this.CJ.KW();
    }

    public int Eh() {
        String yN = this.CJ.yN();
        if ("skip-with-time-skip-btn".equals(this.fl.cJ()) || "skip".equals(this.fl.cJ()) || TextUtils.equals("skip-with-countdowns-skip-btn", this.fl.cJ())) {
            return 6;
        }
        if (!"skip-with-time-countdown".equals(this.fl.cJ()) && !"skip-with-time".equals(this.fl.cJ())) {
            if (this.Qhi == 10 && TextUtils.equals(this.CJ.FQ(), Constants.CLICK)) {
                return 5;
            }
            if (SL() && Oy()) {
                return 0;
            }
            if (SL()) {
                return 7;
            }
            if ("feedback-dislike".equals(this.fl.cJ())) {
                return 3;
            }
            if (!TextUtils.isEmpty(yN) && !yN.equals("none")) {
                if (yN.equals("video") || (this.fl.Qhi() == 7 && TextUtils.equals(yN, "normal"))) {
                    return (com.bytedance.sdk.component.adexpress.fl.cJ() && this.fl.fl() != null && this.fl.fl().Ug()) ? 11 : 4;
                } else if (yN.equals("normal")) {
                    return 1;
                } else {
                    return (yN.equals("creative") || "slide".equals(this.CJ.FQ())) ? 2 : 0;
                }
            }
        }
        return 0;
    }

    private boolean SL() {
        return (com.bytedance.sdk.component.adexpress.fl.cJ() && (this.fl.cJ().contains("logo-union") || this.fl.cJ().contains("logounion") || this.fl.cJ().contains("logoad"))) || "logo-union".equals(this.fl.cJ()) || "logounion".equals(this.fl.cJ()) || "logoad".equals(this.fl.cJ());
    }

    public int aP() {
        return Qhi(this.CJ.bxS());
    }

    public double NFd() {
        return this.CJ.Sf();
    }

    public int sDy() {
        return this.CJ.ac();
    }

    public int lB() {
        return this.CJ.cJ();
    }

    public int lG() {
        return this.CJ.fl();
    }

    public int Jma() {
        return this.CJ.CJ();
    }

    public int js() {
        return this.CJ.hm();
    }

    public String zn() {
        return this.CJ.WAv();
    }

    public String es() {
        return this.CJ.FQ();
    }

    private boolean Oy() {
        if (com.bytedance.sdk.component.adexpress.fl.cJ()) {
            return false;
        }
        return (!TextUtils.isEmpty(this.cJ) && this.cJ.contains("adx:")) || ABk.cJ();
    }

    public static int Qhi(String str) {
        String[] split;
        if (TextUtils.isEmpty(str)) {
            return ViewCompat.MEASURED_STATE_MASK;
        }
        if (str.equals("transparent")) {
            return 0;
        }
        if (str.charAt(0) == '#' && str.length() == 7) {
            return Color.parseColor(str);
        }
        if (str.charAt(0) == '#' && str.length() == 9) {
            return Color.parseColor(str);
        }
        if (str.startsWith("rgba") && (split = str.substring(str.indexOf("(") + 1, str.indexOf(")")).split(",")) != null) {
            try {
                if (split.length == 4) {
                    return (((int) ((Float.parseFloat(split[3]) * 255.0f) + 0.5f)) << 24) | (((int) Float.parseFloat(split[0])) << 16) | (((int) Float.parseFloat(split[1])) << 8) | ((int) Float.parseFloat(split[2]));
                }
            } catch (NumberFormatException unused) {
                return 0;
            }
        }
        return ViewCompat.MEASURED_STATE_MASK;
    }

    public static float[] cJ(String str) {
        String[] split = str.substring(str.indexOf("(") + 1, str.indexOf(")")).split(",");
        if (split != null && split.length == 4) {
            return new float[]{Float.parseFloat(split[0]), Float.parseFloat(split[1]), Float.parseFloat(split[2]), Float.parseFloat(split[3])};
        }
        return new float[]{0.0f, 0.0f, 0.0f, 0.0f};
    }

    public boolean Qhi(int i) {
        Tgh tgh = this.fl;
        if (tgh == null) {
            return false;
        }
        if (i == 1) {
            this.CJ = tgh.ROR();
        } else {
            this.CJ = tgh.fl();
        }
        return this.CJ != null;
    }

    public boolean yN() {
        return this.CJ.VnT();
    }

    public int FQ() {
        return this.CJ.Ura();
    }

    public int PAe() {
        return this.CJ.Ri();
    }

    public String ip() {
        return this.CJ.es();
    }

    public boolean xyz() {
        return this.CJ.vml();
    }

    public int jPH() {
        return this.CJ.ROR();
    }

    public int MND() {
        return this.CJ.Px();
    }

    public int dIT() {
        return this.CJ.ne();
    }

    public int Qe() {
        return this.CJ.IC();
    }

    public int YB() {
        return this.CJ.mZ();
    }

    public boolean cjC() {
        return this.CJ.cJP();
    }

    public String Dq() {
        return this.CJ.NFd();
    }

    public String Hf() {
        return this.CJ.gT();
    }

    public String NBs() {
        return this.CJ.zTC();
    }

    public boolean dI() {
        return this.CJ.ABk();
    }

    public boolean dVA() {
        return this.CJ.lB();
    }

    public String zjb() {
        return this.CJ.sDy();
    }

    public int ots() {
        return this.CJ.lG();
    }

    public int HLI() {
        return this.CJ.Jma();
    }

    public double oU() {
        return this.CJ.js();
    }

    public double pv() {
        return this.CJ.zn();
    }

    public int ReL() {
        return this.CJ.bM();
    }

    public String EGK() {
        return this.CJ.Ki();
    }

    public String gga() {
        return this.CJ.SO();
    }

    public boolean VnT() {
        return this.CJ.XH();
    }

    public int Ri() {
        return this.CJ.Wrw();
    }

    public int Ura() {
        return this.CJ.TKG();
    }

    public int PER() {
        return this.CJ.HUk();
    }

    public boolean Gy() {
        return this.CJ.cJP();
    }

    public String et() {
        return this.CJ.CQU();
    }
}

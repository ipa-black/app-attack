package com.bytedance.sdk.component.adexpress.cJ;

import java.util.Map;
import org.json.JSONObject;
/* compiled from: RenderRequest.java */
/* loaded from: classes2.dex */
public class iMK {
    private String ABk;
    private WAv CJ;
    private int CQU;
    private double Dww;
    private int EBS;
    private JSONObject Eh;
    private long Gm;
    private String HzH;
    private int MQ;
    private JSONObject NFd;
    private JSONObject Qhi;
    private String ROR;
    private String Sf;
    private String Tgh;
    private int WAv;
    private JSONObject aP;
    private String ac;
    private String bxS;
    private Tgh cJ;
    private int fl;
    private boolean hm;
    private boolean hpZ;
    private Map<String, String> iMK;
    private int kYc;
    private String lB;
    private final boolean lG;
    private int pA;
    private boolean pM;
    private int qMt;
    private boolean sDy;
    private int tP;
    private int zc;

    public iMK(Qhi qhi) {
        this.Qhi = qhi.Qhi;
        this.cJ = qhi.cJ;
        this.ac = qhi.ac;
        this.CJ = qhi.CJ;
        this.fl = qhi.fl;
        this.Tgh = qhi.Tgh;
        this.ROR = qhi.ROR;
        this.Sf = qhi.Sf;
        this.hm = qhi.hm;
        this.WAv = qhi.WAv;
        this.Gm = qhi.Gm;
        this.zc = qhi.zc;
        this.ABk = qhi.ABk;
        this.iMK = qhi.iMK;
        this.pA = qhi.pA;
        this.hpZ = qhi.hpZ;
        this.HzH = qhi.HzH;
        this.kYc = qhi.kYc;
        this.tP = qhi.tP;
        this.MQ = qhi.MQ;
        this.qMt = qhi.qMt;
        this.EBS = qhi.EBS;
        this.bxS = qhi.bxS;
        this.Dww = qhi.Dww;
        this.CQU = qhi.CQU;
        this.pM = qhi.pM;
        this.Eh = qhi.Eh;
        this.aP = qhi.aP;
        this.NFd = qhi.NFd;
        this.sDy = qhi.sDy;
        this.lB = qhi.lB;
        this.lG = qhi.lG;
    }

    public boolean Qhi() {
        return this.pM;
    }

    public double cJ() {
        return this.Dww;
    }

    public JSONObject ac() {
        Tgh tgh;
        if (this.Qhi == null && (tgh = this.cJ) != null) {
            this.Qhi = tgh.Qhi();
        }
        return this.Qhi;
    }

    public String CJ() {
        return this.ac;
    }

    public WAv fl() {
        return this.CJ;
    }

    public int Tgh() {
        return this.fl;
    }

    public int ROR() {
        return this.CQU;
    }

    public boolean Sf() {
        return this.hm;
    }

    public long hm() {
        return this.Gm;
    }

    public int WAv() {
        return this.zc;
    }

    public Map<String, String> Gm() {
        return this.iMK;
    }

    public int zc() {
        return this.pA;
    }

    public boolean ABk() {
        return this.hpZ;
    }

    public String iMK() {
        return this.HzH;
    }

    public int pA() {
        return this.kYc;
    }

    public int hpZ() {
        return this.tP;
    }

    public int HzH() {
        return this.MQ;
    }

    public JSONObject kYc() {
        return this.Eh;
    }

    public JSONObject tP() {
        return this.aP;
    }

    public JSONObject MQ() {
        return this.NFd;
    }

    public int qMt() {
        return this.qMt;
    }

    public int EBS() {
        return this.EBS;
    }

    public boolean bxS() {
        return this.sDy;
    }

    public String Dww() {
        return this.lB;
    }

    public boolean CQU() {
        return this.lG;
    }

    /* compiled from: RenderRequest.java */
    /* loaded from: classes2.dex */
    public static class Qhi {
        private String ABk;
        private WAv CJ;
        private int CQU;
        private double Dww;
        private int EBS;
        private JSONObject Eh;
        private long Gm;
        private String HzH;
        private int MQ;
        private JSONObject NFd;
        private JSONObject Qhi;
        private String ROR;
        private String Sf;
        private String Tgh;
        private int WAv;
        private JSONObject aP;
        private String ac;
        private String bxS;
        private Tgh cJ;
        private int fl;
        private boolean hm;
        private boolean hpZ;
        private Map<String, String> iMK;
        private int kYc;
        private String lB;
        private int pA;
        private int qMt;
        private boolean sDy;
        private int tP;
        private int zc;
        private boolean pM = true;
        private boolean lG = true;

        public Qhi Qhi(Tgh tgh) {
            this.cJ = tgh;
            return this;
        }

        public Qhi Qhi(boolean z) {
            this.pM = z;
            return this;
        }

        public Qhi Qhi(String str) {
            this.ac = str;
            return this;
        }

        public Qhi Qhi(WAv wAv) {
            this.CJ = wAv;
            return this;
        }

        public Qhi Qhi(int i) {
            this.fl = i;
            return this;
        }

        public Qhi cJ(String str) {
            this.Tgh = str;
            return this;
        }

        public Qhi ac(String str) {
            this.ROR = str;
            return this;
        }

        public Qhi CJ(String str) {
            this.Sf = str;
            return this;
        }

        public Qhi cJ(boolean z) {
            this.hm = z;
            return this;
        }

        public Qhi ac(boolean z) {
            this.lG = z;
            return this;
        }

        public Qhi cJ(int i) {
            this.WAv = i;
            return this;
        }

        public Qhi Qhi(long j) {
            this.Gm = j;
            return this;
        }

        public Qhi ac(int i) {
            this.zc = i;
            return this;
        }

        public Qhi Qhi(Map<String, String> map) {
            this.iMK = map;
            return this;
        }

        public Qhi CJ(int i) {
            this.pA = i;
            return this;
        }

        public Qhi CJ(boolean z) {
            this.hpZ = z;
            return this;
        }

        public Qhi fl(String str) {
            this.HzH = str;
            return this;
        }

        public Qhi fl(int i) {
            this.CQU = i;
            return this;
        }

        public Qhi fl(boolean z) {
            this.sDy = z;
            return this;
        }

        public Qhi Tgh(String str) {
            this.lB = str;
            return this;
        }

        public iMK Qhi() {
            return new iMK(this);
        }

        public Qhi Qhi(double d2) {
            this.Dww = d2;
            return this;
        }
    }
}

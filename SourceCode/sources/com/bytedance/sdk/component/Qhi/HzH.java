package com.bytedance.sdk.component.Qhi;

import android.text.TextUtils;
/* compiled from: Js2JavaCall.java */
/* loaded from: classes2.dex */
public class HzH {
    public final String CJ;
    public final int Qhi;
    public final String ROR;
    public final String Sf;
    public final String Tgh;
    public final String ac;
    public final String cJ;
    public final String fl;

    public static Qhi Qhi() {
        return new Qhi();
    }

    public static HzH Qhi(String str, int i) {
        return new HzH(str, i);
    }

    private HzH(String str, int i) {
        this.cJ = null;
        this.ac = null;
        this.CJ = null;
        this.fl = null;
        this.Tgh = str;
        this.ROR = null;
        this.Qhi = i;
        this.Sf = null;
    }

    private HzH(Qhi qhi) {
        this.cJ = qhi.Qhi;
        this.ac = qhi.cJ;
        this.CJ = qhi.ac;
        this.fl = qhi.CJ;
        this.Tgh = qhi.fl;
        this.ROR = qhi.Tgh;
        this.Qhi = 1;
        this.Sf = qhi.ROR;
    }

    public static boolean Qhi(HzH hzH) {
        return hzH == null || hzH.Qhi != 1 || TextUtils.isEmpty(hzH.CJ) || TextUtils.isEmpty(hzH.fl);
    }

    public String toString() {
        return "methodName: " + this.CJ + ", params: " + this.fl + ", callbackId: " + this.Tgh + ", type: " + this.ac + ", version: " + this.cJ + ", ";
    }

    /* compiled from: Js2JavaCall.java */
    /* loaded from: classes2.dex */
    public static final class Qhi {
        private String CJ;
        private String Qhi;
        private String ROR;
        private String Tgh;
        private String ac;
        private String cJ;
        private String fl;

        private Qhi() {
        }

        public Qhi Qhi(String str) {
            this.Qhi = str;
            return this;
        }

        public Qhi cJ(String str) {
            this.cJ = str;
            return this;
        }

        public Qhi ac(String str) {
            this.ac = str;
            return this;
        }

        public Qhi CJ(String str) {
            this.CJ = str;
            return this;
        }

        public Qhi fl(String str) {
            this.fl = str;
            return this;
        }

        public Qhi Tgh(String str) {
            this.Tgh = str;
            return this;
        }

        public Qhi ROR(String str) {
            this.ROR = str;
            return this;
        }

        public HzH Qhi() {
            return new HzH(this);
        }
    }
}

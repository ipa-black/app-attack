package com.bytedance.sdk.component.cJ.Qhi;

import androidx.browser.trusted.sharing.ShareTarget;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: Request.java */
/* loaded from: classes2.dex */
public abstract class iMK {
    public zc Qhi;
    public com.bytedance.sdk.component.ac.Qhi.Qhi cJ = new com.bytedance.sdk.component.ac.Qhi.Qhi();

    public abstract Map<String, List<String>> CJ();

    public abstract Object Qhi();

    public abstract int ROR();

    public pA Sf() {
        return null;
    }

    public abstract String Tgh();

    public abstract String ac();

    public abstract Sf cJ();

    public abstract com.bytedance.sdk.component.cJ.Qhi.Qhi fl();

    public void Qhi(zc zcVar) {
        this.Qhi = zcVar;
    }

    public Qhi hm() {
        return new Qhi(this);
    }

    /* compiled from: Request.java */
    /* loaded from: classes2.dex */
    public static class Qhi {
        String CJ;
        com.bytedance.sdk.component.cJ.Qhi.Qhi Qhi;
        int ROR;
        String Sf;
        pA Tgh;
        Sf ac;
        Map<String, List<String>> cJ;
        Object fl;

        public Qhi() {
            this.cJ = new HashMap();
        }

        public Qhi Qhi(com.bytedance.sdk.component.cJ.Qhi.Qhi qhi) {
            this.Qhi = qhi;
            return this;
        }

        public Qhi Qhi(String str) {
            this.Sf = str;
            return this;
        }

        public Qhi Qhi(int i) {
            this.ROR = i;
            return this;
        }

        Qhi(iMK imk) {
            this.ac = imk.cJ();
            this.CJ = imk.ac();
            this.cJ = imk.CJ();
            this.fl = imk.Qhi();
            this.Tgh = imk.Sf();
            this.Qhi = imk.fl();
            this.ROR = imk.ROR();
            this.Sf = imk.Tgh();
        }

        public Qhi Qhi(Object obj) {
            this.fl = obj;
            return this;
        }

        public Qhi cJ(String str) {
            return Qhi(Sf.ac(str));
        }

        public Qhi Qhi(Sf sf) {
            this.ac = sf;
            return this;
        }

        public Qhi Qhi(String str, String str2) {
            return cJ(str, str2);
        }

        public Qhi cJ(String str, String str2) {
            if (!this.cJ.containsKey(str)) {
                this.cJ.put(str, new ArrayList());
            }
            this.cJ.get(str).add(str2);
            return this;
        }

        public Qhi Qhi() {
            return Qhi(ShareTarget.METHOD_GET, (pA) null);
        }

        private Qhi Qhi(String str, pA pAVar) {
            this.CJ = str;
            this.Tgh = pAVar;
            return this;
        }

        public Qhi Qhi(pA pAVar) {
            return Qhi(ShareTarget.METHOD_POST, pAVar);
        }

        public iMK cJ() {
            return new iMK() { // from class: com.bytedance.sdk.component.cJ.Qhi.iMK.Qhi.1
                @Override // com.bytedance.sdk.component.cJ.Qhi.iMK
                public Object Qhi() {
                    return Qhi.this.fl;
                }

                @Override // com.bytedance.sdk.component.cJ.Qhi.iMK
                public Sf cJ() {
                    return Qhi.this.ac;
                }

                @Override // com.bytedance.sdk.component.cJ.Qhi.iMK
                public String ac() {
                    return Qhi.this.CJ;
                }

                @Override // com.bytedance.sdk.component.cJ.Qhi.iMK
                public Map CJ() {
                    return Qhi.this.cJ;
                }

                @Override // com.bytedance.sdk.component.cJ.Qhi.iMK
                public com.bytedance.sdk.component.cJ.Qhi.Qhi fl() {
                    return Qhi.this.Qhi;
                }

                @Override // com.bytedance.sdk.component.cJ.Qhi.iMK
                public String Tgh() {
                    return Qhi.this.Sf;
                }

                @Override // com.bytedance.sdk.component.cJ.Qhi.iMK
                public int ROR() {
                    return Qhi.this.ROR;
                }

                public String toString() {
                    return "";
                }

                @Override // com.bytedance.sdk.component.cJ.Qhi.iMK
                public pA Sf() {
                    return Qhi.this.Tgh;
                }
            };
        }
    }
}

package com.bytedance.sdk.component.adexpress.dynamic.CJ;

import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import com.bytedance.sdk.component.adexpress.cJ.iMK;
import com.bytedance.sdk.component.adexpress.dynamic.CJ.ac;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import java.util.List;
/* compiled from: DynamicCanvas.java */
/* loaded from: classes2.dex */
public class ROR {
    private Qhi CJ;
    public com.bytedance.sdk.component.adexpress.dynamic.ac.cJ Qhi;
    private com.bytedance.sdk.component.adexpress.dynamic.ac.hm ac;
    protected ac cJ;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DynamicCanvas.java */
    /* loaded from: classes2.dex */
    public static class Qhi {
        float Qhi;
        float ac;
        float cJ;
    }

    public ROR(double d2, int i, double d3, String str, iMK imk) {
        this.cJ = new ac(d2, i, d3, str, imk);
    }

    public void Qhi(Qhi qhi) {
        this.CJ = qhi;
    }

    public void Qhi() {
        this.cJ.Qhi();
    }

    public void Qhi(com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar, float f2, float f3) {
        if (hmVar != null) {
            this.ac = hmVar;
        }
        com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar2 = this.ac;
        float Sf = hmVar2.Sf();
        float hm = hmVar2.hm();
        float f4 = TextUtils.equals(hmVar2.WAv().fl().Eh(), "fixed") ? hm : 65536.0f;
        this.cJ.Qhi();
        this.cJ.ac(hmVar2, Sf, f4);
        ac.C0190ac Qhi2 = this.cJ.Qhi(hmVar2);
        com.bytedance.sdk.component.adexpress.dynamic.ac.cJ cJVar = new com.bytedance.sdk.component.adexpress.dynamic.ac.cJ();
        cJVar.Qhi = f2;
        cJVar.cJ = f3;
        if (Qhi2 != null) {
            Sf = Qhi2.Qhi;
        }
        cJVar.ac = Sf;
        if (Qhi2 != null) {
            hm = Qhi2.cJ;
        }
        cJVar.CJ = hm;
        cJVar.fl = "root";
        cJVar.hm = 1280.0f;
        cJVar.Tgh = hmVar2;
        cJVar.Tgh.ac(cJVar.Qhi);
        cJVar.Tgh.CJ(cJVar.cJ);
        cJVar.Tgh.fl(cJVar.ac);
        cJVar.Tgh.Tgh(cJVar.CJ);
        com.bytedance.sdk.component.adexpress.dynamic.ac.cJ Qhi3 = Qhi(cJVar, 0.0f);
        this.Qhi = Qhi3;
        Qhi(Qhi3);
    }

    public void Qhi(com.bytedance.sdk.component.adexpress.dynamic.ac.cJ cJVar) {
        if (cJVar == null) {
            return;
        }
        cJVar.Tgh.WAv().cJ();
        float f2 = cJVar.ac;
        float f3 = cJVar.CJ;
        float f4 = cJVar.Qhi;
        float f5 = cJVar.cJ;
        List<List<com.bytedance.sdk.component.adexpress.dynamic.ac.cJ>> list = cJVar.ROR;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (List<com.bytedance.sdk.component.adexpress.dynamic.ac.cJ> list2 : list) {
            if (list2 != null && list2.size() > 0) {
                for (com.bytedance.sdk.component.adexpress.dynamic.ac.cJ cJVar2 : list2) {
                    Qhi(cJVar2);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x039b  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x03af  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.bytedance.sdk.component.adexpress.dynamic.ac.cJ Qhi(com.bytedance.sdk.component.adexpress.dynamic.ac.cJ r37, float r38) {
        /*
            Method dump skipped, instructions count: 1003
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.adexpress.dynamic.CJ.ROR.Qhi(com.bytedance.sdk.component.adexpress.dynamic.ac.cJ, float):com.bytedance.sdk.component.adexpress.dynamic.ac.cJ");
    }

    private com.bytedance.sdk.component.adexpress.dynamic.ac.WAv Qhi(com.bytedance.sdk.component.adexpress.dynamic.ac.ROR ror, ac.C0190ac c0190ac, ac.C0190ac c0190ac2) {
        float PER = ror.PER();
        float et = ror.et();
        float Gy = ror.Gy();
        float SL = ror.SL();
        boolean ots = ror.ots();
        boolean HLI = ror.HLI();
        boolean oU = ror.oU();
        boolean pv = ror.pv();
        if (!ots) {
            if (HLI) {
                PER = ((this.CJ.Qhi != 0.0f ? Math.min(this.CJ.Qhi, c0190ac.Qhi) : c0190ac.Qhi) - Gy) - c0190ac2.Qhi;
            } else {
                PER = 0.0f;
            }
        }
        if (!oU) {
            if (pv) {
                et = ((this.CJ.cJ != 0.0f ? this.CJ.cJ : c0190ac.cJ) - SL) - c0190ac2.cJ;
            } else {
                et = 0.0f;
            }
        }
        return new com.bytedance.sdk.component.adexpress.dynamic.ac.WAv(PER, et);
    }

    private com.bytedance.sdk.component.adexpress.dynamic.ac.WAv Qhi(com.bytedance.sdk.component.adexpress.dynamic.ac.cJ cJVar, com.bytedance.sdk.component.adexpress.dynamic.ac.ROR ror, float f2, float f3) {
        float f4;
        float f5;
        float f6 = cJVar.Qhi;
        float f7 = cJVar.cJ;
        float PER = ror.PER();
        float et = ror.et();
        float Gy = ror.Gy();
        float SL = ror.SL();
        boolean ots = ror.ots();
        boolean HLI = ror.HLI();
        boolean oU = ror.oU();
        boolean pv = ror.pv();
        String zjb = ror.zjb();
        float f8 = cJVar.ac;
        float f9 = cJVar.CJ;
        if (TextUtils.equals(zjb, "0")) {
            if (ots) {
                f6 = cJVar.Qhi + PER;
            } else if (HLI) {
                f6 = ((cJVar.Qhi + f8) - Gy) - f2;
            }
            if (oU) {
                f5 = cJVar.cJ;
                f7 = f5 + et;
            } else if (pv) {
                f4 = cJVar.cJ;
                f7 = ((f4 + f9) - SL) - f3;
            }
        } else if (TextUtils.equals(zjb, IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE)) {
            f6 = cJVar.Qhi + ((f8 - f2) / 2.0f);
            if (oU) {
                f5 = cJVar.cJ;
                f7 = f5 + et;
            } else if (pv) {
                f4 = cJVar.cJ;
                f7 = ((f4 + f9) - SL) - f3;
            }
        } else if (TextUtils.equals(zjb, "2")) {
            f7 = cJVar.cJ + ((f9 - f3) / 2.0f);
            if (ots) {
                f6 = cJVar.Qhi + PER;
            } else if (HLI) {
                f6 = ((cJVar.Qhi + f8) - Gy) - f2;
            }
        } else if (TextUtils.equals(zjb, ExifInterface.GPS_MEASUREMENT_3D)) {
            f6 = cJVar.Qhi + ((f8 - f2) / 2.0f);
            f7 = cJVar.cJ + ((f9 - f3) / 2.0f);
        }
        return new com.bytedance.sdk.component.adexpress.dynamic.ac.WAv(f6, f7);
    }
}

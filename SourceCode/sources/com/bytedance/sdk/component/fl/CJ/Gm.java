package com.bytedance.sdk.component.fl.CJ;

import android.graphics.Bitmap;
import com.bytedance.sdk.component.fl.ac.ac;
import com.bytedance.sdk.component.fl.ac.cJ.Qhi;
/* compiled from: DecoderVisitor.java */
/* loaded from: classes2.dex */
public class Gm extends ROR {
    private byte[] Qhi;
    private com.bytedance.sdk.component.fl.ROR cJ;

    public Gm(byte[] bArr, com.bytedance.sdk.component.fl.ROR ror) {
        this.Qhi = bArr;
        this.cJ = ror;
    }

    @Override // com.bytedance.sdk.component.fl.CJ.pA
    public void Qhi(ac acVar) {
        com.bytedance.sdk.component.fl.ac.ROR tP = acVar.tP();
        Qhi Qhi = tP.Qhi(acVar);
        try {
            acVar.EBS();
            Bitmap Qhi2 = Qhi.Qhi(this.Qhi);
            if (Qhi2 != null) {
                acVar.Qhi(new tP(Qhi2, this.cJ, false));
                tP.Qhi(acVar.MQ()).Qhi(acVar.fl(), Qhi2);
                return;
            }
            Qhi(1002, "decode failed bitmap null", null, acVar);
        } catch (Throwable th) {
            Qhi(1002, "decode failed:" + th.getMessage(), th, acVar);
        }
    }

    private void Qhi(int i, String str, Throwable th, ac acVar) {
        if (this.cJ == null) {
            acVar.Qhi(new HzH());
        } else {
            acVar.Qhi(new iMK(i, str, th));
        }
    }

    @Override // com.bytedance.sdk.component.fl.CJ.pA
    public String Qhi() {
        return "decode";
    }
}

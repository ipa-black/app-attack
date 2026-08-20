package com.bytedance.adsdk.lottie.Qhi.Qhi;

import android.graphics.Path;
import com.bytedance.adsdk.lottie.Qhi.cJ.Qhi;
import com.bytedance.adsdk.lottie.ac.cJ.MQ;
import java.util.ArrayList;
import java.util.List;
/* compiled from: ShapeContent.java */
/* loaded from: classes2.dex */
public class tP implements iMK, Qhi.InterfaceC0175Qhi {
    private final com.bytedance.adsdk.lottie.hm CJ;
    private final Path Qhi = new Path();
    private final cJ ROR = new cJ();
    private boolean Tgh;
    private final boolean ac;
    private final String cJ;
    private final com.bytedance.adsdk.lottie.Qhi.cJ.iMK fl;

    public tP(com.bytedance.adsdk.lottie.hm hmVar, com.bytedance.adsdk.lottie.ac.ac.Qhi qhi, com.bytedance.adsdk.lottie.ac.cJ.kYc kyc) {
        this.cJ = kyc.Qhi();
        this.ac = kyc.ac();
        this.CJ = hmVar;
        com.bytedance.adsdk.lottie.Qhi.cJ.iMK Qhi = kyc.cJ().Qhi();
        this.fl = Qhi;
        qhi.Qhi(Qhi);
        Qhi.Qhi(this);
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.InterfaceC0175Qhi
    public void Qhi() {
        cJ();
    }

    private void cJ() {
        this.Tgh = false;
        this.CJ.invalidateSelf();
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.ac
    public void Qhi(List<ac> list, List<ac> list2) {
        ArrayList arrayList = null;
        for (int i = 0; i < list.size(); i++) {
            ac acVar = list.get(i);
            if (acVar instanceof EBS) {
                EBS ebs = (EBS) acVar;
                if (ebs.cJ() == MQ.Qhi.SIMULTANEOUSLY) {
                    this.ROR.Qhi(ebs);
                    ebs.Qhi(this);
                }
            }
            if (acVar instanceof MQ) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add((MQ) acVar);
            }
        }
        this.fl.Qhi((List<MQ>) arrayList);
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.iMK
    public Path CJ() {
        if (this.Tgh) {
            return this.Qhi;
        }
        this.Qhi.reset();
        if (this.ac) {
            this.Tgh = true;
            return this.Qhi;
        }
        Path ROR = this.fl.ROR();
        if (ROR == null) {
            return this.Qhi;
        }
        this.Qhi.set(ROR);
        this.Qhi.setFillType(Path.FillType.EVEN_ODD);
        this.ROR.Qhi(this.Qhi);
        this.Tgh = true;
        return this.Qhi;
    }
}

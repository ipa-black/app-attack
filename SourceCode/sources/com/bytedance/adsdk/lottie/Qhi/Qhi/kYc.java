package com.bytedance.adsdk.lottie.Qhi.Qhi;

import android.graphics.PointF;
import com.bytedance.adsdk.lottie.Qhi.cJ.Qhi;
import java.util.ArrayList;
import java.util.List;
/* compiled from: RoundedCornersContent.java */
/* loaded from: classes2.dex */
public class kYc implements MQ, Qhi.InterfaceC0175Qhi {
    private com.bytedance.adsdk.lottie.ac.cJ.pA CJ;
    private final com.bytedance.adsdk.lottie.hm Qhi;
    private final com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Float, Float> ac;
    private final String cJ;

    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.ac
    public void Qhi(List<ac> list, List<ac> list2) {
    }

    public kYc(com.bytedance.adsdk.lottie.hm hmVar, com.bytedance.adsdk.lottie.ac.ac.Qhi qhi, com.bytedance.adsdk.lottie.ac.cJ.iMK imk) {
        this.Qhi = hmVar;
        this.cJ = imk.Qhi();
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Float, Float> Qhi = imk.cJ().Qhi();
        this.ac = Qhi;
        qhi.Qhi(Qhi);
        Qhi.Qhi(this);
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.InterfaceC0175Qhi
    public void Qhi() {
        this.Qhi.invalidateSelf();
    }

    public com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Float, Float> cJ() {
        return this.ac;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x009c, code lost:
        if (r7 == (r0.size() - 1)) goto L23;
     */
    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.MQ
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.bytedance.adsdk.lottie.ac.cJ.pA Qhi(com.bytedance.adsdk.lottie.ac.cJ.pA r19) {
        /*
            Method dump skipped, instructions count: 431
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.lottie.Qhi.Qhi.kYc.Qhi(com.bytedance.adsdk.lottie.ac.cJ.pA):com.bytedance.adsdk.lottie.ac.cJ.pA");
    }

    private com.bytedance.adsdk.lottie.ac.cJ.pA cJ(com.bytedance.adsdk.lottie.ac.cJ.pA pAVar) {
        List<com.bytedance.adsdk.lottie.ac.Qhi> ac = pAVar.ac();
        boolean cJ = pAVar.cJ();
        int size = ac.size() - 1;
        int i = 0;
        while (size >= 0) {
            com.bytedance.adsdk.lottie.ac.Qhi qhi = ac.get(size);
            com.bytedance.adsdk.lottie.ac.Qhi qhi2 = ac.get(Qhi(size - 1, ac.size()));
            PointF ac2 = (size != 0 || cJ) ? qhi2.ac() : pAVar.Qhi();
            i = (((size != 0 || cJ) ? qhi2.cJ() : ac2).equals(ac2) && qhi.Qhi().equals(ac2) && !(!pAVar.cJ() && size == 0 && size == ac.size() - 1)) ? i + 2 : i + 1;
            size--;
        }
        com.bytedance.adsdk.lottie.ac.cJ.pA pAVar2 = this.CJ;
        if (pAVar2 == null || pAVar2.ac().size() != i) {
            ArrayList arrayList = new ArrayList(i);
            for (int i2 = 0; i2 < i; i2++) {
                arrayList.add(new com.bytedance.adsdk.lottie.ac.Qhi());
            }
            this.CJ = new com.bytedance.adsdk.lottie.ac.cJ.pA(new PointF(0.0f, 0.0f), false, arrayList);
        }
        this.CJ.Qhi(cJ);
        return this.CJ;
    }

    private static int Qhi(int i, int i2) {
        return i - (cJ(i, i2) * i2);
    }

    private static int cJ(int i, int i2) {
        int i3 = i / i2;
        return ((i ^ i2) >= 0 || i2 * i3 == i) ? i3 : i3 - 1;
    }
}

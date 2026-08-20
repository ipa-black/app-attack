package com.bytedance.adsdk.lottie.Qhi.Qhi;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.bytedance.adsdk.lottie.Qhi.cJ.Qhi;
import java.util.ArrayList;
import java.util.List;
/* compiled from: ContentGroup.java */
/* loaded from: classes2.dex */
public class fl implements Tgh, iMK, Qhi.InterfaceC0175Qhi {
    private final Path CJ;
    private com.bytedance.adsdk.lottie.Qhi.cJ.HzH Gm;
    private final Paint Qhi;
    private final boolean ROR;
    private final List<ac> Sf;
    private final String Tgh;
    private List<iMK> WAv;
    private final Matrix ac;
    private final RectF cJ;
    private final RectF fl;
    private final com.bytedance.adsdk.lottie.hm hm;

    private static List<ac> Qhi(com.bytedance.adsdk.lottie.hm hmVar, com.bytedance.adsdk.lottie.ROR ror, com.bytedance.adsdk.lottie.ac.ac.Qhi qhi, List<com.bytedance.adsdk.lottie.ac.cJ.ac> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (int i = 0; i < list.size(); i++) {
            ac Qhi = list.get(i).Qhi(hmVar, ror, qhi);
            if (Qhi != null) {
                arrayList.add(Qhi);
            }
        }
        return arrayList;
    }

    static com.bytedance.adsdk.lottie.ac.Qhi.ABk Qhi(List<com.bytedance.adsdk.lottie.ac.cJ.ac> list) {
        for (int i = 0; i < list.size(); i++) {
            com.bytedance.adsdk.lottie.ac.cJ.ac acVar = list.get(i);
            if (acVar instanceof com.bytedance.adsdk.lottie.ac.Qhi.ABk) {
                return (com.bytedance.adsdk.lottie.ac.Qhi.ABk) acVar;
            }
        }
        return null;
    }

    public fl(com.bytedance.adsdk.lottie.hm hmVar, com.bytedance.adsdk.lottie.ac.ac.Qhi qhi, com.bytedance.adsdk.lottie.ac.cJ.HzH hzH, com.bytedance.adsdk.lottie.ROR ror) {
        this(hmVar, qhi, hzH.Qhi(), hzH.ac(), Qhi(hmVar, ror, qhi, hzH.cJ()), Qhi(hzH.cJ()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public fl(com.bytedance.adsdk.lottie.hm hmVar, com.bytedance.adsdk.lottie.ac.ac.Qhi qhi, String str, boolean z, List<ac> list, com.bytedance.adsdk.lottie.ac.Qhi.ABk aBk) {
        this.Qhi = new com.bytedance.adsdk.lottie.Qhi.Qhi();
        this.cJ = new RectF();
        this.ac = new Matrix();
        this.CJ = new Path();
        this.fl = new RectF();
        this.Tgh = str;
        this.hm = hmVar;
        this.ROR = z;
        this.Sf = list;
        if (aBk != null) {
            com.bytedance.adsdk.lottie.Qhi.cJ.HzH WAv = aBk.WAv();
            this.Gm = WAv;
            WAv.Qhi(qhi);
            this.Gm.Qhi(this);
        }
        ArrayList arrayList = new ArrayList();
        for (int size = list.size() - 1; size >= 0; size--) {
            ac acVar = list.get(size);
            if (acVar instanceof Gm) {
                arrayList.add((Gm) acVar);
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            ((Gm) arrayList.get(size2)).Qhi(list.listIterator(list.size()));
        }
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.InterfaceC0175Qhi
    public void Qhi() {
        this.hm.invalidateSelf();
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.ac
    public void Qhi(List<ac> list, List<ac> list2) {
        ArrayList arrayList = new ArrayList(list.size() + this.Sf.size());
        arrayList.addAll(list);
        for (int size = this.Sf.size() - 1; size >= 0; size--) {
            ac acVar = this.Sf.get(size);
            acVar.Qhi(arrayList, this.Sf.subList(0, size));
            arrayList.add(acVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<iMK> cJ() {
        if (this.WAv == null) {
            this.WAv = new ArrayList();
            for (int i = 0; i < this.Sf.size(); i++) {
                ac acVar = this.Sf.get(i);
                if (acVar instanceof iMK) {
                    this.WAv.add((iMK) acVar);
                }
            }
        }
        return this.WAv;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Matrix ac() {
        com.bytedance.adsdk.lottie.Qhi.cJ.HzH hzH = this.Gm;
        if (hzH != null) {
            return hzH.CJ();
        }
        this.ac.reset();
        return this.ac;
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.iMK
    public Path CJ() {
        this.ac.reset();
        com.bytedance.adsdk.lottie.Qhi.cJ.HzH hzH = this.Gm;
        if (hzH != null) {
            this.ac.set(hzH.CJ());
        }
        this.CJ.reset();
        if (this.ROR) {
            return this.CJ;
        }
        for (int size = this.Sf.size() - 1; size >= 0; size--) {
            ac acVar = this.Sf.get(size);
            if (acVar instanceof iMK) {
                this.CJ.addPath(((iMK) acVar).CJ(), this.ac);
            }
        }
        return this.CJ;
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.Tgh
    public void Qhi(Canvas canvas, Matrix matrix, int i) {
        if (this.ROR) {
            return;
        }
        this.ac.set(matrix);
        com.bytedance.adsdk.lottie.Qhi.cJ.HzH hzH = this.Gm;
        if (hzH != null) {
            this.ac.preConcat(hzH.CJ());
            i = (int) (((((this.Gm.Qhi() == null ? 100 : this.Gm.Qhi().ROR().intValue()) / 100.0f) * i) / 255.0f) * 255.0f);
        }
        boolean z = this.hm.ROR() && fl() && i != 255;
        if (z) {
            this.cJ.set(0.0f, 0.0f, 0.0f, 0.0f);
            Qhi(this.cJ, this.ac, true);
            this.Qhi.setAlpha(i);
            com.bytedance.adsdk.lottie.Tgh.ROR.Qhi(canvas, this.cJ, this.Qhi);
        }
        if (z) {
            i = 255;
        }
        for (int size = this.Sf.size() - 1; size >= 0; size--) {
            ac acVar = this.Sf.get(size);
            if (acVar instanceof Tgh) {
                ((Tgh) acVar).Qhi(canvas, this.ac, i);
            }
        }
        if (z) {
            canvas.restore();
        }
    }

    private boolean fl() {
        int i = 0;
        for (int i2 = 0; i2 < this.Sf.size(); i2++) {
            if ((this.Sf.get(i2) instanceof Tgh) && (i = i + 1) >= 2) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.Tgh
    public void Qhi(RectF rectF, Matrix matrix, boolean z) {
        this.ac.set(matrix);
        com.bytedance.adsdk.lottie.Qhi.cJ.HzH hzH = this.Gm;
        if (hzH != null) {
            this.ac.preConcat(hzH.CJ());
        }
        this.fl.set(0.0f, 0.0f, 0.0f, 0.0f);
        for (int size = this.Sf.size() - 1; size >= 0; size--) {
            ac acVar = this.Sf.get(size);
            if (acVar instanceof Tgh) {
                ((Tgh) acVar).Qhi(this.fl, this.ac, z);
                rectF.union(this.fl);
            }
        }
    }
}

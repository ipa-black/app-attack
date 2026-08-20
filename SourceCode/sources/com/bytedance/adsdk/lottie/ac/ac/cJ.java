package com.bytedance.adsdk.lottie.ac.ac;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.LongSparseArray;
import com.bytedance.adsdk.lottie.ac.ac.fl;
import java.util.ArrayList;
import java.util.List;
/* compiled from: CompositionLayer.java */
/* loaded from: classes2.dex */
public class cJ extends Qhi {
    private final Paint Gm;
    private com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Float, Float> ROR;
    private final List<Qhi> Sf;
    private final RectF WAv;
    private final RectF hm;
    private boolean zc;

    public cJ(com.bytedance.adsdk.lottie.hm hmVar, fl flVar, List<fl> list, com.bytedance.adsdk.lottie.ROR ror) {
        super(hmVar, flVar);
        int i;
        Qhi qhi;
        fl.cJ zc;
        int i2;
        this.Sf = new ArrayList();
        this.hm = new RectF();
        this.WAv = new RectF();
        this.Gm = new Paint();
        this.zc = true;
        com.bytedance.adsdk.lottie.ac.Qhi.cJ qMt = flVar.qMt();
        if (qMt != null) {
            com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Float, Float> Qhi = qMt.Qhi();
            this.ROR = Qhi;
            Qhi(Qhi);
            this.ROR.Qhi(this);
        } else {
            this.ROR = null;
        }
        LongSparseArray longSparseArray = new LongSparseArray(ror.hm().size());
        int size = list.size() - 1;
        Qhi qhi2 = null;
        while (true) {
            if (size < 0) {
                break;
            }
            fl flVar2 = list.get(size);
            Qhi Qhi2 = Qhi.Qhi(this, flVar2, hmVar, ror);
            if (Qhi2 != null) {
                longSparseArray.put(Qhi2.cJ().fl(), Qhi2);
                if (qhi2 != null) {
                    qhi2.Qhi(Qhi2);
                    qhi2 = null;
                } else {
                    this.Sf.add(0, Qhi2);
                    if (flVar2 != null && (zc = flVar2.zc()) != null && ((i2 = AnonymousClass1.Qhi[zc.ordinal()]) == 1 || i2 == 2)) {
                        qhi2 = Qhi2;
                    }
                }
            }
            size--;
        }
        for (i = 0; i < longSparseArray.size(); i++) {
            Qhi qhi3 = (Qhi) longSparseArray.get(longSparseArray.keyAt(i));
            if (qhi3 != null && (qhi = (Qhi) longSparseArray.get(qhi3.cJ().ABk())) != null) {
                qhi3.cJ(qhi);
            }
        }
    }

    /* compiled from: CompositionLayer.java */
    /* renamed from: com.bytedance.adsdk.lottie.ac.ac.cJ$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] Qhi;

        static {
            int[] iArr = new int[fl.cJ.values().length];
            Qhi = iArr;
            try {
                iArr[fl.cJ.ADD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                Qhi[fl.cJ.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public void cJ(boolean z) {
        this.zc = z;
    }

    @Override // com.bytedance.adsdk.lottie.ac.ac.Qhi
    public void Qhi(boolean z) {
        super.Qhi(z);
        for (Qhi qhi : this.Sf) {
            qhi.Qhi(z);
        }
    }

    @Override // com.bytedance.adsdk.lottie.ac.ac.Qhi
    void cJ(Canvas canvas, Matrix matrix, int i) {
        com.bytedance.adsdk.lottie.Tgh.Qhi("CompositionLayer#draw");
        this.WAv.set(0.0f, 0.0f, this.ac.Sf(), this.ac.hm());
        matrix.mapRect(this.WAv);
        boolean z = this.cJ.ROR() && this.Sf.size() > 1 && i != 255;
        if (z) {
            this.Gm.setAlpha(i);
            com.bytedance.adsdk.lottie.Tgh.ROR.Qhi(canvas, this.WAv, this.Gm);
        } else {
            canvas.save();
        }
        if (z) {
            i = 255;
        }
        for (int size = this.Sf.size() - 1; size >= 0; size--) {
            if (((this.zc || !"__container".equals(this.ac.Tgh())) && !this.WAv.isEmpty()) ? canvas.clipRect(this.WAv) : true) {
                this.Sf.get(size).Qhi(canvas, matrix, i);
            }
        }
        canvas.restore();
        com.bytedance.adsdk.lottie.Tgh.cJ("CompositionLayer#draw");
    }

    @Override // com.bytedance.adsdk.lottie.ac.ac.Qhi, com.bytedance.adsdk.lottie.Qhi.Qhi.Tgh
    public void Qhi(RectF rectF, Matrix matrix, boolean z) {
        super.Qhi(rectF, matrix, z);
        for (int size = this.Sf.size() - 1; size >= 0; size--) {
            this.hm.set(0.0f, 0.0f, 0.0f, 0.0f);
            this.Sf.get(size).Qhi(this.hm, this.Qhi, true);
            rectF.union(this.hm);
        }
    }

    @Override // com.bytedance.adsdk.lottie.ac.ac.Qhi
    public void Qhi(float f2) {
        super.Qhi(f2);
        if (this.ROR != null) {
            f2 = ((this.ROR.ROR().floatValue() * this.ac.Qhi().Sf()) - this.ac.Qhi().Tgh()) / (this.cJ.EBS().ABk() + 0.01f);
        }
        if (this.ROR == null) {
            f2 -= this.ac.ac();
        }
        if (this.ac.cJ() != 0.0f && !"__container".equals(this.ac.Tgh())) {
            f2 /= this.ac.cJ();
        }
        for (int size = this.Sf.size() - 1; size >= 0; size--) {
            this.Sf.get(size).Qhi(f2);
        }
    }
}

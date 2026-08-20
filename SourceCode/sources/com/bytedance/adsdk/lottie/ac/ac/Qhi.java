package com.bytedance.adsdk.lottie.ac.ac;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import androidx.core.view.ViewCompat;
import com.bytedance.adsdk.lottie.Qhi.cJ.HzH;
import com.bytedance.adsdk.lottie.Qhi.cJ.Qhi;
import com.bytedance.adsdk.lottie.ac.ac.fl;
import com.bytedance.adsdk.lottie.ac.cJ.hm;
import com.bytedance.adsdk.lottie.ac.cJ.pA;
import com.bytedance.adsdk.lottie.fl.Gm;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: BaseLayer.java */
/* loaded from: classes2.dex */
public abstract class Qhi implements com.bytedance.adsdk.lottie.Qhi.Qhi.Tgh, Qhi.InterfaceC0175Qhi {
    private final Paint ABk;
    final HzH CJ;
    private List<Qhi> CQU;
    private Qhi Dww;
    private com.bytedance.adsdk.lottie.Qhi.cJ.fl EBS;
    private boolean Eh;
    private final RectF HzH;
    private final String MQ;
    private Paint NFd;
    final Matrix Qhi;
    BlurMaskFilter Tgh;
    private boolean aP;
    final fl ac;
    private Qhi bxS;
    final com.bytedance.adsdk.lottie.hm cJ;
    float fl;
    private final RectF hpZ;
    private final Paint iMK;
    private final RectF kYc;
    private final RectF pA;
    private final List<com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, ?>> pM;
    private com.bytedance.adsdk.lottie.Qhi.cJ.hm qMt;
    private final RectF tP;
    private final Path ROR = new Path();
    private final Matrix Sf = new Matrix();
    private final Matrix hm = new Matrix();
    private final Paint WAv = new com.bytedance.adsdk.lottie.Qhi.Qhi(1);
    private final Paint Gm = new com.bytedance.adsdk.lottie.Qhi.Qhi(1, PorterDuff.Mode.DST_IN);
    private final Paint zc = new com.bytedance.adsdk.lottie.Qhi.Qhi(1, PorterDuff.Mode.DST_OUT);

    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.ac
    public void Qhi(List<com.bytedance.adsdk.lottie.Qhi.Qhi.ac> list, List<com.bytedance.adsdk.lottie.Qhi.Qhi.ac> list2) {
    }

    abstract void cJ(Canvas canvas, Matrix matrix, int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Qhi Qhi(cJ cJVar, fl flVar, com.bytedance.adsdk.lottie.hm hmVar, com.bytedance.adsdk.lottie.ROR ror) {
        switch (AnonymousClass2.Qhi[flVar.Gm().ordinal()]) {
            case 1:
                return new ROR(hmVar, flVar, cJVar, ror);
            case 2:
                return new cJ(hmVar, flVar, ror.cJ(flVar.ROR()), ror);
            case 3:
                return new Sf(hmVar, flVar);
            case 4:
                return new ac(hmVar, flVar);
            case 5:
                return new Tgh(hmVar, flVar);
            case 6:
                return new hm(hmVar, flVar);
            default:
                new StringBuilder("Unknown layer type ").append(flVar.Gm());
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Qhi(com.bytedance.adsdk.lottie.hm hmVar, fl flVar) {
        com.bytedance.adsdk.lottie.Qhi.Qhi qhi = new com.bytedance.adsdk.lottie.Qhi.Qhi(1);
        this.ABk = qhi;
        this.iMK = new com.bytedance.adsdk.lottie.Qhi.Qhi(PorterDuff.Mode.CLEAR);
        this.pA = new RectF();
        this.hpZ = new RectF();
        this.HzH = new RectF();
        this.kYc = new RectF();
        this.tP = new RectF();
        this.Qhi = new Matrix();
        this.pM = new ArrayList();
        this.Eh = true;
        this.fl = 0.0f;
        this.cJ = hmVar;
        this.ac = flVar;
        this.MQ = flVar.Tgh() + "#draw";
        if (flVar.zc() == fl.cJ.INVERT) {
            qhi.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        } else {
            qhi.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        }
        HzH WAv = flVar.pA().WAv();
        this.CJ = WAv;
        WAv.Qhi((Qhi.InterfaceC0175Qhi) this);
        if (flVar.WAv() != null && !flVar.WAv().isEmpty()) {
            com.bytedance.adsdk.lottie.Qhi.cJ.hm hmVar2 = new com.bytedance.adsdk.lottie.Qhi.cJ.hm(flVar.WAv());
            this.qMt = hmVar2;
            for (com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<pA, Path> qhi2 : hmVar2.cJ()) {
                qhi2.Qhi(this);
            }
            for (com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Integer, Integer> qhi3 : this.qMt.ac()) {
                Qhi(qhi3);
                qhi3.Qhi(this);
            }
        }
        Sf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi(boolean z) {
        if (z && this.NFd == null) {
            this.NFd = new com.bytedance.adsdk.lottie.Qhi.Qhi();
        }
        this.aP = z;
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.InterfaceC0175Qhi
    public void Qhi() {
        hm();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public fl cJ() {
        return this.ac;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi(Qhi qhi) {
        this.bxS = qhi;
    }

    boolean ac() {
        return this.bxS != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void cJ(Qhi qhi) {
        this.Dww = qhi;
    }

    private void Sf() {
        if (!this.ac.CJ().isEmpty()) {
            com.bytedance.adsdk.lottie.Qhi.cJ.fl flVar = new com.bytedance.adsdk.lottie.Qhi.cJ.fl(this.ac.CJ());
            this.EBS = flVar;
            flVar.Qhi();
            this.EBS.Qhi(new Qhi.InterfaceC0175Qhi() { // from class: com.bytedance.adsdk.lottie.ac.ac.Qhi.1
                @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.InterfaceC0175Qhi
                public void Qhi() {
                    Qhi qhi = Qhi.this;
                    qhi.cJ(qhi.EBS.hm() == 1.0f);
                }
            });
            cJ(this.EBS.ROR().floatValue() == 1.0f);
            Qhi(this.EBS);
            return;
        }
        cJ(true);
    }

    private void hm() {
        this.cJ.invalidateSelf();
    }

    public void Qhi(com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, ?> qhi) {
        if (qhi == null) {
            return;
        }
        this.pM.add(qhi);
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.Tgh
    public void Qhi(RectF rectF, Matrix matrix, boolean z) {
        this.pA.set(0.0f, 0.0f, 0.0f, 0.0f);
        Gm();
        this.Qhi.set(matrix);
        if (z) {
            List<Qhi> list = this.CQU;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.Qhi.preConcat(this.CQU.get(size).CJ.CJ());
                }
            } else {
                Qhi qhi = this.Dww;
                if (qhi != null) {
                    this.Qhi.preConcat(qhi.CJ.CJ());
                }
            }
        }
        this.Qhi.preConcat(this.CJ.CJ());
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.Tgh
    public void Qhi(Canvas canvas, Matrix matrix, int i) {
        Paint paint;
        Integer ROR;
        com.bytedance.adsdk.lottie.Tgh.Qhi(this.MQ);
        if (!this.Eh || this.ac.EBS()) {
            com.bytedance.adsdk.lottie.Tgh.cJ(this.MQ);
            return;
        }
        Gm();
        com.bytedance.adsdk.lottie.Tgh.Qhi("Layer#parentMatrix");
        this.Sf.reset();
        this.Sf.set(matrix);
        for (int size = this.CQU.size() - 1; size >= 0; size--) {
            this.Sf.preConcat(this.CQU.get(size).CJ.CJ());
        }
        com.bytedance.adsdk.lottie.Tgh.cJ("Layer#parentMatrix");
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, Integer> Qhi = this.CJ.Qhi();
        int intValue = (int) ((((i / 255.0f) * ((Qhi == null || (ROR = Qhi.ROR()) == null) ? 100 : ROR.intValue())) / 100.0f) * 255.0f);
        if (!ac() && !CJ()) {
            this.Sf.preConcat(this.CJ.CJ());
            com.bytedance.adsdk.lottie.Tgh.Qhi("Layer#drawLayer");
            cJ(canvas, this.Sf, intValue);
            com.bytedance.adsdk.lottie.Tgh.cJ("Layer#drawLayer");
            ac(com.bytedance.adsdk.lottie.Tgh.cJ(this.MQ));
            return;
        }
        com.bytedance.adsdk.lottie.Tgh.Qhi("Layer#computeBounds");
        Qhi(this.pA, this.Sf, false);
        cJ(this.pA, matrix);
        this.Sf.preConcat(this.CJ.CJ());
        Qhi(this.pA, this.Sf);
        this.hpZ.set(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight());
        canvas.getMatrix(this.hm);
        if (!this.hm.isIdentity()) {
            Matrix matrix2 = this.hm;
            matrix2.invert(matrix2);
            this.hm.mapRect(this.hpZ);
        }
        if (!this.pA.intersect(this.hpZ)) {
            this.pA.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
        com.bytedance.adsdk.lottie.Tgh.cJ("Layer#computeBounds");
        if (this.pA.width() >= 1.0f && this.pA.height() >= 1.0f) {
            com.bytedance.adsdk.lottie.Tgh.Qhi("Layer#saveLayer");
            this.WAv.setAlpha(255);
            com.bytedance.adsdk.lottie.Tgh.ROR.Qhi(canvas, this.pA, this.WAv);
            com.bytedance.adsdk.lottie.Tgh.cJ("Layer#saveLayer");
            Qhi(canvas);
            com.bytedance.adsdk.lottie.Tgh.Qhi("Layer#drawLayer");
            cJ(canvas, this.Sf, intValue);
            com.bytedance.adsdk.lottie.Tgh.cJ("Layer#drawLayer");
            if (CJ()) {
                Qhi(canvas, this.Sf);
            }
            if (ac()) {
                com.bytedance.adsdk.lottie.Tgh.Qhi("Layer#drawMatte");
                com.bytedance.adsdk.lottie.Tgh.Qhi("Layer#saveLayer");
                com.bytedance.adsdk.lottie.Tgh.ROR.Qhi(canvas, this.pA, this.ABk, 19);
                com.bytedance.adsdk.lottie.Tgh.cJ("Layer#saveLayer");
                Qhi(canvas);
                this.bxS.Qhi(canvas, matrix, intValue);
                com.bytedance.adsdk.lottie.Tgh.Qhi("Layer#restoreLayer");
                canvas.restore();
                com.bytedance.adsdk.lottie.Tgh.cJ("Layer#restoreLayer");
                com.bytedance.adsdk.lottie.Tgh.cJ("Layer#drawMatte");
            }
            com.bytedance.adsdk.lottie.Tgh.Qhi("Layer#restoreLayer");
            canvas.restore();
            com.bytedance.adsdk.lottie.Tgh.cJ("Layer#restoreLayer");
        }
        if (this.aP && (paint = this.NFd) != null) {
            paint.setStyle(Paint.Style.STROKE);
            this.NFd.setColor(-251901);
            this.NFd.setStrokeWidth(4.0f);
            canvas.drawRect(this.pA, this.NFd);
            this.NFd.setStyle(Paint.Style.FILL);
            this.NFd.setColor(1357638635);
            canvas.drawRect(this.pA, this.NFd);
        }
        ac(com.bytedance.adsdk.lottie.Tgh.cJ(this.MQ));
    }

    private void ac(float f2) {
        this.cJ.EBS().ac().Qhi(this.ac.Tgh(), f2);
    }

    private void Qhi(Canvas canvas) {
        com.bytedance.adsdk.lottie.Tgh.Qhi("Layer#clearLayer");
        canvas.drawRect(this.pA.left - 1.0f, this.pA.top - 1.0f, this.pA.right + 1.0f, this.pA.bottom + 1.0f, this.iMK);
        com.bytedance.adsdk.lottie.Tgh.cJ("Layer#clearLayer");
    }

    private void Qhi(RectF rectF, Matrix matrix) {
        this.HzH.set(0.0f, 0.0f, 0.0f, 0.0f);
        if (CJ()) {
            int size = this.qMt.Qhi().size();
            for (int i = 0; i < size; i++) {
                com.bytedance.adsdk.lottie.ac.cJ.hm hmVar = this.qMt.Qhi().get(i);
                Path ROR = this.qMt.cJ().get(i).ROR();
                if (ROR != null) {
                    this.ROR.set(ROR);
                    this.ROR.transform(matrix);
                    int i2 = AnonymousClass2.cJ[hmVar.Qhi().ordinal()];
                    if (i2 == 1 || i2 == 2) {
                        return;
                    }
                    if ((i2 == 3 || i2 == 4) && hmVar.CJ()) {
                        return;
                    }
                    this.ROR.computeBounds(this.tP, false);
                    if (i == 0) {
                        this.HzH.set(this.tP);
                    } else {
                        RectF rectF2 = this.HzH;
                        rectF2.set(Math.min(rectF2.left, this.tP.left), Math.min(this.HzH.top, this.tP.top), Math.max(this.HzH.right, this.tP.right), Math.max(this.HzH.bottom, this.tP.bottom));
                    }
                }
            }
            if (rectF.intersect(this.HzH)) {
                return;
            }
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseLayer.java */
    /* renamed from: com.bytedance.adsdk.lottie.ac.ac.Qhi$2  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] Qhi;
        static final /* synthetic */ int[] cJ;

        static {
            int[] iArr = new int[hm.Qhi.values().length];
            cJ = iArr;
            try {
                iArr[hm.Qhi.MASK_MODE_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                cJ[hm.Qhi.MASK_MODE_SUBTRACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                cJ[hm.Qhi.MASK_MODE_INTERSECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                cJ[hm.Qhi.MASK_MODE_ADD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[fl.Qhi.values().length];
            Qhi = iArr2;
            try {
                iArr2[fl.Qhi.SHAPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                Qhi[fl.Qhi.PRE_COMP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                Qhi[fl.Qhi.SOLID.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                Qhi[fl.Qhi.IMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                Qhi[fl.Qhi.NULL.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                Qhi[fl.Qhi.TEXT.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                Qhi[fl.Qhi.UNKNOWN.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    private void cJ(RectF rectF, Matrix matrix) {
        if (ac() && this.ac.zc() != fl.cJ.INVERT) {
            this.kYc.set(0.0f, 0.0f, 0.0f, 0.0f);
            this.bxS.Qhi(this.kYc, matrix, true);
            if (rectF.intersect(this.kYc)) {
                return;
            }
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    private void Qhi(Canvas canvas, Matrix matrix) {
        com.bytedance.adsdk.lottie.Tgh.Qhi("Layer#saveLayer");
        com.bytedance.adsdk.lottie.Tgh.ROR.Qhi(canvas, this.pA, this.Gm, 19);
        if (Build.VERSION.SDK_INT < 28) {
            Qhi(canvas);
        }
        com.bytedance.adsdk.lottie.Tgh.cJ("Layer#saveLayer");
        for (int i = 0; i < this.qMt.Qhi().size(); i++) {
            com.bytedance.adsdk.lottie.ac.cJ.hm hmVar = this.qMt.Qhi().get(i);
            com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<pA, Path> qhi = this.qMt.cJ().get(i);
            com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Integer, Integer> qhi2 = this.qMt.ac().get(i);
            int i2 = AnonymousClass2.cJ[hmVar.Qhi().ordinal()];
            if (i2 != 1) {
                if (i2 == 2) {
                    if (i == 0) {
                        this.WAv.setColor(ViewCompat.MEASURED_STATE_MASK);
                        this.WAv.setAlpha(255);
                        canvas.drawRect(this.pA, this.WAv);
                    }
                    if (hmVar.CJ()) {
                        ac(canvas, matrix, qhi, qhi2);
                    } else {
                        Qhi(canvas, matrix, qhi);
                    }
                } else if (i2 != 3) {
                    if (i2 == 4) {
                        if (hmVar.CJ()) {
                            cJ(canvas, matrix, qhi, qhi2);
                        } else {
                            Qhi(canvas, matrix, qhi, qhi2);
                        }
                    }
                } else if (hmVar.CJ()) {
                    fl(canvas, matrix, qhi, qhi2);
                } else {
                    CJ(canvas, matrix, qhi, qhi2);
                }
            } else if (WAv()) {
                this.WAv.setAlpha(255);
                canvas.drawRect(this.pA, this.WAv);
            }
        }
        com.bytedance.adsdk.lottie.Tgh.Qhi("Layer#restoreLayer");
        canvas.restore();
        com.bytedance.adsdk.lottie.Tgh.cJ("Layer#restoreLayer");
    }

    private boolean WAv() {
        if (this.qMt.cJ().isEmpty()) {
            return false;
        }
        for (int i = 0; i < this.qMt.Qhi().size(); i++) {
            if (this.qMt.Qhi().get(i).Qhi() != hm.Qhi.MASK_MODE_NONE) {
                return false;
            }
        }
        return true;
    }

    private void Qhi(Canvas canvas, Matrix matrix, com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<pA, Path> qhi, com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Integer, Integer> qhi2) {
        this.ROR.set(qhi.ROR());
        this.ROR.transform(matrix);
        this.WAv.setAlpha((int) (qhi2.ROR().intValue() * 2.55f));
        canvas.drawPath(this.ROR, this.WAv);
    }

    private void cJ(Canvas canvas, Matrix matrix, com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<pA, Path> qhi, com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Integer, Integer> qhi2) {
        com.bytedance.adsdk.lottie.Tgh.ROR.Qhi(canvas, this.pA, this.WAv);
        canvas.drawRect(this.pA, this.WAv);
        this.ROR.set(qhi.ROR());
        this.ROR.transform(matrix);
        this.WAv.setAlpha((int) (qhi2.ROR().intValue() * 2.55f));
        canvas.drawPath(this.ROR, this.zc);
        canvas.restore();
    }

    private void Qhi(Canvas canvas, Matrix matrix, com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<pA, Path> qhi) {
        this.ROR.set(qhi.ROR());
        this.ROR.transform(matrix);
        canvas.drawPath(this.ROR, this.zc);
    }

    private void ac(Canvas canvas, Matrix matrix, com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<pA, Path> qhi, com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Integer, Integer> qhi2) {
        com.bytedance.adsdk.lottie.Tgh.ROR.Qhi(canvas, this.pA, this.zc);
        canvas.drawRect(this.pA, this.WAv);
        this.zc.setAlpha((int) (qhi2.ROR().intValue() * 2.55f));
        this.ROR.set(qhi.ROR());
        this.ROR.transform(matrix);
        canvas.drawPath(this.ROR, this.zc);
        canvas.restore();
    }

    private void CJ(Canvas canvas, Matrix matrix, com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<pA, Path> qhi, com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Integer, Integer> qhi2) {
        com.bytedance.adsdk.lottie.Tgh.ROR.Qhi(canvas, this.pA, this.Gm);
        this.ROR.set(qhi.ROR());
        this.ROR.transform(matrix);
        this.WAv.setAlpha((int) (qhi2.ROR().intValue() * 2.55f));
        canvas.drawPath(this.ROR, this.WAv);
        canvas.restore();
    }

    private void fl(Canvas canvas, Matrix matrix, com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<pA, Path> qhi, com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Integer, Integer> qhi2) {
        com.bytedance.adsdk.lottie.Tgh.ROR.Qhi(canvas, this.pA, this.Gm);
        canvas.drawRect(this.pA, this.WAv);
        this.zc.setAlpha((int) (qhi2.ROR().intValue() * 2.55f));
        this.ROR.set(qhi.ROR());
        this.ROR.transform(matrix);
        canvas.drawPath(this.ROR, this.zc);
        canvas.restore();
    }

    boolean CJ() {
        com.bytedance.adsdk.lottie.Qhi.cJ.hm hmVar = this.qMt;
        return (hmVar == null || hmVar.cJ().isEmpty()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cJ(boolean z) {
        if (z != this.Eh) {
            this.Eh = z;
            hm();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi(float f2) {
        this.CJ.Qhi(f2);
        if (this.qMt != null) {
            for (int i = 0; i < this.qMt.cJ().size(); i++) {
                this.qMt.cJ().get(i).Qhi(f2);
            }
        }
        com.bytedance.adsdk.lottie.Qhi.cJ.fl flVar = this.EBS;
        if (flVar != null) {
            flVar.Qhi(f2);
        }
        Qhi qhi = this.bxS;
        if (qhi != null) {
            qhi.Qhi(f2);
        }
        for (int i2 = 0; i2 < this.pM.size(); i2++) {
            this.pM.get(i2).Qhi(f2);
        }
    }

    private void Gm() {
        if (this.CQU != null) {
            return;
        }
        if (this.Dww == null) {
            this.CQU = Collections.emptyList();
            return;
        }
        this.CQU = new ArrayList();
        for (Qhi qhi = this.Dww; qhi != null; qhi = qhi.Dww) {
            this.CQU.add(qhi);
        }
    }

    public String fl() {
        return this.ac.Tgh();
    }

    public com.bytedance.adsdk.lottie.ac.cJ.Qhi Tgh() {
        return this.ac.bxS();
    }

    public BlurMaskFilter cJ(float f2) {
        if (this.fl == f2) {
            return this.Tgh;
        }
        BlurMaskFilter blurMaskFilter = new BlurMaskFilter(f2 / 2.0f, BlurMaskFilter.Blur.NORMAL);
        this.Tgh = blurMaskFilter;
        this.fl = f2;
        return blurMaskFilter;
    }

    public Gm ROR() {
        return this.ac.Dww();
    }
}

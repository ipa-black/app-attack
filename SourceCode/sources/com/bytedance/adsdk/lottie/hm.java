package com.bytedance.adsdk.lottie;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import com.bytedance.adsdk.lottie.fl.bxS;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
/* compiled from: LottieDrawable.java */
/* loaded from: classes2.dex */
public class hm extends Drawable implements Animatable, Drawable.Callback {
    private String ABk;
    private ROR CJ;
    private tP CQU;
    private boolean Dww;
    private boolean EBS;
    private final Matrix Eh;
    private Matrix FQ;
    private final ValueAnimator.AnimatorUpdateListener Gm;
    private boolean HzH;
    private Rect Jma;
    private com.bytedance.adsdk.lottie.ac.ac.cJ MQ;
    private Canvas NFd;
    private boolean PAe;
    String Qhi;
    private boolean ROR;
    private boolean Sf;
    private boolean Tgh;
    private final ArrayList<Qhi> WAv;
    private Bitmap aP;
    MQ ac;
    private boolean bxS;
    ac cJ;
    private RectF es;
    private final com.bytedance.adsdk.lottie.Tgh.ac fl;
    private cJ hm;
    private Map<String, Typeface> hpZ;
    private fl iMK;
    private Rect js;
    private boolean kYc;
    private RectF lB;
    private Paint lG;
    private com.bytedance.adsdk.lottie.cJ.Qhi pA;
    private boolean pM;
    private int qMt;
    private Rect sDy;
    private boolean tP;
    private Matrix yN;
    private com.bytedance.adsdk.lottie.cJ.cJ zc;
    private RectF zn;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LottieDrawable.java */
    /* loaded from: classes2.dex */
    public interface Qhi {
        void Qhi(ROR ror);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LottieDrawable.java */
    /* loaded from: classes2.dex */
    public enum cJ {
        NONE,
        PLAY,
        RESUME
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public hm() {
        com.bytedance.adsdk.lottie.Tgh.ac acVar = new com.bytedance.adsdk.lottie.Tgh.ac();
        this.fl = acVar;
        this.Tgh = true;
        this.ROR = false;
        this.Sf = false;
        this.hm = cJ.NONE;
        this.WAv = new ArrayList<>();
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.adsdk.lottie.hm.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (hm.this.MQ != null) {
                    hm.this.MQ.Qhi(hm.this.fl.Tgh());
                }
            }
        };
        this.Gm = animatorUpdateListener;
        this.kYc = false;
        this.tP = true;
        this.qMt = 255;
        this.CQU = tP.AUTOMATIC;
        this.pM = false;
        this.Eh = new Matrix();
        this.PAe = false;
        acVar.addUpdateListener(animatorUpdateListener);
    }

    public boolean Qhi() {
        return this.HzH;
    }

    public void Qhi(boolean z) {
        if (this.HzH == z) {
            return;
        }
        this.HzH = z;
        if (this.CJ != null) {
            Eh();
        }
    }

    public void cJ(boolean z) {
        if (z != this.tP) {
            this.tP = z;
            com.bytedance.adsdk.lottie.ac.ac.cJ cJVar = this.MQ;
            if (cJVar != null) {
                cJVar.cJ(z);
            }
            invalidateSelf();
        }
    }

    public boolean cJ() {
        return this.tP;
    }

    public void Qhi(String str) {
        this.ABk = str;
    }

    public String ac() {
        return this.ABk;
    }

    public void ac(boolean z) {
        this.kYc = z;
    }

    public boolean CJ() {
        return this.kYc;
    }

    public boolean Qhi(ROR ror) {
        if (this.CJ == ror) {
            return false;
        }
        this.PAe = true;
        Sf();
        this.CJ = ror;
        Eh();
        this.fl.Qhi(ror);
        CJ(this.fl.getAnimatedFraction());
        Iterator it = new ArrayList(this.WAv).iterator();
        while (it.hasNext()) {
            Qhi qhi = (Qhi) it.next();
            if (qhi != null) {
                qhi.Qhi(ror);
            }
            it.remove();
        }
        this.WAv.clear();
        ror.cJ(this.EBS);
        pM();
        Drawable.Callback callback = getCallback();
        if (callback instanceof ImageView) {
            ImageView imageView = (ImageView) callback;
            imageView.setImageDrawable(null);
            imageView.setImageDrawable(this);
        }
        return true;
    }

    public void Qhi(tP tPVar) {
        this.CQU = tPVar;
        pM();
    }

    public tP fl() {
        return this.pM ? tP.SOFTWARE : tP.HARDWARE;
    }

    private void pM() {
        ROR ror = this.CJ;
        if (ror == null) {
            return;
        }
        this.pM = this.CQU.Qhi(Build.VERSION.SDK_INT, ror.Qhi(), ror.cJ());
    }

    public void CJ(boolean z) {
        this.EBS = z;
        ROR ror = this.CJ;
        if (ror != null) {
            ror.cJ(z);
        }
    }

    public void fl(boolean z) {
        if (this.bxS == z) {
            return;
        }
        this.bxS = z;
        com.bytedance.adsdk.lottie.ac.ac.cJ cJVar = this.MQ;
        if (cJVar != null) {
            cJVar.Qhi(z);
        }
    }

    public kYc Tgh() {
        ROR ror = this.CJ;
        if (ror != null) {
            return ror.ac();
        }
        return null;
    }

    public void Tgh(boolean z) {
        this.Dww = z;
    }

    public boolean ROR() {
        return this.Dww;
    }

    private void Eh() {
        ROR ror = this.CJ;
        if (ror == null) {
            return;
        }
        com.bytedance.adsdk.lottie.ac.ac.cJ cJVar = new com.bytedance.adsdk.lottie.ac.ac.cJ(this, bxS.Qhi(ror), ror.hm(), ror);
        this.MQ = cJVar;
        if (this.bxS) {
            cJVar.Qhi(true);
        }
        this.MQ.cJ(this.tP);
    }

    public void Sf() {
        if (this.fl.isRunning()) {
            this.fl.cancel();
            if (!isVisible()) {
                this.hm = cJ.NONE;
            }
        }
        this.CJ = null;
        this.MQ = null;
        this.zc = null;
        this.fl.Sf();
        invalidateSelf();
    }

    public void ROR(boolean z) {
        this.Sf = z;
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (this.PAe) {
            return;
        }
        this.PAe = true;
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.qMt = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.qMt;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Tgh.Qhi("Drawable#draw");
        if (this.Sf) {
            try {
                if (this.pM) {
                    Qhi(canvas, this.MQ);
                } else {
                    Qhi(canvas);
                }
            } catch (Throwable unused) {
            }
        } else if (this.pM) {
            Qhi(canvas, this.MQ);
        } else {
            Qhi(canvas);
        }
        this.PAe = false;
        Tgh.cJ("Drawable#draw");
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        Drawable.Callback callback = getCallback();
        if ((callback instanceof View) && ((View) callback).isInEditMode()) {
            return;
        }
        hm();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        WAv();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return kYc();
    }

    public void hm() {
        if (this.MQ == null) {
            this.WAv.add(new Qhi() { // from class: com.bytedance.adsdk.lottie.hm.6
                @Override // com.bytedance.adsdk.lottie.hm.Qhi
                public void Qhi(ROR ror) {
                    hm.this.hm();
                }
            });
            return;
        }
        pM();
        if (aP() || HzH() == 0) {
            if (isVisible()) {
                this.fl.Gm();
                this.hm = cJ.NONE;
            } else {
                this.hm = cJ.PLAY;
            }
        }
        if (aP()) {
            return;
        }
        ac((int) (iMK() < 0.0f ? zc() : ABk()));
        this.fl.zc();
        if (isVisible()) {
            return;
        }
        this.hm = cJ.NONE;
    }

    public void WAv() {
        this.WAv.clear();
        this.fl.zc();
        if (isVisible()) {
            return;
        }
        this.hm = cJ.NONE;
    }

    public void Gm() {
        if (this.MQ == null) {
            this.WAv.add(new Qhi() { // from class: com.bytedance.adsdk.lottie.hm.7
                @Override // com.bytedance.adsdk.lottie.hm.Qhi
                public void Qhi(ROR ror) {
                    hm.this.Gm();
                }
            });
            return;
        }
        pM();
        if (aP() || HzH() == 0) {
            if (isVisible()) {
                this.fl.iMK();
                this.hm = cJ.NONE;
            } else {
                this.hm = cJ.RESUME;
            }
        }
        if (aP()) {
            return;
        }
        ac((int) (iMK() < 0.0f ? zc() : ABk()));
        this.fl.zc();
        if (isVisible()) {
            return;
        }
        this.hm = cJ.NONE;
    }

    public void Qhi(final int i) {
        if (this.CJ == null) {
            this.WAv.add(new Qhi() { // from class: com.bytedance.adsdk.lottie.hm.8
                @Override // com.bytedance.adsdk.lottie.hm.Qhi
                public void Qhi(ROR ror) {
                    hm.this.Qhi(i);
                }
            });
        } else {
            this.fl.Qhi(i);
        }
    }

    public float zc() {
        return this.fl.pA();
    }

    public void Qhi(final float f2) {
        ROR ror = this.CJ;
        if (ror == null) {
            this.WAv.add(new Qhi() { // from class: com.bytedance.adsdk.lottie.hm.9
                @Override // com.bytedance.adsdk.lottie.hm.Qhi
                public void Qhi(ROR ror2) {
                    hm.this.Qhi(f2);
                }
            });
        } else {
            Qhi((int) com.bytedance.adsdk.lottie.Tgh.Tgh.Qhi(ror.Tgh(), this.CJ.ROR(), f2));
        }
    }

    public void cJ(final int i) {
        if (this.CJ == null) {
            this.WAv.add(new Qhi() { // from class: com.bytedance.adsdk.lottie.hm.10
                @Override // com.bytedance.adsdk.lottie.hm.Qhi
                public void Qhi(ROR ror) {
                    hm.this.cJ(i);
                }
            });
        } else {
            this.fl.cJ(i + 0.99f);
        }
    }

    public float ABk() {
        return this.fl.hpZ();
    }

    public void cJ(final float f2) {
        ROR ror = this.CJ;
        if (ror == null) {
            this.WAv.add(new Qhi() { // from class: com.bytedance.adsdk.lottie.hm.11
                @Override // com.bytedance.adsdk.lottie.hm.Qhi
                public void Qhi(ROR ror2) {
                    hm.this.cJ(f2);
                }
            });
        } else {
            this.fl.cJ(com.bytedance.adsdk.lottie.Tgh.Tgh.Qhi(ror.Tgh(), this.CJ.ROR(), f2));
        }
    }

    public void cJ(final String str) {
        ROR ror = this.CJ;
        if (ror == null) {
            this.WAv.add(new Qhi() { // from class: com.bytedance.adsdk.lottie.hm.12
                @Override // com.bytedance.adsdk.lottie.hm.Qhi
                public void Qhi(ROR ror2) {
                    hm.this.cJ(str);
                }
            });
            return;
        }
        com.bytedance.adsdk.lottie.ac.ROR ac = ror.ac(str);
        if (ac == null) {
            throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
        }
        Qhi((int) ac.Qhi);
    }

    public void ac(final String str) {
        ROR ror = this.CJ;
        if (ror == null) {
            this.WAv.add(new Qhi() { // from class: com.bytedance.adsdk.lottie.hm.13
                @Override // com.bytedance.adsdk.lottie.hm.Qhi
                public void Qhi(ROR ror2) {
                    hm.this.ac(str);
                }
            });
            return;
        }
        com.bytedance.adsdk.lottie.ac.ROR ac = ror.ac(str);
        if (ac == null) {
            throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
        }
        cJ((int) (ac.Qhi + ac.cJ));
    }

    public void CJ(final String str) {
        ROR ror = this.CJ;
        if (ror == null) {
            this.WAv.add(new Qhi() { // from class: com.bytedance.adsdk.lottie.hm.2
                @Override // com.bytedance.adsdk.lottie.hm.Qhi
                public void Qhi(ROR ror2) {
                    hm.this.CJ(str);
                }
            });
            return;
        }
        com.bytedance.adsdk.lottie.ac.ROR ac = ror.ac(str);
        if (ac == null) {
            throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
        }
        int i = (int) ac.Qhi;
        Qhi(i, ((int) ac.cJ) + i);
    }

    public void Qhi(final int i, final int i2) {
        if (this.CJ == null) {
            this.WAv.add(new Qhi() { // from class: com.bytedance.adsdk.lottie.hm.3
                @Override // com.bytedance.adsdk.lottie.hm.Qhi
                public void Qhi(ROR ror) {
                    hm.this.Qhi(i, i2);
                }
            });
        } else {
            this.fl.Qhi(i, i2 + 0.99f);
        }
    }

    public void ac(float f2) {
        this.fl.ac(f2);
    }

    public float iMK() {
        return this.fl.WAv();
    }

    public void ac(final int i) {
        if (this.CJ == null) {
            this.WAv.add(new Qhi() { // from class: com.bytedance.adsdk.lottie.hm.4
                @Override // com.bytedance.adsdk.lottie.hm.Qhi
                public void Qhi(ROR ror) {
                    hm.this.ac(i);
                }
            });
        } else {
            this.fl.Qhi(i);
        }
    }

    public int pA() {
        return (int) this.fl.ROR();
    }

    public void CJ(final float f2) {
        if (this.CJ == null) {
            this.WAv.add(new Qhi() { // from class: com.bytedance.adsdk.lottie.hm.5
                @Override // com.bytedance.adsdk.lottie.hm.Qhi
                public void Qhi(ROR ror) {
                    hm.this.CJ(f2);
                }
            });
            return;
        }
        Tgh.Qhi("Drawable#setProgress");
        this.fl.Qhi(this.CJ.Qhi(f2));
        Tgh.cJ("Drawable#setProgress");
    }

    public void CJ(int i) {
        this.fl.setRepeatMode(i);
    }

    public int hpZ() {
        return this.fl.getRepeatMode();
    }

    public void fl(int i) {
        this.fl.setRepeatCount(i);
    }

    public int HzH() {
        return this.fl.getRepeatCount();
    }

    public boolean kYc() {
        com.bytedance.adsdk.lottie.Tgh.ac acVar = this.fl;
        if (acVar == null) {
            return false;
        }
        return acVar.isRunning();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean tP() {
        if (isVisible()) {
            return this.fl.isRunning();
        }
        return this.hm == cJ.PLAY || this.hm == cJ.RESUME;
    }

    private boolean aP() {
        return this.Tgh || this.ROR;
    }

    public void Qhi(Boolean bool) {
        this.Tgh = bool.booleanValue();
    }

    public void Sf(boolean z) {
        this.ROR = z;
    }

    public void hm(boolean z) {
        this.fl.ac(z);
    }

    public void Qhi(fl flVar) {
        this.iMK = flVar;
        com.bytedance.adsdk.lottie.cJ.cJ cJVar = this.zc;
        if (cJVar != null) {
            cJVar.Qhi(flVar);
        }
    }

    public void Qhi(ac acVar) {
        this.cJ = acVar;
        com.bytedance.adsdk.lottie.cJ.Qhi qhi = this.pA;
        if (qhi != null) {
            qhi.Qhi(acVar);
        }
    }

    public void Qhi(Map<String, Typeface> map) {
        if (map == this.hpZ) {
            return;
        }
        this.hpZ = map;
        invalidateSelf();
    }

    public void Qhi(MQ mq) {
        this.ac = mq;
    }

    public MQ MQ() {
        return this.ac;
    }

    public boolean qMt() {
        return this.hpZ == null && this.ac == null && this.CJ.WAv().size() > 0;
    }

    public ROR EBS() {
        return this.CJ;
    }

    public void bxS() {
        this.WAv.clear();
        this.fl.cancel();
        if (isVisible()) {
            return;
        }
        this.hm = cJ.NONE;
    }

    public void Dww() {
        this.WAv.clear();
        this.fl.ABk();
        if (isVisible()) {
            return;
        }
        this.hm = cJ.NONE;
    }

    public float CQU() {
        return this.fl.Tgh();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        ROR ror = this.CJ;
        if (ror == null) {
            return -1;
        }
        return ror.CJ().width();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        ROR ror = this.CJ;
        if (ror == null) {
            return -1;
        }
        return ror.CJ().height();
    }

    public Bitmap Qhi(String str, Bitmap bitmap) {
        com.bytedance.adsdk.lottie.cJ.cJ NFd = NFd();
        if (NFd == null) {
            return null;
        }
        Bitmap Qhi2 = NFd.Qhi(str, bitmap);
        invalidateSelf();
        return Qhi2;
    }

    public Bitmap fl(String str) {
        com.bytedance.adsdk.lottie.cJ.cJ NFd = NFd();
        if (NFd != null) {
            return NFd.Qhi(str);
        }
        return null;
    }

    public WAv Tgh(String str) {
        ROR ror = this.CJ;
        if (ror == null) {
            return null;
        }
        return ror.zc().get(str);
    }

    private com.bytedance.adsdk.lottie.cJ.cJ NFd() {
        com.bytedance.adsdk.lottie.cJ.cJ cJVar = this.zc;
        if (cJVar != null && !cJVar.Qhi(lB())) {
            this.zc = null;
        }
        if (this.zc == null) {
            this.zc = new com.bytedance.adsdk.lottie.cJ.cJ(getCallback(), this.ABk, this.iMK, this.CJ.zc());
        }
        return this.zc;
    }

    public Typeface Qhi(com.bytedance.adsdk.lottie.ac.ac acVar) {
        Map<String, Typeface> map = this.hpZ;
        if (map != null) {
            String Qhi2 = acVar.Qhi();
            if (map.containsKey(Qhi2)) {
                return map.get(Qhi2);
            }
            String cJ2 = acVar.cJ();
            if (map.containsKey(cJ2)) {
                return map.get(cJ2);
            }
            String str = acVar.Qhi() + "-" + acVar.ac();
            if (map.containsKey(str)) {
                return map.get(str);
            }
        }
        com.bytedance.adsdk.lottie.cJ.Qhi sDy = sDy();
        if (sDy != null) {
            return sDy.Qhi(acVar);
        }
        return null;
    }

    private com.bytedance.adsdk.lottie.cJ.Qhi sDy() {
        if (getCallback() == null) {
            return null;
        }
        if (this.pA == null) {
            com.bytedance.adsdk.lottie.cJ.Qhi qhi = new com.bytedance.adsdk.lottie.cJ.Qhi(getCallback(), this.cJ);
            this.pA = qhi;
            String str = this.Qhi;
            if (str != null) {
                qhi.Qhi(str);
            }
        }
        return this.pA;
    }

    public void ROR(String str) {
        this.Qhi = str;
        com.bytedance.adsdk.lottie.cJ.Qhi sDy = sDy();
        if (sDy != null) {
            sDy.Qhi(str);
        }
    }

    private Context lB() {
        Drawable.Callback callback = getCallback();
        if (callback != null && (callback instanceof View)) {
            return ((View) callback).getContext();
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean z3 = !isVisible();
        boolean visible = super.setVisible(z, z2);
        if (z) {
            if (this.hm == cJ.PLAY) {
                hm();
            } else if (this.hm == cJ.RESUME) {
                Gm();
            }
        } else if (this.fl.isRunning()) {
            Dww();
            this.hm = cJ.RESUME;
        } else if (!z3) {
            this.hm = cJ.NONE;
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }

    private void Qhi(Canvas canvas) {
        com.bytedance.adsdk.lottie.ac.ac.cJ cJVar = this.MQ;
        ROR ror = this.CJ;
        if (cJVar == null || ror == null) {
            return;
        }
        this.Eh.reset();
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            this.Eh.preScale(bounds.width() / ror.CJ().width(), bounds.height() / ror.CJ().height());
            this.Eh.preTranslate(bounds.left, bounds.top);
        }
        cJVar.Qhi(canvas, this.Eh, this.qMt);
    }

    private void Qhi(Canvas canvas, com.bytedance.adsdk.lottie.ac.ac.cJ cJVar) {
        if (this.CJ == null || cJVar == null) {
            return;
        }
        lG();
        canvas.getMatrix(this.yN);
        canvas.getClipBounds(this.sDy);
        Qhi(this.sDy, this.lB);
        this.yN.mapRect(this.lB);
        Qhi(this.lB, this.sDy);
        if (this.tP) {
            this.es.set(0.0f, 0.0f, getIntrinsicWidth(), getIntrinsicHeight());
        } else {
            cJVar.Qhi(this.es, (Matrix) null, false);
        }
        this.yN.mapRect(this.es);
        Rect bounds = getBounds();
        float width = bounds.width() / getIntrinsicWidth();
        float height = bounds.height() / getIntrinsicHeight();
        Qhi(this.es, width, height);
        if (!Jma()) {
            this.es.intersect(this.sDy.left, this.sDy.top, this.sDy.right, this.sDy.bottom);
        }
        int ceil = (int) Math.ceil(this.es.width());
        int ceil2 = (int) Math.ceil(this.es.height());
        if (ceil == 0 || ceil2 == 0) {
            return;
        }
        cJ(ceil, ceil2);
        if (this.PAe) {
            this.Eh.set(this.yN);
            this.Eh.preScale(width, height);
            this.Eh.postTranslate(-this.es.left, -this.es.top);
            this.aP.eraseColor(0);
            cJVar.Qhi(this.NFd, this.Eh, this.qMt);
            this.yN.invert(this.FQ);
            this.FQ.mapRect(this.zn, this.es);
            Qhi(this.zn, this.js);
        }
        this.Jma.set(0, 0, ceil, ceil2);
        canvas.drawBitmap(this.aP, this.Jma, this.js, this.lG);
    }

    private void lG() {
        if (this.NFd != null) {
            return;
        }
        this.NFd = new Canvas();
        this.es = new RectF();
        this.yN = new Matrix();
        this.FQ = new Matrix();
        this.sDy = new Rect();
        this.lB = new RectF();
        this.lG = new com.bytedance.adsdk.lottie.Qhi.Qhi();
        this.Jma = new Rect();
        this.js = new Rect();
        this.zn = new RectF();
    }

    private void cJ(int i, int i2) {
        Bitmap bitmap = this.aP;
        if (bitmap == null || bitmap.getWidth() < i || this.aP.getHeight() < i2) {
            Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            this.aP = createBitmap;
            this.NFd.setBitmap(createBitmap);
            this.PAe = true;
        } else if (this.aP.getWidth() > i || this.aP.getHeight() > i2) {
            Bitmap createBitmap2 = Bitmap.createBitmap(this.aP, 0, 0, i, i2);
            this.aP = createBitmap2;
            this.NFd.setBitmap(createBitmap2);
            this.PAe = true;
        }
    }

    private void Qhi(RectF rectF, Rect rect) {
        rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
    }

    private void Qhi(Rect rect, RectF rectF) {
        rectF.set(rect.left, rect.top, rect.right, rect.bottom);
    }

    private void Qhi(RectF rectF, float f2, float f3) {
        rectF.set(rectF.left * f2, rectF.top * f3, rectF.right * f2, rectF.bottom * f3);
    }

    private boolean Jma() {
        Drawable.Callback callback = getCallback();
        if (callback instanceof View) {
            ViewParent parent = ((View) callback).getParent();
            return (parent instanceof ViewGroup) && !((ViewGroup) parent).getClipChildren();
        }
        return false;
    }
}

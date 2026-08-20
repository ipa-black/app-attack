package com.bytedance.adsdk.lottie;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
public class LottieAnimationView extends ImageView {
    private static final String Qhi = "LottieAnimationView";
    private static final Gm<Throwable> cJ = new Gm<Throwable>() { // from class: com.bytedance.adsdk.lottie.LottieAnimationView.1
        @Override // com.bytedance.adsdk.lottie.Gm
        public void Qhi(Throwable th) {
            com.bytedance.adsdk.lottie.Tgh.ROR.Qhi(th);
        }
    };
    private boolean ABk;
    private final Gm<Throwable> CJ;
    private boolean Gm;
    private ROR HzH;
    private final hm ROR;
    private String Sf;
    private int Tgh;
    private com.bytedance.adsdk.ugeno.ac WAv;
    private final Gm<ROR> ac;
    private Gm<Throwable> fl;
    private int hm;
    private ABk<ROR> hpZ;
    private final Set<cJ> iMK;
    private final Set<Object> pA;
    private boolean zc;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum cJ {
        SET_ANIMATION,
        SET_PROGRESS,
        SET_REPEAT_MODE,
        SET_REPEAT_COUNT,
        SET_IMAGE_ASSETS,
        PLAY_OPTION
    }

    public LottieAnimationView(Context context) {
        super(context);
        this.ac = new Gm<ROR>() { // from class: com.bytedance.adsdk.lottie.LottieAnimationView.2
            @Override // com.bytedance.adsdk.lottie.Gm
            public void Qhi(ROR ror) {
                LottieAnimationView.this.setComposition(ror);
            }
        };
        this.CJ = new Gm<Throwable>() { // from class: com.bytedance.adsdk.lottie.LottieAnimationView.3
            @Override // com.bytedance.adsdk.lottie.Gm
            public void Qhi(Throwable th) {
                if (LottieAnimationView.this.Tgh != 0) {
                    LottieAnimationView lottieAnimationView = LottieAnimationView.this;
                    lottieAnimationView.setImageResource(lottieAnimationView.Tgh);
                }
                (LottieAnimationView.this.fl == null ? LottieAnimationView.cJ : LottieAnimationView.this.fl).Qhi(th);
            }
        };
        this.Tgh = 0;
        this.ROR = new hm();
        this.Gm = false;
        this.zc = false;
        this.ABk = true;
        this.iMK = new HashSet();
        this.pA = new HashSet();
        Tgh();
    }

    public void Qhi(com.bytedance.adsdk.ugeno.ac acVar) {
        this.WAv = acVar;
    }

    private void Tgh() {
        setSaveEnabled(false);
        this.ABk = true;
        setFallbackResource(0);
        setImageAssetsFolder("");
        Qhi(0.0f, false);
        Qhi(false);
        setIgnoreDisabledSystemAnimations(false);
        this.ROR.Qhi(Boolean.valueOf(com.bytedance.adsdk.lottie.Tgh.ROR.Qhi(getContext()) != 0.0f));
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        ROR();
        super.setImageResource(i);
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        ROR();
        super.setImageDrawable(drawable);
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        ROR();
        super.setImageBitmap(bitmap);
    }

    @Override // android.view.View
    public void unscheduleDrawable(Drawable drawable) {
        hm hmVar;
        if (!this.Gm && drawable == (hmVar = this.ROR) && hmVar.kYc()) {
            CJ();
        } else if (!this.Gm && (drawable instanceof hm)) {
            hm hmVar2 = (hm) drawable;
            if (hmVar2.kYc()) {
                hmVar2.Dww();
            }
        }
        super.unscheduleDrawable(drawable);
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        Drawable drawable = getDrawable();
        if ((drawable instanceof hm) && ((hm) drawable).fl() == tP.SOFTWARE) {
            this.ROR.invalidateSelf();
        }
    }

    @Override // android.widget.ImageView, android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable drawable2 = getDrawable();
        hm hmVar = this.ROR;
        if (drawable2 == hmVar) {
            super.invalidateDrawable(hmVar);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Qhi qhi = new Qhi(super.onSaveInstanceState());
        qhi.Qhi = this.Sf;
        qhi.cJ = this.hm;
        qhi.ac = this.ROR.CQU();
        qhi.CJ = this.ROR.tP();
        qhi.fl = this.ROR.ac();
        qhi.Tgh = this.ROR.hpZ();
        qhi.ROR = this.ROR.HzH();
        return qhi;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        int i;
        if (!(parcelable instanceof Qhi)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Qhi qhi = (Qhi) parcelable;
        super.onRestoreInstanceState(qhi.getSuperState());
        this.Sf = qhi.Qhi;
        if (!this.iMK.contains(cJ.SET_ANIMATION) && !TextUtils.isEmpty(this.Sf)) {
            setAnimation(this.Sf);
        }
        this.hm = qhi.cJ;
        if (!this.iMK.contains(cJ.SET_ANIMATION) && (i = this.hm) != 0) {
            setAnimation(i);
        }
        if (!this.iMK.contains(cJ.SET_PROGRESS)) {
            Qhi(qhi.ac, false);
        }
        if (!this.iMK.contains(cJ.PLAY_OPTION) && qhi.CJ) {
            Qhi();
        }
        if (!this.iMK.contains(cJ.SET_IMAGE_ASSETS)) {
            setImageAssetsFolder(qhi.fl);
        }
        if (!this.iMK.contains(cJ.SET_REPEAT_MODE)) {
            setRepeatMode(qhi.Tgh);
        }
        if (this.iMK.contains(cJ.SET_REPEAT_COUNT)) {
            return;
        }
        setRepeatCount(qhi.ROR);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isInEditMode() && this.zc) {
            this.ROR.hm();
        }
        com.bytedance.adsdk.ugeno.ac acVar = this.WAv;
        if (acVar != null) {
            acVar.Tgh();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        com.bytedance.adsdk.ugeno.ac acVar = this.WAv;
        if (acVar != null) {
            acVar.Tgh();
        }
    }

    public void setIgnoreDisabledSystemAnimations(boolean z) {
        this.ROR.Sf(z);
    }

    public void setUseCompositionFrameRate(boolean z) {
        this.ROR.hm(z);
    }

    public void Qhi(boolean z) {
        this.ROR.Qhi(z);
    }

    public void setClipToCompositionBounds(boolean z) {
        this.ROR.cJ(z);
    }

    public boolean getClipToCompositionBounds() {
        return this.ROR.cJ();
    }

    public void setCacheComposition(boolean z) {
        this.ABk = z;
    }

    public void setOutlineMasksAndMattes(boolean z) {
        this.ROR.fl(z);
    }

    public void setAnimation(int i) {
        this.hm = i;
        this.Sf = null;
        setCompositionTask(Qhi(i));
    }

    private ABk<ROR> Qhi(final int i) {
        if (isInEditMode()) {
            return new ABk<>(new Callable<zc<ROR>>() { // from class: com.bytedance.adsdk.lottie.LottieAnimationView.4
                @Override // java.util.concurrent.Callable
                /* renamed from: Qhi */
                public zc<ROR> call() throws Exception {
                    return LottieAnimationView.this.ABk ? Sf.cJ(LottieAnimationView.this.getContext(), i) : Sf.cJ(LottieAnimationView.this.getContext(), i, (String) null);
                }
            }, true);
        }
        return this.ABk ? Sf.Qhi(getContext(), i) : Sf.Qhi(getContext(), i, (String) null);
    }

    public void setAnimation(String str) {
        this.Sf = str;
        this.hm = 0;
        setCompositionTask(Qhi(str));
    }

    private ABk<ROR> Qhi(final String str) {
        if (isInEditMode()) {
            return new ABk<>(new Callable<zc<ROR>>() { // from class: com.bytedance.adsdk.lottie.LottieAnimationView.5
                @Override // java.util.concurrent.Callable
                /* renamed from: Qhi */
                public zc<ROR> call() throws Exception {
                    return LottieAnimationView.this.ABk ? Sf.ac(LottieAnimationView.this.getContext(), str) : Sf.ac(LottieAnimationView.this.getContext(), str, null);
                }
            }, true);
        }
        return this.ABk ? Sf.cJ(getContext(), str) : Sf.cJ(getContext(), str, (String) null);
    }

    @Deprecated
    public void setAnimationFromJson(String str) {
        Qhi(str, (String) null);
    }

    public void Qhi(String str, String str2) {
        Qhi(new ByteArrayInputStream(str.getBytes()), str2);
    }

    public void Qhi(InputStream inputStream, String str) {
        setCompositionTask(Sf.Qhi(inputStream, str));
    }

    public void setAnimationFromUrl(String str) {
        setCompositionTask(this.ABk ? Sf.Qhi(getContext(), str) : Sf.Qhi(getContext(), str, (String) null));
    }

    public void setFailureListener(Gm<Throwable> gm) {
        this.fl = gm;
    }

    public void setFallbackResource(int i) {
        this.Tgh = i;
    }

    private void setCompositionTask(ABk<ROR> aBk) {
        this.iMK.add(cJ.SET_ANIMATION);
        Sf();
        ROR();
        this.hpZ = aBk.Qhi(this.ac).ac(this.CJ);
    }

    private void ROR() {
        ABk<ROR> aBk = this.hpZ;
        if (aBk != null) {
            aBk.cJ(this.ac);
            this.hpZ.CJ(this.CJ);
        }
    }

    public void setComposition(ROR ror) {
        if (Tgh.Qhi) {
            Log.v(Qhi, "Set Composition \n".concat(String.valueOf(ror)));
        }
        this.ROR.setCallback(this);
        this.HzH = ror;
        this.Gm = true;
        boolean Qhi2 = this.ROR.Qhi(ror);
        this.Gm = false;
        if (getDrawable() != this.ROR || Qhi2) {
            if (!Qhi2) {
                hm();
            }
            onVisibilityChanged(this, getVisibility());
            requestLayout();
            Iterator<Object> it = this.pA.iterator();
            while (it.hasNext()) {
                it.next();
            }
        }
    }

    public ROR getComposition() {
        return this.HzH;
    }

    public void Qhi() {
        this.iMK.add(cJ.PLAY_OPTION);
        this.ROR.hm();
    }

    public void setMinFrame(int i) {
        this.ROR.Qhi(i);
    }

    public float getMinFrame() {
        return this.ROR.zc();
    }

    public void setMinProgress(float f2) {
        this.ROR.Qhi(f2);
    }

    public void setMaxFrame(int i) {
        this.ROR.cJ(i);
    }

    public float getMaxFrame() {
        return this.ROR.ABk();
    }

    public void setMaxProgress(float f2) {
        this.ROR.cJ(f2);
    }

    public void setMinFrame(String str) {
        this.ROR.cJ(str);
    }

    public void setMaxFrame(String str) {
        this.ROR.ac(str);
    }

    public void setMinAndMaxFrame(String str) {
        this.ROR.CJ(str);
    }

    public void setSpeed(float f2) {
        this.ROR.ac(f2);
    }

    public float getSpeed() {
        return this.ROR.iMK();
    }

    @Deprecated
    public void cJ(boolean z) {
        this.ROR.fl(z ? -1 : 0);
    }

    public void setRepeatMode(int i) {
        this.iMK.add(cJ.SET_REPEAT_MODE);
        this.ROR.CJ(i);
    }

    public int getRepeatMode() {
        return this.ROR.hpZ();
    }

    public void setRepeatCount(int i) {
        this.iMK.add(cJ.SET_REPEAT_COUNT);
        this.ROR.fl(i);
    }

    public int getRepeatCount() {
        return this.ROR.HzH();
    }

    public boolean cJ() {
        return this.ROR.kYc();
    }

    public void setImageAssetsFolder(String str) {
        this.ROR.Qhi(str);
    }

    public String getImageAssetsFolder() {
        return this.ROR.ac();
    }

    public void setMaintainOriginalImageBounds(boolean z) {
        this.ROR.ac(z);
    }

    public boolean getMaintainOriginalImageBounds() {
        return this.ROR.CJ();
    }

    public Bitmap Qhi(String str, Bitmap bitmap) {
        return this.ROR.Qhi(str, bitmap);
    }

    public void setImageAssetDelegate(fl flVar) {
        this.ROR.Qhi(flVar);
    }

    public void setDefaultFontFileExtension(String str) {
        this.ROR.ROR(str);
    }

    public void setFontAssetDelegate(ac acVar) {
        this.ROR.Qhi(acVar);
    }

    public void setFontMap(Map<String, Typeface> map) {
        this.ROR.Qhi(map);
    }

    public void setTextDelegate(MQ mq) {
        this.ROR.Qhi(mq);
    }

    public void ac() {
        this.iMK.add(cJ.PLAY_OPTION);
        this.ROR.bxS();
    }

    public void CJ() {
        this.zc = false;
        this.ROR.Dww();
    }

    public void setFrame(int i) {
        this.ROR.ac(i);
    }

    public int getFrame() {
        return this.ROR.pA();
    }

    public void setProgress(float f2) {
        Qhi(f2, true);
    }

    private void Qhi(float f2, boolean z) {
        if (z) {
            this.iMK.add(cJ.SET_PROGRESS);
        }
        this.ROR.CJ(f2);
    }

    public float getProgress() {
        return this.ROR.CQU();
    }

    public long getDuration() {
        ROR ror = this.HzH;
        if (ror != null) {
            return ror.fl();
        }
        return 0L;
    }

    public void setPerformanceTrackingEnabled(boolean z) {
        this.ROR.CJ(z);
    }

    public kYc getPerformanceTracker() {
        return this.ROR.Tgh();
    }

    private void Sf() {
        this.HzH = null;
        this.ROR.Sf();
    }

    public void setSafeMode(boolean z) {
        this.ROR.ROR(z);
    }

    public void setRenderMode(tP tPVar) {
        this.ROR.Qhi(tPVar);
    }

    public tP getRenderMode() {
        return this.ROR.fl();
    }

    public void setApplyingOpacityToLayersEnabled(boolean z) {
        this.ROR.Tgh(z);
    }

    private void hm() {
        boolean cJ2 = cJ();
        setImageDrawable(null);
        setImageDrawable(this.ROR);
        if (cJ2) {
            this.ROR.Gm();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class Qhi extends View.BaseSavedState {
        public static final Parcelable.Creator<Qhi> CREATOR = new Parcelable.Creator<Qhi>() { // from class: com.bytedance.adsdk.lottie.LottieAnimationView.Qhi.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: Qhi */
            public Qhi createFromParcel(Parcel parcel) {
                return new Qhi(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: Qhi */
            public Qhi[] newArray(int i) {
                return new Qhi[i];
            }
        };
        boolean CJ;
        String Qhi;
        int ROR;
        int Tgh;
        float ac;
        int cJ;
        String fl;

        Qhi(Parcelable parcelable) {
            super(parcelable);
        }

        private Qhi(Parcel parcel) {
            super(parcel);
            this.Qhi = parcel.readString();
            this.ac = parcel.readFloat();
            this.CJ = parcel.readInt() == 1;
            this.fl = parcel.readString();
            this.Tgh = parcel.readInt();
            this.ROR = parcel.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.Qhi);
            parcel.writeFloat(this.ac);
            parcel.writeInt(this.CJ ? 1 : 0);
            parcel.writeString(this.fl);
            parcel.writeInt(this.Tgh);
            parcel.writeInt(this.ROR);
        }
    }
}

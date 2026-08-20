package com.bytedance.adsdk.ugeno.viewpager;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes2.dex */
public class ViewPager extends ViewGroup {
    private Scroller ABk;
    int CJ;
    private boolean CQU;
    private boolean Dq;
    private boolean Dww;
    private int EBS;
    private int Eh;
    private VelocityTracker FQ;
    private Parcelable Gm;
    private Tgh HLI;
    private boolean Hf;
    private Drawable HzH;
    private float Jma;
    private boolean MND;
    private float MQ;
    private int NBs;
    private boolean NFd;
    private int PAe;
    private EdgeEffect Qe;
    private int Qhi;
    private final ArrayList<cJ> ROR;
    private ArrayList<View> ReL;
    private final cJ Sf;
    private int VnT;
    private int WAv;
    private EdgeEffect YB;
    private boolean aP;
    com.bytedance.adsdk.ugeno.viewpager.cJ ac;
    private int bxS;
    private boolean cjC;
    private List<fl> dI;
    private long dIT;
    private fl dVA;
    private float es;
    private final Runnable gga;
    private final Rect hm;
    private int hpZ;
    private boolean iMK;
    private int ip;
    private int jPH;
    private float js;
    private int kYc;
    private int lB;
    private int lG;
    private int oU;
    private List<Object> ots;
    private ROR pA;
    private boolean pM;
    private int pv;
    private float qMt;
    private int sDy;
    private int tP;
    private int xyz;
    private int yN;
    private ClassLoader zc;
    private fl zjb;
    private float zn;
    static final int[] cJ = {16842931};
    private static final Comparator<cJ> fl = new Comparator<cJ>() { // from class: com.bytedance.adsdk.ugeno.viewpager.ViewPager.1
        @Override // java.util.Comparator
        /* renamed from: Qhi */
        public int compare(cJ cJVar, cJ cJVar2) {
            return cJVar.cJ - cJVar2.cJ;
        }
    };
    private static final Interpolator Tgh = new Interpolator() { // from class: com.bytedance.adsdk.ugeno.viewpager.ViewPager.2
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            float f3 = f2 - 1.0f;
            return (f3 * f3 * f3 * f3 * f3) + 1.0f;
        }
    };
    private static final hm EGK = new hm();

    @Target({ElementType.TYPE})
    @Inherited
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes2.dex */
    public @interface Qhi {
    }

    /* loaded from: classes2.dex */
    public interface Tgh {
        void Qhi(View view, float f2);
    }

    /* loaded from: classes2.dex */
    public interface fl {
        void Qhi(int i, float f2, int i2);

        void Sf(int i);

        void hm(int i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class cJ {
        float CJ;
        Object Qhi;
        boolean ac;
        int cJ;
        float fl;

        cJ() {
        }
    }

    public ViewPager(Context context) {
        super(context);
        this.ROR = new ArrayList<>();
        this.Sf = new cJ();
        this.hm = new Rect();
        this.WAv = -1;
        this.Gm = null;
        this.zc = null;
        this.MQ = -3.4028235E38f;
        this.qMt = Float.MAX_VALUE;
        this.Eh = 1;
        this.yN = -1;
        this.cjC = true;
        this.Dq = false;
        this.gga = new Runnable() { // from class: com.bytedance.adsdk.ugeno.viewpager.ViewPager.3
            @Override // java.lang.Runnable
            public void run() {
                ViewPager.this.setScrollState(0);
                ViewPager.this.ac();
            }
        };
        this.VnT = 0;
        Qhi();
    }

    void Qhi() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.ABk = new Scroller(context, Tgh);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f2 = context.getResources().getDisplayMetrics().density;
        this.lG = viewConfiguration.getScaledPagingTouchSlop();
        this.PAe = (int) (400.0f * f2);
        this.ip = viewConfiguration.getScaledMaximumFlingVelocity();
        this.Qe = new EdgeEffect(context);
        this.YB = new EdgeEffect(context);
        this.xyz = (int) (25.0f * f2);
        this.jPH = (int) (2.0f * f2);
        this.sDy = (int) (f2 * 16.0f);
    }

    public void setScroller(Scroller scroller) {
        this.ABk = scroller;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.gga);
        Scroller scroller = this.ABk;
        if (scroller != null && !scroller.isFinished()) {
            this.ABk.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    void setScrollState(int i) {
        if (this.VnT == i) {
            return;
        }
        this.VnT = i;
        if (this.HLI != null) {
            cJ(i != 0);
        }
        Tgh(i);
    }

    public void setAdapter(com.bytedance.adsdk.ugeno.viewpager.cJ cJVar) {
        com.bytedance.adsdk.ugeno.viewpager.cJ cJVar2 = this.ac;
        if (cJVar2 != null) {
            cJVar2.Qhi((DataSetObserver) null);
            for (int i = 0; i < this.ROR.size(); i++) {
                cJ cJVar3 = this.ROR.get(i);
                this.ac.Qhi((ViewGroup) this, cJVar3.cJ, cJVar3.Qhi);
            }
            this.ROR.clear();
            hm();
            this.CJ = 0;
            scrollTo(0, 0);
        }
        this.ac = cJVar;
        this.Qhi = 0;
        if (cJVar != null) {
            if (this.pA == null) {
                this.pA = new ROR();
            }
            this.ac.Qhi((DataSetObserver) this.pA);
            this.pM = false;
            boolean z = this.cjC;
            this.cjC = true;
            this.Qhi = this.ac.Qhi();
            int i2 = this.WAv;
            if (i2 >= 0) {
                Qhi(i2, false, true);
                this.WAv = -1;
                this.Gm = null;
                this.zc = null;
            } else if (!z) {
                ac();
            } else {
                requestLayout();
            }
        }
        List<Object> list = this.ots;
        if (list == null || list.isEmpty()) {
            return;
        }
        int size = this.ots.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.ots.get(i3);
        }
    }

    private void hm() {
        int i = 0;
        while (i < getChildCount()) {
            if (!((ac) getChildAt(i).getLayoutParams()).Qhi) {
                removeViewAt(i);
                i--;
            }
            i++;
        }
    }

    public com.bytedance.adsdk.ugeno.viewpager.cJ getAdapter() {
        return this.ac;
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    public void setCurrentItem(int i) {
        this.pM = false;
        Qhi(i, !this.cjC, false);
    }

    public void Qhi(int i, boolean z) {
        this.pM = false;
        Qhi(i, z, false);
    }

    public int getCurrentItem() {
        return this.CJ;
    }

    void Qhi(int i, boolean z, boolean z2) {
        Qhi(i, z, z2, 0);
    }

    void Qhi(int i, boolean z, boolean z2, int i2) {
        com.bytedance.adsdk.ugeno.viewpager.cJ cJVar = this.ac;
        if (cJVar == null || cJVar.Qhi() <= 0) {
            setScrollingCacheEnabled(false);
        } else if (!z2 && this.CJ == i && this.ROR.size() != 0) {
            setScrollingCacheEnabled(false);
        } else {
            if (i < 0) {
                i = 0;
            } else if (i >= this.ac.Qhi()) {
                i = this.ac.Qhi() - 1;
            }
            int i3 = this.Eh;
            int i4 = this.CJ;
            if (i > i4 + i3 || i < i4 - i3) {
                for (int i5 = 0; i5 < this.ROR.size(); i5++) {
                    this.ROR.get(i5).ac = true;
                }
            }
            boolean z3 = this.CJ != i;
            if (this.cjC) {
                this.CJ = i;
                if (z3) {
                    fl(i);
                }
                requestLayout();
                return;
            }
            Qhi(i);
            Qhi(i, z, i2, z3);
        }
    }

    private void Qhi(int i, boolean z, int i2, boolean z2) {
        cJ cJ2 = cJ(i);
        int clientWidth = cJ2 != null ? (int) (getClientWidth() * Math.max(this.MQ, Math.min(cJ2.fl, this.qMt))) : 0;
        if (z) {
            Qhi(clientWidth, 0, i2);
            if (z2) {
                fl(i);
                return;
            }
            return;
        }
        if (z2) {
            fl(i);
        }
        Qhi(false);
        scrollTo(clientWidth, 0);
        CJ(clientWidth);
    }

    @Deprecated
    public void setOnPageChangeListener(fl flVar) {
        this.dVA = flVar;
    }

    public void Qhi(fl flVar) {
        if (this.dI == null) {
            this.dI = new ArrayList();
        }
        this.dI.add(flVar);
    }

    public void Qhi(boolean z, Tgh tgh) {
        Qhi(z, tgh, 2);
    }

    public void Qhi(boolean z, Tgh tgh, int i) {
        boolean z2 = tgh != null;
        boolean z3 = z2 != (this.HLI != null);
        this.HLI = tgh;
        setChildrenDrawingOrderEnabled(z2);
        if (z2) {
            this.pv = z ? 2 : 1;
            this.oU = i;
        } else {
            this.pv = 0;
        }
        if (z3) {
            ac();
        }
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        if (this.pv == 2) {
            i2 = (i - 1) - i2;
        }
        return ((ac) this.ReL.get(i2).getLayoutParams()).Tgh;
    }

    public int getOffscreenPageLimit() {
        return this.Eh;
    }

    public void setOffscreenPageLimit(int i) {
        if (i <= 0) {
            Log.w("ViewPager", "Requested offscreen page limit " + i + " too small; defaulting to 1");
            i = 1;
        }
        if (i != this.Eh) {
            this.Eh = i;
            ac();
        }
    }

    public void setPageMargin(int i) {
        int i2 = this.hpZ;
        this.hpZ = i;
        int width = getWidth();
        Qhi(width, width, i, i2);
        requestLayout();
    }

    public int getPageMargin() {
        return this.hpZ;
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.HzH = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setPageMarginDrawable(int i) {
        setPageMarginDrawable(getContext().getResources().getDrawable(i));
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.HzH;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.HzH;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    float Qhi(float f2) {
        return (float) Math.sin((f2 - 0.5f) * 0.47123894f);
    }

    void Qhi(int i, int i2, int i3) {
        int scrollX;
        int abs;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        Scroller scroller = this.ABk;
        if (scroller != null && !scroller.isFinished()) {
            scrollX = this.iMK ? this.ABk.getCurrX() : this.ABk.getStartX();
            this.ABk.abortAnimation();
            setScrollingCacheEnabled(false);
        } else {
            scrollX = getScrollX();
        }
        int i4 = scrollX;
        int scrollY = getScrollY();
        int i5 = i - i4;
        int i6 = i2 - scrollY;
        if (i5 == 0 && i6 == 0) {
            Qhi(false);
            ac();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i7 = clientWidth / 2;
        float f2 = clientWidth;
        float f3 = i7;
        float Qhi2 = f3 + (Qhi(Math.min(1.0f, (Math.abs(i5) * 1.0f) / f2)) * f3);
        int abs2 = Math.abs(i3);
        if (abs2 > 0) {
            abs = Math.round(Math.abs(Qhi2 / abs2) * 1000.0f) * 4;
        } else {
            abs = (int) (((Math.abs(i5) / ((f2 * this.ac.Qhi(this.CJ)) + this.hpZ)) + 1.0f) * 100.0f);
        }
        int min = Math.min(abs, 600);
        this.iMK = false;
        this.ABk.startScroll(i4, scrollY, i5, i6, min);
        postInvalidateOnAnimation();
    }

    cJ Qhi(int i, int i2) {
        cJ cJVar = new cJ();
        cJVar.cJ = i;
        cJVar.Qhi = this.ac.Qhi((ViewGroup) this, i);
        cJVar.CJ = this.ac.Qhi(i);
        if (i2 < 0 || i2 >= this.ROR.size()) {
            this.ROR.add(cJVar);
        } else {
            this.ROR.add(i2, cJVar);
        }
        return cJVar;
    }

    void cJ() {
        int Qhi2 = this.ac.Qhi();
        this.Qhi = Qhi2;
        boolean z = this.ROR.size() < (this.Eh * 2) + 1 && this.ROR.size() < Qhi2;
        int i = this.CJ;
        int i2 = 0;
        while (i2 < this.ROR.size()) {
            cJ cJVar = this.ROR.get(i2);
            int Qhi3 = this.ac.Qhi(cJVar.Qhi);
            if (Qhi3 != -1) {
                if (Qhi3 == -2) {
                    this.ROR.remove(i2);
                    i2--;
                    this.ac.Qhi((ViewGroup) this, cJVar.cJ, cJVar.Qhi);
                    if (this.CJ == cJVar.cJ) {
                        i = Math.max(0, Math.min(this.CJ, Qhi2 - 1));
                    }
                } else if (cJVar.cJ != Qhi3) {
                    if (cJVar.cJ == this.CJ) {
                        i = Qhi3;
                    }
                    cJVar.cJ = Qhi3;
                }
                z = true;
            }
            i2++;
        }
        Collections.sort(this.ROR, fl);
        if (z) {
            int childCount = getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                ac acVar = (ac) getChildAt(i3).getLayoutParams();
                if (!acVar.Qhi) {
                    acVar.ac = 0.0f;
                }
            }
            Qhi(i, false, true);
            requestLayout();
        }
    }

    void ac() {
        Qhi(this.CJ);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x005f, code lost:
        if (r8.cJ == r17.CJ) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void Qhi(int r18) {
        /*
            Method dump skipped, instructions count: 602
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.ugeno.viewpager.ViewPager.Qhi(int):void");
    }

    private void WAv() {
        if (this.pv != 0) {
            ArrayList<View> arrayList = this.ReL;
            if (arrayList == null) {
                this.ReL = new ArrayList<>();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                this.ReL.add(getChildAt(i));
            }
            Collections.sort(this.ReL, EGK);
        }
    }

    private void Qhi(cJ cJVar, int i, cJ cJVar2) {
        cJ cJVar3;
        cJ cJVar4;
        int Qhi2 = this.ac.Qhi();
        int clientWidth = getClientWidth();
        float f2 = clientWidth > 0 ? this.hpZ / clientWidth : 0.0f;
        if (cJVar2 != null) {
            int i2 = cJVar2.cJ;
            if (i2 < cJVar.cJ) {
                float f3 = cJVar2.fl + cJVar2.CJ + f2;
                int i3 = i2 + 1;
                int i4 = 0;
                while (i3 <= cJVar.cJ && i4 < this.ROR.size()) {
                    cJ cJVar5 = this.ROR.get(i4);
                    while (true) {
                        cJVar4 = cJVar5;
                        if (i3 <= cJVar4.cJ || i4 >= this.ROR.size() - 1) {
                            break;
                        }
                        i4++;
                        cJVar5 = this.ROR.get(i4);
                    }
                    while (i3 < cJVar4.cJ) {
                        f3 += this.ac.Qhi(i3) + f2;
                        i3++;
                    }
                    cJVar4.fl = f3;
                    f3 += cJVar4.CJ + f2;
                    i3++;
                }
            } else if (i2 > cJVar.cJ) {
                int size = this.ROR.size() - 1;
                float f4 = cJVar2.fl;
                while (true) {
                    i2--;
                    if (i2 < cJVar.cJ || size < 0) {
                        break;
                    }
                    cJ cJVar6 = this.ROR.get(size);
                    while (true) {
                        cJVar3 = cJVar6;
                        if (i2 >= cJVar3.cJ || size <= 0) {
                            break;
                        }
                        size--;
                        cJVar6 = this.ROR.get(size);
                    }
                    while (i2 > cJVar3.cJ) {
                        f4 -= this.ac.Qhi(i2) + f2;
                        i2--;
                    }
                    f4 -= cJVar3.CJ + f2;
                    cJVar3.fl = f4;
                }
            }
        }
        int size2 = this.ROR.size();
        float f5 = cJVar.fl;
        int i5 = cJVar.cJ - 1;
        this.MQ = cJVar.cJ == 0 ? cJVar.fl : -3.4028235E38f;
        int i6 = Qhi2 - 1;
        this.qMt = cJVar.cJ == i6 ? (cJVar.fl + cJVar.CJ) - 1.0f : Float.MAX_VALUE;
        int i7 = i - 1;
        while (i7 >= 0) {
            cJ cJVar7 = this.ROR.get(i7);
            while (i5 > cJVar7.cJ) {
                f5 -= this.ac.Qhi(i5) + f2;
                i5--;
            }
            f5 -= cJVar7.CJ + f2;
            cJVar7.fl = f5;
            if (cJVar7.cJ == 0) {
                this.MQ = f5;
            }
            i7--;
            i5--;
        }
        float f6 = cJVar.fl + cJVar.CJ + f2;
        int i8 = cJVar.cJ + 1;
        int i9 = i + 1;
        while (i9 < size2) {
            cJ cJVar8 = this.ROR.get(i9);
            while (i8 < cJVar8.cJ) {
                f6 += this.ac.Qhi(i8) + f2;
                i8++;
            }
            if (cJVar8.cJ == i6) {
                this.qMt = (cJVar8.CJ + f6) - 1.0f;
            }
            cJVar8.fl = f6;
            f6 += cJVar8.CJ + f2;
            i9++;
            i8++;
        }
        this.Dq = false;
    }

    /* loaded from: classes2.dex */
    public static class Sf extends com.bytedance.adsdk.ugeno.viewpager.Qhi {
        public static final Parcelable.Creator<Sf> CREATOR = new Parcelable.ClassLoaderCreator<Sf>() { // from class: com.bytedance.adsdk.ugeno.viewpager.ViewPager.Sf.1
            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: Qhi */
            public Sf createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new Sf(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: Qhi */
            public Sf createFromParcel(Parcel parcel) {
                return new Sf(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: Qhi */
            public Sf[] newArray(int i) {
                return new Sf[i];
            }
        };
        ClassLoader CJ;
        Parcelable ac;
        int cJ;

        public Sf(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // com.bytedance.adsdk.ugeno.viewpager.Qhi, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.cJ);
            parcel.writeParcelable(this.ac, i);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.cJ + "}";
        }

        Sf(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            classLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.cJ = parcel.readInt();
            this.ac = parcel.readParcelable(classLoader);
            this.CJ = classLoader;
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Sf sf = new Sf(super.onSaveInstanceState());
        sf.cJ = this.CJ;
        com.bytedance.adsdk.ugeno.viewpager.cJ cJVar = this.ac;
        if (cJVar != null) {
            sf.ac = cJVar.cJ();
        }
        return sf;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Sf)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Sf sf = (Sf) parcelable;
        super.onRestoreInstanceState(sf.Qhi());
        if (this.ac != null) {
            Qhi(sf.cJ, false, true);
            return;
        }
        this.WAv = sf.cJ;
        this.Gm = sf.ac;
        this.zc = sf.CJ;
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        ac acVar = (ac) layoutParams;
        acVar.Qhi |= ac(view);
        if (this.Dww) {
            if (acVar != null && acVar.Qhi) {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            }
            acVar.CJ = true;
            addViewInLayout(view, i, layoutParams);
            return;
        }
        super.addView(view, i, layoutParams);
    }

    private static boolean ac(View view) {
        return view.getClass().getAnnotation(Qhi.class) != null;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.Dww) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    cJ Qhi(View view) {
        for (int i = 0; i < this.ROR.size(); i++) {
            cJ cJVar = this.ROR.get(i);
            if (this.ac.Qhi(view, cJVar.Qhi)) {
                return cJVar;
            }
        }
        return null;
    }

    cJ cJ(View view) {
        while (true) {
            ViewParent parent = view.getParent();
            if (parent != this) {
                if (parent == null || !(parent instanceof View)) {
                    return null;
                }
                view = (View) parent;
            } else {
                return Qhi(view);
            }
        }
    }

    cJ cJ(int i) {
        for (int i2 = 0; i2 < this.ROR.size(); i2++) {
            cJ cJVar = this.ROR.get(i2);
            if (cJVar.cJ == i) {
                return cJVar;
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.cjC = true;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        ac acVar;
        ac acVar2;
        int i3;
        int i4;
        int i5;
        boolean z = false;
        setMeasuredDimension(getDefaultSize(0, i), getDefaultSize(0, i2));
        int measuredWidth = getMeasuredWidth();
        this.lB = Math.min(measuredWidth / 10, this.sDy);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int i6 = 0;
        while (true) {
            boolean z2 = true;
            int i7 = 1073741824;
            if (i6 >= childCount) {
                break;
            }
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8 && (acVar2 = (ac) childAt.getLayoutParams()) != null && acVar2.Qhi) {
                int i8 = acVar2.cJ & 7;
                int i9 = acVar2.cJ & 112;
                boolean z3 = (i9 == 48 || i9 == 80) ? true : z;
                if (i8 != 3 && i8 != 5) {
                    z2 = z;
                }
                int i10 = Integer.MIN_VALUE;
                if (z3) {
                    i3 = Integer.MIN_VALUE;
                    i10 = 1073741824;
                } else {
                    i3 = z2 ? 1073741824 : Integer.MIN_VALUE;
                }
                if (acVar2.width != -2) {
                    i4 = acVar2.width != -1 ? acVar2.width : paddingLeft;
                    i10 = 1073741824;
                } else {
                    i4 = paddingLeft;
                }
                if (acVar2.height != -2) {
                    i5 = acVar2.height != -1 ? acVar2.height : measuredHeight;
                } else {
                    i5 = measuredHeight;
                    i7 = i3;
                }
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i4, i10), View.MeasureSpec.makeMeasureSpec(i5, i7));
                if (z3) {
                    measuredHeight -= childAt.getMeasuredHeight();
                } else if (z2) {
                    paddingLeft -= childAt.getMeasuredWidth();
                }
            }
            i6++;
            z = false;
        }
        this.EBS = View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
        this.bxS = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        this.Dww = true;
        ac();
        this.Dww = false;
        int childCount2 = getChildCount();
        for (int i11 = 0; i11 < childCount2; i11++) {
            View childAt2 = getChildAt(i11);
            if (childAt2.getVisibility() != 8 && ((acVar = (ac) childAt2.getLayoutParams()) == null || !acVar.Qhi)) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (paddingLeft * acVar.ac), 1073741824), this.bxS);
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            int i5 = this.hpZ;
            Qhi(i, i3, i5, i5);
        }
    }

    private void Qhi(int i, int i2, int i3, int i4) {
        if (i2 > 0 && !this.ROR.isEmpty()) {
            if (!this.ABk.isFinished()) {
                this.ABk.setFinalX(getCurrentItem() * getClientWidth());
                return;
            } else {
                scrollTo((int) ((getScrollX() / (((i2 - getPaddingLeft()) - getPaddingRight()) + i4)) * (((i - getPaddingLeft()) - getPaddingRight()) + i3)), getScrollY());
                return;
            }
        }
        cJ cJ2 = cJ(this.CJ);
        int min = (int) ((cJ2 != null ? Math.min(cJ2.fl, this.qMt) : 0.0f) * ((i - getPaddingLeft()) - getPaddingRight()));
        if (min != getScrollX()) {
            Qhi(false);
            scrollTo(min, getScrollY());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0090  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onLayout(boolean r19, int r20, int r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.ugeno.viewpager.ViewPager.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    public void computeScroll() {
        this.iMK = true;
        if (!this.ABk.isFinished() && this.ABk.computeScrollOffset()) {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.ABk.getCurrX();
            int currY = this.ABk.getCurrY();
            if (scrollX != currX || scrollY != currY) {
                scrollTo(currX, currY);
                if (!CJ(currX)) {
                    this.ABk.abortAnimation();
                    scrollTo(0, currY);
                }
            }
            postInvalidateOnAnimation();
            return;
        }
        Qhi(true);
    }

    private boolean CJ(int i) {
        if (this.ROR.size() == 0) {
            if (this.cjC) {
                return false;
            }
            this.Hf = false;
            Qhi(0, 0.0f, 0);
            if (this.Hf) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        cJ zc = zc();
        int clientWidth = getClientWidth();
        int i2 = this.hpZ;
        int i3 = clientWidth + i2;
        float f2 = clientWidth;
        int i4 = zc.cJ;
        float f3 = ((i / f2) - zc.fl) / (zc.CJ + (i2 / f2));
        this.Hf = false;
        Qhi(i4, f3, (int) (i3 * f3));
        if (this.Hf) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void Qhi(int r13, float r14, int r15) {
        /*
            r12 = this;
            int r0 = r12.NBs
            r1 = 0
            r2 = 1
            if (r0 <= 0) goto L6a
            int r0 = r12.getScrollX()
            int r3 = r12.getPaddingLeft()
            int r4 = r12.getPaddingRight()
            int r5 = r12.getWidth()
            int r6 = r12.getChildCount()
            r7 = r1
        L1b:
            if (r7 >= r6) goto L6a
            android.view.View r8 = r12.getChildAt(r7)
            android.view.ViewGroup$LayoutParams r9 = r8.getLayoutParams()
            com.bytedance.adsdk.ugeno.viewpager.ViewPager$ac r9 = (com.bytedance.adsdk.ugeno.viewpager.ViewPager.ac) r9
            boolean r10 = r9.Qhi
            if (r10 == 0) goto L67
            int r9 = r9.cJ
            r9 = r9 & 7
            if (r9 == r2) goto L4c
            r10 = 3
            if (r9 == r10) goto L46
            r10 = 5
            if (r9 == r10) goto L39
            r9 = r3
            goto L5b
        L39:
            int r9 = r5 - r4
            int r10 = r8.getMeasuredWidth()
            int r9 = r9 - r10
            int r10 = r8.getMeasuredWidth()
            int r4 = r4 + r10
            goto L58
        L46:
            int r9 = r8.getWidth()
            int r9 = r9 + r3
            goto L5b
        L4c:
            int r9 = r8.getMeasuredWidth()
            int r9 = r5 - r9
            int r9 = r9 / 2
            int r9 = java.lang.Math.max(r9, r3)
        L58:
            r11 = r9
            r9 = r3
            r3 = r11
        L5b:
            int r3 = r3 + r0
            int r10 = r8.getLeft()
            int r3 = r3 - r10
            if (r3 == 0) goto L66
            r8.offsetLeftAndRight(r3)
        L66:
            r3 = r9
        L67:
            int r7 = r7 + 1
            goto L1b
        L6a:
            r12.cJ(r13, r14, r15)
            com.bytedance.adsdk.ugeno.viewpager.ViewPager$Tgh r13 = r12.HLI
            if (r13 == 0) goto L9d
            int r13 = r12.getScrollX()
            int r14 = r12.getChildCount()
        L79:
            if (r1 >= r14) goto L9d
            android.view.View r15 = r12.getChildAt(r1)
            android.view.ViewGroup$LayoutParams r0 = r15.getLayoutParams()
            com.bytedance.adsdk.ugeno.viewpager.ViewPager$ac r0 = (com.bytedance.adsdk.ugeno.viewpager.ViewPager.ac) r0
            boolean r0 = r0.Qhi
            if (r0 != 0) goto L9a
            int r0 = r15.getLeft()
            int r0 = r0 - r13
            float r0 = (float) r0
            int r3 = r12.getClientWidth()
            float r3 = (float) r3
            float r0 = r0 / r3
            com.bytedance.adsdk.ugeno.viewpager.ViewPager$Tgh r3 = r12.HLI
            r3.Qhi(r15, r0)
        L9a:
            int r1 = r1 + 1
            goto L79
        L9d:
            r12.Hf = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.ugeno.viewpager.ViewPager.Qhi(int, float, int):void");
    }

    private void cJ(int i, float f2, int i2) {
        fl flVar = this.dVA;
        if (flVar != null) {
            flVar.Qhi(i, f2, i2);
        }
        List<fl> list = this.dI;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                fl flVar2 = this.dI.get(i3);
                if (flVar2 != null) {
                    flVar2.Qhi(i, f2, i2);
                }
            }
        }
        fl flVar3 = this.zjb;
        if (flVar3 != null) {
            flVar3.Qhi(i, f2, i2);
        }
    }

    private void fl(int i) {
        fl flVar = this.dVA;
        if (flVar != null) {
            flVar.Sf(i);
        }
        List<fl> list = this.dI;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                fl flVar2 = this.dI.get(i2);
                if (flVar2 != null) {
                    flVar2.Sf(i);
                }
            }
        }
        fl flVar3 = this.zjb;
        if (flVar3 != null) {
            flVar3.Sf(i);
        }
    }

    private void Tgh(int i) {
        fl flVar = this.dVA;
        if (flVar != null) {
            flVar.hm(i);
        }
        List<fl> list = this.dI;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                fl flVar2 = this.dI.get(i2);
                if (flVar2 != null) {
                    flVar2.hm(i);
                }
            }
        }
        fl flVar3 = this.zjb;
        if (flVar3 != null) {
            flVar3.hm(i);
        }
    }

    private void Qhi(boolean z) {
        boolean z2 = this.VnT == 2;
        if (z2) {
            setScrollingCacheEnabled(false);
            if (!this.ABk.isFinished()) {
                this.ABk.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.ABk.getCurrX();
                int currY = this.ABk.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        CJ(currX);
                    }
                }
            }
        }
        this.pM = false;
        for (int i = 0; i < this.ROR.size(); i++) {
            cJ cJVar = this.ROR.get(i);
            if (cJVar.ac) {
                cJVar.ac = false;
                z2 = true;
            }
        }
        if (z2) {
            if (z) {
                postOnAnimation(this.gga);
            } else {
                this.gga.run();
            }
        }
    }

    private boolean Qhi(float f2, float f3) {
        if (f2 >= this.lB || f3 <= 0.0f) {
            return f2 > ((float) (getWidth() - this.lB)) && f3 < 0.0f;
        }
        return true;
    }

    private void cJ(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).setLayerType(z ? this.oU : 0, null);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int findPointerIndex;
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            Gm();
            return false;
        }
        if (action != 0) {
            if (this.aP) {
                return true;
            }
            if (this.NFd) {
                return false;
            }
        }
        if (action == 0) {
            float x = motionEvent.getX();
            this.zn = x;
            this.Jma = x;
            float y = motionEvent.getY();
            this.es = y;
            this.js = y;
            this.yN = motionEvent.getPointerId(0);
            this.NFd = false;
            this.iMK = true;
            this.ABk.computeScrollOffset();
            if (this.VnT == 2 && Math.abs(this.ABk.getFinalX() - this.ABk.getCurrX()) > this.jPH) {
                this.ABk.abortAnimation();
                this.pM = false;
                ac();
                this.aP = true;
                ac(true);
                setScrollState(1);
            } else {
                Qhi(false);
                this.aP = false;
            }
        } else if (action == 2) {
            int i = this.yN;
            if (i != -1 && (findPointerIndex = motionEvent.findPointerIndex(i)) != -1) {
                float x2 = motionEvent.getX(findPointerIndex);
                float f2 = x2 - this.Jma;
                float abs = Math.abs(f2);
                float y2 = motionEvent.getY(findPointerIndex);
                float abs2 = Math.abs(y2 - this.es);
                int i2 = (f2 > 0.0f ? 1 : (f2 == 0.0f ? 0 : -1));
                if (i2 != 0 && !Qhi(this.Jma, f2) && Qhi(this, false, (int) f2, (int) x2, (int) y2)) {
                    this.Jma = x2;
                    this.js = y2;
                    this.NFd = true;
                    return false;
                }
                int i3 = this.lG;
                if (abs > i3 && abs * 0.5f > abs2) {
                    this.aP = true;
                    ac(true);
                    setScrollState(1);
                    float f3 = this.zn;
                    float f4 = this.lG;
                    this.Jma = i2 > 0 ? f3 + f4 : f3 - f4;
                    this.js = y2;
                    setScrollingCacheEnabled(true);
                } else if (abs2 > i3) {
                    this.NFd = true;
                }
                if (this.aP && ac(x2)) {
                    postInvalidateOnAnimation();
                }
            }
        } else if (action == 6) {
            Qhi(motionEvent);
        }
        if (this.FQ == null) {
            this.FQ = VelocityTracker.obtain();
        }
        this.FQ.addMovement(motionEvent);
        return this.aP;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        com.bytedance.adsdk.ugeno.viewpager.cJ cJVar;
        int findPointerIndex;
        if (this.MND) {
            return true;
        }
        boolean z = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (cJVar = this.ac) == null || cJVar.Qhi() == 0) {
            return false;
        }
        if (this.FQ == null) {
            this.FQ = VelocityTracker.obtain();
        }
        this.FQ.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.ABk.abortAnimation();
            this.pM = false;
            ac();
            float x = motionEvent.getX();
            this.zn = x;
            this.Jma = x;
            float y = motionEvent.getY();
            this.es = y;
            this.js = y;
            this.yN = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action == 2) {
                if (!this.aP) {
                    int findPointerIndex2 = motionEvent.findPointerIndex(this.yN);
                    if (findPointerIndex2 == -1) {
                        z = Gm();
                    } else {
                        float x2 = motionEvent.getX(findPointerIndex2);
                        float abs = Math.abs(x2 - this.Jma);
                        float y2 = motionEvent.getY(findPointerIndex2);
                        float abs2 = Math.abs(y2 - this.js);
                        if (abs > this.lG && abs > abs2) {
                            this.aP = true;
                            ac(true);
                            float f2 = this.zn;
                            this.Jma = x2 - f2 > 0.0f ? f2 + this.lG : f2 - this.lG;
                            this.js = y2;
                            setScrollState(1);
                            setScrollingCacheEnabled(true);
                            ViewParent parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                        }
                    }
                }
                if (this.aP && (findPointerIndex = motionEvent.findPointerIndex(this.yN)) != -1) {
                    z = ac(motionEvent.getX(findPointerIndex));
                }
            } else if (action != 3) {
                if (action == 5) {
                    int actionIndex = motionEvent.getActionIndex();
                    if (actionIndex != -1) {
                        this.Jma = motionEvent.getX(actionIndex);
                        this.yN = motionEvent.getPointerId(actionIndex);
                    }
                } else if (action == 6) {
                    Qhi(motionEvent);
                    int findPointerIndex3 = motionEvent.findPointerIndex(this.yN);
                    if (findPointerIndex3 != -1) {
                        this.Jma = motionEvent.getX(findPointerIndex3);
                    }
                }
            } else if (this.aP) {
                Qhi(this.CJ, true, 0, false);
                z = Gm();
            }
        } else if (this.aP) {
            VelocityTracker velocityTracker = this.FQ;
            velocityTracker.computeCurrentVelocity(1000, this.ip);
            int xVelocity = (int) velocityTracker.getXVelocity(this.yN);
            this.pM = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            cJ zc = zc();
            float f3 = clientWidth;
            int i = zc.cJ;
            float f4 = ((scrollX / f3) - zc.fl) / (zc.CJ + (this.hpZ / f3));
            int findPointerIndex4 = motionEvent.findPointerIndex(this.yN);
            if (findPointerIndex4 != -1) {
                Qhi(Qhi(i, f4, xVelocity, (int) (motionEvent.getX(findPointerIndex4) - this.zn)), true, true, xVelocity);
                z = Gm();
            }
        }
        if (z) {
            postInvalidateOnAnimation();
        }
        return true;
    }

    private boolean Gm() {
        this.yN = -1;
        ABk();
        this.Qe.onRelease();
        this.YB.onRelease();
        return this.Qe.isFinished() || this.YB.isFinished();
    }

    private void ac(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    private boolean ac(float f2) {
        boolean z;
        boolean z2;
        float f3 = this.Jma - f2;
        this.Jma = f2;
        float scrollX = getScrollX() + f3;
        float clientWidth = getClientWidth();
        float f4 = this.MQ * clientWidth;
        float f5 = this.qMt * clientWidth;
        boolean z3 = false;
        cJ cJVar = this.ROR.get(0);
        ArrayList<cJ> arrayList = this.ROR;
        cJ cJVar2 = arrayList.get(arrayList.size() - 1);
        if (cJVar.cJ != 0) {
            f4 = cJVar.fl * clientWidth;
            z = false;
        } else {
            z = true;
        }
        if (cJVar2.cJ != this.ac.Qhi() - 1) {
            f5 = cJVar2.fl * clientWidth;
            z2 = false;
        } else {
            z2 = true;
        }
        if (scrollX < f4) {
            if (z) {
                this.Qe.onPull(Math.abs(f4 - scrollX) / clientWidth);
                z3 = true;
            }
            scrollX = f4;
        } else if (scrollX > f5) {
            if (z2) {
                this.YB.onPull(Math.abs(scrollX - f5) / clientWidth);
                z3 = true;
            }
            scrollX = f5;
        }
        int i = (int) scrollX;
        this.Jma += scrollX - i;
        scrollTo(i, getScrollY());
        CJ(i);
        return z3;
    }

    private cJ zc() {
        int i;
        int clientWidth = getClientWidth();
        float f2 = 0.0f;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f3 = clientWidth > 0 ? this.hpZ / clientWidth : 0.0f;
        int i2 = 0;
        boolean z = true;
        cJ cJVar = null;
        int i3 = -1;
        float f4 = 0.0f;
        while (i2 < this.ROR.size()) {
            cJ cJVar2 = this.ROR.get(i2);
            if (!z && cJVar2.cJ != (i = i3 + 1)) {
                cJVar2 = this.Sf;
                cJVar2.fl = f2 + f4 + f3;
                cJVar2.cJ = i;
                cJVar2.CJ = this.ac.Qhi(cJVar2.cJ);
                i2--;
            }
            cJ cJVar3 = cJVar2;
            f2 = cJVar3.fl;
            float f5 = cJVar3.CJ + f2 + f3;
            if (!z && scrollX < f2) {
                return cJVar;
            }
            if (scrollX < f5 || i2 == this.ROR.size() - 1) {
                return cJVar3;
            }
            int i4 = cJVar3.cJ;
            float f6 = cJVar3.CJ;
            i2++;
            z = false;
            i3 = i4;
            f4 = f6;
            cJVar = cJVar3;
        }
        return cJVar;
    }

    private int Qhi(int i, float f2, int i2, int i3) {
        if (Math.abs(i3) <= this.xyz || Math.abs(i2) <= this.PAe) {
            i += (int) (f2 + (i >= this.CJ ? 0.4f : 0.6f));
        } else if (i2 <= 0) {
            i++;
        }
        if (this.ROR.size() > 0) {
            ArrayList<cJ> arrayList = this.ROR;
            return Math.max(this.ROR.get(0).cJ, Math.min(i, arrayList.get(arrayList.size() - 1).cJ));
        }
        return i;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        com.bytedance.adsdk.ugeno.viewpager.cJ cJVar;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean z = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (cJVar = this.ac) != null && cJVar.Qhi() > 1)) {
            if (!this.Qe.isFinished()) {
                int save = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.MQ * width);
                this.Qe.setSize(height, width);
                z = this.Qe.draw(canvas);
                canvas.restoreToCount(save);
            }
            if (!this.YB.isFinished()) {
                int save2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.qMt + 1.0f)) * width2);
                this.YB.setSize(height2, width2);
                z |= this.YB.draw(canvas);
                canvas.restoreToCount(save2);
            }
        } else {
            this.Qe.finish();
            this.YB.finish();
        }
        if (z) {
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int width;
        float f2;
        float f3;
        float f4;
        super.onDraw(canvas);
        if (this.hpZ <= 0 || this.HzH == null || this.ROR.size() <= 0 || this.ac == null) {
            return;
        }
        int scrollX = getScrollX();
        float width2 = getWidth();
        float f5 = this.hpZ / width2;
        int i = 0;
        cJ cJVar = this.ROR.get(0);
        float f6 = cJVar.fl;
        int size = this.ROR.size();
        int i2 = cJVar.cJ;
        int i3 = this.ROR.get(size - 1).cJ;
        while (i2 < i3) {
            while (i2 > cJVar.cJ && i < size) {
                i++;
                cJVar = this.ROR.get(i);
            }
            if (i2 == cJVar.cJ) {
                f3 = (cJVar.fl + cJVar.CJ) * width2;
                f2 = cJVar.fl + cJVar.CJ + f5;
            } else {
                float Qhi2 = this.ac.Qhi(i2);
                f2 = f6 + Qhi2 + f5;
                f3 = (f6 + Qhi2) * width2;
            }
            if (this.hpZ + f3 > scrollX) {
                f4 = f5;
                this.HzH.setBounds(Math.round(f3), this.kYc, Math.round(this.hpZ + f3), this.tP);
                this.HzH.draw(canvas);
            } else {
                f4 = f5;
            }
            if (f3 > scrollX + width) {
                return;
            }
            i2++;
            f6 = f2;
            f5 = f4;
        }
    }

    public boolean CJ() {
        if (this.aP) {
            return false;
        }
        this.MND = true;
        setScrollState(1);
        this.Jma = 0.0f;
        this.zn = 0.0f;
        VelocityTracker velocityTracker = this.FQ;
        if (velocityTracker == null) {
            this.FQ = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, 0.0f, 0.0f, 0);
        this.FQ.addMovement(obtain);
        obtain.recycle();
        this.dIT = uptimeMillis;
        return true;
    }

    public void fl() {
        if (!this.MND) {
            throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
        }
        if (this.ac != null) {
            VelocityTracker velocityTracker = this.FQ;
            velocityTracker.computeCurrentVelocity(1000, this.ip);
            int xVelocity = (int) velocityTracker.getXVelocity(this.yN);
            this.pM = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            cJ zc = zc();
            Qhi(Qhi(zc.cJ, ((scrollX / clientWidth) - zc.fl) / zc.CJ, xVelocity, (int) (this.Jma - this.zn)), true, true, xVelocity);
        }
        ABk();
        this.MND = false;
    }

    public void cJ(float f2) {
        ArrayList<cJ> arrayList;
        if (!this.MND) {
            throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
        }
        if (this.ac == null) {
            return;
        }
        this.Jma += f2;
        float scrollX = getScrollX() - f2;
        float clientWidth = getClientWidth();
        float f3 = this.MQ * clientWidth;
        float f4 = this.qMt * clientWidth;
        cJ cJVar = this.ROR.get(0);
        cJ cJVar2 = this.ROR.get(arrayList.size() - 1);
        if (cJVar.cJ != 0) {
            f3 = cJVar.fl * clientWidth;
        }
        if (cJVar2.cJ != this.ac.Qhi() - 1) {
            f4 = cJVar2.fl * clientWidth;
        }
        if (scrollX < f3) {
            scrollX = f3;
        } else if (scrollX > f4) {
            scrollX = f4;
        }
        int i = (int) scrollX;
        this.Jma += scrollX - i;
        scrollTo(i, getScrollY());
        CJ(i);
        MotionEvent obtain = MotionEvent.obtain(this.dIT, SystemClock.uptimeMillis(), 2, this.Jma, 0.0f, 0);
        this.FQ.addMovement(obtain);
        obtain.recycle();
    }

    public boolean Tgh() {
        return this.MND;
    }

    private void Qhi(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.yN) {
            int i = actionIndex == 0 ? 1 : 0;
            this.Jma = motionEvent.getX(i);
            this.yN = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.FQ;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    private void ABk() {
        this.aP = false;
        this.NFd = false;
        VelocityTracker velocityTracker = this.FQ;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.FQ = null;
        }
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.CQU != z) {
            this.CQU = z;
        }
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        if (this.ac == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        return i < 0 ? scrollX > ((int) (((float) clientWidth) * this.MQ)) : i > 0 && scrollX < ((int) (((float) clientWidth) * this.qMt));
    }

    protected boolean Qhi(View view, boolean z, int i, int i2, int i3) {
        int i4;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i5 = i2 + scrollX;
                if (i5 >= childAt.getLeft() && i5 < childAt.getRight() && (i4 = i3 + scrollY) >= childAt.getTop() && i4 < childAt.getBottom() && Qhi(childAt, true, i, i5 - childAt.getLeft(), i4 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z && view.canScrollHorizontally(-i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || Qhi(keyEvent);
    }

    public boolean Qhi(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 21) {
                if (keyEvent.hasModifiers(2)) {
                    return ROR();
                }
                return ac(17);
            } else if (keyCode == 22) {
                if (keyEvent.hasModifiers(2)) {
                    return Sf();
                }
                return ac(66);
            } else if (keyCode == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return ac(2);
                }
                if (keyEvent.hasModifiers(1)) {
                    return ac(1);
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b6, code lost:
        if (r6 != 2) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean ac(int r6) {
        /*
            r5 = this;
            android.view.View r0 = r5.findFocus()
            r1 = 0
            if (r0 != r5) goto L9
        L7:
            r0 = r1
            goto L62
        L9:
            if (r0 == 0) goto L62
            android.view.ViewParent r2 = r0.getParent()
        Lf:
            boolean r3 = r2 instanceof android.view.ViewGroup
            if (r3 == 0) goto L1b
            if (r2 != r5) goto L16
            goto L62
        L16:
            android.view.ViewParent r2 = r2.getParent()
            goto Lf
        L1b:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.Class r3 = r0.getClass()
            java.lang.String r3 = r3.getSimpleName()
            r2.append(r3)
            android.view.ViewParent r0 = r0.getParent()
        L2f:
            boolean r3 = r0 instanceof android.view.ViewGroup
            if (r3 == 0) goto L49
            java.lang.String r3 = " => "
            java.lang.StringBuilder r3 = r2.append(r3)
            java.lang.Class r4 = r0.getClass()
            java.lang.String r4 = r4.getSimpleName()
            r3.append(r4)
            android.view.ViewParent r0 = r0.getParent()
            goto L2f
        L49:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r3 = "arrowScroll tried to find focus based on non-child current focused view "
            r0.<init>(r3)
            java.lang.String r2 = r2.toString()
            java.lang.StringBuilder r0 = r0.append(r2)
            java.lang.String r0 = r0.toString()
            java.lang.String r2 = "ViewPager"
            android.util.Log.e(r2, r0)
            goto L7
        L62:
            android.view.FocusFinder r1 = android.view.FocusFinder.getInstance()
            android.view.View r1 = r1.findNextFocus(r5, r0, r6)
            r2 = 66
            r3 = 17
            if (r1 == 0) goto Lad
            if (r1 == r0) goto Lad
            if (r6 != r3) goto L92
            android.graphics.Rect r2 = r5.hm
            android.graphics.Rect r2 = r5.Qhi(r2, r1)
            int r2 = r2.left
            android.graphics.Rect r3 = r5.hm
            android.graphics.Rect r3 = r5.Qhi(r3, r0)
            int r3 = r3.left
            if (r0 == 0) goto L8d
            if (r2 < r3) goto L8d
            boolean r0 = r5.ROR()
            goto Lc4
        L8d:
            boolean r0 = r1.requestFocus()
            goto Lc4
        L92:
            if (r6 != r2) goto Lb9
            android.graphics.Rect r2 = r5.hm
            android.graphics.Rect r2 = r5.Qhi(r2, r1)
            int r2 = r2.left
            android.graphics.Rect r3 = r5.hm
            android.graphics.Rect r3 = r5.Qhi(r3, r0)
            int r3 = r3.left
            if (r0 == 0) goto La8
            if (r2 <= r3) goto Lbb
        La8:
            boolean r0 = r1.requestFocus()
            goto Lc4
        Lad:
            if (r6 == r3) goto Lc0
            r0 = 1
            if (r6 != r0) goto Lb3
            goto Lc0
        Lb3:
            if (r6 == r2) goto Lbb
            r0 = 2
            if (r6 != r0) goto Lb9
            goto Lbb
        Lb9:
            r0 = 0
            goto Lc4
        Lbb:
            boolean r0 = r5.Sf()
            goto Lc4
        Lc0:
            boolean r0 = r5.ROR()
        Lc4:
            if (r0 == 0) goto Lcd
            int r6 = android.view.SoundEffectConstants.getContantForFocusDirection(r6)
            r5.playSoundEffect(r6)
        Lcd:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.ugeno.viewpager.ViewPager.ac(int):boolean");
    }

    private Rect Qhi(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left += viewGroup.getLeft();
            rect.right += viewGroup.getRight();
            rect.top += viewGroup.getTop();
            rect.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect;
    }

    boolean ROR() {
        int i = this.CJ;
        if (i > 0) {
            Qhi(i - 1, true);
            return true;
        }
        return false;
    }

    boolean Sf() {
        com.bytedance.adsdk.ugeno.viewpager.cJ cJVar = this.ac;
        if (cJVar == null || this.CJ >= cJVar.Qhi() - 1) {
            return false;
        }
        Qhi(this.CJ + 1, true);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        cJ Qhi2;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0 && (Qhi2 = Qhi(childAt)) != null && Qhi2.cJ == this.CJ) {
                    childAt.addFocusables(arrayList, i, i2);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if (((i2 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) || arrayList == null) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        cJ Qhi2;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (Qhi2 = Qhi(childAt)) != null && Qhi2.cJ == this.CJ) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int i3;
        int i4;
        cJ Qhi2;
        int childCount = getChildCount();
        if ((i & 2) != 0) {
            i3 = childCount;
            i2 = 0;
            i4 = 1;
        } else {
            i2 = childCount - 1;
            i3 = -1;
            i4 = -1;
        }
        while (i2 != i3) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (Qhi2 = Qhi(childAt)) != null && Qhi2.cJ == this.CJ && childAt.requestFocus(i, rect)) {
                return true;
            }
            i2 += i4;
        }
        return false;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        cJ Qhi2;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (Qhi2 = Qhi(childAt)) != null && Qhi2.cJ == this.CJ && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ac();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof ac) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ac(getContext(), attributeSet);
    }

    /* loaded from: classes2.dex */
    private class ROR extends DataSetObserver {
        ROR() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            ViewPager.this.cJ();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ViewPager.this.cJ();
        }
    }

    /* loaded from: classes2.dex */
    public static class ac extends ViewGroup.LayoutParams {
        boolean CJ;
        public boolean Qhi;
        int Tgh;
        float ac;
        public int cJ;
        int fl;

        public ac() {
            super(-1, -1);
            this.ac = 0.0f;
        }

        public ac(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.ac = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.cJ);
            this.cJ = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class hm implements Comparator<View> {
        hm() {
        }

        @Override // java.util.Comparator
        /* renamed from: Qhi */
        public int compare(View view, View view2) {
            ac acVar = (ac) view.getLayoutParams();
            ac acVar2 = (ac) view2.getLayoutParams();
            if (acVar.Qhi != acVar2.Qhi) {
                return acVar.Qhi ? 1 : -1;
            }
            return acVar.fl - acVar2.fl;
        }
    }
}

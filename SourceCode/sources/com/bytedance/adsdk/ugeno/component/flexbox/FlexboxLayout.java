package com.bytedance.adsdk.ugeno.component.flexbox;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import com.bytedance.adsdk.ugeno.cJ.Sf;
import com.bytedance.adsdk.ugeno.component.flexbox.fl;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class FlexboxLayout extends ViewGroup implements com.bytedance.adsdk.ugeno.component.flexbox.Qhi {
    private int[] ABk;
    private int CJ;
    private int Gm;
    private com.bytedance.adsdk.ugeno.ac HzH;
    private int Qhi;
    private Drawable ROR;
    private Drawable Sf;
    private int Tgh;
    private int WAv;
    private int ac;
    private int cJ;
    private int fl;
    private int hm;
    private List<ac> hpZ;
    private SparseIntArray iMK;
    private fl.Qhi kYc;
    private fl pA;
    private int zc;

    @Override // com.bytedance.adsdk.ugeno.component.flexbox.Qhi
    public int Qhi(View view) {
        return 0;
    }

    public FlexboxLayout(Context context) {
        super(context, null);
        this.Tgh = -1;
        this.pA = new fl(this);
        this.hpZ = new ArrayList();
        this.kYc = new fl.Qhi();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        com.bytedance.adsdk.ugeno.ac acVar = this.HzH;
        if (acVar != null) {
            int[] Qhi2 = acVar.Qhi(i, i2);
            Qhi(Qhi2[0], Qhi2[1]);
        } else {
            Qhi(i, i2);
        }
        com.bytedance.adsdk.ugeno.ac acVar2 = this.HzH;
        if (acVar2 != null) {
            acVar2.CJ();
        }
    }

    private void Qhi(int i, int i2) {
        if (this.iMK == null) {
            this.iMK = new SparseIntArray(getChildCount());
        }
        if (this.pA.cJ(this.iMK)) {
            this.ABk = this.pA.Qhi(this.iMK);
        }
        int i3 = this.Qhi;
        if (i3 == 0 || i3 == 1) {
            cJ(i, i2);
        } else if (i3 == 2 || i3 == 3) {
            ac(i, i2);
        } else {
            throw new IllegalStateException("Invalid value for the flex direction is set: " + this.Qhi);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.component.flexbox.Qhi
    public int getFlexItemCount() {
        return getChildCount();
    }

    @Override // com.bytedance.adsdk.ugeno.component.flexbox.Qhi
    public View Qhi(int i) {
        return getChildAt(i);
    }

    public View ac(int i) {
        if (i >= 0) {
            int[] iArr = this.ABk;
            if (i >= iArr.length) {
                return null;
            }
            return getChildAt(iArr[i]);
        }
        return null;
    }

    @Override // com.bytedance.adsdk.ugeno.component.flexbox.Qhi
    public View cJ(int i) {
        return ac(i);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (this.iMK == null) {
            this.iMK = new SparseIntArray(getChildCount());
        }
        this.ABk = this.pA.Qhi(view, i, layoutParams, this.iMK);
        super.addView(view, i, layoutParams);
    }

    private void cJ(int i, int i2) {
        this.hpZ.clear();
        this.kYc.Qhi();
        this.pA.Qhi(this.kYc, i, i2);
        this.hpZ = this.kYc.Qhi;
        this.pA.Qhi(i, i2);
        if (this.CJ == 3) {
            for (ac acVar : this.hpZ) {
                int i3 = Integer.MIN_VALUE;
                for (int i4 = 0; i4 < acVar.Sf; i4++) {
                    View ac = ac(acVar.pA + i4);
                    if (ac != null && ac.getVisibility() != 8) {
                        Qhi qhi = (Qhi) ac.getLayoutParams();
                        if (this.cJ != 2) {
                            i3 = Math.max(i3, ac.getMeasuredHeight() + Math.max(acVar.zc - ac.getBaseline(), qhi.topMargin) + qhi.bottomMargin);
                        } else {
                            i3 = Math.max(i3, ac.getMeasuredHeight() + qhi.topMargin + Math.max((acVar.zc - ac.getMeasuredHeight()) + ac.getBaseline(), qhi.bottomMargin));
                        }
                    }
                }
                acVar.ROR = i3;
            }
        }
        this.pA.cJ(i, i2, getPaddingTop() + getPaddingBottom());
        this.pA.Qhi();
        Qhi(this.Qhi, i, i2, this.kYc.cJ);
    }

    private void ac(int i, int i2) {
        this.hpZ.clear();
        this.kYc.Qhi();
        this.pA.cJ(this.kYc, i, i2);
        this.hpZ = this.kYc.Qhi;
        this.pA.Qhi(i, i2);
        this.pA.cJ(i, i2, getPaddingLeft() + getPaddingRight());
        this.pA.Qhi();
        Qhi(this.Qhi, i, i2, this.kYc.cJ);
    }

    private void Qhi(int i, int i2, int i3, int i4) {
        int sumOfCrossSize;
        int largestMainSize;
        int resolveSizeAndState;
        int resolveSizeAndState2;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (i == 0 || i == 1) {
            sumOfCrossSize = getSumOfCrossSize() + getPaddingTop() + getPaddingBottom();
            largestMainSize = getLargestMainSize();
        } else if (i == 2 || i == 3) {
            sumOfCrossSize = getLargestMainSize();
            largestMainSize = getSumOfCrossSize() + getPaddingLeft() + getPaddingRight();
        } else {
            throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(i)));
        }
        if (mode == Integer.MIN_VALUE) {
            if (size < largestMainSize) {
                i4 = View.combineMeasuredStates(i4, 16777216);
            } else {
                size = largestMainSize;
            }
            resolveSizeAndState = View.resolveSizeAndState(size, i2, i4);
        } else if (mode == 0) {
            resolveSizeAndState = View.resolveSizeAndState(largestMainSize, i2, i4);
        } else if (mode == 1073741824) {
            if (size < largestMainSize) {
                i4 = View.combineMeasuredStates(i4, 16777216);
            }
            resolveSizeAndState = View.resolveSizeAndState(size, i2, i4);
        } else {
            throw new IllegalStateException("Unknown width mode is set: ".concat(String.valueOf(mode)));
        }
        if (mode2 == Integer.MIN_VALUE) {
            if (size2 < sumOfCrossSize) {
                i4 = View.combineMeasuredStates(i4, 256);
            } else {
                size2 = sumOfCrossSize;
            }
            resolveSizeAndState2 = View.resolveSizeAndState(size2, i3, i4);
        } else if (mode2 == 0) {
            resolveSizeAndState2 = View.resolveSizeAndState(sumOfCrossSize, i3, i4);
        } else if (mode2 == 1073741824) {
            if (size2 < sumOfCrossSize) {
                i4 = View.combineMeasuredStates(i4, 256);
            }
            resolveSizeAndState2 = View.resolveSizeAndState(size2, i3, i4);
        } else {
            throw new IllegalStateException("Unknown height mode is set: ".concat(String.valueOf(mode2)));
        }
        setMeasuredDimension(resolveSizeAndState, resolveSizeAndState2);
    }

    @Override // com.bytedance.adsdk.ugeno.component.flexbox.Qhi
    public int getLargestMainSize() {
        int i = Integer.MIN_VALUE;
        for (ac acVar : this.hpZ) {
            i = Math.max(i, acVar.fl);
        }
        return i;
    }

    @Override // com.bytedance.adsdk.ugeno.component.flexbox.Qhi
    public int getSumOfCrossSize() {
        int i;
        int i2;
        int size = this.hpZ.size();
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            ac acVar = this.hpZ.get(i4);
            if (CJ(i4)) {
                if (Qhi()) {
                    i2 = this.Gm;
                } else {
                    i2 = this.zc;
                }
                i3 += i2;
            }
            if (Tgh(i4)) {
                if (Qhi()) {
                    i = this.Gm;
                } else {
                    i = this.zc;
                }
                i3 += i;
            }
            i3 += acVar.ROR;
        }
        return i3;
    }

    @Override // com.bytedance.adsdk.ugeno.component.flexbox.Qhi
    public boolean Qhi() {
        int i = this.Qhi;
        return i == 0 || i == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        com.bytedance.adsdk.ugeno.ac acVar = this.HzH;
        if (acVar != null) {
            acVar.fl();
        }
        int Qhi2 = Sf.Qhi(this);
        int i5 = this.Qhi;
        if (i5 == 0) {
            Qhi(Qhi2 == 1, i, i2, i3, i4);
        } else if (i5 == 1) {
            Qhi(Qhi2 != 1, i, i2, i3, i4);
        } else if (i5 == 2) {
            z2 = Qhi2 == 1;
            Qhi(this.cJ == 2 ? !z2 : z2, false, i, i2, i3, i4);
        } else if (i5 == 3) {
            z2 = Qhi2 == 1;
            Qhi(this.cJ == 2 ? !z2 : z2, true, i, i2, i3, i4);
        } else {
            throw new IllegalStateException("Invalid flex direction is set: " + this.Qhi);
        }
        com.bytedance.adsdk.ugeno.ac acVar2 = this.HzH;
        if (acVar2 != null) {
            acVar2.Qhi(i, i2, i3, i4);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01f1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void Qhi(boolean r29, int r30, int r31, int r32, int r33) {
        /*
            Method dump skipped, instructions count: 558
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.ugeno.component.flexbox.FlexboxLayout.Qhi(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01ed  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void Qhi(boolean r30, boolean r31, int r32, int r33, int r34, int r35) {
        /*
            Method dump skipped, instructions count: 542
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.ugeno.component.flexbox.FlexboxLayout.Qhi(boolean, boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.Sf == null && this.ROR == null) {
            return;
        }
        if (this.hm == 0 && this.WAv == 0) {
            return;
        }
        int Qhi2 = Sf.Qhi(this);
        int i = this.Qhi;
        if (i == 0) {
            Qhi(canvas, Qhi2 == 1, this.cJ == 2);
        } else if (i == 1) {
            Qhi(canvas, Qhi2 != 1, this.cJ == 2);
        } else if (i == 2) {
            boolean z = Qhi2 == 1;
            if (this.cJ == 2) {
                z = !z;
            }
            cJ(canvas, z, false);
        } else if (i != 3) {
        } else {
            boolean z2 = Qhi2 == 1;
            if (this.cJ == 2) {
                z2 = !z2;
            }
            cJ(canvas, z2, true);
        }
    }

    private void Qhi(Canvas canvas, boolean z, boolean z2) {
        int i;
        int i2;
        int right;
        int left;
        int paddingLeft = getPaddingLeft();
        int max = Math.max(0, (getWidth() - getPaddingRight()) - paddingLeft);
        int size = this.hpZ.size();
        for (int i3 = 0; i3 < size; i3++) {
            ac acVar = this.hpZ.get(i3);
            for (int i4 = 0; i4 < acVar.Sf; i4++) {
                int i5 = acVar.pA + i4;
                View ac = ac(i5);
                if (ac != null && ac.getVisibility() != 8) {
                    Qhi qhi = (Qhi) ac.getLayoutParams();
                    if (CJ(i5, i4)) {
                        if (z) {
                            left = ac.getRight() + qhi.rightMargin;
                        } else {
                            left = (ac.getLeft() - qhi.leftMargin) - this.zc;
                        }
                        Qhi(canvas, left, acVar.cJ, acVar.ROR);
                    }
                    if (i4 == acVar.Sf - 1 && (this.WAv & 4) > 0) {
                        if (z) {
                            right = (ac.getLeft() - qhi.leftMargin) - this.zc;
                        } else {
                            right = ac.getRight() + qhi.rightMargin;
                        }
                        Qhi(canvas, right, acVar.cJ, acVar.ROR);
                    }
                }
            }
            if (CJ(i3)) {
                if (z2) {
                    i2 = acVar.CJ;
                } else {
                    i2 = acVar.cJ - this.Gm;
                }
                cJ(canvas, paddingLeft, i2, max);
            }
            if (Tgh(i3) && (this.hm & 4) > 0) {
                if (z2) {
                    i = acVar.cJ - this.Gm;
                } else {
                    i = acVar.CJ;
                }
                cJ(canvas, paddingLeft, i, max);
            }
        }
    }

    private void cJ(Canvas canvas, boolean z, boolean z2) {
        int i;
        int i2;
        int bottom;
        int top;
        int paddingTop = getPaddingTop();
        int max = Math.max(0, (getHeight() - getPaddingBottom()) - paddingTop);
        int size = this.hpZ.size();
        for (int i3 = 0; i3 < size; i3++) {
            ac acVar = this.hpZ.get(i3);
            for (int i4 = 0; i4 < acVar.Sf; i4++) {
                int i5 = acVar.pA + i4;
                View ac = ac(i5);
                if (ac != null && ac.getVisibility() != 8) {
                    Qhi qhi = (Qhi) ac.getLayoutParams();
                    if (CJ(i5, i4)) {
                        if (z2) {
                            top = ac.getBottom() + qhi.bottomMargin;
                        } else {
                            top = (ac.getTop() - qhi.topMargin) - this.Gm;
                        }
                        cJ(canvas, acVar.Qhi, top, acVar.ROR);
                    }
                    if (i4 == acVar.Sf - 1 && (this.hm & 4) > 0) {
                        if (z2) {
                            bottom = (ac.getTop() - qhi.topMargin) - this.Gm;
                        } else {
                            bottom = ac.getBottom() + qhi.bottomMargin;
                        }
                        cJ(canvas, acVar.Qhi, bottom, acVar.ROR);
                    }
                }
            }
            if (CJ(i3)) {
                if (z) {
                    i2 = acVar.ac;
                } else {
                    i2 = acVar.Qhi - this.zc;
                }
                Qhi(canvas, i2, paddingTop, max);
            }
            if (Tgh(i3) && (this.WAv & 4) > 0) {
                if (z) {
                    i = acVar.Qhi - this.zc;
                } else {
                    i = acVar.ac;
                }
                Qhi(canvas, i, paddingTop, max);
            }
        }
    }

    private void Qhi(Canvas canvas, int i, int i2, int i3) {
        Drawable drawable = this.Sf;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i, i2, this.zc + i, i3 + i2);
        this.Sf.draw(canvas);
    }

    private void cJ(Canvas canvas, int i, int i2, int i3) {
        Drawable drawable = this.ROR;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i, i2, i3 + i, this.Gm + i2);
        this.ROR.draw(canvas);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof Qhi;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof Qhi) {
            return new Qhi((Qhi) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new Qhi((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new Qhi(layoutParams);
    }

    @Override // com.bytedance.adsdk.ugeno.component.flexbox.Qhi
    public int getFlexDirection() {
        return this.Qhi;
    }

    public void setFlexDirection(int i) {
        if (this.Qhi != i) {
            this.Qhi = i;
            requestLayout();
        }
    }

    @Override // com.bytedance.adsdk.ugeno.component.flexbox.Qhi
    public int getFlexWrap() {
        return this.cJ;
    }

    public void setFlexWrap(int i) {
        if (this.cJ != i) {
            this.cJ = i;
            requestLayout();
        }
    }

    public int getJustifyContent() {
        return this.ac;
    }

    public void setJustifyContent(int i) {
        if (this.ac != i) {
            this.ac = i;
            requestLayout();
        }
    }

    @Override // com.bytedance.adsdk.ugeno.component.flexbox.Qhi
    public int getAlignItems() {
        return this.CJ;
    }

    public void setAlignItems(int i) {
        if (this.CJ != i) {
            this.CJ = i;
            requestLayout();
        }
    }

    @Override // com.bytedance.adsdk.ugeno.component.flexbox.Qhi
    public int getAlignContent() {
        return this.fl;
    }

    public void setAlignContent(int i) {
        if (this.fl != i) {
            this.fl = i;
            requestLayout();
        }
    }

    @Override // com.bytedance.adsdk.ugeno.component.flexbox.Qhi
    public int getMaxLine() {
        return this.Tgh;
    }

    public void setMaxLine(int i) {
        if (this.Tgh != i) {
            this.Tgh = i;
            requestLayout();
        }
    }

    public List<ac> getFlexLines() {
        ArrayList arrayList = new ArrayList(this.hpZ.size());
        for (ac acVar : this.hpZ) {
            if (acVar.cJ() != 0) {
                arrayList.add(acVar);
            }
        }
        return arrayList;
    }

    @Override // com.bytedance.adsdk.ugeno.component.flexbox.Qhi
    public int Qhi(View view, int i, int i2) {
        int i3;
        int i4;
        if (Qhi()) {
            i3 = CJ(i, i2) ? this.zc : 0;
            if ((this.WAv & 4) <= 0) {
                return i3;
            }
            i4 = this.zc;
        } else {
            i3 = CJ(i, i2) ? this.Gm : 0;
            if ((this.hm & 4) <= 0) {
                return i3;
            }
            i4 = this.Gm;
        }
        return i3 + i4;
    }

    @Override // com.bytedance.adsdk.ugeno.component.flexbox.Qhi
    public void Qhi(ac acVar) {
        if (Qhi()) {
            if ((this.WAv & 4) > 0) {
                acVar.fl += this.zc;
                acVar.Tgh += this.zc;
            }
        } else if ((this.hm & 4) > 0) {
            acVar.fl += this.Gm;
            acVar.Tgh += this.Gm;
        }
    }

    @Override // com.bytedance.adsdk.ugeno.component.flexbox.Qhi
    public int Qhi(int i, int i2, int i3) {
        return getChildMeasureSpec(i, i2, i3);
    }

    @Override // com.bytedance.adsdk.ugeno.component.flexbox.Qhi
    public int cJ(int i, int i2, int i3) {
        return getChildMeasureSpec(i, i2, i3);
    }

    @Override // com.bytedance.adsdk.ugeno.component.flexbox.Qhi
    public void Qhi(View view, int i, int i2, ac acVar) {
        if (CJ(i, i2)) {
            if (Qhi()) {
                acVar.fl += this.zc;
                acVar.Tgh += this.zc;
                return;
            }
            acVar.fl += this.Gm;
            acVar.Tgh += this.Gm;
        }
    }

    @Override // com.bytedance.adsdk.ugeno.component.flexbox.Qhi
    public void setFlexLines(List<ac> list) {
        this.hpZ = list;
    }

    @Override // com.bytedance.adsdk.ugeno.component.flexbox.Qhi
    public List<ac> getFlexLinesInternal() {
        return this.hpZ;
    }

    public Drawable getDividerDrawableHorizontal() {
        return this.ROR;
    }

    public Drawable getDividerDrawableVertical() {
        return this.Sf;
    }

    public void setDividerDrawable(Drawable drawable) {
        setDividerDrawableHorizontal(drawable);
        setDividerDrawableVertical(drawable);
    }

    public void setDividerDrawableHorizontal(Drawable drawable) {
        if (drawable == this.ROR) {
            return;
        }
        this.ROR = drawable;
        if (drawable != null) {
            this.Gm = drawable.getIntrinsicHeight();
        } else {
            this.Gm = 0;
        }
        cJ();
        requestLayout();
    }

    public void setDividerDrawableVertical(Drawable drawable) {
        if (drawable == this.Sf) {
            return;
        }
        this.Sf = drawable;
        if (drawable != null) {
            this.zc = drawable.getIntrinsicWidth();
        } else {
            this.zc = 0;
        }
        cJ();
        requestLayout();
    }

    public int getShowDividerVertical() {
        return this.WAv;
    }

    public int getShowDividerHorizontal() {
        return this.hm;
    }

    public void setShowDivider(int i) {
        setShowDividerVertical(i);
        setShowDividerHorizontal(i);
    }

    public void setShowDividerVertical(int i) {
        if (i != this.WAv) {
            this.WAv = i;
            requestLayout();
        }
    }

    public void setShowDividerHorizontal(int i) {
        if (i != this.hm) {
            this.hm = i;
            requestLayout();
        }
    }

    private void cJ() {
        if (this.ROR == null && this.Sf == null) {
            setWillNotDraw(true);
        } else {
            setWillNotDraw(false);
        }
    }

    private boolean CJ(int i, int i2) {
        return fl(i, i2) ? Qhi() ? (this.WAv & 1) != 0 : (this.hm & 1) != 0 : Qhi() ? (this.WAv & 2) != 0 : (this.hm & 2) != 0;
    }

    private boolean fl(int i, int i2) {
        for (int i3 = 1; i3 <= i2; i3++) {
            View ac = ac(i - i3);
            if (ac != null && ac.getVisibility() != 8) {
                return false;
            }
        }
        return true;
    }

    private boolean CJ(int i) {
        if (i >= 0 && i < this.hpZ.size()) {
            if (fl(i)) {
                return Qhi() ? (this.hm & 1) != 0 : (this.WAv & 1) != 0;
            } else if (Qhi()) {
                return (this.hm & 2) != 0;
            } else if ((this.WAv & 2) != 0) {
                return true;
            }
        }
        return false;
    }

    private boolean fl(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (this.hpZ.get(i2).cJ() > 0) {
                return false;
            }
        }
        return true;
    }

    private boolean Tgh(int i) {
        if (i >= 0 && i < this.hpZ.size()) {
            for (int i2 = i + 1; i2 < this.hpZ.size(); i2++) {
                if (this.hpZ.get(i2).cJ() > 0) {
                    return false;
                }
            }
            if (Qhi()) {
                return (this.hm & 4) != 0;
            } else if ((this.WAv & 4) != 0) {
                return true;
            }
        }
        return false;
    }

    /* loaded from: classes2.dex */
    public static class Qhi extends ViewGroup.MarginLayoutParams implements cJ {
        public static final Parcelable.Creator<Qhi> CREATOR = new Parcelable.Creator<Qhi>() { // from class: com.bytedance.adsdk.ugeno.component.flexbox.FlexboxLayout.Qhi.1
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
        private int CJ;
        private int Qhi;
        private int ROR;
        private int Sf;
        private int Tgh;
        private boolean WAv;
        private float ac;
        private float cJ;
        private float fl;
        private int hm;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public Qhi(Qhi qhi) {
            super((ViewGroup.MarginLayoutParams) qhi);
            this.Qhi = 1;
            this.cJ = 0.0f;
            this.ac = 0.0f;
            this.CJ = -1;
            this.fl = -1.0f;
            this.Tgh = -1;
            this.ROR = -1;
            this.Sf = ViewCompat.MEASURED_SIZE_MASK;
            this.hm = ViewCompat.MEASURED_SIZE_MASK;
            this.Qhi = qhi.Qhi;
            this.cJ = qhi.cJ;
            this.ac = qhi.ac;
            this.CJ = qhi.CJ;
            this.fl = qhi.fl;
            this.Tgh = qhi.Tgh;
            this.ROR = qhi.ROR;
            this.Sf = qhi.Sf;
            this.hm = qhi.hm;
            this.WAv = qhi.WAv;
        }

        public Qhi(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.Qhi = 1;
            this.cJ = 0.0f;
            this.ac = 0.0f;
            this.CJ = -1;
            this.fl = -1.0f;
            this.Tgh = -1;
            this.ROR = -1;
            this.Sf = ViewCompat.MEASURED_SIZE_MASK;
            this.hm = ViewCompat.MEASURED_SIZE_MASK;
        }

        public Qhi(int i, int i2) {
            super(new ViewGroup.LayoutParams(i, i2));
            this.Qhi = 1;
            this.cJ = 0.0f;
            this.ac = 0.0f;
            this.CJ = -1;
            this.fl = -1.0f;
            this.Tgh = -1;
            this.ROR = -1;
            this.Sf = ViewCompat.MEASURED_SIZE_MASK;
            this.hm = ViewCompat.MEASURED_SIZE_MASK;
        }

        public Qhi(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.Qhi = 1;
            this.cJ = 0.0f;
            this.ac = 0.0f;
            this.CJ = -1;
            this.fl = -1.0f;
            this.Tgh = -1;
            this.ROR = -1;
            this.Sf = ViewCompat.MEASURED_SIZE_MASK;
            this.hm = ViewCompat.MEASURED_SIZE_MASK;
        }

        @Override // com.bytedance.adsdk.ugeno.component.flexbox.cJ
        public int Qhi() {
            return this.width;
        }

        @Override // com.bytedance.adsdk.ugeno.component.flexbox.cJ
        public int cJ() {
            return this.height;
        }

        @Override // com.bytedance.adsdk.ugeno.component.flexbox.cJ
        public int ac() {
            return this.Qhi;
        }

        public void ac(int i) {
            this.Qhi = i;
        }

        @Override // com.bytedance.adsdk.ugeno.component.flexbox.cJ
        public float CJ() {
            return this.cJ;
        }

        public void Qhi(float f2) {
            this.cJ = f2;
        }

        @Override // com.bytedance.adsdk.ugeno.component.flexbox.cJ
        public float fl() {
            return this.ac;
        }

        public void cJ(float f2) {
            this.ac = f2;
        }

        @Override // com.bytedance.adsdk.ugeno.component.flexbox.cJ
        public int Tgh() {
            return this.CJ;
        }

        public void CJ(int i) {
            this.CJ = i;
        }

        @Override // com.bytedance.adsdk.ugeno.component.flexbox.cJ
        public int ROR() {
            return this.Tgh;
        }

        @Override // com.bytedance.adsdk.ugeno.component.flexbox.cJ
        public void Qhi(int i) {
            this.Tgh = i;
        }

        @Override // com.bytedance.adsdk.ugeno.component.flexbox.cJ
        public int Sf() {
            return this.ROR;
        }

        @Override // com.bytedance.adsdk.ugeno.component.flexbox.cJ
        public void cJ(int i) {
            this.ROR = i;
        }

        @Override // com.bytedance.adsdk.ugeno.component.flexbox.cJ
        public int hm() {
            return this.Sf;
        }

        @Override // com.bytedance.adsdk.ugeno.component.flexbox.cJ
        public int WAv() {
            return this.hm;
        }

        @Override // com.bytedance.adsdk.ugeno.component.flexbox.cJ
        public boolean Gm() {
            return this.WAv;
        }

        @Override // com.bytedance.adsdk.ugeno.component.flexbox.cJ
        public float zc() {
            return this.fl;
        }

        public void ac(float f2) {
            this.fl = f2;
        }

        @Override // com.bytedance.adsdk.ugeno.component.flexbox.cJ
        public int ABk() {
            return this.leftMargin;
        }

        @Override // com.bytedance.adsdk.ugeno.component.flexbox.cJ
        public int iMK() {
            return this.topMargin;
        }

        @Override // com.bytedance.adsdk.ugeno.component.flexbox.cJ
        public int pA() {
            return this.rightMargin;
        }

        @Override // com.bytedance.adsdk.ugeno.component.flexbox.cJ
        public int hpZ() {
            return this.bottomMargin;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.Qhi);
            parcel.writeFloat(this.cJ);
            parcel.writeFloat(this.ac);
            parcel.writeInt(this.CJ);
            parcel.writeFloat(this.fl);
            parcel.writeInt(this.Tgh);
            parcel.writeInt(this.ROR);
            parcel.writeInt(this.Sf);
            parcel.writeInt(this.hm);
            parcel.writeByte(this.WAv ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.bottomMargin);
            parcel.writeInt(this.leftMargin);
            parcel.writeInt(this.rightMargin);
            parcel.writeInt(this.topMargin);
            parcel.writeInt(this.height);
            parcel.writeInt(this.width);
        }

        protected Qhi(Parcel parcel) {
            super(0, 0);
            this.Qhi = 1;
            this.cJ = 0.0f;
            this.ac = 0.0f;
            this.CJ = -1;
            this.fl = -1.0f;
            this.Tgh = -1;
            this.ROR = -1;
            this.Sf = ViewCompat.MEASURED_SIZE_MASK;
            this.hm = ViewCompat.MEASURED_SIZE_MASK;
            this.Qhi = parcel.readInt();
            this.cJ = parcel.readFloat();
            this.ac = parcel.readFloat();
            this.CJ = parcel.readInt();
            this.fl = parcel.readFloat();
            this.Tgh = parcel.readInt();
            this.ROR = parcel.readInt();
            this.Sf = parcel.readInt();
            this.hm = parcel.readInt();
            this.WAv = parcel.readByte() != 0;
            this.bottomMargin = parcel.readInt();
            this.leftMargin = parcel.readInt();
            this.rightMargin = parcel.readInt();
            this.topMargin = parcel.readInt();
            this.height = parcel.readInt();
            this.width = parcel.readInt();
        }
    }

    public void Qhi(com.bytedance.adsdk.ugeno.component.cJ cJVar) {
        this.HzH = cJVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.bytedance.adsdk.ugeno.ac acVar = this.HzH;
        if (acVar != null) {
            acVar.Tgh();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        com.bytedance.adsdk.ugeno.ac acVar = this.HzH;
        if (acVar != null) {
            acVar.ROR();
        }
    }
}

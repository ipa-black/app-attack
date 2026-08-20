package com.bytedance.adsdk.ugeno.component.flexbox;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import com.bytedance.adsdk.ugeno.cJ.ROR;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.apache.commons.collections.primitives.ArrayUnsignedIntList;
/* compiled from: FlexboxHelper.java */
/* loaded from: classes2.dex */
class fl {
    static final /* synthetic */ boolean ac = true;
    private final com.bytedance.adsdk.ugeno.component.flexbox.Qhi CJ;
    int[] Qhi;
    private long[] Tgh;
    long[] cJ;
    private boolean[] fl;

    int Qhi(long j) {
        return (int) j;
    }

    int cJ(long j) {
        return (int) (j >> 32);
    }

    long cJ(int i, int i2) {
        return (i & ArrayUnsignedIntList.MAX_VALUE) | (i2 << 32);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public fl(com.bytedance.adsdk.ugeno.component.flexbox.Qhi qhi) {
        this.CJ = qhi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] Qhi(View view, int i, ViewGroup.LayoutParams layoutParams, SparseIntArray sparseIntArray) {
        int flexItemCount = this.CJ.getFlexItemCount();
        List<cJ> cJ2 = cJ(flexItemCount);
        cJ cJVar = new cJ();
        if (view != null && (layoutParams instanceof com.bytedance.adsdk.ugeno.component.flexbox.cJ)) {
            cJVar.cJ = ((com.bytedance.adsdk.ugeno.component.flexbox.cJ) layoutParams).ac();
        } else {
            cJVar.cJ = 1;
        }
        if (i == -1 || i == flexItemCount) {
            cJVar.Qhi = flexItemCount;
        } else if (i < this.CJ.getFlexItemCount()) {
            cJVar.Qhi = i;
            while (i < flexItemCount) {
                cJ2.get(i).Qhi++;
                i++;
            }
        } else {
            cJVar.Qhi = flexItemCount;
        }
        cJ2.add(cJVar);
        return Qhi(flexItemCount + 1, cJ2, sparseIntArray);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] Qhi(SparseIntArray sparseIntArray) {
        int flexItemCount = this.CJ.getFlexItemCount();
        return Qhi(flexItemCount, cJ(flexItemCount), sparseIntArray);
    }

    private List<cJ> cJ(int i) {
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            cJ cJVar = new cJ();
            cJVar.cJ = ((com.bytedance.adsdk.ugeno.component.flexbox.cJ) this.CJ.Qhi(i2).getLayoutParams()).ac();
            cJVar.Qhi = i2;
            arrayList.add(cJVar);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean cJ(SparseIntArray sparseIntArray) {
        int flexItemCount = this.CJ.getFlexItemCount();
        if (sparseIntArray.size() != flexItemCount) {
            return true;
        }
        for (int i = 0; i < flexItemCount; i++) {
            View Qhi2 = this.CJ.Qhi(i);
            if (Qhi2 != null && ((com.bytedance.adsdk.ugeno.component.flexbox.cJ) Qhi2.getLayoutParams()).ac() != sparseIntArray.get(i)) {
                return true;
            }
        }
        return false;
    }

    private int[] Qhi(int i, List<cJ> list, SparseIntArray sparseIntArray) {
        Collections.sort(list);
        sparseIntArray.clear();
        int[] iArr = new int[i];
        int i2 = 0;
        for (cJ cJVar : list) {
            iArr[i2] = cJVar.Qhi;
            sparseIntArray.append(cJVar.Qhi, cJVar.cJ);
            i2++;
        }
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi(Qhi qhi, int i, int i2) {
        Qhi(qhi, i, i2, Integer.MAX_VALUE, 0, -1, (List<ac>) null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void cJ(Qhi qhi, int i, int i2) {
        Qhi(qhi, i2, i, Integer.MAX_VALUE, 0, -1, (List<ac>) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    void Qhi(Qhi qhi, int i, int i2, int i3, int i4, int i5, List<ac> list) {
        int i6;
        Qhi qhi2;
        int i7;
        int i8;
        int i9;
        List<ac> list2;
        int i10;
        View view;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18 = i;
        int i19 = i2;
        int i20 = i5;
        boolean Qhi2 = this.CJ.Qhi();
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        ArrayList arrayList = list == null ? new ArrayList() : list;
        qhi.Qhi = arrayList;
        int i21 = i20 == -1 ? 1 : 0;
        int Qhi3 = Qhi(Qhi2);
        int cJ2 = cJ(Qhi2);
        int ac2 = ac(Qhi2);
        int CJ = CJ(Qhi2);
        ac acVar = new ac();
        int i22 = i4;
        acVar.pA = i22;
        int i23 = cJ2 + Qhi3;
        acVar.fl = i23;
        int flexItemCount = this.CJ.getFlexItemCount();
        int i24 = i21;
        int i25 = Integer.MIN_VALUE;
        int i26 = 0;
        int i27 = 0;
        int i28 = 0;
        while (true) {
            if (i22 >= flexItemCount) {
                i6 = i27;
                qhi2 = qhi;
                break;
            }
            View cJ3 = this.CJ.cJ(i22);
            if (cJ3 == null) {
                if (Qhi(i22, flexItemCount, acVar)) {
                    Qhi(arrayList, acVar, i22, i26);
                }
            } else if (cJ3.getVisibility() == 8) {
                acVar.hm++;
                acVar.Sf++;
                if (Qhi(i22, flexItemCount, acVar)) {
                    Qhi(arrayList, acVar, i22, i26);
                }
            } else {
                if (cJ3 instanceof CompoundButton) {
                    Qhi((CompoundButton) cJ3);
                }
                com.bytedance.adsdk.ugeno.component.flexbox.cJ cJVar = (com.bytedance.adsdk.ugeno.component.flexbox.cJ) cJ3.getLayoutParams();
                int i29 = flexItemCount;
                if (cJVar.Tgh() == 4) {
                    acVar.iMK.add(Integer.valueOf(i22));
                }
                int Qhi4 = Qhi(cJVar, Qhi2);
                if (cJVar.zc() != -1.0f && mode == 1073741824) {
                    Qhi4 = Math.round(size * cJVar.zc());
                }
                if (Qhi2) {
                    int Qhi5 = this.CJ.Qhi(i18, i23 + ac(cJVar, true) + CJ(cJVar, true), Qhi4);
                    i7 = size;
                    i8 = mode;
                    int cJ4 = this.CJ.cJ(i19, ac2 + CJ + fl(cJVar, true) + Tgh(cJVar, true) + i26, cJ(cJVar, true));
                    cJ3.measure(Qhi5, cJ4);
                    Qhi(i22, Qhi5, cJ4, cJ3);
                    i9 = Qhi5;
                } else {
                    i7 = size;
                    i8 = mode;
                    int Qhi6 = this.CJ.Qhi(i19, ac2 + CJ + fl(cJVar, false) + Tgh(cJVar, false) + i26, cJ(cJVar, false));
                    int cJ5 = this.CJ.cJ(i18, ac(cJVar, false) + i23 + CJ(cJVar, false), Qhi4);
                    cJ3.measure(Qhi6, cJ5);
                    Qhi(i22, Qhi6, cJ5, cJ3);
                    i9 = cJ5;
                }
                Qhi(cJ3, i22);
                i27 = View.combineMeasuredStates(i27, cJ3.getMeasuredState());
                int i30 = i26;
                int i31 = i23;
                ac acVar2 = acVar;
                int i32 = i22;
                list2 = arrayList;
                int i33 = i9;
                if (Qhi(cJ3, i8, i7, acVar.fl, CJ(cJVar, Qhi2) + Qhi(cJ3, Qhi2) + ac(cJVar, Qhi2), cJVar, i32, i28, arrayList.size())) {
                    if (acVar2.cJ() > 0) {
                        Qhi(list2, acVar2, i32 > 0 ? i32 - 1 : 0, i30);
                        i26 = acVar2.ROR + i30;
                    } else {
                        i26 = i30;
                    }
                    if (Qhi2) {
                        if (cJVar.cJ() == -1) {
                            com.bytedance.adsdk.ugeno.component.flexbox.Qhi qhi3 = this.CJ;
                            i10 = i2;
                            i22 = i32;
                            view = cJ3;
                            view.measure(i33, qhi3.cJ(i10, qhi3.getPaddingTop() + this.CJ.getPaddingBottom() + cJVar.iMK() + cJVar.hpZ() + i26, cJVar.cJ()));
                            Qhi(view, i22);
                        } else {
                            i10 = i2;
                            view = cJ3;
                            i22 = i32;
                        }
                    } else {
                        i10 = i2;
                        view = cJ3;
                        i22 = i32;
                        if (cJVar.Qhi() == -1) {
                            com.bytedance.adsdk.ugeno.component.flexbox.Qhi qhi4 = this.CJ;
                            view.measure(qhi4.Qhi(i10, qhi4.getPaddingLeft() + this.CJ.getPaddingRight() + cJVar.ABk() + cJVar.pA() + i26, cJVar.Qhi()), i33);
                            Qhi(view, i22);
                        }
                    }
                    acVar = new ac();
                    i12 = 1;
                    acVar.Sf = 1;
                    i11 = i31;
                    acVar.fl = i11;
                    acVar.pA = i22;
                    i14 = Integer.MIN_VALUE;
                    i13 = 0;
                } else {
                    i10 = i2;
                    view = cJ3;
                    i22 = i32;
                    acVar = acVar2;
                    i11 = i31;
                    i12 = 1;
                    acVar.Sf++;
                    i13 = i28 + 1;
                    i26 = i30;
                    i14 = i25;
                }
                acVar.HzH = (acVar.HzH ? 1 : 0) | (cJVar.CJ() != 0.0f ? i12 : 0);
                acVar.kYc = (acVar.kYc ? 1 : 0) | (cJVar.fl() != 0.0f ? i12 : 0);
                int[] iArr = this.Qhi;
                if (iArr != null) {
                    iArr[i22] = list2.size();
                }
                acVar.fl += Qhi(view, Qhi2) + ac(cJVar, Qhi2) + CJ(cJVar, Qhi2);
                acVar.WAv += cJVar.CJ();
                acVar.Gm += cJVar.fl();
                this.CJ.Qhi(view, i22, i13, acVar);
                int max = Math.max(i14, cJ(view, Qhi2) + fl(cJVar, Qhi2) + Tgh(cJVar, Qhi2) + this.CJ.Qhi(view));
                acVar.ROR = Math.max(acVar.ROR, max);
                if (Qhi2) {
                    if (this.CJ.getFlexWrap() != 2) {
                        acVar.zc = Math.max(acVar.zc, view.getBaseline() + cJVar.iMK());
                    } else {
                        acVar.zc = Math.max(acVar.zc, (view.getMeasuredHeight() - view.getBaseline()) + cJVar.hpZ());
                    }
                }
                i15 = i29;
                if (Qhi(i22, i15, acVar)) {
                    Qhi(list2, acVar, i22, i26);
                    i26 += acVar.ROR;
                }
                i16 = i5;
                if (i16 == -1 || list2.size() <= 0 || list2.get(list2.size() - i12).hpZ < i16 || i22 < i16 || i24 != 0) {
                    i17 = i3;
                } else {
                    i26 = -acVar.Qhi();
                    i17 = i3;
                    i24 = i12;
                }
                if (i26 > i17 && i24 != 0) {
                    qhi2 = qhi;
                    i6 = i27;
                    break;
                }
                i28 = i13;
                i25 = max;
                i22++;
                i18 = i;
                flexItemCount = i15;
                i19 = i10;
                i23 = i11;
                arrayList = list2;
                size = i7;
                i20 = i16;
                mode = i8;
            }
            i7 = size;
            i8 = mode;
            i10 = i19;
            i16 = i20;
            list2 = arrayList;
            i11 = i23;
            i15 = flexItemCount;
            i22++;
            i18 = i;
            flexItemCount = i15;
            i19 = i10;
            i23 = i11;
            arrayList = list2;
            size = i7;
            i20 = i16;
            mode = i8;
        }
        qhi2.cJ = i6;
    }

    private void Qhi(CompoundButton compoundButton) {
        com.bytedance.adsdk.ugeno.component.flexbox.cJ cJVar = (com.bytedance.adsdk.ugeno.component.flexbox.cJ) compoundButton.getLayoutParams();
        int ROR = cJVar.ROR();
        int Sf = cJVar.Sf();
        Drawable Qhi2 = com.bytedance.adsdk.ugeno.cJ.Tgh.Qhi(compoundButton);
        int minimumWidth = Qhi2 == null ? 0 : Qhi2.getMinimumWidth();
        int minimumHeight = Qhi2 != null ? Qhi2.getMinimumHeight() : 0;
        if (ROR == -1) {
            ROR = minimumWidth;
        }
        cJVar.Qhi(ROR);
        if (Sf == -1) {
            Sf = minimumHeight;
        }
        cJVar.cJ(Sf);
    }

    private int Qhi(boolean z) {
        if (z) {
            return this.CJ.getPaddingStart();
        }
        return this.CJ.getPaddingTop();
    }

    private int cJ(boolean z) {
        if (z) {
            return this.CJ.getPaddingEnd();
        }
        return this.CJ.getPaddingBottom();
    }

    private int ac(boolean z) {
        if (z) {
            return this.CJ.getPaddingTop();
        }
        return this.CJ.getPaddingStart();
    }

    private int CJ(boolean z) {
        if (z) {
            return this.CJ.getPaddingBottom();
        }
        return this.CJ.getPaddingEnd();
    }

    private int Qhi(View view, boolean z) {
        if (z) {
            return view.getMeasuredWidth();
        }
        return view.getMeasuredHeight();
    }

    private int cJ(View view, boolean z) {
        if (z) {
            return view.getMeasuredHeight();
        }
        return view.getMeasuredWidth();
    }

    private int Qhi(com.bytedance.adsdk.ugeno.component.flexbox.cJ cJVar, boolean z) {
        if (z) {
            return cJVar.Qhi();
        }
        return cJVar.cJ();
    }

    private int cJ(com.bytedance.adsdk.ugeno.component.flexbox.cJ cJVar, boolean z) {
        if (z) {
            return cJVar.cJ();
        }
        return cJVar.Qhi();
    }

    private int ac(com.bytedance.adsdk.ugeno.component.flexbox.cJ cJVar, boolean z) {
        if (z) {
            return cJVar.ABk();
        }
        return cJVar.iMK();
    }

    private int CJ(com.bytedance.adsdk.ugeno.component.flexbox.cJ cJVar, boolean z) {
        if (z) {
            return cJVar.pA();
        }
        return cJVar.hpZ();
    }

    private int fl(com.bytedance.adsdk.ugeno.component.flexbox.cJ cJVar, boolean z) {
        if (z) {
            return cJVar.iMK();
        }
        return cJVar.ABk();
    }

    private int Tgh(com.bytedance.adsdk.ugeno.component.flexbox.cJ cJVar, boolean z) {
        if (z) {
            return cJVar.hpZ();
        }
        return cJVar.pA();
    }

    private boolean Qhi(View view, int i, int i2, int i3, int i4, com.bytedance.adsdk.ugeno.component.flexbox.cJ cJVar, int i5, int i6, int i7) {
        if (this.CJ.getFlexWrap() == 0) {
            return false;
        }
        if (cJVar.Gm()) {
            return true;
        }
        if (i == 0) {
            return false;
        }
        int maxLine = this.CJ.getMaxLine();
        if (maxLine == -1 || maxLine > i7 + 1) {
            int Qhi2 = this.CJ.Qhi(view, i5, i6);
            if (Qhi2 > 0) {
                i4 += Qhi2;
            }
            return i2 < i3 + i4;
        }
        return false;
    }

    private boolean Qhi(int i, int i2, ac acVar) {
        return i == i2 - 1 && acVar.cJ() != 0;
    }

    private void Qhi(List<ac> list, ac acVar, int i, int i2) {
        acVar.ABk = i2;
        this.CJ.Qhi(acVar);
        acVar.hpZ = i;
        list.add(acVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void Qhi(android.view.View r7, int r8) {
        /*
            r6 = this;
            android.view.ViewGroup$LayoutParams r0 = r7.getLayoutParams()
            com.bytedance.adsdk.ugeno.component.flexbox.cJ r0 = (com.bytedance.adsdk.ugeno.component.flexbox.cJ) r0
            int r1 = r7.getMeasuredWidth()
            int r2 = r7.getMeasuredHeight()
            int r3 = r0.ROR()
            r4 = 1
            if (r1 >= r3) goto L1b
            int r1 = r0.ROR()
        L19:
            r3 = r4
            goto L27
        L1b:
            int r3 = r0.hm()
            if (r1 <= r3) goto L26
            int r1 = r0.hm()
            goto L19
        L26:
            r3 = 0
        L27:
            int r5 = r0.Sf()
            if (r2 >= r5) goto L32
            int r2 = r0.Sf()
            goto L3e
        L32:
            int r5 = r0.WAv()
            if (r2 <= r5) goto L3d
            int r2 = r0.WAv()
            goto L3e
        L3d:
            r4 = r3
        L3e:
            if (r4 == 0) goto L50
            r0 = 1073741824(0x40000000, float:2.0)
            int r1 = android.view.View.MeasureSpec.makeMeasureSpec(r1, r0)
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r2, r0)
            r7.measure(r1, r0)
            r6.Qhi(r8, r1, r0, r7)
        L50:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.ugeno.component.flexbox.fl.Qhi(android.view.View, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi(int i, int i2) {
        Qhi(i, i2, 0);
    }

    void Qhi(int i, int i2, int i3) {
        int size;
        int paddingLeft;
        int paddingRight;
        ac(this.CJ.getFlexItemCount());
        if (i3 >= this.CJ.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.CJ.getFlexDirection();
        int flexDirection2 = this.CJ.getFlexDirection();
        if (flexDirection2 == 0 || flexDirection2 == 1) {
            int mode = View.MeasureSpec.getMode(i);
            size = View.MeasureSpec.getSize(i);
            int largestMainSize = this.CJ.getLargestMainSize();
            if (mode != 1073741824) {
                size = Math.min(largestMainSize, size);
            }
            paddingLeft = this.CJ.getPaddingLeft();
            paddingRight = this.CJ.getPaddingRight();
        } else if (flexDirection2 == 2 || flexDirection2 == 3) {
            int mode2 = View.MeasureSpec.getMode(i2);
            size = View.MeasureSpec.getSize(i2);
            if (mode2 != 1073741824) {
                size = this.CJ.getLargestMainSize();
            }
            paddingLeft = this.CJ.getPaddingTop();
            paddingRight = this.CJ.getPaddingBottom();
        } else {
            throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(flexDirection)));
        }
        int i4 = paddingLeft + paddingRight;
        int[] iArr = this.Qhi;
        List<ac> flexLinesInternal = this.CJ.getFlexLinesInternal();
        int size2 = flexLinesInternal.size();
        for (int i5 = iArr != null ? iArr[i3] : 0; i5 < size2; i5++) {
            ac acVar = flexLinesInternal.get(i5);
            if (acVar.fl < size && acVar.HzH) {
                Qhi(i, i2, acVar, size, i4, false);
            } else if (acVar.fl > size && acVar.kYc) {
                cJ(i, i2, acVar, size, i4, false);
            }
        }
    }

    private void ac(int i) {
        boolean[] zArr = this.fl;
        if (zArr == null) {
            this.fl = new boolean[Math.max(i, 10)];
        } else if (zArr.length < i) {
            this.fl = new boolean[Math.max(zArr.length * 2, i)];
        } else {
            Arrays.fill(zArr, false);
        }
    }

    private void Qhi(int i, int i2, ac acVar, int i3, int i4, boolean z) {
        int i5;
        int i6;
        double d2;
        int i7;
        double d3;
        float f2 = 0.0f;
        if (acVar.WAv <= 0.0f || i3 < acVar.fl) {
            return;
        }
        int i8 = acVar.fl;
        float f3 = (i3 - acVar.fl) / acVar.WAv;
        acVar.fl = i4 + acVar.Tgh;
        if (!z) {
            acVar.ROR = Integer.MIN_VALUE;
        }
        int i9 = 0;
        float f4 = 0.0f;
        boolean z2 = false;
        int i10 = 0;
        while (i9 < acVar.Sf) {
            int i11 = acVar.pA + i9;
            View cJ2 = this.CJ.cJ(i11);
            if (cJ2 == null || cJ2.getVisibility() == 8) {
                i5 = i8;
            } else {
                com.bytedance.adsdk.ugeno.component.flexbox.cJ cJVar = (com.bytedance.adsdk.ugeno.component.flexbox.cJ) cJ2.getLayoutParams();
                int flexDirection = this.CJ.getFlexDirection();
                if (flexDirection == 0 || flexDirection == 1) {
                    int i12 = i8;
                    int measuredWidth = cJ2.getMeasuredWidth();
                    long[] jArr = this.Tgh;
                    if (jArr != null) {
                        measuredWidth = Qhi(jArr[i11]);
                    }
                    int measuredHeight = cJ2.getMeasuredHeight();
                    long[] jArr2 = this.Tgh;
                    i5 = i12;
                    if (jArr2 != null) {
                        measuredHeight = cJ(jArr2[i11]);
                    }
                    if (!this.fl[i11] && cJVar.CJ() > 0.0f) {
                        float CJ = measuredWidth + (cJVar.CJ() * f3);
                        if (i9 == acVar.Sf - 1) {
                            CJ += f4;
                            f4 = 0.0f;
                        }
                        int round = Math.round(CJ);
                        if (round > cJVar.hm()) {
                            round = cJVar.hm();
                            this.fl[i11] = true;
                            acVar.WAv -= cJVar.CJ();
                            z2 = true;
                        } else {
                            f4 += CJ - round;
                            double d4 = f4;
                            if (d4 > 1.0d) {
                                round++;
                                d2 = d4 - 1.0d;
                            } else if (d4 < -1.0d) {
                                round--;
                                d2 = d4 + 1.0d;
                            }
                            f4 = (float) d2;
                        }
                        int cJ3 = cJ(i2, cJVar, acVar.ABk);
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(round, 1073741824);
                        cJ2.measure(makeMeasureSpec, cJ3);
                        int measuredWidth2 = cJ2.getMeasuredWidth();
                        int measuredHeight2 = cJ2.getMeasuredHeight();
                        Qhi(i11, makeMeasureSpec, cJ3, cJ2);
                        measuredWidth = measuredWidth2;
                        measuredHeight = measuredHeight2;
                    }
                    int max = Math.max(i10, measuredHeight + cJVar.iMK() + cJVar.hpZ() + this.CJ.Qhi(cJ2));
                    acVar.fl += measuredWidth + cJVar.ABk() + cJVar.pA();
                    i6 = max;
                } else {
                    int measuredHeight3 = cJ2.getMeasuredHeight();
                    long[] jArr3 = this.Tgh;
                    if (jArr3 != null) {
                        measuredHeight3 = cJ(jArr3[i11]);
                    }
                    int measuredWidth3 = cJ2.getMeasuredWidth();
                    long[] jArr4 = this.Tgh;
                    if (jArr4 != null) {
                        measuredWidth3 = Qhi(jArr4[i11]);
                    }
                    if (this.fl[i11] || cJVar.CJ() <= f2) {
                        i7 = i8;
                    } else {
                        float CJ2 = measuredHeight3 + (cJVar.CJ() * f3);
                        if (i9 == acVar.Sf - 1) {
                            CJ2 += f4;
                            f4 = f2;
                        }
                        int round2 = Math.round(CJ2);
                        if (round2 > cJVar.WAv()) {
                            round2 = cJVar.WAv();
                            this.fl[i11] = true;
                            acVar.WAv -= cJVar.CJ();
                            i7 = i8;
                            z2 = true;
                        } else {
                            f4 += CJ2 - round2;
                            i7 = i8;
                            double d5 = f4;
                            if (d5 > 1.0d) {
                                round2++;
                                d3 = d5 - 1.0d;
                            } else if (d5 < -1.0d) {
                                round2--;
                                d3 = d5 + 1.0d;
                            }
                            f4 = (float) d3;
                        }
                        int Qhi2 = Qhi(i, cJVar, acVar.ABk);
                        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(round2, 1073741824);
                        cJ2.measure(Qhi2, makeMeasureSpec2);
                        measuredWidth3 = cJ2.getMeasuredWidth();
                        int measuredHeight4 = cJ2.getMeasuredHeight();
                        Qhi(i11, Qhi2, makeMeasureSpec2, cJ2);
                        measuredHeight3 = measuredHeight4;
                    }
                    i6 = Math.max(i10, measuredWidth3 + cJVar.ABk() + cJVar.pA() + this.CJ.Qhi(cJ2));
                    acVar.fl += measuredHeight3 + cJVar.iMK() + cJVar.hpZ();
                    i5 = i7;
                }
                acVar.ROR = Math.max(acVar.ROR, i6);
                i10 = i6;
            }
            i9++;
            i8 = i5;
            f2 = 0.0f;
        }
        int i13 = i8;
        if (!z2 || i13 == acVar.fl) {
            return;
        }
        Qhi(i, i2, acVar, i3, i4, true);
    }

    private void cJ(int i, int i2, ac acVar, int i3, int i4, boolean z) {
        int i5;
        int i6;
        int i7 = acVar.fl;
        float f2 = 0.0f;
        if (acVar.Gm <= 0.0f || i3 > acVar.fl) {
            return;
        }
        float f3 = (acVar.fl - i3) / acVar.Gm;
        acVar.fl = i4 + acVar.Tgh;
        if (!z) {
            acVar.ROR = Integer.MIN_VALUE;
        }
        int i8 = 0;
        float f4 = 0.0f;
        boolean z2 = false;
        int i9 = 0;
        while (i8 < acVar.Sf) {
            int i10 = acVar.pA + i8;
            View cJ2 = this.CJ.cJ(i10);
            if (cJ2 == null || cJ2.getVisibility() == 8) {
                i5 = i8;
            } else {
                com.bytedance.adsdk.ugeno.component.flexbox.cJ cJVar = (com.bytedance.adsdk.ugeno.component.flexbox.cJ) cJ2.getLayoutParams();
                int flexDirection = this.CJ.getFlexDirection();
                if (flexDirection == 0 || flexDirection == 1) {
                    i5 = i8;
                    int measuredWidth = cJ2.getMeasuredWidth();
                    long[] jArr = this.Tgh;
                    if (jArr != null) {
                        measuredWidth = Qhi(jArr[i10]);
                    }
                    int measuredHeight = cJ2.getMeasuredHeight();
                    long[] jArr2 = this.Tgh;
                    if (jArr2 != null) {
                        measuredHeight = cJ(jArr2[i10]);
                    }
                    if (!this.fl[i10] && cJVar.fl() > 0.0f) {
                        float fl = measuredWidth - (cJVar.fl() * f3);
                        if (i5 == acVar.Sf - 1) {
                            fl += f4;
                            f4 = 0.0f;
                        }
                        int round = Math.round(fl);
                        if (round < cJVar.ROR()) {
                            round = cJVar.ROR();
                            this.fl[i10] = true;
                            acVar.Gm -= cJVar.fl();
                            z2 = true;
                        } else {
                            f4 += fl - round;
                            double d2 = f4;
                            if (d2 > 1.0d) {
                                round++;
                                f4 -= 1.0f;
                            } else if (d2 < -1.0d) {
                                round--;
                                f4 += 1.0f;
                            }
                        }
                        int cJ3 = cJ(i2, cJVar, acVar.ABk);
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(round, 1073741824);
                        cJ2.measure(makeMeasureSpec, cJ3);
                        int measuredWidth2 = cJ2.getMeasuredWidth();
                        int measuredHeight2 = cJ2.getMeasuredHeight();
                        Qhi(i10, makeMeasureSpec, cJ3, cJ2);
                        measuredWidth = measuredWidth2;
                        measuredHeight = measuredHeight2;
                    }
                    int max = Math.max(i9, measuredHeight + cJVar.iMK() + cJVar.hpZ() + this.CJ.Qhi(cJ2));
                    acVar.fl += measuredWidth + cJVar.ABk() + cJVar.pA();
                    i6 = max;
                } else {
                    int measuredHeight3 = cJ2.getMeasuredHeight();
                    long[] jArr3 = this.Tgh;
                    if (jArr3 != null) {
                        measuredHeight3 = cJ(jArr3[i10]);
                    }
                    int measuredWidth3 = cJ2.getMeasuredWidth();
                    long[] jArr4 = this.Tgh;
                    if (jArr4 != null) {
                        measuredWidth3 = Qhi(jArr4[i10]);
                    }
                    if (this.fl[i10] || cJVar.fl() <= f2) {
                        i5 = i8;
                    } else {
                        float fl2 = measuredHeight3 - (cJVar.fl() * f3);
                        if (i8 == acVar.Sf - 1) {
                            fl2 += f4;
                            f4 = f2;
                        }
                        int round2 = Math.round(fl2);
                        if (round2 < cJVar.Sf()) {
                            round2 = cJVar.Sf();
                            this.fl[i10] = true;
                            acVar.Gm -= cJVar.fl();
                            i5 = i8;
                            z2 = true;
                        } else {
                            f4 += fl2 - round2;
                            i5 = i8;
                            double d3 = f4;
                            if (d3 > 1.0d) {
                                round2++;
                                f4 -= 1.0f;
                            } else if (d3 < -1.0d) {
                                round2--;
                                f4 += 1.0f;
                            }
                        }
                        int Qhi2 = Qhi(i, cJVar, acVar.ABk);
                        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(round2, 1073741824);
                        cJ2.measure(Qhi2, makeMeasureSpec2);
                        measuredWidth3 = cJ2.getMeasuredWidth();
                        int measuredHeight4 = cJ2.getMeasuredHeight();
                        Qhi(i10, Qhi2, makeMeasureSpec2, cJ2);
                        measuredHeight3 = measuredHeight4;
                    }
                    i6 = Math.max(i9, measuredWidth3 + cJVar.ABk() + cJVar.pA() + this.CJ.Qhi(cJ2));
                    acVar.fl += measuredHeight3 + cJVar.iMK() + cJVar.hpZ();
                }
                acVar.ROR = Math.max(acVar.ROR, i6);
                i9 = i6;
            }
            i8 = i5 + 1;
            f2 = 0.0f;
        }
        if (!z2 || i7 == acVar.fl) {
            return;
        }
        cJ(i, i2, acVar, i3, i4, true);
    }

    private int Qhi(int i, com.bytedance.adsdk.ugeno.component.flexbox.cJ cJVar, int i2) {
        com.bytedance.adsdk.ugeno.component.flexbox.Qhi qhi = this.CJ;
        int Qhi2 = qhi.Qhi(i, qhi.getPaddingLeft() + this.CJ.getPaddingRight() + cJVar.ABk() + cJVar.pA() + i2, cJVar.Qhi());
        int size = View.MeasureSpec.getSize(Qhi2);
        if (size > cJVar.hm()) {
            return View.MeasureSpec.makeMeasureSpec(cJVar.hm(), View.MeasureSpec.getMode(Qhi2));
        }
        return size < cJVar.ROR() ? View.MeasureSpec.makeMeasureSpec(cJVar.ROR(), View.MeasureSpec.getMode(Qhi2)) : Qhi2;
    }

    private int cJ(int i, com.bytedance.adsdk.ugeno.component.flexbox.cJ cJVar, int i2) {
        com.bytedance.adsdk.ugeno.component.flexbox.Qhi qhi = this.CJ;
        int cJ2 = qhi.cJ(i, qhi.getPaddingTop() + this.CJ.getPaddingBottom() + cJVar.iMK() + cJVar.hpZ() + i2, cJVar.cJ());
        int size = View.MeasureSpec.getSize(cJ2);
        if (size > cJVar.WAv()) {
            return View.MeasureSpec.makeMeasureSpec(cJVar.WAv(), View.MeasureSpec.getMode(cJ2));
        }
        return size < cJVar.Sf() ? View.MeasureSpec.makeMeasureSpec(cJVar.Sf(), View.MeasureSpec.getMode(cJ2)) : cJ2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void cJ(int i, int i2, int i3) {
        int i4;
        int i5;
        int flexDirection = this.CJ.getFlexDirection();
        if (flexDirection == 0 || flexDirection == 1) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            i4 = mode;
            i5 = size;
        } else if (flexDirection == 2 || flexDirection == 3) {
            i4 = View.MeasureSpec.getMode(i);
            i5 = View.MeasureSpec.getSize(i);
        } else {
            throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(flexDirection)));
        }
        List<ac> flexLinesInternal = this.CJ.getFlexLinesInternal();
        if (i4 == 1073741824) {
            int sumOfCrossSize = this.CJ.getSumOfCrossSize() + i3;
            int i6 = 0;
            if (flexLinesInternal.size() == 1) {
                flexLinesInternal.get(0).ROR = i5 - i3;
            } else if (flexLinesInternal.size() >= 2) {
                int alignContent = this.CJ.getAlignContent();
                if (alignContent == 1) {
                    int i7 = i5 - sumOfCrossSize;
                    ac acVar = new ac();
                    acVar.ROR = i7;
                    flexLinesInternal.add(0, acVar);
                } else if (alignContent == 2) {
                    this.CJ.setFlexLines(Qhi(flexLinesInternal, i5, sumOfCrossSize));
                } else if (alignContent == 3) {
                    if (sumOfCrossSize < i5) {
                        float size2 = (i5 - sumOfCrossSize) / (flexLinesInternal.size() - 1);
                        ArrayList arrayList = new ArrayList();
                        int size3 = flexLinesInternal.size();
                        float f2 = 0.0f;
                        while (i6 < size3) {
                            arrayList.add(flexLinesInternal.get(i6));
                            if (i6 != flexLinesInternal.size() - 1) {
                                ac acVar2 = new ac();
                                if (i6 == flexLinesInternal.size() - 2) {
                                    acVar2.ROR = Math.round(f2 + size2);
                                    f2 = 0.0f;
                                } else {
                                    acVar2.ROR = Math.round(size2);
                                }
                                f2 += size2 - acVar2.ROR;
                                if (f2 > 1.0f) {
                                    acVar2.ROR++;
                                    f2 -= 1.0f;
                                } else if (f2 < -1.0f) {
                                    acVar2.ROR--;
                                    f2 += 1.0f;
                                }
                                arrayList.add(acVar2);
                            }
                            i6++;
                        }
                        this.CJ.setFlexLines(arrayList);
                    }
                } else if (alignContent == 4) {
                    if (sumOfCrossSize >= i5) {
                        this.CJ.setFlexLines(Qhi(flexLinesInternal, i5, sumOfCrossSize));
                        return;
                    }
                    int size4 = (i5 - sumOfCrossSize) / (flexLinesInternal.size() * 2);
                    ArrayList arrayList2 = new ArrayList();
                    ac acVar3 = new ac();
                    acVar3.ROR = size4;
                    for (ac acVar4 : flexLinesInternal) {
                        arrayList2.add(acVar3);
                        arrayList2.add(acVar4);
                        arrayList2.add(acVar3);
                    }
                    this.CJ.setFlexLines(arrayList2);
                } else if (alignContent == 5 && sumOfCrossSize < i5) {
                    float size5 = (i5 - sumOfCrossSize) / flexLinesInternal.size();
                    int size6 = flexLinesInternal.size();
                    float f3 = 0.0f;
                    while (i6 < size6) {
                        ac acVar5 = flexLinesInternal.get(i6);
                        float f4 = acVar5.ROR + size5;
                        if (i6 == flexLinesInternal.size() - 1) {
                            f4 += f3;
                            f3 = 0.0f;
                        }
                        int round = Math.round(f4);
                        f3 += f4 - round;
                        if (f3 > 1.0f) {
                            round++;
                            f3 -= 1.0f;
                        } else if (f3 < -1.0f) {
                            round--;
                            f3 += 1.0f;
                        }
                        acVar5.ROR = round;
                        i6++;
                    }
                }
            }
        }
    }

    private List<ac> Qhi(List<ac> list, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        ac acVar = new ac();
        acVar.ROR = (i - i2) / 2;
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            if (i3 == 0) {
                arrayList.add(acVar);
            }
            arrayList.add(list.get(i3));
            if (i3 == list.size() - 1) {
                arrayList.add(acVar);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi() {
        Qhi(0);
    }

    void Qhi(int i) {
        View cJ2;
        if (i >= this.CJ.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.CJ.getFlexDirection();
        if (this.CJ.getAlignItems() == 4) {
            int[] iArr = this.Qhi;
            List<ac> flexLinesInternal = this.CJ.getFlexLinesInternal();
            int size = flexLinesInternal.size();
            for (int i2 = iArr != null ? iArr[i] : 0; i2 < size; i2++) {
                ac acVar = flexLinesInternal.get(i2);
                int i3 = acVar.Sf;
                for (int i4 = 0; i4 < i3; i4++) {
                    int i5 = acVar.pA + i4;
                    if (i4 < this.CJ.getFlexItemCount() && (cJ2 = this.CJ.cJ(i5)) != null && cJ2.getVisibility() != 8) {
                        com.bytedance.adsdk.ugeno.component.flexbox.cJ cJVar = (com.bytedance.adsdk.ugeno.component.flexbox.cJ) cJ2.getLayoutParams();
                        if (cJVar.Tgh() == -1 || cJVar.Tgh() == 4) {
                            if (flexDirection == 0 || flexDirection == 1) {
                                Qhi(cJ2, acVar.ROR, i5);
                            } else if (flexDirection == 2 || flexDirection == 3) {
                                cJ(cJ2, acVar.ROR, i5);
                            } else {
                                throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(flexDirection)));
                            }
                        }
                    }
                }
            }
            return;
        }
        for (ac acVar2 : this.CJ.getFlexLinesInternal()) {
            for (Integer num : acVar2.iMK) {
                View cJ3 = this.CJ.cJ(num.intValue());
                if (flexDirection == 0 || flexDirection == 1) {
                    Qhi(cJ3, acVar2.ROR, num.intValue());
                } else if (flexDirection == 2 || flexDirection == 3) {
                    cJ(cJ3, acVar2.ROR, num.intValue());
                } else {
                    throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(flexDirection)));
                }
            }
        }
    }

    private void Qhi(View view, int i, int i2) {
        int measuredWidth;
        com.bytedance.adsdk.ugeno.component.flexbox.cJ cJVar = (com.bytedance.adsdk.ugeno.component.flexbox.cJ) view.getLayoutParams();
        int min = Math.min(Math.max(((i - cJVar.iMK()) - cJVar.hpZ()) - this.CJ.Qhi(view), cJVar.Sf()), cJVar.WAv());
        long[] jArr = this.Tgh;
        if (jArr != null) {
            measuredWidth = Qhi(jArr[i2]);
        } else {
            measuredWidth = view.getMeasuredWidth();
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min, 1073741824);
        view.measure(makeMeasureSpec, makeMeasureSpec2);
        Qhi(i2, makeMeasureSpec, makeMeasureSpec2, view);
    }

    private void cJ(View view, int i, int i2) {
        int measuredHeight;
        com.bytedance.adsdk.ugeno.component.flexbox.cJ cJVar = (com.bytedance.adsdk.ugeno.component.flexbox.cJ) view.getLayoutParams();
        int min = Math.min(Math.max(((i - cJVar.ABk()) - cJVar.pA()) - this.CJ.Qhi(view), cJVar.ROR()), cJVar.hm());
        long[] jArr = this.Tgh;
        if (jArr != null) {
            measuredHeight = cJ(jArr[i2]);
        } else {
            measuredHeight = view.getMeasuredHeight();
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min, 1073741824);
        view.measure(makeMeasureSpec2, makeMeasureSpec);
        Qhi(i2, makeMeasureSpec2, makeMeasureSpec, view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi(View view, ac acVar, int i, int i2, int i3, int i4) {
        com.bytedance.adsdk.ugeno.component.flexbox.cJ cJVar = (com.bytedance.adsdk.ugeno.component.flexbox.cJ) view.getLayoutParams();
        int alignItems = this.CJ.getAlignItems();
        if (cJVar.Tgh() != -1) {
            alignItems = cJVar.Tgh();
        }
        int i5 = acVar.ROR;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (this.CJ.getFlexWrap() != 2) {
                    int i6 = i2 + i5;
                    view.layout(i, (i6 - view.getMeasuredHeight()) - cJVar.hpZ(), i3, i6 - cJVar.hpZ());
                    return;
                }
                view.layout(i, (i2 - i5) + view.getMeasuredHeight() + cJVar.iMK(), i3, (i4 - i5) + view.getMeasuredHeight() + cJVar.iMK());
                return;
            } else if (alignItems == 2) {
                int measuredHeight = (((i5 - view.getMeasuredHeight()) + cJVar.iMK()) - cJVar.hpZ()) / 2;
                if (this.CJ.getFlexWrap() != 2) {
                    int i7 = i2 + measuredHeight;
                    view.layout(i, i7, i3, view.getMeasuredHeight() + i7);
                    return;
                }
                int i8 = i2 - measuredHeight;
                view.layout(i, i8, i3, view.getMeasuredHeight() + i8);
                return;
            } else if (alignItems == 3) {
                if (this.CJ.getFlexWrap() != 2) {
                    int max = Math.max(acVar.zc - view.getBaseline(), cJVar.iMK());
                    view.layout(i, i2 + max, i3, i4 + max);
                    return;
                }
                int max2 = Math.max((acVar.zc - view.getMeasuredHeight()) + view.getBaseline(), cJVar.hpZ());
                view.layout(i, i2 - max2, i3, i4 - max2);
                return;
            } else if (alignItems != 4) {
                return;
            }
        }
        if (this.CJ.getFlexWrap() != 2) {
            view.layout(i, i2 + cJVar.iMK(), i3, i4 + cJVar.iMK());
        } else {
            view.layout(i, i2 - cJVar.hpZ(), i3, i4 - cJVar.hpZ());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi(View view, ac acVar, boolean z, int i, int i2, int i3, int i4) {
        com.bytedance.adsdk.ugeno.component.flexbox.cJ cJVar = (com.bytedance.adsdk.ugeno.component.flexbox.cJ) view.getLayoutParams();
        int alignItems = this.CJ.getAlignItems();
        if (cJVar.Tgh() != -1) {
            alignItems = cJVar.Tgh();
        }
        int i5 = acVar.ROR;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (!z) {
                    view.layout(((i + i5) - view.getMeasuredWidth()) - cJVar.pA(), i2, ((i3 + i5) - view.getMeasuredWidth()) - cJVar.pA(), i4);
                    return;
                } else {
                    view.layout((i - i5) + view.getMeasuredWidth() + cJVar.ABk(), i2, (i3 - i5) + view.getMeasuredWidth() + cJVar.ABk(), i4);
                    return;
                }
            } else if (alignItems == 2) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                int measuredWidth = (((i5 - view.getMeasuredWidth()) + ROR.Qhi(marginLayoutParams)) - ROR.cJ(marginLayoutParams)) / 2;
                if (!z) {
                    view.layout(i + measuredWidth, i2, i3 + measuredWidth, i4);
                    return;
                } else {
                    view.layout(i - measuredWidth, i2, i3 - measuredWidth, i4);
                    return;
                }
            } else if (alignItems != 3 && alignItems != 4) {
                return;
            }
        }
        if (!z) {
            view.layout(i + cJVar.ABk(), i2, i3 + cJVar.ABk(), i4);
        } else {
            view.layout(i - cJVar.pA(), i2, i3 - cJVar.pA(), i4);
        }
    }

    private void Qhi(int i, int i2, int i3, View view) {
        long[] jArr = this.cJ;
        if (jArr != null) {
            jArr[i] = cJ(i2, i3);
        }
        long[] jArr2 = this.Tgh;
        if (jArr2 != null) {
            jArr2[i] = cJ(view.getMeasuredWidth(), view.getMeasuredHeight());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FlexboxHelper.java */
    /* loaded from: classes2.dex */
    public static class cJ implements Comparable<cJ> {
        int Qhi;
        int cJ;

        private cJ() {
        }

        @Override // java.lang.Comparable
        /* renamed from: Qhi */
        public int compareTo(cJ cJVar) {
            int i = this.cJ;
            int i2 = cJVar.cJ;
            return i != i2 ? i - i2 : this.Qhi - cJVar.Qhi;
        }

        public String toString() {
            return "Order{order=" + this.cJ + ", index=" + this.Qhi + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlexboxHelper.java */
    /* loaded from: classes2.dex */
    public static class Qhi {
        List<ac> Qhi;
        int cJ;

        /* JADX INFO: Access modifiers changed from: package-private */
        public void Qhi() {
            this.Qhi = null;
            this.cJ = 0;
        }
    }
}

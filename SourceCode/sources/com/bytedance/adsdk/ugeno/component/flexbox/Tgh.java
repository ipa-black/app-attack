package com.bytedance.adsdk.ugeno.component.flexbox;

import android.content.Context;
import android.text.TextUtils;
import androidx.core.view.ViewCompat;
import com.bytedance.adsdk.ugeno.component.Qhi;
import com.bytedance.adsdk.ugeno.component.flexbox.FlexboxLayout;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
/* compiled from: UGFlexWidget.java */
/* loaded from: classes2.dex */
public class Tgh extends com.bytedance.adsdk.ugeno.component.Qhi<FlexboxLayout> {
    private int Dq;
    private int Qe;
    private int YB;
    private int cjC;
    private int dIT;

    public Tgh(Context context) {
        super(context);
    }

    @Override // com.bytedance.adsdk.ugeno.component.cJ
    /* renamed from: tP */
    public FlexboxLayout ac() {
        FlexboxLayout flexboxLayout = new FlexboxLayout(this.cJ);
        flexboxLayout.Qhi(this);
        return flexboxLayout;
    }

    @Override // com.bytedance.adsdk.ugeno.component.Qhi, com.bytedance.adsdk.ugeno.component.cJ
    public void cJ() {
        super.cJ();
        ((FlexboxLayout) this.fl).setFlexDirection(this.dIT);
        ((FlexboxLayout) this.fl).setFlexWrap(this.Qe);
        ((FlexboxLayout) this.fl).setJustifyContent(this.YB);
        ((FlexboxLayout) this.fl).setAlignItems(this.cjC);
        ((FlexboxLayout) this.fl).setAlignContent(this.Dq);
    }

    @Override // com.bytedance.adsdk.ugeno.component.Qhi
    public Qhi.C0178Qhi Sf() {
        return new Qhi();
    }

    /* compiled from: UGFlexWidget.java */
    /* loaded from: classes2.dex */
    public static class Qhi extends Qhi.C0178Qhi {
        public int hm = 1;
        public float WAv = 0.0f;
        public float Gm = 0.0f;
        public int zc = -1;
        public float ABk = -1.0f;
        public int iMK = -1;
        public int pA = -1;
        public int hpZ = ViewCompat.MEASURED_SIZE_MASK;
        public int HzH = ViewCompat.MEASURED_SIZE_MASK;

        @Override // com.bytedance.adsdk.ugeno.component.Qhi.C0178Qhi
        public void Qhi(Context context, String str, String str2) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            super.Qhi(context, str, str2);
            str.hashCode();
            char c2 = 65535;
            switch (str.hashCode()) {
                case -1962496832:
                    if (str.equals("flexBasisPercent")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 106006350:
                    if (str.equals("order")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 1031115618:
                    if (str.equals("flexShrink")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 1743739820:
                    if (str.equals("flexGrow")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 1767100401:
                    if (str.equals("alignSelf")) {
                        c2 = 4;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    this.ABk = CJ(str2);
                    return;
                case 1:
                    this.hm = Qhi(str2);
                    return;
                case 2:
                    this.Gm = ac(str2);
                    return;
                case 3:
                    this.WAv = cJ(str2);
                    return;
                case 4:
                    this.zc = fl(str2);
                    return;
                default:
                    return;
            }
        }

        private int Qhi(String str) {
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                return 1;
            }
        }

        private float cJ(String str) {
            try {
                return Float.parseFloat(str);
            } catch (Exception unused) {
                return 0.0f;
            }
        }

        private float ac(String str) {
            try {
                return Float.parseFloat(str);
            } catch (Exception unused) {
                return 0.0f;
            }
        }

        private float CJ(String str) {
            try {
                return Float.parseFloat(str);
            } catch (Exception unused) {
                return -1.0f;
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        private int fl(String str) {
            boolean z;
            str.hashCode();
            switch (str.hashCode()) {
                case -1881872635:
                    if (str.equals("stretch")) {
                        z = false;
                        break;
                    }
                    z = true;
                    break;
                case -1720785339:
                    if (str.equals("baseline")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1364013995:
                    if (str.equals(TtmlNode.CENTER)) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1384876188:
                    if (str.equals("flex_start")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1744442261:
                    if (str.equals("flex_end")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                default:
                    z = true;
                    break;
            }
            switch (z) {
                case false:
                    return 4;
                case true:
                    return 3;
                case true:
                    return 2;
                case true:
                    return 0;
                case true:
                    return 1;
                default:
                    return -1;
            }
        }

        @Override // com.bytedance.adsdk.ugeno.component.Qhi.C0178Qhi
        /* renamed from: cJ */
        public FlexboxLayout.Qhi Qhi() {
            FlexboxLayout.Qhi qhi = new FlexboxLayout.Qhi((int) this.Qhi, (int) this.cJ);
            qhi.leftMargin = (int) this.CJ;
            qhi.rightMargin = (int) this.fl;
            qhi.topMargin = (int) this.Tgh;
            qhi.bottomMargin = (int) this.ROR;
            qhi.ac(this.hm);
            qhi.CJ(this.zc);
            qhi.Qhi(this.WAv);
            qhi.cJ(this.Gm);
            qhi.ac(this.ABk);
            return qhi;
        }

        public String toString() {
            return "LayoutParams{mWidth=" + this.Qhi + ", mHeight=" + this.cJ + ", mMargin=" + this.ac + ", mMarginLeft=" + this.CJ + ", mMarginRight=" + this.fl + ", mMarginTop=" + this.Tgh + ", mMarginBottom=" + this.ROR + ", mParams=" + this.Sf + ", mOrder=" + this.hm + ", mFlexGrow=" + this.WAv + ", mFlexShrink=" + this.Gm + ", mAlignSelf=" + this.zc + ", mFlexBasisPercent=" + this.ABk + ", mMinWidth=" + this.iMK + ", mMinHeight=" + this.pA + ", mMaxWidth=" + this.hpZ + ", mMaxHeight=" + this.HzH + "} " + super.toString();
        }
    }

    @Override // com.bytedance.adsdk.ugeno.component.cJ
    public void Qhi(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        super.Qhi(str, str2);
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1063257157:
                if (str.equals("alignItems")) {
                    c2 = 0;
                    break;
                }
                break;
            case -975171706:
                if (str.equals("flexDirection")) {
                    c2 = 1;
                    break;
                }
                break;
            case -752601676:
                if (str.equals("alignContent")) {
                    c2 = 2;
                    break;
                }
                break;
            case 1744216035:
                if (str.equals("flexWrap")) {
                    c2 = 3;
                    break;
                }
                break;
            case 1860657097:
                if (str.equals("justifyContent")) {
                    c2 = 4;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                this.cjC = Sf(str2);
                return;
            case 1:
                this.dIT = fl(str2);
                return;
            case 2:
                this.Dq = hm(str2);
                return;
            case 3:
                this.Qe = Tgh(str2);
                return;
            case 4:
                this.YB = ROR(str2);
                return;
            default:
                return;
        }
    }

    private int fl(String str) {
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1781065991:
                if (str.equals("column_reverse")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1354837162:
                if (str.equals("column")) {
                    c2 = 1;
                    break;
                }
                break;
            case -207799939:
                if (str.equals("row_reverse")) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return 3;
            case 1:
                return 2;
            case 2:
                return 1;
            default:
                return 0;
        }
    }

    private int Tgh(String str) {
        str.hashCode();
        return !str.equals("wrap") ? 0 : 1;
    }

    private int ROR(String str) {
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals(TtmlNode.CENTER)) {
                    c2 = 0;
                    break;
                }
                break;
            case -932331738:
                if (str.equals("space_around")) {
                    c2 = 1;
                    break;
                }
                break;
            case 1682480591:
                if (str.equals("space_between")) {
                    c2 = 2;
                    break;
                }
                break;
            case 1744442261:
                if (str.equals("flex_end")) {
                    c2 = 3;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return 2;
            case 1:
                return 4;
            case 2:
                return 3;
            case 3:
                return 1;
            default:
                return 0;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int Sf(String str) {
        char c2;
        switch (str.hashCode()) {
            case -1881872635:
                if (str.equals("stretch")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case -1720785339:
                if (str.equals("baseline")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -1364013995:
                if (str.equals(TtmlNode.CENTER)) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 1384876188:
                if (str.equals("flex_start")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 1744442261:
                if (str.equals("flex_end")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 != 0) {
            if (c2 != 1) {
                if (c2 != 2) {
                    return c2 != 3 ? 4 : 3;
                }
                return 2;
            }
            return 1;
        }
        return 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int hm(String str) {
        char c2;
        switch (str.hashCode()) {
            case -1881872635:
                if (str.equals("stretch")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case -1364013995:
                if (str.equals(TtmlNode.CENTER)) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -932331738:
                if (str.equals("space_around")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 1384876188:
                if (str.equals("flex_start")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 1682480591:
                if (str.equals("space_between")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 1744442261:
                if (str.equals("flex_end")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 != 0) {
            if (c2 != 1) {
                if (c2 != 2) {
                    if (c2 != 3) {
                        return c2 != 4 ? 5 : 3;
                    }
                    return 4;
                }
                return 2;
            }
            return 1;
        }
        return 0;
    }
}

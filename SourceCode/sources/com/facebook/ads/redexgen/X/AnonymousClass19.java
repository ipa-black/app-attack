package com.facebook.ads.redexgen.X;

import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.19  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class AnonymousClass19 extends View$OnTouchListenerC04241h implements InterfaceC0981Ok {
    public static byte[] A07;
    public static String[] A08 = {"T7MK6mm4Fzbg8PTMnM4kcHpb21LLpIaw", "PTQtUxKdjysMmbj8hCZsGKEwd1IRWqqZ", "Zw8mt4VncD", "79VYCrnrWW", "2MnAMBnkkiKtyd2cP7mHhabJycDYuMiE", "jaMauIT7sdi", "OgIH7ZaBRtH9hoDgrnw", "xZmsCngT77DU5lblEiekqTVKPqNdsast"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public InterfaceC0909Lp A04;
    public boolean A05;
    public final C0639Ad A06;

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 28);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A07 = new byte[]{-6, -7, -37, -20, -14, -16, -50, -13, -20, -7, -14, -16, -17};
    }

    static {
        A03();
    }

    public AnonymousClass19(C1203Xc c1203Xc) {
        super(c1203Xc);
        this.A03 = -1;
        this.A02 = -1;
        this.A01 = 0;
        this.A00 = 0;
        this.A05 = false;
        this.A06 = new C0639Ad(c1203Xc, new C0978Oh(), new Og());
        A02();
    }

    public AnonymousClass19(C1203Xc c1203Xc, AttributeSet attributeSet) {
        super(c1203Xc, attributeSet);
        this.A03 = -1;
        this.A02 = -1;
        this.A01 = 0;
        this.A00 = 0;
        this.A05 = false;
        this.A06 = new C0639Ad(c1203Xc, new C0978Oh(), new Og());
        A02();
    }

    public AnonymousClass19(C1203Xc c1203Xc, AttributeSet attributeSet, int i) {
        super(c1203Xc, attributeSet, i);
        this.A03 = -1;
        this.A02 = -1;
        this.A01 = 0;
        this.A00 = 0;
        this.A05 = false;
        this.A06 = new C0639Ad(c1203Xc, new C0978Oh(), new Og());
        A02();
    }

    private int A00(int i) {
        int i2 = this.A00 * 2;
        int measuredWidth = getMeasuredWidth();
        int spacing = getPaddingLeft();
        int i3 = (measuredWidth - spacing) - i2;
        int itemSize = getAdapter().A0D();
        int numFullItems = 0;
        int spacing2 = Integer.MAX_VALUE;
        while (spacing2 > i) {
            numFullItems++;
            if (numFullItems >= itemSize) {
                return i;
            }
            int spacing3 = numFullItems * i2;
            spacing2 = (int) ((i3 - spacing3) / (numFullItems + 0.333f));
        }
        return spacing2;
    }

    private void A02() {
        this.A06.A2E(0);
        setLayoutManager(this.A06);
        setSaveEnabled(false);
        setSnapDelegate(this);
        LL.A0K(this);
    }

    private void A04(int i, int i2) {
        if (i == this.A03 && i2 == this.A02) {
            return;
        }
        this.A03 = i;
        if (A08[1].charAt(11) == 'q') {
            throw new RuntimeException();
        }
        A08[6] = "hNBaptvkpj";
        this.A02 = i2;
        if (this.A04 != null) {
            throw new NullPointerException(A01(0, 13, 111));
        }
    }

    @Override // com.facebook.ads.redexgen.X.View$OnTouchListenerC04241h
    public final void A23(int i, boolean z) {
        super.A23(i, z);
        A04(i, 0);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0981Ok
    public final int A7Q(int i) {
        int abs = Math.abs(i);
        int scrollXAbs = ((View$OnTouchListenerC04241h) this).A06;
        if (abs <= scrollXAbs) {
            return 0;
        }
        int i2 = this.A01;
        if (i2 == 0) {
            return 1;
        }
        int scrollXAbs2 = 1 + (abs / i2);
        return scrollXAbs2;
    }

    public int getChildSpacing() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.E9, android.view.View
    public final void onMeasure(int i, int i2) {
        int itemSize;
        int itemSize2;
        super.onMeasure(i, i2);
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.A05) {
            int i3 = (int) Kk.A02;
            int verticalPadding = IK.A0D(getContext());
            itemSize = (i3 * verticalPadding) + paddingTop;
        } else {
            int verticalPadding2 = getMeasuredWidth();
            itemSize = Math.round(verticalPadding2 / 1.91f);
        }
        int height = View.MeasureSpec.getMode(i2);
        if (height == Integer.MIN_VALUE) {
            int verticalPadding3 = View.MeasureSpec.getSize(i2);
            itemSize = Math.min(verticalPadding3, itemSize);
        } else if (height == 1073741824) {
            itemSize = View.MeasureSpec.getSize(i2);
        }
        int itemSize3 = itemSize - paddingTop;
        if (this.A05) {
            int verticalPadding4 = C0905Ll.A09;
            itemSize2 = Math.min(verticalPadding4, itemSize3);
        } else {
            itemSize2 = A00(itemSize3);
        }
        int verticalPadding5 = itemSize2 + paddingTop;
        setMeasuredDimension(getMeasuredWidth(), verticalPadding5);
        if (!this.A05) {
            int verticalPadding6 = this.A00;
            setChildWidth((verticalPadding6 * 2) + itemSize2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.E9
    public void setAdapter(@Nullable C4N c4n) {
        this.A06.A2L(c4n == null ? -1 : c4n.hashCode());
        super.setAdapter(c4n);
    }

    public void setChildSpacing(int i) {
        this.A00 = i;
    }

    public void setChildWidth(int i) {
        this.A01 = i;
        int measuredWidth = getMeasuredWidth();
        int pageWidth = getPaddingLeft();
        int i2 = measuredWidth - pageWidth;
        int pageWidth2 = getPaddingRight();
        int i3 = i2 - pageWidth2;
        C0639Ad c0639Ad = this.A06;
        int pageWidth3 = this.A01;
        c0639Ad.A2M((i3 - pageWidth3) / 2);
        C0639Ad c0639Ad2 = this.A06;
        int pageWidth4 = this.A01;
        c0639Ad2.A2K(pageWidth4 / measuredWidth);
    }

    public void setCurrentPosition(int i) {
        A23(i, false);
    }

    public void setOnPageChangedListener(InterfaceC0909Lp interfaceC0909Lp) {
        this.A04 = interfaceC0909Lp;
    }

    public void setShowTextInCarousel(boolean z) {
        this.A05 = z;
    }
}

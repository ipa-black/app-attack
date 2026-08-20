package com.facebook.ads.redexgen.X;

import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.My  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0944My extends RelativeLayout {
    public static InterfaceC0903Lj A05;
    public static byte[] A06;
    public static String[] A07 = {"CT308ms2RTF49ixw7iITcI5DvAIGWMXZ", "UVauKq3DlAHpB1vMyeeSD4Us6AaVXCYd", "G3Ivv2DNtSsvdOlvNnw6jHI40eb4uyYL", "qur6nZLrhU9XJET37yOODnXWYcrj37IJ", "OCLfHPrXkMpm02uq88EYR3Uw1JpI2kE3", "KopKmjllEHptdGx3", "mL4xXMXopKoNgp", "1VwEGJcTQNgN7iTbFc9O"};
    public static final int A08;
    public static final int A09;
    public static final int A0A;
    public YO A00;
    public C1203Xc A01;
    public C04130w A02;
    @Nullable
    public C1089So A03;
    @Nullable
    public NT A04;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A07[6].length() == 9) {
                throw new RuntimeException();
            }
            String[] strArr = A07;
            strArr[2] = "hwjeWCnyrgrPOyFOaJyYR4Ki88uO9bQs";
            strArr[0] = "4m7NTkn57B9pIqsgccGzW0RoTzQfESBy";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 119);
            i4++;
        }
    }

    public static void A02() {
        A06 = new byte[]{-25, 5, 22, 19, 25, 23, 9, 16, -60, -14, 5, 24, 13, 26, 9, -60, 26, 13, 9, 27, -60, 5, 8, 9, 20, 24, 9, 22, -60, 13, 23, 18, -53, 24, -60, 7, 22, 9, 5, 24, 9, 8, -60, 20, 22, 19, 20, 9, 22, 16, 29, -5, -7, 2, -7, 6, -3, -9};
    }

    static {
        A02();
        A09 = (int) (Kk.A02 * 8.0f);
        A08 = A09 * 10;
        A0A = (int) (Kk.A02 * 15.0f);
        A05 = new C1088Sn();
    }

    public C0944My(C1203Xc c1203Xc) {
        super(c1203Xc);
        this.A01 = c1203Xc;
        this.A02 = new C04130w(c1203Xc);
        LL.A0K(this.A02);
        this.A00 = new EA();
        this.A00.A0G(this.A02);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        addView(this.A02, layoutParams);
    }

    private ArrayList<C0984On> A01(AbstractC1268Zs abstractC1268Zs) {
        if (abstractC1268Zs == null) {
            return new ArrayList<>();
        }
        List<C1C> A0o = abstractC1268Zs.A0o();
        ArrayList<C0984On> arrayList = new ArrayList<>(A0o.size());
        for (int i = 0; i < A0o.size(); i++) {
            arrayList.add(new C0984On(i, A0o.size(), A0o.get(i)));
        }
        return arrayList;
    }

    public final void A04() {
        this.A02.setAdapter(null);
    }

    public final void A05(C1115Tp c1115Tp, int i) {
        ArrayList<C0984On> A01 = A01(c1115Tp.A0z());
        this.A02.setCardsInfo(A01);
        this.A03 = new C1089So(this.A01, A01, c1115Tp.A0z(), this.A01.A01().A09(), c1115Tp, A05, c1115Tp.A0z().A0m(), this.A02.getCarouselCardBehaviorHelper(), null);
        this.A02.setAdapter(this.A03);
        this.A03.A0F(i - A08, 16, 0);
        this.A03.A06();
        setupDotsLayout(c1115Tp, A01);
    }

    public final void A06(QA qa) {
        C1089So c1089So = this.A03;
        if (c1089So != null) {
            c1089So.A0G(qa);
        } else {
            this.A01.A07().A9C(A00(51, 7, 29), C05787s.A1u, new C05797t(A00(0, 51, 45)));
        }
        this.A02.A23(qa);
    }

    public static InterfaceC0903Lj getDummyListener() {
        return A05;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        C1089So c1089So;
        if (z && (c1089So = this.A03) != null) {
            c1089So.A0F((i3 - i) - A08, 16, 0);
        }
        super.onLayout(z, i, i2, i3, i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUpLayoutForCardAtIndex(int i) {
        NT nt = this.A04;
        if (nt != null) {
            nt.A00(i);
        }
    }

    private void setupDotsLayout(C1115Tp c1115Tp, ArrayList<C0984On> arrayList) {
        this.A02.getCarouselCardBehaviorHelper().A0Z(new C1087Sm(this));
        this.A04 = new NT(this.A01, c1115Tp.A0z().A0g().A01(), arrayList.size());
        LL.A0K(this.A04);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(3, this.A02.getId());
        layoutParams.setMargins(0, A0A, 0, 0);
        addView(this.A04, layoutParams);
    }
}

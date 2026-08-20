package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: assets/audience_network.dex */
public final class UB implements InterfaceC0821Ia {
    @Nullable
    @SuppressLint({"StaticFieldLeak"})
    public static InterfaceC0821Ia A03;
    public static byte[] A04;
    public static final String A05;
    public static volatile boolean A06;
    public final C1202Xb A00;
    public final C8Z A01;
    public final IZ A02;

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 79);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A04 = new byte[]{-90, -21, -4, -21, -12, -6, -76, -88, -37, -37, -52, -44, -41, -37, -48, -43, -50, -121, -37, -42, -121, -45, -42, -50, -121, -56, -43, -121, -48, -43, -35, -56, -45, -48, -53, -121, -43, -13, -30, -28, -26, -24, -26, -17, -26, -13, -22, -28, 46, 51, 42, 31};
    }

    static {
        A03();
        A05 = UB.class.getSimpleName();
        A06 = false;
    }

    public UB(C1202Xb c1202Xb) {
        IY dispatchCallback;
        this.A00 = c1202Xb;
        if (IM.A0T(c1202Xb)) {
            this.A01 = C8X.A00(c1202Xb);
            dispatchCallback = C0826If.A01(c1202Xb, this.A01);
        } else {
            C0712Dp A01 = C8X.A01(c1202Xb);
            dispatchCallback = C0826If.A00(c1202Xb, A01);
            this.A01 = A01;
        }
        this.A02 = new UE(c1202Xb, dispatchCallback);
        LQ.A08.execute(new UD(this));
        A04(c1202Xb);
    }

    public static synchronized InterfaceC0821Ia A01(C1202Xb c1202Xb) {
        InterfaceC0821Ia interfaceC0821Ia;
        synchronized (UB.class) {
            if (A03 == null) {
                A03 = new UB(c1202Xb);
            }
            interfaceC0821Ia = A03;
        }
        return interfaceC0821Ia;
    }

    public static synchronized void A04(C1202Xb c1202Xb) {
        synchronized (UB.class) {
            if (A06) {
                return;
            }
            c1202Xb.A03().AA5();
            A06 = true;
        }
    }

    private void A05(IX ix) {
        if (!ix.A0A()) {
            String str = A05;
            Log.e(str, A02(7, 29, 24) + ix.A06() + A02(0, 7, 55));
            return;
        }
        A06(ix);
        this.A01.AG8(ix, new UC(this, ix));
    }

    @SuppressLint({"ThrowException"})
    private void A06(IX ix) {
        switch (ix.A06()) {
            case A0Q:
            case A0K:
            case A07:
            case A0J:
            case A0R:
            case A0T:
            case A0U:
                C05797t c05797t = new C05797t(new Exception(A02(36, 5, 50)));
                c05797t.A03(1);
                try {
                    c05797t.A05(new JSONObject().put(A02(48, 4, 107), ix.A06().toString()));
                } catch (JSONException unused) {
                }
                this.A00.A07().A9D(A02(41, 7, 50), C05787s.A1H, c05797t);
                return;
            default:
                return;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0821Ia
    public final void A95(String str, Map<String, String> data) {
        A05(new IW().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(data).A01(EnumC0823Ic.A04).A02(EnumC0824Id.A04).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0821Ia
    public final void A97(String str, Map<String, String> data) {
        A05(new IW().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(data).A01(EnumC0823Ic.A04).A02(EnumC0824Id.A06).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0821Ia
    public final void A98(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new IW().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(data).A01(EnumC0823Ic.A04).A02(EnumC0824Id.A07).A06(C0831Ik.A0A(str, EnumC0828Ih.A0I)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0821Ia
    public final void A99(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new IW().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(data).A01(EnumC0823Ic.A04).A02(EnumC0824Id.A08).A06(C0831Ik.A0A(str, EnumC0828Ih.A06)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0821Ia
    public final void A9B(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new IW().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(data).A01(EnumC0823Ic.A04).A02(EnumC0824Id.A0B).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0821Ia
    public final void A9F(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new IW().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(data).A01(EnumC0823Ic.A04).A02(EnumC0824Id.A0C).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0821Ia
    public final void A9H(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new IW().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(data).A01(EnumC0823Ic.A05).A02(EnumC0824Id.A0D).A06(C0831Ik.A0A(str, EnumC0828Ih.A0T)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0821Ia
    public final void A9I(String str, @Nullable Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new IW().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(data).A01(EnumC0823Ic.A05).A02(EnumC0824Id.A0E).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0821Ia
    public final void A9J(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new IW().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(data).A01(EnumC0823Ic.A05).A02(EnumC0824Id.A0F).A06(C0831Ik.A0A(str, EnumC0828Ih.A0V)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0821Ia
    public final void A9K(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new IW().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(data).A01(EnumC0823Ic.A05).A02(EnumC0824Id.A0K).A06(C0831Ik.A0A(str, EnumC0828Ih.A0W)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0821Ia
    public final void A9L(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new IW().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(data).A01(EnumC0823Ic.A05).A02(EnumC0824Id.A0H).A06(C0831Ik.A0A(str, EnumC0828Ih.A0X)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0821Ia
    public final void A9N(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new IW().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(data).A01(EnumC0823Ic.A04).A02(EnumC0824Id.A0J).A06(C0831Ik.A0A(str, EnumC0828Ih.A0Y)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0821Ia
    public final void A9O(String str, Map<String, String> data, String str2, EnumC0823Ic enumC0823Ic) {
        A05(new IW().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(data).A01(enumC0823Ic).A02(EnumC0824Id.A00(str2)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0821Ia
    public final void A9P(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        IX adEvent = new IW().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(data).A01(EnumC0823Ic.A04).A02(EnumC0824Id.A0L).A07(this.A00);
        A05(adEvent);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0821Ia
    public final void A9T(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new IW().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(data).A01(EnumC0823Ic.A05).A02(EnumC0824Id.A0N).A06(C0831Ik.A0A(str, EnumC0828Ih.A0a)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0821Ia
    public final void A9U(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new IW().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(data).A01(EnumC0823Ic.A05).A02(EnumC0824Id.A0O).A06(C0831Ik.A0A(str, EnumC0828Ih.A0b)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0821Ia
    public final void A9W(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new IW().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A01(EnumC0823Ic.A04).A02(EnumC0824Id.A0P).A06(C0831Ik.A0A(str, EnumC0828Ih.A0c)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0821Ia
    public final void A9X(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new IW().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(data).A01(EnumC0823Ic.A04).A02(EnumC0824Id.A0G).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0821Ia
    public final void A9Y(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new IW().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(data).A01(EnumC0823Ic.A05).A02(EnumC0824Id.A0Q).A06(C0831Ik.A0A(str, EnumC0828Ih.A0g)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0821Ia
    public final void A9Z(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new IW().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(data).A01(EnumC0823Ic.A04).A02(EnumC0824Id.A0U).A06(C0831Ik.A0A(str, EnumC0828Ih.A0i)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0821Ia
    public final void A9a(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new IW().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(data).A01(EnumC0823Ic.A04).A02(EnumC0824Id.A0T).A06(C0831Ik.A0A(str, EnumC0828Ih.A0j)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0821Ia
    public final void A9b(String str, Map<String, String> data) {
        A05(new IW().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(data).A01(EnumC0823Ic.A05).A02(EnumC0824Id.A0V).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0821Ia
    public final void A9d(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new IW().A04(str).A00(this.A00.A08().A01()).A03(this.A00.A08().A02()).A05(data).A01(EnumC0823Ic.A05).A02(EnumC0824Id.A0W).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0821Ia
    public final void ADV(String str) {
        new AsyncTaskC1023Qa(this.A00).execute(str);
    }
}

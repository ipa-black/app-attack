package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebSettings;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
@SuppressLint({"ViewConstructor"})
/* renamed from: com.facebook.ads.redexgen.X.Oy  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0995Oy extends FrameLayout {
    public static byte[] A0C;
    public static String[] A0D = {"2LrpfYyae0azpeRldXrTpIs5j5WolZYJ", "aTWFoH17M5HvBaS06GyoTMgY8LK09kB1", "ZT9jJV1ne", "vwbwskwEgIVHj6V8wHV", "a8UIfMhCahgZVDol7QIaAFMNjSR7v8Rm", "pauq9xVSe1TSbn6Nh8iDWIypG", "tig0s2h3zWgeN1kA13N6tuAlrnUP1dby", "gu60Pcp0oAdbO9RcUpkXMIBgrMh0CW0V"};
    public static final float A0E;
    public static final RelativeLayout.LayoutParams A0F;
    public int A00;
    public long A01;
    public Map<String, String> A02;
    public final AbstractC1268Zs A03;
    public final C1X A04;
    public final C1203Xc A05;
    public final InterfaceC0821Ia A06;
    public final N3 A07;
    public final C1082Sh A08;
    public final InterfaceC0993Ow A09;
    public final AtomicBoolean A0A;
    public final AtomicBoolean A0B;

    public static String A06(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            int i5 = copyOfRange[i4] ^ i3;
            if (A0D[5].length() != 25) {
                throw new RuntimeException();
            }
            A0D[4] = "2xsSJQdmJTzWNKbVkLPVv70adF3crTtp";
            copyOfRange[i4] = (byte) (i5 ^ 37);
        }
        return new String(copyOfRange);
    }

    public static void A09() {
        A0C = new byte[]{11, 47, 29, 33, 44, 52, 44, 47, 33, 40, 12, 41, 52, 5, 22, 23, 13, 10, 3, 68, 1, 22, 22, 11, 22, 52, 8, 5, 29, 5, 6, 8, 1, 68, 0, 11, 39, 16, 5, 39, 8, 13, 7, 15, 68, 16, 22, 13, 3, 3, 1, 22, 1, 0, 68, 19, 13, 16, 12, 68, 20, 22, 1, 73, 1, 18, 1, 10, 16, 68, 7, 8, 13, 7, 15, 23, 68, 7, 11, 17, 10, 16, 68, 5, 10, 0, 68, 32, 1, 8, 5, 29, 106, 86, 91, 67, 91, 88, 86, 95, 123, 94, 73, 108, 83, 95, 77, 102, 97, 99, 109, 106, 36, 104, 107, 101, 96, 109, 106, 99, 36, 118, 97, 105, 107, 112, 97, 36, 116, 104, 101, 125, 101, 102, 104, 97, 61, 50, 55, 61, 53, 45, 112, 113, 120, 117, 109, 93, 65, 76, 84, 76, 79, 65, 72, 55, 43, 38, 62, 38, 37, 43, 34, 24, 53, 34, 42, 40, 51, 34, 21, 2, 10, 8, 19, 2, 56, 20, 2, 20, 20, 14, 8, 9, 56, 14, 3, 20, 15, 11, 5, 14, 107, 121, 126, 67, 106, 117, 121, 107};
    }

    static {
        A09();
        A0E = (int) (Kk.A02 * 4.0f);
        A0F = new RelativeLayout.LayoutParams(-1, -1);
    }

    public C0995Oy(C1203Xc c1203Xc, AbstractC1268Zs abstractC1268Zs, C1X c1x, InterfaceC0821Ia interfaceC0821Ia, InterfaceC0993Ow interfaceC0993Ow, Map<String, String> playableMetricsData) {
        super(c1203Xc);
        this.A0A = new AtomicBoolean(false);
        this.A0B = new AtomicBoolean(false);
        this.A01 = -1L;
        this.A00 = 0;
        this.A07 = new AbstractC1085Sk() { // from class: com.facebook.ads.redexgen.X.7D
            @Override // com.facebook.ads.redexgen.X.N3
            public final void AAF() {
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1085Sk, com.facebook.ads.redexgen.X.N3
            public final void AB0(int i, @Nullable String str) {
                AtomicBoolean atomicBoolean;
                InterfaceC0993Ow interfaceC0993Ow2;
                atomicBoolean = C0995Oy.this.A0B;
                atomicBoolean.set(true);
                interfaceC0993Ow2 = C0995Oy.this.A09;
                interfaceC0993Ow2.ABX();
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1085Sk, com.facebook.ads.redexgen.X.N3
            public final void ABC() {
                AtomicBoolean atomicBoolean;
                AtomicBoolean atomicBoolean2;
                InterfaceC0993Ow interfaceC0993Ow2;
                atomicBoolean = C0995Oy.this.A0B;
                if (atomicBoolean.get()) {
                    return;
                }
                atomicBoolean2 = C0995Oy.this.A0A;
                if (!atomicBoolean2.compareAndSet(false, true)) {
                    return;
                }
                interfaceC0993Ow2 = C0995Oy.this.A09;
                interfaceC0993Ow2.ABC();
            }

            @Override // com.facebook.ads.redexgen.X.N3
            public final void ADD() {
                InterfaceC0993Ow interfaceC0993Ow2;
                interfaceC0993Ow2 = C0995Oy.this.A09;
                interfaceC0993Ow2.ADD();
            }
        };
        this.A05 = c1203Xc;
        this.A03 = abstractC1268Zs;
        this.A04 = c1x;
        this.A06 = interfaceC0821Ia;
        this.A09 = interfaceC0993Ow;
        this.A02 = playableMetricsData;
        this.A08 = A04();
        if (IK.A1Q(this.A05)) {
            this.A05.A0A().AFp(this.A08, this.A03.A0m(), false);
        }
        addView(this.A08, A0F);
    }

    public static /* synthetic */ int A00(C0995Oy c0995Oy) {
        int i = c0995Oy.A00;
        c0995Oy.A00 = i + 1;
        return i;
    }

    @SuppressLint({"AddJavascriptInterface", "ClickableViewAccessibility"})
    private C1082Sh A04() {
        C1082Sh c1082Sh = new C1082Sh(this.A05, new WeakReference(this.A07), 10, IK.A1X(this.A05));
        c1082Sh.setCornerRadius(A0E);
        c1082Sh.setLogMultipleImpressions(false);
        c1082Sh.setCheckAssetsByJavascriptBridge(false);
        c1082Sh.setWebViewTimeoutInMillis(this.A04.A08());
        c1082Sh.setRequestId(this.A03.A0L());
        c1082Sh.setOnTouchListener(new View$OnTouchListenerC0994Ox(this));
        WebSettings settings = c1082Sh.getSettings();
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        settings.setAllowFileAccess(true);
        if (Build.VERSION.SDK_INT >= 16) {
            settings.setAllowFileAccessFromFileURLs(true);
        }
        if (Build.VERSION.SDK_INT > 16) {
            c1082Sh.addJavascriptInterface(new C0996Oz(this.A05, this, this.A06, this.A02, this.A03.A0m()), A06(0, 12, 104));
        }
        return c1082Sh;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x00b8, code lost:
        if (r3 <= com.facebook.ads.redexgen.X.IK.A0G(r8)) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x00ba, code lost:
        r3 = r9.A09;
        r2 = com.facebook.ads.redexgen.X.C0995Oy.A0D;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x00ce, code lost:
        if (r2[0].charAt(14) == r2[7].charAt(14)) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00d0, code lost:
        r3.AAd();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00d3, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00d4, code lost:
        r2 = com.facebook.ads.redexgen.X.C0995Oy.A0D;
        r2[0] = "1qrV4xG42mjJ5wR1PYF4mguO0xYm8sMw";
        r2[7] = "To2gWJFbGkwQ4PRGYAw3BZd3UXo54AHv";
        r3.AAd();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00f2, code lost:
        if (r3 <= com.facebook.ads.redexgen.X.IK.A0G(r8)) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00f5, code lost:
        r6.A03(0);
        r9.A05.A07().A9C(r5, com.facebook.ads.redexgen.X.C05787s.A2D, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:?, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A0A() {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0995Oy.A0A():void");
    }

    public final void A0B() {
        String A0E2;
        if (this.A04.A0J()) {
            C05797t c05797t = new C05797t(A06(107, 29, 33));
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(A06(170, 17, 66), this.A04.A0F());
                jSONObject.put(A06(187, 5, 69), this.A03.A0m());
            } catch (JSONException e2) {
                Log.e(A06(92, 15, 31), A06(12, 13, 65), e2);
            }
            c05797t.A05(jSONObject);
            c05797t.A03(1);
            InterfaceC05777r A07 = this.A05.A07();
            if (A0D[4].charAt(0) == 'P') {
                throw new RuntimeException();
            }
            A0D[1] = "TEDpWyR4sKSlO4xRZxixfnQAFgDgpHMF";
            int i = C05787s.A2F;
            String A06 = A06(155, 15, 98);
            A07.A9D(A06, i, c05797t);
            if (IK.A0n(this.A05) && LA.A00(this.A05) == L9.A07) {
                this.A05.A07().A9D(A06, C05787s.A2E, c05797t);
                this.A07.AB0(0, null);
                return;
            }
        }
        try {
            C1082Sh c1082Sh = this.A08;
            if (!TextUtils.isEmpty(this.A04.A0B())) {
                A0E2 = this.A04.A0B();
            } else {
                A0E2 = this.A04.A0E();
            }
            c1082Sh.loadUrl(A0E2);
        } catch (Exception e3) {
            this.A05.A07().A9C(A06(192, 8, 57), C05787s.A2c, new C05797t(e3));
        }
    }

    public final void A0C() {
        if (IK.A1Q(this.A05)) {
            C1203Xc c1203Xc = this.A05;
            if (A0D[2].length() == 31) {
                throw new RuntimeException();
            }
            A0D[1] = "2a9geg5CZy9bcTekyOeVTlcxLNQduX9G";
            c1203Xc.A0A().AFe(this.A08);
        }
        this.A08.removeJavascriptInterface(A06(0, 12, 104));
        if (A0D[3].length() != 23) {
            A0D[6] = "33aduEcFLWt6pdjLdZ5sJJvVvr5WDkst";
            this.A08.destroy();
            return;
        }
        this.A08.destroy();
    }

    public LD getTouchDataRecorder() {
        return this.A08.getTouchDataRecorder();
    }

    @Nullable
    public QA getViewabilityChecker() {
        return this.A08.getViewabilityChecker();
    }
}

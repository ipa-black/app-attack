package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.facebook.ads.internal.util.activity.AdActivityIntent;
import com.facebook.ads.internal.view.dynamiclayout.DynamicWebViewController$AdFormatType;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.HashMap;
@SuppressLint({"ViewConstructor"})
/* renamed from: com.facebook.ads.redexgen.X.8v  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C06068v extends FrameLayout implements S0 {
    public static byte[] A0A;
    public static String[] A0B = {"gR8VXB3ia", "OJTiurBFiCqcREvzh7o4PkhSqDGudpIq", "iaBHwIBC1utH6CwOSIC2yyAu4ZYXfJ61", "YdU4", "YcTfP9iPeB3iMp", "vsmHP1kkKyGC9kag", "2EZKw0n31g6TC4", "KAWIkc2sX"};
    public QA A00;
    @DynamicWebViewController$AdFormatType
    public final int A01;
    public final AbstractC1268Zs A02;
    public final C1203Xc A03;
    public final InterfaceC0821Ia A04;
    public final LD A05;
    public final OB A06;
    public final OM A07;
    public final String A08;
    public final boolean A09;

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 113);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A0A = new byte[]{118, 84, 91, 18, 65, 21, 70, 65, 84, 71, 65, 21, 116, SignedBytes.MAX_POWER_OF_TWO, 81, 92, 80, 91, 86, 80, 123, 80, 65, 66, 90, 71, 94, 116, 86, 65, 92, 67, 92, 65, 76, 27, 21, 120, 84, 94, 80, 21, 70, SignedBytes.MAX_POWER_OF_TWO, 71, 80, 21, 65, 93, 84, 65, 21, 92, 65, 18, 70, 21, 92, 91, 21, 76, 90, SignedBytes.MAX_POWER_OF_TWO, 71, 21, 116, 91, 81, 71, 90, 92, 81, 120, 84, 91, 92, 83, 80, 70, 65, 27, 77, 88, 89, 21, 83, 92, 89, 80, 27, 30, 26, 25, 45, 60, 49, 61, 54, 59, 61, 22, 61, 44, 47, 55, 42, 51, 54, 57, 8, 54, 52, 35, 62, 33, 62, 35, 46, 77, 66, 71, 77, 69, 113, 93, 65, 91, 92, 77, 75, 55, 56, 45, 48, 47, 60, 24, 61, 29, 56, 45, 56, 27, 44, 55, 61, 53, 60, 33, 39, 49, 38, 55, 56, 61, 55, 63, 22, 9, 5, 23, 52, 25, 16, 5};
    }

    static {
        A02();
    }

    public C06068v(C1203Xc c1203Xc, InterfaceC0821Ia interfaceC0821Ia, OB ob, AbstractC1268Zs abstractC1268Zs, String str, @DynamicWebViewController$AdFormatType int i, LD ld) {
        super(c1203Xc);
        this.A03 = c1203Xc;
        this.A04 = interfaceC0821Ia;
        this.A02 = abstractC1268Zs;
        this.A08 = str;
        this.A06 = ob;
        this.A01 = i;
        if (this.A01 == 3) {
            this.A07 = new OM(this.A03, abstractC1268Zs, interfaceC0821Ia, i);
            this.A09 = false;
        } else {
            OM preloadedDynamicWebViewController = ON.A02(abstractC1268Zs.A0L());
            if (preloadedDynamicWebViewController != null) {
                this.A07 = preloadedDynamicWebViewController;
                this.A09 = true;
            } else {
                this.A07 = new OM(this.A03, abstractC1268Zs, interfaceC0821Ia, i);
                ON.A03(abstractC1268Zs, this.A07);
                this.A09 = false;
            }
        }
        if (ld != null) {
            this.A05 = ld;
            this.A07.A0Z(ld);
        } else {
            this.A05 = this.A07.A0L();
        }
        this.A07.A0c(new S7(this));
        this.A07.A0a(ob);
        EnumC0883Kp.A04(this, EnumC0883Kp.A0A);
        if (IK.A1Q(c1203Xc)) {
            c1203Xc.A0A().AFr(this.A07.A0O(), abstractC1268Zs.A0m(), false, false, true);
        }
        A04();
    }

    public C06068v(C1203Xc c1203Xc, InterfaceC0821Ia interfaceC0821Ia, AbstractC1268Zs abstractC1268Zs, String str, @DynamicWebViewController$AdFormatType int i) {
        this(c1203Xc, interfaceC0821Ia, null, abstractC1268Zs, str, i, null);
    }

    private final void A03() {
        this.A07.A0d(this);
        if (!this.A09) {
            this.A03.A0E().A4z();
            this.A07.A0X();
        } else {
            this.A03.A0E().A50();
            String[] strArr = A0B;
            if (strArr[6].length() != strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0B;
            strArr2[6] = "EW3rEVX7vA8fzU";
            strArr2[4] = "ztAtYR2DvpL08d";
            if (this.A07.A0k()) {
                if (this.A01 == 4) {
                    OB ob = this.A06;
                    if (ob != null) {
                        ob.AAs(this);
                    }
                    if (IK.A1Q(this.A03)) {
                        this.A03.A0A().AAg();
                    }
                } else {
                    AFS();
                }
            }
        }
        A08();
    }

    private final void A04() {
        OM.A0B().incrementAndGet();
        A03();
        this.A07.A0W();
    }

    private void A05(Intent intent, AbstractC1268Zs abstractC1268Zs) {
        intent.putExtra(A01(157, 8, 17), EnumC0855Jj.A05);
        intent.putExtra(A01(TsExtractor.TS_STREAM_TYPE_HDMV_DTS, 18, 40), abstractC1268Zs);
        intent.addFlags(268435456);
    }

    @SuppressLint({"CatchGeneralException"})
    private final void A06(AbstractC1268Zs abstractC1268Zs) {
        AdActivityIntent A04 = KG.A04(this.A03);
        A05(A04, abstractC1268Zs);
        try {
            KG.A09(this.A03, A04);
        } catch (Exception e2) {
            this.A03.A07().A9C(A01(107, 11, 38), C05787s.A0D, new C05797t(e2));
            Log.e(A01(90, 17, 41), A01(0, 90, 68), e2);
        }
    }

    private void A07(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        NI ni = new NI(this.A03, this.A08, this.A00, this.A05, this.A04);
        HashMap hashMap = new HashMap();
        hashMap.put(A01(118, 12, 95), A01(148, 9, 37));
        ni.A08(this.A02.A0m(), str, hashMap);
    }

    public final void A08() {
        LL.A0J(this.A07.A0O());
        addView(this.A07.A0O(), new FrameLayout.LayoutParams(-1, -1));
    }

    @Override // com.facebook.ads.redexgen.X.S0
    public final void A89() {
        A07(this.A02.A0h().A0F().A05());
    }

    @Override // com.facebook.ads.redexgen.X.S0
    public final void A8A(String str) {
        A07(str);
    }

    @Override // com.facebook.ads.redexgen.X.S0
    public final void A8E() {
    }

    @Override // com.facebook.ads.redexgen.X.S0
    public final void A8w() {
        new Handler(Looper.getMainLooper()).post(new S6(this));
    }

    @Override // com.facebook.ads.redexgen.X.S0
    public final void AB4() {
        A06(this.A02);
    }

    @Override // com.facebook.ads.redexgen.X.S0
    public final void AB8() {
    }

    @Override // com.facebook.ads.redexgen.X.S0
    public final void ABm(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.S0
    public final void ACZ() {
    }

    @Override // com.facebook.ads.redexgen.X.S0
    public final void AD5(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.S0
    public final void AD7(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.S0
    public final void ADL(String str) {
    }

    @Override // com.facebook.ads.redexgen.X.S0
    public final void AFS() {
        OB ob = this.A06;
        if (ob != null) {
            ob.AAs(this);
        }
    }

    @Override // com.facebook.ads.redexgen.X.S0
    public final void close() {
    }

    public InterfaceC0821Ia getAdEventManager() {
        return this.A04;
    }

    public OM getDynamicWebViewController() {
        return this.A07;
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        requestDisallowInterceptTouchEvent(true);
        return super.onTouchEvent(motionEvent);
    }

    public void setAdViewabilityChecker(QA qa) {
        this.A00 = qa;
        this.A07.A0e(qa);
    }
}

package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.explorestack.protobuf.openrtb.LossReason;
import com.facebook.ads.AdExperienceType;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.google.common.primitives.SignedBytes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;
@SuppressLint({"HardcodedIPAddressUse"})
/* renamed from: com.facebook.ads.redexgen.X.Za  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1250Za implements Jc {
    public static byte[] A0D;
    public static String[] A0E = {"4yJhIog9RzpC9w4XHjq79o6hmz2pMXrt", "bLneqHgNlbzxjE", "P7gevZ65hMGDm5VmgpkLcWEi46YxYduR", "Pajg2XTKXpS0pN0AoGLcPnQoa2IWF6Z7", "YyJRdl3XxpBTstTmsw", "OvgbPt0JG7dlaj99kqPbJKVmb9CPKTVr", "21VbiQWRKHmC0d4xB3zoTsbqXtN2ZOxw", "Q3Y9mBD7X4l0uaedlY7FP5X0xCsXbtIX"};
    public static final Handler A0F;
    public static final C04090s A0G = null;
    @SuppressLint({"StaticFieldLeak"})
    public static final C0849Jd A0H = null;
    public static final String A0I;
    @Nullable
    public InterfaceC04040n A00;
    @Nullable
    public InterfaceC04040n A01;
    @Nullable
    public C8A A04;
    @Nullable
    public C0847Ja A05;
    @Nullable
    public AbstractC04050o A06;
    public final C04321p A07;
    public final InterfaceC0821Ia A08;
    public final C04090s A09;
    public final C0849Jd A0A;
    public final C1203Xc A0B;
    public volatile boolean A0C;
    public long A03 = -1;
    @Nullable
    public String A02 = null;

    public static String A06(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 8);
        }
        return new String(copyOfRange);
    }

    public static void A07() {
        A0D = new byte[]{75, 110, 107, 122, 126, 111, 120, 42, 110, 101, 111, 121, 42, 100, 101, 126, 42, 111, 114, 99, 121, 126, 78, 107, 110, Byte.MAX_VALUE, 123, 106, 125, 47, 102, 124, 47, 97, 122, 99, 99, 47, 39, 108, 103, 110, 102, 97, 47, 97, 96, 123, 47, 99, 96, 110, 107, 106, 107, 38, 57, 28, 25, 8, 12, 29, 10, 88, 17, 11, 88, 22, 13, 20, 20, 88, 80, 27, 16, 25, 17, 22, 29, 28, 81, 45, 8, 13, 28, 24, 9, 30, 76, 5, 31, 76, 2, 25, 0, 0, 76, 68, 2, 3, 76, 15, 4, 13, 5, 2, 69, 78, 107, 110, Byte.MAX_VALUE, 123, 106, 125, 47, 102, 124, 47, 97, 122, 99, 99, 47, 96, 97, 47, 124, 123, 110, 125, 123, 78, 107, 5, 36, 107, 38, 36, 57, 46, 107, 42, 47, 107, 40, 42, 37, 47, 34, 47, 42, 63, 46, 56, 101, 122, 95, 66, 67, 74, 13, 76, 73, 76, 93, 89, 72, 95, 13, 89, 84, 93, 72, 3, 46, 43, 111, 46, 35, 61, 42, 46, 43, 54, 111, 60, 59, 46, 61, 59, 42, 43, 94, 91, 76, 52, 37, 60, 26, 17, 24, 16, 23, 38, 9, 24, 11, 24, 20, 10, 76, 91, 74, 79, 90, 79, 97, 76, 68, 75, 77, 90, 14, 71, 93, 14, SignedBytes.MAX_POWER_OF_TWO, 91, 66, 66, 38, 45, 32, 49, 58, 51, 55, 38, 39, 28, 42, 39, 122, 113, 105, 118, 109, 112, 113, 114, 122, 113, 107, 63, 118, 108, 63, 122, 114, 111, 107, 102, 38, 50, 37, 49, 53, 37, 46, 35, 57, 31, 35, 33, 48, 48, 41, 46, 39, 28, 27, 3, 20, 25, 28, 17, 85, 5, 25, 20, 22, 16, 24, 16, 27, 1, 85, 28, 27, 85, 7, 16, 6, 5, 26, 27, 6, 16, 10, 9, 7, 2, 57, 18, 15, 11, 3, 57, 11, 21, 44, 59, 47, 43, 59, 45, 42, 1, 55, 58};
    }

    public abstract void A0L();

    public abstract void A0N(InterfaceC04040n interfaceC04040n, C8A c8a, AnonymousClass88 anonymousClass88, C04331q c04331q);

    static {
        A07();
        LN.A02();
        A0I = AbstractC1250Za.class.getSimpleName();
        A0F = new Handler(Looper.getMainLooper());
    }

    public AbstractC1250Za(C1203Xc c1203Xc, C04321p c04321p) {
        this.A0B = c1203Xc;
        this.A07 = c04321p;
        C0849Jd c0849Jd = A0H;
        if (c0849Jd != null) {
            this.A0A = c0849Jd;
        } else {
            this.A0A = new C0849Jd(this.A0B);
        }
        this.A0A.A0P(this);
        C04090s c04090s = A0G;
        if (c04090s != null) {
            this.A09 = c04090s;
        } else {
            this.A09 = new C04090s();
        }
        DynamicLoaderFactory.makeLoader(this.A0B).getInitApi().onAdLoadInvoked(this.A0B);
        this.A08 = c1203Xc.A09();
        this.A0B.A0E().A4a();
    }

    @SuppressLint({"CatchGeneralException"})
    private void A08(C1103Tc c1103Tc) {
        C8A placement = c1103Tc.A00();
        if (placement == null || placement.A05() == null) {
            String A06 = A06(279, 29, 125);
            JA error = new JA(AdErrorType.NO_AD_PLACEMENT, A06);
            this.A0B.A0E().A4c(error.A03().getErrorCode(), A06);
            AbstractC04050o abstractC04050o = this.A06;
            if (abstractC04050o != null) {
                abstractC04050o.A0G(error);
                return;
            }
            return;
        }
        this.A04 = placement;
        this.A00 = null;
        C8A c8a = this.A04;
        JSONObject A09 = c8a.A09();
        String A062 = A06(195, 3, 93);
        if (A09 == null) {
            AnonymousClass88 A04 = c8a.A04();
            if (!A0C(c8a, A04)) {
                return;
            }
            if (this.A00 == null) {
                this.A0B.A07().A9C(A062, C05787s.A0a, new C05797t(A06(81, 26, 100), A04.A02()));
                AAv(JA.A00(AdErrorType.INTERNAL_ERROR));
                return;
            }
            C04331q loadConfig = new C04331q(A04.A04(), c8a.A05(), this.A07.A09, c8a.A05().A0C());
            A0N(this.A00, c8a, A04, loadConfig);
            return;
        }
        ArrayList<AnonymousClass88> arrayList = new ArrayList();
        AnonymousClass88 A042 = c8a.A04();
        do {
            if (arrayList.isEmpty()) {
                if (A0C(c8a, A042)) {
                    arrayList.add(A042);
                } else {
                    return;
                }
            } else if (A0B(A042)) {
                arrayList.add(A042);
            }
            A042 = c8a.A04();
        } while (A042 != null);
        if (this.A00 == null) {
            this.A0B.A07().A9C(A062, C05787s.A0a, new C05797t(A06(56, 25, 112), ((AnonymousClass88) arrayList.get(0)).A02()));
            AAv(JA.A00(AdErrorType.INTERNAL_ERROR));
            return;
        }
        boolean z = false;
        try {
            if (arrayList.size() > 1 && this.A00.AFX()) {
                JSONObject jSONObject = new JSONObject();
                JSONArray jSONArray = new JSONArray();
                for (AnonymousClass88 anonymousClass88 : arrayList) {
                    jSONArray.put(anonymousClass88.A04());
                }
                jSONObject.put(A06(192, 3, 55), jSONArray);
                jSONObject.put(A06(198, 12, 113), c8a.A09());
                C04331q loadConfig2 = new C04331q(jSONObject, c8a.A05(), this.A07.A09, c8a.A05().A0C());
                A0N(this.A00, c8a, A042, loadConfig2);
                z = true;
            }
        } catch (Exception unused) {
            z = false;
        }
        if (!z) {
            if (arrayList.isEmpty()) {
                JA A01 = JA.A01(AdErrorType.NO_FILL, A06(0, 0, 73));
                this.A0B.A0E().A4c(A01.A03().getErrorCode(), A06(133, 22, 67));
                AbstractC04050o abstractC04050o2 = this.A06;
                if (abstractC04050o2 != null) {
                    abstractC04050o2.A0G(A01);
                    return;
                }
                return;
            }
            InterfaceC04040n interfaceC04040n = this.A00;
            String[] strArr = A0E;
            if (strArr[4].length() == strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0E;
            strArr2[0] = "F2ixlBYVHNYJB4bAHADqJrSynawwg1yM";
            strArr2[5] = "djkwyiiWLTaQwWMcVWQWfq0o8Ww2Jgo9";
            if (interfaceC04040n == null) {
                this.A0B.A07().A9C(A062, C05787s.A0a, new C05797t(A06(22, 34, 7), ((AnonymousClass88) arrayList.get(0)).A02()));
                AAv(JA.A00(AdErrorType.INTERNAL_ERROR));
                return;
            }
            AnonymousClass88 anonymousClass882 = (AnonymousClass88) arrayList.get(0);
            A0N(this.A00, c8a, anonymousClass882, new C04331q(anonymousClass882.A04(), c8a.A05(), this.A07.A09, c8a.A05().A0C()));
        }
    }

    private final void A09(@Nullable String str, @Nullable AdExperienceType adExperienceType) {
        this.A0B.A0E().A4d(str != null);
        this.A03 = System.currentTimeMillis();
        if (Build.VERSION.SDK_INT < 17) {
            AAv(new JA(AdErrorType.API_NOT_SUPPORTED, A06(0, 0, 73)));
            return;
        }
        try {
            this.A05 = this.A07.A01(this.A0B, new JK(this.A0B, str, this.A07.A09, this.A07.A08), adExperienceType);
            if (A0E[6].charAt(21) == '6') {
                throw new RuntimeException();
            }
            String[] strArr = A0E;
            strArr[4] = "3q2wB1pMY3UXfOrLgu";
            strArr[1] = "CsXqAZILgfX2KA";
            this.A0A.A0O(this.A05);
        } catch (JB e2) {
            AAv(JA.A02(e2));
        }
    }

    private void A0A(@Nullable JSONObject jSONObject) {
        if (jSONObject != null) {
            this.A02 = jSONObject.optString(A06(230, 12, 75));
            C04110u.A01(this.A0B).A0O(jSONObject);
        }
    }

    private boolean A0B(AnonymousClass88 anonymousClass88) {
        return (anonymousClass88 == null || anonymousClass88.A04() == null) ? false : true;
    }

    private boolean A0C(C8A c8a, AnonymousClass88 anonymousClass88) {
        String A06 = A06(0, 0, 73);
        if (anonymousClass88 == null) {
            JA A01 = JA.A01(AdErrorType.NO_FILL, A06);
            this.A0B.A0E().A4c(A01.A03().getErrorCode(), A06(133, 22, 67));
            AbstractC04050o abstractC04050o = this.A06;
            if (abstractC04050o != null) {
                abstractC04050o.A0G(A01);
            }
            return false;
        }
        String A02 = anonymousClass88.A02();
        InterfaceC04040n A00 = this.A09.A00(this.A0B, c8a.A05().A0D());
        if (A00 == null) {
            this.A0B.A07().A9C(A06(195, 3, 93), C05787s.A0a, new C05797t(A06(0, 22, 2), A02));
            AAv(JA.A00(AdErrorType.INTERNAL_ERROR));
            return false;
        } else if (this.A07.A00() != A00.A7L()) {
            JA A012 = JA.A01(AdErrorType.INTERNAL_ERROR, A06);
            this.A0B.A0E().A4c(A012.A03().getErrorCode(), A06(155, 19, 37));
            AbstractC04050o abstractC04050o2 = this.A06;
            if (abstractC04050o2 != null) {
                abstractC04050o2.A0G(A012);
            }
            return false;
        } else {
            this.A00 = A00;
            String[] strArr = A0E;
            if (strArr[4].length() != strArr[1].length()) {
                String[] strArr2 = A0E;
                strArr2[0] = "MKxF4EMWgzzLH5X7HNcHVA2i4zdAiZz9";
                strArr2[5] = "4tfdEW2uI31voJBW941pIR5b1aNGKiQe";
                JSONObject A04 = anonymousClass88.A04();
                if (A04 != null) {
                    String optString = A04.optString(A06(320, 10, 86));
                    this.A0B.A0E().AF7(optString);
                    this.A0B.A0C(optString);
                    C1202Xb A002 = C7M.A00();
                    if (A002 != null) {
                        A002.A0C(optString);
                    }
                    JSONObject dataObject = A04.optJSONObject(A06(262, 17, 72));
                    A0A(dataObject);
                    if (this.A05 == null) {
                        String A062 = A06(242, 20, 23);
                        JA A013 = JA.A01(AdErrorType.UNKNOWN_ERROR, A062);
                        this.A0B.A0E().A4c(A013.A03().getErrorCode(), A062);
                        AbstractC04050o abstractC04050o3 = this.A06;
                        if (abstractC04050o3 != null) {
                            abstractC04050o3.A0G(A013);
                        }
                        return false;
                    }
                    return true;
                }
                String A063 = A06(LossReason.LOSS_REASON_CREATIVE_FILTERED_NOT_ALLOWED_IN_DEAL_VALUE, 18, 38);
                JA A014 = JA.A01(AdErrorType.UNKNOWN_ERROR, A063);
                this.A0B.A0E().A4c(A014.A03().getErrorCode(), A063);
                AbstractC04050o abstractC04050o4 = this.A06;
                if (abstractC04050o4 != null) {
                    abstractC04050o4.A0G(A014);
                }
                return false;
            }
            throw new RuntimeException();
        }
    }

    public final long A0D() {
        C8A c8a = this.A04;
        if (c8a != null) {
            return c8a.A03();
        }
        return -1L;
    }

    public final Handler A0E() {
        return A0F;
    }

    public C1B A0F() {
        return ((AbstractC1272Zw) this.A01).A0H();
    }

    @Nullable
    public final C8B A0G() {
        C8A c8a = this.A04;
        if (c8a == null) {
            return null;
        }
        return c8a.A05();
    }

    public final void A0H() {
        String A6B;
        this.A0B.A0E().A2f(LC.A01(this.A03));
        InterfaceC04040n interfaceC04040n = this.A01;
        if (interfaceC04040n == null || (A6B = interfaceC04040n.A6B()) == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        String A04 = LC.A04(this.A03);
        String clientToken = A06(308, 12, 110);
        hashMap.put(clientToken, A04);
        new C0829Ii(A6B, this.A08).A04(EnumC0828Ih.A08, hashMap);
    }

    public final void A0I() {
        InterfaceC04040n interfaceC04040n = this.A01;
        String A06 = A06(195, 3, 93);
        if (interfaceC04040n == null) {
            String A062 = A06(107, 26, 7);
            this.A0B.A07().A9C(A06, C05787s.A0Q, new C05797t(A062));
            AdErrorType adErrorType = AdErrorType.INTERNAL_ERROR;
            this.A0B.A0E().A4c(adErrorType.getErrorCode(), A062);
            AbstractC04050o abstractC04050o = this.A06;
            if (abstractC04050o != null) {
                String errorMessage = adErrorType.getDefaultErrorMessage();
                abstractC04050o.A0G(JA.A01(adErrorType, errorMessage));
            }
            this.A0B.A0E().A4f();
        } else if (this.A0C) {
            String A063 = A06(174, 18, 71);
            this.A0B.A07().A9C(A06, C05787s.A0M, new C05797t(A063));
            AdErrorType adErrorType2 = AdErrorType.AD_ALREADY_STARTED;
            this.A0B.A0E().A4c(adErrorType2.getErrorCode(), A063);
            AbstractC04050o abstractC04050o2 = this.A06;
            if (abstractC04050o2 != null) {
                String errorMessage2 = adErrorType2.getDefaultErrorMessage();
                abstractC04050o2.A0G(JA.A01(adErrorType2, errorMessage2));
            }
            this.A0B.A0E().A4e();
        } else {
            if (!TextUtils.isEmpty(this.A01.A6B())) {
                this.A08.A9W(this.A01.A6B());
            }
            this.A0B.A0E().A4g();
            this.A0C = true;
            A0L();
        }
    }

    public final void A0J() {
        A0T(false);
    }

    public final void A0K() {
        if (this.A02 != null) {
            C04110u.A01(this.A0B).A0N(this.A02);
        }
    }

    public final void A0M(@Nullable InterfaceC04040n interfaceC04040n) {
        if (interfaceC04040n != null) {
            interfaceC04040n.onDestroy();
        }
    }

    public final void A0O(AbstractC04050o abstractC04050o) {
        this.A06 = abstractC04050o;
    }

    public final void A0P(C04331q c04331q) {
        this.A0B.A0E().A4Z();
        String clientToken = c04331q.A03().optString(A06(LossReason.LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS_VALUE, 2, 39));
        if (!TextUtils.isEmpty(clientToken)) {
            C0829Ii funnelLoggingHandler = new C0829Ii(clientToken, this.A08);
            funnelLoggingHandler.A04(EnumC0828Ih.A04, null);
        }
    }

    public void A0Q(@Nullable String str) {
        A09(str, null);
    }

    public final void A0R(@Nullable String str) {
        A0Q(str);
    }

    public final void A0S(@Nullable String str, @Nullable AdExperienceType adExperienceType) {
        A09(str, adExperienceType);
    }

    public void A0T(boolean z) {
        if (!z && !this.A0C) {
            return;
        }
        this.A0B.A0E().A4h();
        A0M(this.A01);
        this.A0C = false;
    }

    public final boolean A0U() {
        C8A c8a = this.A04;
        return c8a == null || c8a.A0C();
    }

    @Override // com.facebook.ads.redexgen.X.Jc
    public final synchronized void AAv(JA ja) {
        A0E().post(new C1251Zb(this, ja));
    }

    @Override // com.facebook.ads.redexgen.X.Jc
    @SuppressLint({"CatchGeneralException"})
    public final synchronized void ACh(C1103Tc c1103Tc) {
        try {
            A08(c1103Tc);
        } catch (Exception e2) {
            this.A0B.A07().A9C(A06(195, 3, 93), C05787s.A0T, new C05797t(e2));
        }
    }
}

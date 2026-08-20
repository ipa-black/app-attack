package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import com.facebook.ads.NativeAdLayout;
/* loaded from: assets/audience_network.dex */
public final class MI {
    public static String[] A00 = {"Mh7OQPY25mJ4xZdJdnJU4lIWxnSb2W80", "uMvQGqYS2R9kLiwAhxbB5gyg9uPLoFmG", "JD8RnvPxGeaTxsc34jN0O6vhnDfoaLvm", "v", "yiVoJ6", "bh6EDcFJy1WMlrC6ew5uNV", "HsXTYL", "k"};
    public static final int A01 = (int) (Kk.A02 * 200.0f);
    public static final int A03 = (int) (Kk.A02 * 200.0f);
    public static final int A02 = (int) (Kk.A02 * 50.0f);

    public static AnonymousClass10 A00(@Nullable NativeAdLayout nativeAdLayout) {
        if (nativeAdLayout == null) {
            return AnonymousClass10.A05;
        }
        if (A03(nativeAdLayout)) {
            return AnonymousClass10.A06;
        }
        return AnonymousClass10.A04;
    }

    @Nullable
    public static MH A01(C1203Xc c1203Xc, InterfaceC0821Ia interfaceC0821Ia, String str, @Nullable NativeAdLayout nativeAdLayout) {
        if (nativeAdLayout == null) {
            return null;
        }
        int h2 = nativeAdLayout.getWidth();
        int w = nativeAdLayout.getHeight();
        int i = A01;
        if (h2 >= i && w >= i) {
            return new C1093Ss(c1203Xc, interfaceC0821Ia, str);
        }
        if (h2 < A03 || w < A02) {
            return null;
        }
        return new C1094St(c1203Xc, interfaceC0821Ia, str);
    }

    public static MH A02(C1203Xc c1203Xc, InterfaceC0821Ia interfaceC0821Ia, String str, C1V c1v, InterfaceC0904Lk interfaceC0904Lk, InterfaceC0903Lj interfaceC0903Lj) {
        return new C1095Su(c1203Xc, interfaceC0821Ia, str, c1v, interfaceC0904Lk, interfaceC0903Lj);
    }

    public static boolean A03(NativeAdLayout nativeAdLayout) {
        int h2 = nativeAdLayout.getWidth();
        int height = nativeAdLayout.getHeight();
        int w = A01;
        if (h2 < w || height < w) {
            if (h2 >= A03) {
                int i = A02;
                if (A00[5].length() != 22) {
                    throw new RuntimeException();
                }
                A00[5] = "hhrIY4o6fKEkU42z4UVpb3";
                if (height < i) {
                }
            }
            return true;
        }
        return false;
    }
}

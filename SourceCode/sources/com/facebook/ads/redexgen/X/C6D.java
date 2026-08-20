package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.ads.redexgen.X.6D  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C6D {
    public static byte[] A03;
    public static String[] A04 = {"fwnF9NqGlDDvd3tmLjHzlBLQ0vKEWHbi", "JyVh64c57ZQhNNoyVwIaBwBMCWCp47TX", "NiVjB9zhlvCIBmozr5iuMf4XPmRpTykj", "aMEAUKQnrJbxe7", "r8tEg4U8ig5A4Tipsx9WF382DZkzVk0N", "", "NXFd2c7X4J9ga52f6GNSRbndM6EeYerJ", "Iv2mUp4tdjLGTNz"};
    public static final AtomicBoolean A05;
    @Nullable
    public C1202Xb A00;
    @Nullable
    public String A01;
    @VisibleForTesting
    public final C0890Kw A02 = new C0890Kw(300000000000L, new C1210Xj(this));

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 91);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A03 = new byte[]{114, 125, 114, Byte.MAX_VALUE, 124, 116, 42, 33, 48, 51, 43, 54, 47, 59, 48, 61, 52, 33, 75, 93, 75, 75, 81, 87, 86, 71, 76, 81, 85, 93};
    }

    static {
        A04();
        A05 = new AtomicBoolean(false);
    }

    public static C8K A00(C1202Xb c1202Xb) {
        if (IK.A0z(c1202Xb)) {
            return C8L.A01(A01(0, 6, 104), A01(18, 12, 67), A01(6, 12, 63));
        }
        C8K A00 = C8L.A00();
        String[] strArr = A04;
        if (strArr[2].charAt(0) != strArr[6].charAt(0)) {
            throw new RuntimeException();
        }
        A04[0] = "UkANKLN4N59lG96lj5R5seL3Uvk1PYyc";
        return A00;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A02() {
        C1202Xb c1202Xb;
        synchronized (this) {
            c1202Xb = this.A00;
        }
        if (c1202Xb == null) {
            return;
        }
        String A7l = C8N.A00().A01(c1202Xb, true).A7l(A00(c1202Xb));
        synchronized (this) {
            this.A01 = A7l;
        }
    }

    public static void A03() {
        A05.set(true);
    }

    public final synchronized String A06(C1202Xb c1202Xb) {
        this.A00 = c1202Xb;
        this.A00.A07().A9i();
        if (this.A00.A06().AFD() || ((A05.get() && IK.A1S(this.A00)) || this.A01 == null)) {
            A02();
            this.A02.A04().A03();
            A05.set(false);
        }
        this.A02.A06();
        return this.A01;
    }

    public final void A07() {
        this.A02.A05();
    }
}

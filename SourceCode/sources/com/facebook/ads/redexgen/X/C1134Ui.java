package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.Ui  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1134Ui implements GX {
    public static byte[] A00;
    public static final GW A01;
    public static final C1134Ui A02;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 107);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{51, 2, 26, 26, 14, 87, 4, 24, 2, 5, 20, 18};
    }

    static {
        A01();
        A02 = new C1134Ui();
        A01 = new C1135Uj();
    }

    public C1134Ui() {
    }

    public /* synthetic */ C1134Ui(C1135Uj c1135Uj) {
        this();
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final Uri A7w() {
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final long ADF(C0774Gb c0774Gb) throws IOException {
        throw new IOException(A00(0, 12, 28));
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final void close() throws IOException {
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        throw new UnsupportedOperationException();
    }
}

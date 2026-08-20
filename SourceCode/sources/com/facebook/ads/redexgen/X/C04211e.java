package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import com.google.common.primitives.SignedBytes;
import java.nio.ByteBuffer;
import java.util.Arrays;
@TargetApi(16)
/* renamed from: com.facebook.ads.redexgen.X.1e */
/* loaded from: assets/audience_network.dex */
public final class C04211e extends C3M implements HT {
    public static byte[] A0E;
    public static String[] A0F = {"2QlMa6qwn7PgdSN4l85jvs7nWajl1MES", "7IDLWOxlh1sFSIB31zRzFYQ7PMnWp72Y", "sIqK", "BoflpFUQeBwwM6pd17Qd", "rQg4TubfQMsXj8fsx3Kc9qFAo71Wl6cI", "0mBM", "Xb0wUTlMwSXhcbJOEuklFsawZUYnk", "6gVYRFlBQUgMJoz7eJC1LBuasB8Ybt5d"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public long A05;
    public MediaFormat A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public boolean A0A;
    public final Context A0B;
    public final AL A0C;
    public final AR A0D;

    public static String A04(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 67);
        }
        return new String(copyOfRange);
    }

    public static void A06() {
        A0E = new byte[]{37, 39, 50, 68, 57, 47, 41, 68, 11, 11, 9, 68, 14, 15, 9, 6, 4, 17, 103, 46, 38, 38, 46, 37, 44, 103, 59, 40, 62, 103, 45, 44, 42, 38, 45, 44, 59, 111, 96, 106, 124, 97, 103, 106, 32, 125, 97, 104, 122, 121, 111, 124, 107, 32, 98, 107, 111, 96, 108, 111, 109, 101, 108, 120, 105, 100, 98, 34, Byte.MAX_VALUE, 108, 122, 61, 54, 63, 48, 48, 59, 50, 115, 61, 49, 43, 48, 42, 59, 54, 33, 60, 63, 39, 54, 13, 0, 23, 10, 20, 9, 17, 0, 82, 94, 71, 18, 86, 81, 79, 74, 75, 18, 76, 86, 69, 90, 3, 7, 3, 11, 47, 45, 54, 48, 45, 54, 43, 38, 125, 111, 99, 126, 98, 107, 35, 124, 111, 122, 107, 29, 15, 3, 29, 27, 0, 9, 72, 87, SignedBytes.MAX_POWER_OF_TWO, 93, 84, 94, 70, 87};
    }

    static {
        A06();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.BF != com.facebook.ads.internal.exoplayer2.thirdparty.drm.DrmSessionManager<com.facebook.ads.internal.exoplayer2.thirdparty.drm.FrameworkMediaCrypto> */
    public C04211e(Context context, Cz cz, @Nullable BF<C1175Wa> bf, boolean z, @Nullable Handler handler, @Nullable AM am, @Nullable A7 a7, AE... aeArr) {
        this(context, cz, bf, z, handler, am, new C1188Wn(a7, aeArr));
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.BF != com.facebook.ads.internal.exoplayer2.thirdparty.drm.DrmSessionManager<com.facebook.ads.internal.exoplayer2.thirdparty.drm.FrameworkMediaCrypto> */
    public C04211e(Context context, Cz cz, @Nullable BF<C1175Wa> bf, boolean z, @Nullable Handler handler, @Nullable AM am, AR ar) {
        super(1, cz, bf, z);
        this.A0B = context.getApplicationContext();
        this.A0D = ar;
        this.A0C = new AL(handler, am);
        ar.AEy(new C1186Wl(this));
    }

    private int A00(C0695Ct c0695Ct, Format format) {
        PackageManager packageManager;
        if (C0815Hs.A02 < 24) {
            if (A04(15, 22, 10).equals(c0695Ct.A02)) {
                boolean z = true;
                if (C0815Hs.A02 == 23 && (packageManager = this.A0B.getPackageManager()) != null) {
                    boolean needsRawDecoderWorkaround = packageManager.hasSystemFeature(A04(37, 25, 77));
                    if (needsRawDecoderWorkaround) {
                        z = false;
                    }
                }
                if (z) {
                    return -1;
                }
            }
        }
        return format.A09;
    }

    private final int A01(C0695Ct c0695Ct, Format format, Format[] formatArr) {
        int maxInputSize = A00(c0695Ct, format);
        return maxInputSize;
    }

    @SuppressLint({"InlinedApi"})
    private final MediaFormat A02(Format format, String str, int i) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString(A04(113, 4, 45), str);
        mediaFormat.setInteger(A04(71, 13, 29), format.A05);
        mediaFormat.setInteger(A04(125, 11, 77), format.A0C);
        D5.A06(mediaFormat, format.A0P);
        D5.A04(mediaFormat, A04(99, 14, 124), i);
        if (C0815Hs.A02 >= 23) {
            mediaFormat.setInteger(A04(117, 8, 28), 0);
        }
        return mediaFormat;
    }

    private void A05() {
        long A6M = this.A0D.A6M(A8h());
        if (A6M != Long.MIN_VALUE) {
            if (!this.A08) {
                long newCurrentPositionUs = this.A05;
                A6M = Math.max(newCurrentPositionUs, A6M);
            }
            this.A05 = A6M;
            this.A08 = false;
        }
    }

    public static boolean A08(String str) {
        if (C0815Hs.A02 < 24 && A04(0, 15, 41).equals(str)) {
            if (A04(136, 7, 45).equals(C0815Hs.A05)) {
                if (!C0815Hs.A03.startsWith(A04(143, 8, 113)) && !C0815Hs.A03.startsWith(A04(84, 7, 16))) {
                    boolean startsWith = C0815Hs.A03.startsWith(A04(91, 8, 38));
                    if (A0F[0].charAt(11) == 'E') {
                        throw new RuntimeException();
                    }
                    A0F[7] = "opGrTNmI0QvRBzLgsKXfoISibxDPDheH";
                    if (startsWith) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    private final boolean A09(String str) {
        int A00 = HV.A00(str);
        return A00 != 0 && this.A0D.A8g(A00);
    }

    @Override // com.facebook.ads.redexgen.X.C3M, com.facebook.ads.redexgen.X.AbstractC0704Dh
    public final void A12() {
        try {
            this.A0D.AE4();
            try {
                super.A12();
                this.A0U.A00();
                this.A0C.A04(this.A0U);
                String[] strArr = A0F;
                if (strArr[5].length() != strArr[2].length()) {
                    throw new RuntimeException();
                }
                A0F[0] = "oD9vMZ2y7vvHJ8P8Vn8jWHJMMQFHYWzQ";
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.A12();
                throw th;
            } finally {
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C3M, com.facebook.ads.redexgen.X.AbstractC0704Dh
    public final void A13() {
        super.A13();
        this.A0D.ADW();
    }

    @Override // com.facebook.ads.redexgen.X.C3M, com.facebook.ads.redexgen.X.AbstractC0704Dh
    public final void A14() {
        A05();
        this.A0D.pause();
        super.A14();
    }

    @Override // com.facebook.ads.redexgen.X.C3M, com.facebook.ads.redexgen.X.AbstractC0704Dh
    public final void A15(long j, boolean z) throws C9F {
        super.A15(j, z);
        this.A0D.reset();
        this.A05 = j;
        this.A07 = true;
        this.A08 = true;
    }

    @Override // com.facebook.ads.redexgen.X.C3M, com.facebook.ads.redexgen.X.AbstractC0704Dh
    public final void A16(boolean z) throws C9F {
        super.A16(z);
        this.A0C.A05(this.A0U);
        int i = A11().A00;
        if (i != 0) {
            this.A0D.A5E(i);
        } else {
            this.A0D.A4r();
        }
    }

    @Override // com.facebook.ads.redexgen.X.C3M
    public final int A1A(MediaCodec mediaCodec, C0695Ct c0695Ct, Format format, Format format2) {
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:114:0x00bb, code lost:
        if (r6 != (-1)) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x00c3, code lost:
        if (r4.A0G(r17.A0C) == false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x00c7, code lost:
        if (r17.A05 == r1) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x00cf, code lost:
        if (r4.A0F(r17.A05) == false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x00db, code lost:
        if (r6 != (-1)) goto L50;
     */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.BF != com.facebook.ads.internal.exoplayer2.thirdparty.drm.DrmSessionManager<com.facebook.ads.internal.exoplayer2.thirdparty.drm.FrameworkMediaCrypto> */
    /* JADX WARN: Removed duplicated region for block: B:125:0x00d8  */
    @Override // com.facebook.ads.redexgen.X.C3M
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int A1B(com.facebook.ads.redexgen.X.Cz r15, com.facebook.ads.redexgen.X.BF<com.facebook.ads.redexgen.X.C1175Wa> r16, com.facebook.ads.internal.exoplayer2.thirdparty.Format r17) throws com.facebook.ads.redexgen.X.D2 {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C04211e.A1B(com.facebook.ads.redexgen.X.Cz, com.facebook.ads.redexgen.X.BF, com.facebook.ads.internal.exoplayer2.thirdparty.Format):int");
    }

    @Override // com.facebook.ads.redexgen.X.C3M
    public final C0695Ct A1E(Cz cz, Format format, boolean z) throws D2 {
        C0695Ct passthroughDecoderInfo;
        if (A09(format.A0O) && (passthroughDecoderInfo = cz.A7J()) != null) {
            return passthroughDecoderInfo;
        }
        return super.A1E(cz, format, z);
    }

    @Override // com.facebook.ads.redexgen.X.C3M
    public final void A1H() throws C9F {
        try {
            this.A0D.ADX();
        } catch (AQ e2) {
            throw C9F.A01(e2, A0y());
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:46:0x006a */
    @Override // com.facebook.ads.redexgen.X.C3M
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A1K(android.media.MediaCodec r11, android.media.MediaFormat r12) throws com.facebook.ads.redexgen.X.C9F {
        /*
            r10 = this;
            android.media.MediaFormat r3 = r10.A06
            if (r3 == 0) goto L3c
            r2 = 113(0x71, float:1.58E-43)
            r1 = 4
            r0 = 45
            java.lang.String r0 = A04(r2, r1, r0)
            java.lang.String r3 = r3.getString(r0)
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C04211e.A0F
            r0 = 5
            r1 = r2[r0]
            r0 = 2
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L29
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L29:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C04211e.A0F
            java.lang.String r1 = "rkxX"
            r0 = 5
            r2[r0] = r1
            java.lang.String r1 = "9ODr"
            r0 = 2
            r2[r0] = r1
            int r3 = com.facebook.ads.redexgen.X.HV.A00(r3)
            android.media.MediaFormat r12 = r10.A06
            goto L3e
        L3c:
            int r3 = r10.A04
        L3e:
            r2 = 71
            r1 = 13
            r0 = 29
            java.lang.String r0 = A04(r2, r1, r0)
            int r4 = r12.getInteger(r0)
            r2 = 125(0x7d, float:1.75E-43)
            r1 = 11
            r0 = 77
            java.lang.String r0 = A04(r2, r1, r0)
            int r5 = r12.getInteger(r0)
            boolean r0 = r10.A09
            if (r0 == 0) goto L71
            r1 = 6
            if (r4 != r1) goto L71
            int r0 = r10.A00
            if (r0 >= r1) goto L71
            int[] r7 = new int[r0]
            r1 = 0
        L68:
            int r0 = r10.A00
            if (r1 >= r0) goto L72
            r7[r1] = r1
            int r1 = r1 + 1
            goto L68
        L71:
            r7 = 0
        L72:
            com.facebook.ads.redexgen.X.AR r2 = r10.A0D     // Catch: com.facebook.ads.redexgen.X.AN -> L7d
            r6 = 0
            int r8 = r10.A02     // Catch: com.facebook.ads.redexgen.X.AN -> L7d
            int r9 = r10.A03     // Catch: com.facebook.ads.redexgen.X.AN -> L7d
            r2.A49(r3, r4, r5, r6, r7, r8, r9)     // Catch: com.facebook.ads.redexgen.X.AN -> L7d
            return
        L7d:
            r1 = move-exception
            int r0 = r10.A0y()
            com.facebook.ads.redexgen.X.9F r0 = com.facebook.ads.redexgen.X.C9F.A01(r1, r0)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C04211e.A1K(android.media.MediaCodec, android.media.MediaFormat):void");
    }

    @Override // com.facebook.ads.redexgen.X.C3M
    public final void A1L(Format format) throws C9F {
        int i;
        super.A1L(format);
        this.A0C.A03(format);
        if (A04(62, 9, 78).equals(format.A0O)) {
            i = format.A0A;
        } else {
            i = 2;
        }
        this.A04 = i;
        this.A00 = format.A05;
        this.A02 = format.A06;
        this.A03 = format.A07;
    }

    @Override // com.facebook.ads.redexgen.X.C3M
    public final void A1M(C1181Wg c1181Wg) {
        if (this.A07 && !c1181Wg.A03()) {
            if (Math.abs(c1181Wg.A00 - this.A05) > 500000) {
                this.A05 = c1181Wg.A00;
            }
            this.A07 = false;
        }
    }

    @Override // com.facebook.ads.redexgen.X.C3M
    public final void A1N(C0695Ct c0695Ct, MediaCodec mediaCodec, Format format, MediaCrypto mediaCrypto) {
        this.A01 = A01(c0695Ct, format, A19());
        this.A09 = A08(c0695Ct.A02);
        this.A0A = c0695Ct.A04;
        MediaFormat A02 = A02(format, c0695Ct.A01 == null ? A04(62, 9, 78) : c0695Ct.A01, this.A01);
        mediaCodec.configure(A02, (Surface) null, mediaCrypto, 0);
        if (this.A0A) {
            this.A06 = A02;
            MediaFormat mediaFormat = this.A06;
            String str = format.A0O;
            String codecMimeType = A04(113, 4, 45);
            mediaFormat.setString(codecMimeType, str);
            return;
        }
        this.A06 = null;
    }

    @Override // com.facebook.ads.redexgen.X.C3M
    public final void A1O(String str, long j, long j2) {
        this.A0C.A06(str, j, j2);
    }

    @Override // com.facebook.ads.redexgen.X.C3M
    public final boolean A1P(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) throws C9F {
        if (this.A0A && (i2 & 2) != 0) {
            mediaCodec.releaseOutputBuffer(i, false);
            return true;
        } else if (z) {
            mediaCodec.releaseOutputBuffer(i, false);
            this.A0U.A08++;
            this.A0D.A8B();
            return true;
        } else {
            try {
                if (this.A0D.A88(byteBuffer, j3)) {
                    mediaCodec.releaseOutputBuffer(i, false);
                    this.A0U.A06++;
                    return true;
                }
                return false;
            } catch (AO | AQ e2) {
                throw C9F.A01(e2, A0y());
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0704Dh, com.facebook.ads.redexgen.X.InterfaceC1195Wu
    public final HT A74() {
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.HT
    public final C06119a A7O() {
        return this.A0D.A7O();
    }

    @Override // com.facebook.ads.redexgen.X.HT
    public final long A7R() {
        if (A7i() == 2) {
            A05();
        }
        return this.A05;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0704Dh, com.facebook.ads.redexgen.X.InterfaceC06219k
    public final void A8C(int i, Object obj) throws C9F {
        if (i == 2) {
            this.A0D.setVolume(((Float) obj).floatValue());
        } else if (i != 3) {
            super.A8C(i, obj);
        } else {
            this.A0D.AEo((A6) obj);
        }
    }

    @Override // com.facebook.ads.redexgen.X.C3M, com.facebook.ads.redexgen.X.InterfaceC1195Wu
    public final boolean A8h() {
        return super.A8h() && this.A0D.A8h();
    }

    @Override // com.facebook.ads.redexgen.X.C3M, com.facebook.ads.redexgen.X.InterfaceC1195Wu
    public final boolean A8r() {
        return this.A0D.A8G() || super.A8r();
    }

    @Override // com.facebook.ads.redexgen.X.HT
    public final C06119a AF4(C06119a c06119a) {
        return this.A0D.AF4(c06119a);
    }
}

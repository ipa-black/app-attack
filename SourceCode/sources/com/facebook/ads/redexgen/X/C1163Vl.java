package com.facebook.ads.redexgen.X;

import android.util.Log;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.Vl  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1163Vl implements InterfaceC0680Cb {
    public static byte[] A0E;
    public static String[] A0F = {"NvpEV7R7ZS5uNQ5TFb57EvhjwIZCTQku", "DdUDSiCrGQUoEviiVingxcQFfwNbDa", "hetlnsRY2wqGSQpiRITV", "h6jp2Z", "H3YUjFwBN5I", "HDGGogJPAHFPfOUxVzLcmHcfpTDLo", "fvYnB4Gz7ZvwaQ8Y4EtF6ZMgsdzNJKEV", "DcduA0DmY9P8nwkm6XpLf73k0ckt"};
    public long A00;
    public long A01;
    public InterfaceC0667Bh A02;
    public Cg A03;
    public String A04;
    public boolean A05;
    public final C0687Ck A0B;
    public final boolean[] A0D = new boolean[3];
    public final C0684Ch A0A = new C0684Ch(32, 128);
    public final C0684Ch A08 = new C0684Ch(33, 128);
    public final C0684Ch A06 = new C0684Ch(34, 128);
    public final C0684Ch A07 = new C0684Ch(39, 128);
    public final C0684Ch A09 = new C0684Ch(40, 128);
    public final C0799Hc A0C = new C0799Hc();

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 41);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        String[] strArr = A0F;
        if (strArr[4].length() == strArr[2].length()) {
            throw new RuntimeException();
        }
        A0F[3] = "YNSDJ1";
        A0E = new byte[]{121, 3, 7, 4, 99, 84, 80, 85, 84, 67, 126, 69, 78, 83, 91, 78, 72, 95, 78, 79, 11, 74, 88, 91, 78, 72, 95, 116, 89, 74, 95, 66, 68, 116, 66, 79, 72, 11, 93, 74, 71, 94, 78, 17, 11, 78, 81, 92, 93, 87, 23, 80, 93, 78, 91};
    }

    static {
        A02();
    }

    public C1163Vl(C0687Ck c0687Ck) {
        this.A0B = c0687Ck;
    }

    public static Format A00(String str, C0684Ch c0684Ch, C0684Ch c0684Ch2, C0684Ch c0684Ch3) {
        byte[] bArr = new byte[c0684Ch.A00 + c0684Ch2.A00 + c0684Ch3.A00];
        System.arraycopy(c0684Ch.A01, 0, bArr, 0, c0684Ch.A00);
        System.arraycopy(c0684Ch2.A01, 0, bArr, c0684Ch.A00, c0684Ch2.A00);
        System.arraycopy(c0684Ch3.A01, 0, bArr, c0684Ch.A00 + c0684Ch2.A00, c0684Ch3.A00);
        C0800Hd c0800Hd = new C0800Hd(c0684Ch2.A01, 0, c0684Ch2.A00);
        c0800Hd.A07(44);
        int i = c0800Hd.A05(3);
        c0800Hd.A06();
        c0800Hd.A07(88);
        c0800Hd.A07(8);
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            if (c0800Hd.A0A()) {
                i2 += 89;
            }
            if (c0800Hd.A0A()) {
                i2 += 8;
            }
        }
        c0800Hd.A07(i2);
        if (i > 0) {
            c0800Hd.A07((8 - i) * 2);
        }
        c0800Hd.A04();
        int chromaFormatIdc = c0800Hd.A04();
        if (chromaFormatIdc == 3) {
            c0800Hd.A06();
        }
        int picHeightInLumaSamples = c0800Hd.A04();
        int confWinLeftOffset = c0800Hd.A04();
        if (A0F[1].length() != 12) {
            String[] strArr = A0F;
            strArr[4] = "a8PzOvYW3xW";
            strArr[2] = "i4yWj6LgSPQERWLdQfta";
            if (c0800Hd.A0A()) {
                int toSkip = c0800Hd.A04();
                int A04 = c0800Hd.A04();
                int subHeightC = c0800Hd.A04();
                int A042 = c0800Hd.A04();
                picHeightInLumaSamples -= (toSkip + A04) * ((chromaFormatIdc == 1 || chromaFormatIdc == 2) ? 2 : 1);
                confWinLeftOffset -= (subHeightC + A042) * (chromaFormatIdc == 1 ? 2 : 1);
            }
            c0800Hd.A04();
            c0800Hd.A04();
            int A043 = c0800Hd.A04();
            for (int i4 = c0800Hd.A0A() ? 0 : i; i4 <= i; i4++) {
                c0800Hd.A04();
                c0800Hd.A04();
                c0800Hd.A04();
            }
            c0800Hd.A04();
            c0800Hd.A04();
            c0800Hd.A04();
            c0800Hd.A04();
            c0800Hd.A04();
            c0800Hd.A04();
            if (c0800Hd.A0A() && c0800Hd.A0A()) {
                A05(c0800Hd);
            }
            c0800Hd.A07(2);
            if (c0800Hd.A0A()) {
                c0800Hd.A07(8);
                c0800Hd.A04();
                c0800Hd.A04();
                c0800Hd.A06();
            }
            A06(c0800Hd);
            if (c0800Hd.A0A()) {
                for (int i5 = 0; i5 < c0800Hd.A04(); i5++) {
                    c0800Hd.A07(A043 + 4 + 1);
                }
            }
            c0800Hd.A07(2);
            float f2 = 1.0f;
            if (c0800Hd.A0A() && c0800Hd.A0A()) {
                int log2MaxPicOrderCntLsbMinus4 = c0800Hd.A05(8);
                if (log2MaxPicOrderCntLsbMinus4 == 255) {
                    int A05 = c0800Hd.A05(16);
                    int A052 = c0800Hd.A05(16);
                    if (A05 != 0 && A052 != 0) {
                        f2 = A05 / A052;
                    }
                } else {
                    float[] fArr = HY.A04;
                    String[] strArr2 = A0F;
                    if (strArr2[4].length() == strArr2[2].length()) {
                        throw new RuntimeException();
                    }
                    String[] strArr3 = A0F;
                    strArr3[4] = "Mq8kmMTSiz0";
                    strArr3[2] = "TBAE07oWZ5Khy7farxDr";
                    if (log2MaxPicOrderCntLsbMinus4 < fArr.length) {
                        f2 = HY.A04[log2MaxPicOrderCntLsbMinus4];
                    } else {
                        Log.w(A01(0, 10, 24), A01(10, 35, 2) + log2MaxPicOrderCntLsbMinus4);
                    }
                }
            }
            List singletonList = Collections.singletonList(bArr);
            if (A0F[3].length() != 6) {
                String[] strArr4 = A0F;
                strArr4[7] = "REKIidOCsv4ptzsgivtfnGOww6JG";
                strArr4[5] = "T94vPaWVm7jdMSWQElc8luWGTOlSo";
                return Format.A03(str, A01(45, 10, 17), null, -1, -1, picHeightInLumaSamples, confWinLeftOffset, -1.0f, singletonList, -1, f2, null);
            }
            String[] strArr5 = A0F;
            strArr5[7] = "W2GdBlThEFkhmpYhDIzNH9YY1BaI";
            strArr5[5] = "0yDCfDeoWht2juYgXJKTHBbNY9ana";
            return Format.A03(str, A01(45, 10, 17), null, -1, -1, picHeightInLumaSamples, confWinLeftOffset, -1.0f, singletonList, -1, f2, null);
        }
        throw new RuntimeException();
    }

    private void A03(long j, int i, int i2, long j2) {
        if (this.A05) {
            this.A03.A02(j, i);
        } else {
            this.A0A.A04(i2);
            this.A08.A04(i2);
            this.A06.A04(i2);
            if (this.A0A.A03() && this.A08.A03() && this.A06.A03()) {
                this.A02.A5X(A00(this.A04, this.A0A, this.A08, this.A06));
                this.A05 = true;
            }
        }
        if (this.A07.A04(i2)) {
            C0684Ch c0684Ch = this.A07;
            if (A0F[1].length() == 12) {
                throw new RuntimeException();
            }
            A0F[3] = "Yba7mj";
            this.A0C.A0b(this.A07.A01, HY.A02(c0684Ch.A01, this.A07.A00));
            this.A0C.A0Z(5);
            this.A0B.A02(j2, this.A0C);
        }
        if (this.A09.A04(i2)) {
            this.A0C.A0b(this.A09.A01, HY.A02(this.A09.A01, this.A09.A00));
            this.A0C.A0Z(5);
            this.A0B.A02(j2, this.A0C);
        }
    }

    private void A04(long j, int i, int i2, long j2) {
        if (this.A05) {
            this.A03.A03(j, i, i2, j2);
        } else {
            this.A0A.A01(i2);
            this.A08.A01(i2);
            this.A06.A01(i2);
        }
        this.A07.A01(i2);
        this.A09.A01(i2);
    }

    public static void A05(C0800Hd c0800Hd) {
        for (int i = 0; i < 4; i++) {
            int i2 = 0;
            while (i2 < 6) {
                if (!c0800Hd.A0A()) {
                    c0800Hd.A04();
                } else {
                    int sizeId = i << 1;
                    int min = Math.min(64, 1 << (sizeId + 4));
                    if (i > 1) {
                        c0800Hd.A03();
                    }
                    for (int sizeId2 = 0; sizeId2 < min; sizeId2++) {
                        c0800Hd.A03();
                    }
                }
                int sizeId3 = 3;
                if (i != 3) {
                    sizeId3 = 1;
                }
                i2 += sizeId3;
            }
        }
    }

    public static void A06(C0800Hd c0800Hd) {
        int A04 = c0800Hd.A04();
        boolean z = false;
        int numNegativePics = 0;
        for (int stRpsIdx = 0; stRpsIdx < A04; stRpsIdx++) {
            if (stRpsIdx != 0) {
                z = c0800Hd.A0A();
            }
            if (z) {
                c0800Hd.A06();
                c0800Hd.A04();
                for (int i = 0; i <= numNegativePics; i++) {
                    if (c0800Hd.A0A()) {
                        c0800Hd.A06();
                    }
                }
            } else {
                int previousNumDeltaPocs = c0800Hd.A04();
                int A042 = c0800Hd.A04();
                numNegativePics = previousNumDeltaPocs + A042;
                for (int numShortTermRefPicSets = 0; numShortTermRefPicSets < previousNumDeltaPocs; numShortTermRefPicSets++) {
                    c0800Hd.A04();
                    c0800Hd.A06();
                }
                for (int numShortTermRefPicSets2 = 0; numShortTermRefPicSets2 < A042; numShortTermRefPicSets2++) {
                    c0800Hd.A04();
                    c0800Hd.A06();
                }
            }
        }
    }

    private void A07(byte[] bArr, int i, int i2) {
        if (this.A05) {
            this.A03.A04(bArr, i, i2);
        } else {
            this.A0A.A02(bArr, i, i2);
            this.A08.A02(bArr, i, i2);
            this.A06.A02(bArr, i, i2);
        }
        this.A07.A02(bArr, i, i2);
        this.A09.A02(bArr, i, i2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0680Cb
    public final void A4B(C0799Hc c0799Hc) {
        while (true) {
            int A04 = c0799Hc.A04();
            if (A0F[1].length() == 12) {
                throw new RuntimeException();
            }
            String[] strArr = A0F;
            strArr[0] = "AvzYB124iDQiX3hdxqfkLksaQ25q0Ga1";
            strArr[6] = "Nv2bR4D3VQ28suo5ivBlL2099SuCEJEb";
            if (A04 > 0) {
                int A06 = c0799Hc.A06();
                int A07 = c0799Hc.A07();
                byte[] bArr = c0799Hc.A00;
                long j = this.A01;
                int offset = c0799Hc.A04();
                this.A01 = j + offset;
                InterfaceC0667Bh interfaceC0667Bh = this.A02;
                int offset2 = c0799Hc.A04();
                interfaceC0667Bh.AEX(c0799Hc, offset2);
                while (A06 < A07) {
                    int A042 = HY.A04(bArr, A06, A07, this.A0D);
                    if (A042 == A07) {
                        A07(bArr, A06, A07);
                        return;
                    }
                    int bytesWrittenPastPosition = HY.A00(bArr, A042);
                    int i = A042 - A06;
                    if (i > 0) {
                        A07(bArr, A06, A042);
                    }
                    int i2 = A07 - A042;
                    long j2 = this.A01 - i2;
                    int offset3 = i < 0 ? -i : 0;
                    A03(j2, i2, offset3, this.A00);
                    long absolutePosition = this.A00;
                    A04(j2, i2, bytesWrittenPastPosition, absolutePosition);
                    A06 = A042 + 3;
                }
            } else {
                return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0680Cb
    public final void A4Y(BX bx, C0691Cp c0691Cp) {
        c0691Cp.A05();
        this.A04 = c0691Cp.A04();
        this.A02 = bx.AFc(c0691Cp.A03(), 2);
        this.A03 = new Cg(this.A02);
        this.A0B.A03(bx, c0691Cp);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0680Cb
    public final void ADM() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0680Cb
    public final void ADN(long j, boolean z) {
        this.A00 = j;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0680Cb
    public final void AEb() {
        HY.A0B(this.A0D);
        this.A0A.A00();
        this.A08.A00();
        this.A06.A00();
        this.A07.A00();
        this.A09.A00();
        this.A03.A01();
        this.A01 = 0L;
    }
}

package com.facebook.ads.redexgen.X;

import android.support.v4.media.session.PlaybackStateCompat;
import android.util.SparseArray;
import androidx.core.view.InputDeviceCompat;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import java.io.IOException;
/* renamed from: com.facebook.ads.redexgen.X.Vf  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1157Vf implements BV {
    public static String[] A08 = {"pV6afMZIVEGTOqSkK4PJAxqV3cRTXe0d", "IAHwWl6p9dkO64XBfZ0QYdoG1FARrH3l", "8O8qDLmpQAmlCV9yXa4a4pqjSYQFT4zH", "zdF1gQZIlZar6BQddk1LhfG9pE3e2nBq", "3CFwU8lFm", "v9T9Lg78nTaSAiVLG9Jw7rJGA2UCfL0z", "6lAaLpwrnWkg", "Pzi"};
    public static final BY A09 = new C1158Vg();
    public long A00;
    public BX A01;
    public boolean A02;
    public boolean A03;
    public boolean A04;
    public final SparseArray<C0685Ci> A05;
    public final C0799Hc A06;
    public final C0811Ho A07;

    public C1157Vf() {
        this(new C0811Ho(0L));
    }

    public C1157Vf(C0811Ho c0811Ho) {
        this.A07 = c0811Ho;
        this.A06 = new C0799Hc(4096);
        this.A05 = new SparseArray<>();
    }

    @Override // com.facebook.ads.redexgen.X.BV
    public final void A8V(BX bx) {
        this.A01 = bx;
        bx.AEd(new WU(C.TIME_UNSET));
    }

    @Override // com.facebook.ads.redexgen.X.BV
    public final int ADp(BW bw, C0662Bc c0662Bc) throws IOException, InterruptedException {
        long j;
        if (bw.ADQ(this.A06.A00, 0, 4, true)) {
            this.A06.A0Y(0);
            int systemHeaderLength = this.A06.A08();
            if (systemHeaderLength == 441) {
                return -1;
            }
            if (systemHeaderLength == 442) {
                bw.ADP(this.A06.A00, 0, 10);
                this.A06.A0Y(9);
                int nextStartCode = this.A06.A0E();
                bw.AFJ((nextStartCode & 7) + 14);
                return 0;
            }
            if (systemHeaderLength == 443) {
                bw.ADP(this.A06.A00, 0, 2);
                this.A06.A0Y(0);
                int nextStartCode2 = this.A06.A0I();
                int i = nextStartCode2 + 6;
                if (A08[7].length() != 22) {
                    String[] strArr = A08;
                    strArr[5] = "HKquBkRqV5bg6e7zOk5qC1bF2o25gd0c";
                    strArr[0] = "faW9VDigV6ilhrF8PW3drZ4wwMfODA0N";
                    bw.AFJ(i);
                    return 0;
                }
            } else {
                int nextStartCode3 = systemHeaderLength & InputDeviceCompat.SOURCE_ANY;
                if ((nextStartCode3 >> 8) != 1) {
                    bw.AFJ(1);
                    return 0;
                }
                int i2 = systemHeaderLength & 255;
                C0685Ci c0685Ci = this.A05.get(i2);
                if (!this.A02) {
                    if (c0685Ci == null) {
                        InterfaceC0680Cb elementaryStreamReader = null;
                        if (i2 == 189) {
                            elementaryStreamReader = new C1169Vu();
                            this.A03 = true;
                            this.A00 = bw.A7P();
                        } else if ((i2 & 224) == 192) {
                            elementaryStreamReader = new C1160Vi();
                            this.A03 = true;
                            this.A00 = bw.A7P();
                        } else if ((i2 & PsExtractor.VIDEO_STREAM_MASK) == 224) {
                            elementaryStreamReader = new Vn();
                            this.A04 = true;
                            this.A00 = bw.A7P();
                        }
                        if (elementaryStreamReader != null) {
                            elementaryStreamReader.A4Y(this.A01, new C0691Cp(i2, 256));
                            c0685Ci = new C0685Ci(elementaryStreamReader, this.A07);
                            this.A05.put(i2, c0685Ci);
                        }
                    }
                    if (this.A03 && this.A04) {
                        j = this.A00 + PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                    } else {
                        j = 1048576;
                    }
                    if (bw.A7P() > j) {
                        this.A02 = true;
                        BX bx = this.A01;
                        if (A08[6].length() != 7) {
                            A08[4] = "xdmI1xGjCkbROfx6HlMFi8Q1HtnAUXbK";
                            bx.A5G();
                        }
                    }
                }
                bw.ADP(this.A06.A00, 0, 2);
                this.A06.A0Y(0);
                int nextStartCode4 = this.A06.A0I();
                int payloadLength = nextStartCode4 + 6;
                if (c0685Ci == null) {
                    bw.AFJ(payloadLength);
                } else {
                    this.A06.A0W(payloadLength);
                    bw.readFully(this.A06.A00, 0, payloadLength);
                    this.A06.A0Y(6);
                    c0685Ci.A03(this.A06);
                    C0799Hc c0799Hc = this.A06;
                    int nextStartCode5 = c0799Hc.A05();
                    c0799Hc.A0X(nextStartCode5);
                }
                return 0;
            }
            throw new RuntimeException();
        }
        return -1;
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x000c */
    @Override // com.facebook.ads.redexgen.X.BV
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void AEc(long r3, long r5) {
        /*
            r2 = this;
            com.facebook.ads.redexgen.X.Ho r0 = r2.A07
            r0.A08()
            r1 = 0
        L6:
            android.util.SparseArray<com.facebook.ads.redexgen.X.Ci> r0 = r2.A05
            int r0 = r0.size()
            if (r1 >= r0) goto L1c
            android.util.SparseArray<com.facebook.ads.redexgen.X.Ci> r0 = r2.A05
            java.lang.Object r0 = r0.valueAt(r1)
            com.facebook.ads.redexgen.X.Ci r0 = (com.facebook.ads.redexgen.X.C0685Ci) r0
            r0.A02()
            int r1 = r1 + 1
            goto L6
        L1c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1157Vf.AEc(long, long):void");
    }

    @Override // com.facebook.ads.redexgen.X.BV
    public final boolean AFL(BW bw) throws IOException, InterruptedException {
        byte[] bArr = new byte[14];
        bw.ADP(bArr, 0, 14);
        if (442 != (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4) {
            return false;
        }
        int i = bArr[8] & 4;
        if (A08[4].length() != 31) {
            A08[6] = "Yb1F33WkxQfWiaSVh137";
            if (i != 4) {
                return false;
            }
            String[] strArr = A08;
            if (strArr[5].charAt(30) == strArr[0].charAt(30)) {
                String[] strArr2 = A08;
                strArr2[2] = "0jRSG84WTzZndWahG37MGXBabYk0DmjV";
                strArr2[3] = "QaZZpRdUVGXpS1N3yC2DPVE3W204sMee";
                if ((bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
                    return false;
                }
                int packStuffingLength = bArr[13] & 7;
                bw.A3L(packStuffingLength);
                bw.ADP(bArr, 0, 3);
                int packStuffingLength2 = bArr[0];
                int i2 = (packStuffingLength2 & 255) << 16;
                int packStuffingLength3 = bArr[1];
                int i3 = i2 | ((packStuffingLength3 & 255) << 8);
                int packStuffingLength4 = bArr[2];
                return 1 == ((packStuffingLength4 & 255) | i3);
            }
        }
        throw new RuntimeException();
    }
}

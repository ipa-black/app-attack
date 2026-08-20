package com.facebook.ads.redexgen.X;

import android.util.SparseArray;
import android.util.SparseIntArray;
import com.facebook.ads.internal.exoplayer2.thirdparty.extractor.ts.TsPayloadReader;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.Va  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1152Va implements InterfaceC0686Cj {
    public static String[] A05 = {"ZoOhGYHP8SNfCMTpI8hB8esJvCxQNk4a", "iCY0vtQk2BMTn8YKksXnllwhxYcEMWPa", "FRJmrfeKqiG8dvU06WzW6", "wyGcQq4l", "", "l2", "ODNaIWitniiqKmZchEPotBtPtmPon6SS", "r1S7VBlY5d2QYAsiLWImTDUS2fBhu4wR"};
    public final int A00;
    public final /* synthetic */ VZ A04;
    public final C0798Hb A03 = new C0798Hb(new byte[5]);
    public final SparseArray<InterfaceC0692Cq> A01 = new SparseArray<>();
    public final SparseIntArray A02 = new SparseIntArray();

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x015c A[SYNTHETIC] */
    @Override // com.facebook.ads.redexgen.X.InterfaceC0686Cj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A4B(com.facebook.ads.redexgen.X.C0799Hc r14) {
        /*
            Method dump skipped, instructions count: 548
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1152Va.A4B(com.facebook.ads.redexgen.X.Hc):void");
    }

    public C1152Va(VZ vz, int i) {
        this.A04 = vz;
        this.A00 = i;
    }

    private C0689Cn A00(C0799Hc c0799Hc, int i) {
        long j;
        long j2;
        long j3;
        int A06 = c0799Hc.A06();
        int i2 = A06 + i;
        int descriptorLength = -1;
        String str = null;
        List<TsPayloadReader.DvbSubtitleInfo> dvbSubtitleInfos = null;
        while (c0799Hc.A06() < i2) {
            int descriptorsStartPosition = c0799Hc.A0E();
            int A062 = c0799Hc.A06() + c0799Hc.A0E();
            if (descriptorsStartPosition == 5) {
                long A0M = c0799Hc.A0M();
                j = VZ.A0F;
                if (A0M != j) {
                    j2 = VZ.A0G;
                    if (A05[0].charAt(13) == 108) {
                        throw new RuntimeException();
                    }
                    String[] strArr = A05;
                    strArr[5] = "OX";
                    strArr[4] = "";
                    if (A0M != j2) {
                        j3 = VZ.A0H;
                        if (A0M == j3) {
                            descriptorLength = 36;
                        }
                    } else {
                        descriptorLength = TsExtractor.TS_STREAM_TYPE_E_AC3;
                    }
                } else {
                    descriptorLength = TsExtractor.TS_STREAM_TYPE_AC3;
                }
            } else if (descriptorsStartPosition == 106) {
                descriptorLength = TsExtractor.TS_STREAM_TYPE_AC3;
            } else if (descriptorsStartPosition == 122) {
                descriptorLength = TsExtractor.TS_STREAM_TYPE_E_AC3;
            } else if (descriptorsStartPosition == 123) {
                descriptorLength = TsExtractor.TS_STREAM_TYPE_DTS;
            } else if (descriptorsStartPosition == 10) {
                str = c0799Hc.A0S(3).trim();
            } else if (descriptorsStartPosition == 89) {
                descriptorLength = 89;
                dvbSubtitleInfos = new ArrayList<>();
                while (c0799Hc.A06() < A062) {
                    String language = c0799Hc.A0S(3).trim();
                    int streamType = c0799Hc.A0E();
                    byte[] bArr = new byte[4];
                    c0799Hc.A0c(bArr, 0, 4);
                    dvbSubtitleInfos.add(new C0688Cm(language, streamType, bArr));
                }
            }
            c0799Hc.A0Z(A062 - c0799Hc.A06());
        }
        c0799Hc.A0Y(i2);
        return new C0689Cn(descriptorLength, str, dvbSubtitleInfos, Arrays.copyOfRange(c0799Hc.A00, A06, i2));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0686Cj
    public final void A8X(C0811Ho c0811Ho, BX bx, C0691Cp c0691Cp) {
    }
}

package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import com.facebook.ads.internal.exoplayer2.thirdparty.source.TrackGroupArray;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
/* renamed from: com.facebook.ads.redexgen.X.Df  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0702Df implements Handler.Callback, VB, GL, ES, C9C, InterfaceC06209j {
    public static byte[] A0V;
    public static String[] A0W = {"TSIQGmaqgvrUxo0yYDewkVNDuuioOpPV", "LhstooR1wZsH8RVMZSyyF7FJZ5wrHutR", "WZmkRBn8iXpnqDBIN644YOqcruHieEQJ", "OBm1ApV8rqkCiyt7FxArHXpNA0", "RSLtmQKc5IgtmDXEpea3qKBmF", "cT5hSyxhu4oYAFMn61C1ja3cHbuAf9wl", "QQz6Qig88n9IGtqyO", "pBG4ezF2k8D44jdvacVEPM0q7VNUtk0G"};
    public int A00;
    public int A01;
    public int A02;
    public long A03;
    public C9O A04;
    public C9Z A05;
    public ET A07;
    public boolean A08;
    public boolean A09;
    public boolean A0A;
    public boolean A0B;
    public InterfaceC1195Wu[] A0C;
    public final long A0D;
    public final Handler A0E;
    public final HandlerThread A0F;
    public final C1198Wx A0G;
    public final InterfaceC1196Wv A0H;
    public final C9U A0J;
    public final C06289s A0L;
    public final C06299t A0M;
    public final GM A0N;
    public final GN A0O;
    public final HG A0P;
    public final HQ A0Q;
    public final ArrayList<C9M> A0R;
    public final boolean A0S;
    public final InterfaceC1195Wu[] A0T;
    public final InterfaceC06249n[] A0U;
    public final C9X A0K = new C9X();
    public C06279q A06 = C06279q.A03;
    public final C9N A0I = new C9N();

    public static String A06(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0V, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 42);
        }
        return new String(copyOfRange);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A07() throws C9F, IOException {
        InterfaceC1195Wu[] interfaceC1195WuArr;
        long AFm = this.A0P.AFm();
        A0I();
        if (!this.A0K.A0P()) {
            A0B();
            A0R(AFm, 10L);
            return;
        }
        C9V A0G = this.A0K.A0G();
        C0812Hp.A02(A06(IronSourceConstants.REWARDED_VIDEO_DAILY_CAPPED, 10, 20));
        A0J();
        long elapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        A0G.A08.A4s(this.A05.A0A - this.A0D, this.A0S);
        boolean z = true;
        boolean z2 = true;
        for (InterfaceC1195Wu interfaceC1195Wu : this.A0C) {
            interfaceC1195Wu.AEH(this.A03, elapsedRealtime);
            boolean z3 = true;
            z = z && interfaceC1195Wu.A8h();
            boolean z4 = interfaceC1195Wu.A8r() || interfaceC1195Wu.A8h() || A0s(interfaceC1195Wu);
            if (!z4) {
                interfaceC1195Wu.A9m();
            }
            if (!z2 || !z4) {
                z3 = false;
            }
            z2 = z3;
        }
        if (!z2) {
            A0B();
        }
        long j = A0G.A02.A01;
        if (z && ((j == C.TIME_UNSET || j <= this.A05.A0A) && A0G.A02.A05)) {
            A0N(4);
            A0H();
        } else if (this.A05.A00 == 2 && A0u(z2)) {
            A0N(3);
            if (this.A08) {
                A0G();
            }
        } else if (this.A05.A00 == 3) {
            int length = this.A0C.length;
            String[] strArr = A0W;
            if (strArr[4].length() == strArr[3].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0W;
            strArr2[4] = "Eggx5Ft4Lgnx6HVrotcHBkscR";
            strArr2[3] = "Urp4oA4mdP1paz0o5Y10JqXrCe";
            if (length != 0 ? !z2 : !A0q()) {
                this.A09 = this.A08;
                A0N(2);
                A0H();
            }
        }
        if (this.A05.A00 == 2) {
            for (InterfaceC1195Wu interfaceC1195Wu2 : this.A0C) {
                interfaceC1195Wu2.A9m();
            }
        }
        boolean z5 = this.A08;
        if (A0W[7].charAt(9) != '8') {
            throw new RuntimeException();
        }
        A0W[5] = "rTELFOhgZqImPwKgVJI0nXuoysvpkaxO";
        if ((z5 && this.A05.A00 == 3) || this.A05.A00 == 2) {
            A0R(AFm, 10L);
        } else if (this.A0C.length == 0 || this.A05.A00 == 4) {
            this.A0Q.AEE(2);
        } else {
            A0R(AFm, 1000L);
        }
        C0812Hp.A00();
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0062, code lost:
        if (r4 != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0064, code lost:
        r4 = r14.A0K.A0G();
        r2 = r14.A0K.A0S(r4);
        r5 = new boolean[r14.A0T.length];
        r10 = r4.A0B(r14.A05.A0A, r2, r5);
        A0i(r4.A03, r4.A04);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0088, code lost:
        if (r14.A05.A00 == 4) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0090, code lost:
        if (r10 == r14.A05.A0A) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0092, code lost:
        r8 = r14.A05;
        r14.A05 = r8.A04(r8.A04, r10, r14.A05.A01);
        r14.A0I.A04(4);
        A0P(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00a8, code lost:
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00b6, code lost:
        if (com.facebook.ads.redexgen.X.C0702Df.A0W[2].charAt(12) == 'N') goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b8, code lost:
        r2 = com.facebook.ads.redexgen.X.C0702Df.A0W;
        r2[1] = "v6rigB8My08mC5ZvZtTcxONYTtnHkhiY";
        r2[0] = "jJJ7EyTzSHhVUQBMBNjuu6IlWzfsi9o6";
        r9 = new boolean[r14.A0T.length];
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00ca, code lost:
        r1 = r14.A0T;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00cd, code lost:
        if (r11 >= r1.length) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00cf, code lost:
        r10 = r1[r11];
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00d5, code lost:
        if (r10.A7i() == 0) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00d7, code lost:
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00d8, code lost:
        r9[r11] = r0;
        r1 = r4.A0A[r11];
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00de, code lost:
        if (r1 == null) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00e0, code lost:
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00e4, code lost:
        if (r9[r11] == false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00ea, code lost:
        if (r1 == r10.A7n()) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00ec, code lost:
        A0b(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00ef, code lost:
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00f4, code lost:
        if (r5[r11] == false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00f6, code lost:
        r1 = r14.A03;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0104, code lost:
        if (com.facebook.ads.redexgen.X.C0702Df.A0W[5].charAt(1) == 'w') goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0106, code lost:
        com.facebook.ads.redexgen.X.C0702Df.A0W[7] = "kUW5tsmcM8CZIAjkj84TOGdyZAx2gWc6";
        r10.AET(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0111, code lost:
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0113, code lost:
        com.facebook.ads.redexgen.X.C0702Df.A0W[7] = "5RhHFxqKf8KludlSzI9zDK8m295dvAFV";
        r9 = new boolean[r14.A0T.length];
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0128, code lost:
        if (r4 != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0133, code lost:
        r14.A0K.A0S(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x013a, code lost:
        if (r6.A06 == false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x013c, code lost:
        r6.A0A(java.lang.Math.max(r6.A02.A03, r6.A08(r14.A03)), false);
        A0i(r6.A03, r6.A04);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0156, code lost:
        r14.A05 = r14.A05.A05(r4.A03, r4.A04);
        A0p(r9, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01a3, code lost:
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 18 out of bounds for length 15
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.restartVar(DebugInfoParser.java:193)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:141)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0E() throws com.facebook.ads.redexgen.X.C9F {
        /*
            Method dump skipped, instructions count: 432
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0702Df.A0E():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01cd, code lost:
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01cf, code lost:
        r8.AEt();
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01d4, code lost:
        if (r4 >= r8.length) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01d7, code lost:
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01d9, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0096, code lost:
        if (r6 != false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0098, code lost:
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00c8, code lost:
        if (r6 != false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00cb, code lost:
        r2 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00d1, code lost:
        if (r4.A02.A05 == false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d3, code lost:
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d4, code lost:
        r2 = r1.A0T;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00d7, code lost:
        if (r5 >= r2.length) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00d9, code lost:
        r3 = r2[r5];
        r2 = r4.A0A[r5];
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00df, code lost:
        if (r2 == null) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00e5, code lost:
        if (r3.A7n() != r2) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00eb, code lost:
        if (r3.A8H() == false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00ed, code lost:
        r3.AEt();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00f0, code lost:
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00f3, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00f6, code lost:
        if (r4.A01 == null) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00fc, code lost:
        if (r4.A01.A06 != false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00fe, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00ff, code lost:
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0100, code lost:
        r2 = r1.A0T;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0103, code lost:
        if (r6 >= r2.length) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0105, code lost:
        r8 = r2[r6];
        r7 = r4.A0A[r6];
        r5 = r8.A7n();
        r3 = com.facebook.ads.redexgen.X.C0702Df.A0W;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0121, code lost:
        if (r3[1].charAt(10) == r3[0].charAt(10)) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0123, code lost:
        com.facebook.ads.redexgen.X.C0702Df.A0W[2] = "GzZd6F7lJVp08TeGQitpN19OrvCnG4PK";
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x012a, code lost:
        if (r5 != r7) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x012c, code lost:
        if (r7 == null) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0132, code lost:
        if (r8.A8H() != false) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0134, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0135, code lost:
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0138, code lost:
        com.facebook.ads.redexgen.X.C0702Df.A0W[5] = "G5Kl7lcZBM87T4fNUwO1IYVdGnNcsgpo";
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x013f, code lost:
        if (r5 != r7) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0142, code lost:
        r7 = r4.A04;
        r6 = r1.A0K.A0D();
        r5 = r6.A04;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0159, code lost:
        if (r6.A08.ADt() == com.google.android.exoplayer2.C.TIME_UNSET) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x015b, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x015c, code lost:
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x015d, code lost:
        r8 = r1.A0T;
        r3 = com.facebook.ads.redexgen.X.C0702Df.A0W;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0171, code lost:
        if (r3[1].charAt(10) == r3[0].charAt(10)) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0173, code lost:
        com.facebook.ads.redexgen.X.C0702Df.A0W[5] = "zgqvIFw9hHXttypZtkJx3efsgqUZ32NO";
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x017b, code lost:
        if (r4 >= r8.length) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x017d, code lost:
        r8 = r8[r4];
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0183, code lost:
        if (r7.A00(r4) != false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0185, code lost:
        r4 = r4 + 1;
        r1 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0189, code lost:
        if (r10 == false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x018b, code lost:
        r8.AEt();
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0193, code lost:
        if (r8.A8e() != false) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0195, code lost:
        r9 = r5.A01.A00(r4);
        r3 = r5.A00(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01a8, code lost:
        if (r1.A0U[r4].A7u() != 5) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01aa, code lost:
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01ab, code lost:
        r1 = r7.A03[r4];
        r0 = r5.A03[r4];
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01b3, code lost:
        if (r3 == false) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01b9, code lost:
        if (r0.equals(r1) == false) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01bb, code lost:
        if (r2 != false) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01bd, code lost:
        r8.AEJ(A0v(r9), r6.A0A[r4], r6.A07());
     */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 16 out of bounds for length 13
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.restartVar(DebugInfoParser.java:193)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:141)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0I() throws com.facebook.ads.redexgen.X.C9F, java.io.IOException {
        /*
            Method dump skipped, instructions count: 474
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0702Df.A0I():void");
    }

    public static void A0K() {
        byte[] bArr = {68, 121, 110, 81, 109, 96, 120, 100, 115, 72, 108, 113, 109, 72, 111, 117, 100, 115, 111, 96, 109, 111, 82, 69, 122, 70, 75, 83, 79, 88, 99, 71, 90, 70, 99, 68, 94, 79, 88, 68, 75, 70, 16, 98, 75, 68, 78, 70, 79, 88, 66, 108, 101, 100, 121, 98, 101, 108, 43, 102, 110, 120, 120, 106, 108, 110, 120, 43, 120, 110, 101, Byte.MAX_VALUE, 43, 106, 109, Byte.MAX_VALUE, 110, 121, 43, 121, 110, 103, 110, 106, 120, 110, 37, 69, 98, 120, 105, 126, 98, 109, 96, 44, 126, 121, 98, 120, 101, 97, 105, 44, 105, 126, 126, 99, 126, 34, 24, 36, 41, 49, 42, 41, 43, 35, 104, 45, 58, 58, 39, 58, 102, 74, 118, 108, 107, 122, 124, 57, 124, 107, 107, 118, 107, 55, 72, 111, 116, 107, 59, 125, 122, 114, 119, 126, Byte.MAX_VALUE, 53, 90, 81, 109, 81, 83, 91, 105, 81, 76, 85};
        String[] strArr = A0W;
        if (strArr[1].charAt(10) == strArr[0].charAt(10)) {
            throw new RuntimeException();
        }
        A0W[7] = "OuUcfGxYs8HKuxzYIQS3N8YCcqwYwO9D";
        A0V = bArr;
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A0S(C9L c9l) throws C9F {
        if (c9l.A01 != this.A07) {
            return;
        }
        AbstractC06309u abstractC06309u = this.A05.A03;
        AbstractC06309u abstractC06309u2 = c9l.A00;
        Object obj = c9l.A02;
        this.A0K.A0N(abstractC06309u2);
        this.A05 = this.A05.A03(abstractC06309u2, obj);
        A0F();
        int i = this.A01;
        if (i > 0) {
            this.A0I.A03(i);
            this.A01 = 0;
            C9O c9o = this.A04;
            if (c9o != null) {
                Pair<Integer, Long> A04 = A04(c9o, true);
                this.A04 = null;
                if (A04 == null) {
                    A08();
                    return;
                }
                int intValue = ((Integer) A04.first).intValue();
                long longValue = ((Long) A04.second).longValue();
                ER A0L = this.A0K.A0L(intValue, longValue);
                this.A05 = this.A05.A04(A0L, A0L.A01() ? 0L : longValue, longValue);
                return;
            } else if (this.A05.A02 == C.TIME_UNSET) {
                if (abstractC06309u2.A0E()) {
                    A08();
                    return;
                }
                Pair<Integer, Long> A05 = A05(abstractC06309u2, abstractC06309u2.A05(this.A0B), C.TIME_UNSET);
                int intValue2 = ((Integer) A05.first).intValue();
                long longValue2 = ((Long) A05.second).longValue();
                ER A0L2 = this.A0K.A0L(intValue2, longValue2);
                this.A05 = this.A05.A04(A0L2, A0L2.A01() ? 0L : longValue2, longValue2);
                return;
            } else {
                return;
            }
        }
        int i2 = this.A05.A04.A02;
        long j = this.A05.A01;
        if (abstractC06309u.A0E()) {
            if (abstractC06309u2.A0E()) {
                return;
            }
            ER A0L3 = this.A0K.A0L(i2, j);
            this.A05 = this.A05.A04(A0L3, A0L3.A01() ? 0L : j, j);
            return;
        }
        C9V A0E = this.A0K.A0E();
        int A042 = abstractC06309u2.A04(A0E == null ? abstractC06309u.A0A(i2, this.A0L, true).A03 : A0E.A09);
        if (A042 != -1) {
            if (A042 != i2) {
                this.A05 = this.A05.A01(A042);
            }
            ER er = this.A05.A04;
            if (er.A01()) {
                ER A0L4 = this.A0K.A0L(A042, j);
                if (!A0L4.equals(er)) {
                    this.A05 = this.A05.A04(A0L4, A02(A0L4, A0L4.A01() ? 0L : j), j);
                    return;
                }
            }
            if (this.A0K.A0U(er, this.A03)) {
                return;
            }
            A0j(false);
            return;
        }
        int A01 = A01(i2, abstractC06309u, abstractC06309u2);
        if (A0W[2].charAt(12) == 'N') {
            throw new RuntimeException();
        }
        String[] strArr = A0W;
        strArr[4] = "W6zkXP9eIZkyJx4uPbHf9NTX6";
        strArr[3] = "m3yrwIeXeqUIkhQgLJp1WNCsrl";
        if (A01 == -1) {
            A08();
            return;
        }
        Pair<Integer, Long> A052 = A05(abstractC06309u2, abstractC06309u2.A09(A01, this.A0L).A00, C.TIME_UNSET);
        int intValue3 = ((Integer) A052.first).intValue();
        long longValue3 = ((Long) A052.second).longValue();
        ER A0L5 = this.A0K.A0L(intValue3, longValue3);
        abstractC06309u2.A0A(intValue3, this.A0L, true);
        if (A0E != null) {
            Object obj2 = this.A0L.A03;
            A0E.A02 = A0E.A02.A00(-1);
            while (A0E.A01 != null) {
                A0E = A0E.A01;
                if (A0E.A09.equals(obj2)) {
                    C9X c9x = this.A0K;
                    C9W c9w = A0E.A02;
                    if (A0W[2].charAt(12) == 'N') {
                        throw new RuntimeException();
                    }
                    A0W[5] = "ODoCru5Men7rnsumvsVlRJsOWyiHNrdt";
                    A0E.A02 = c9x.A0J(c9w, intValue3);
                } else {
                    A0E.A02 = A0E.A02.A00(-1);
                }
            }
        }
        boolean A012 = A0L5.A01();
        if (A0W[6].length() != 17) {
            throw new RuntimeException();
        }
        A0W[7] = "hRbRvIJE18IQkSZp4h0fxN12mLMfZDhd";
        this.A05 = this.A05.A04(A0L5, A02(A0L5, A012 ? 0L : longValue3), longValue3);
    }

    static {
        A0K();
    }

    public C0702Df(InterfaceC1195Wu[] interfaceC1195WuArr, GM gm, GN gn, C9U c9u, boolean z, int i, boolean z2, Handler handler, InterfaceC1196Wv interfaceC1196Wv, HG hg) {
        this.A0T = interfaceC1195WuArr;
        this.A0N = gm;
        this.A0O = gn;
        this.A0J = c9u;
        this.A08 = z;
        this.A02 = i;
        this.A0B = z2;
        this.A0E = handler;
        this.A0H = interfaceC1196Wv;
        this.A0P = hg;
        this.A0D = c9u.A5o();
        this.A0S = c9u.AEU();
        this.A05 = new C9Z(AbstractC06309u.A01, C.TIME_UNSET, TrackGroupArray.A04, gn);
        this.A0U = new InterfaceC06249n[interfaceC1195WuArr.length];
        for (int i2 = 0; i2 < interfaceC1195WuArr.length; i2++) {
            interfaceC1195WuArr[i2].AEw(i2);
            this.A0U[i2] = interfaceC1195WuArr[i2].A61();
        }
        this.A0G = new C1198Wx(this, hg);
        this.A0R = new ArrayList<>();
        this.A0C = new InterfaceC1195Wu[0];
        this.A0M = new C06299t();
        this.A0L = new C06289s();
        gm.A00(this);
        this.A0F = new HandlerThread(A06(21, 29, 0), -16);
        this.A0F.start();
        this.A0Q = hg.A4M(this.A0F.getLooper(), this);
    }

    private int A00() {
        AbstractC06309u abstractC06309u = this.A05.A03;
        if (abstractC06309u.A0E()) {
            return 0;
        }
        return abstractC06309u.A0B(abstractC06309u.A05(this.A0B), this.A0M).A00;
    }

    private int A01(int i, AbstractC06309u abstractC06309u, AbstractC06309u abstractC06309u2) {
        int i2 = i;
        int maxIterations = -1;
        int A00 = abstractC06309u.A00();
        for (int i3 = 0; i3 < A00 && maxIterations == -1; i3++) {
            i2 = abstractC06309u.A03(i2, this.A0L, this.A0M, this.A02, this.A0B);
            if (i2 == -1) {
                break;
            }
            maxIterations = abstractC06309u2.A04(abstractC06309u.A0A(i2, this.A0L, true).A03);
        }
        return maxIterations;
    }

    private long A02(ER er, long j) throws C9F {
        return A03(er, j, this.A0K.A0G() != this.A0K.A0H());
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003b, code lost:
        if (r12 == false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003d, code lost:
        r4 = r8.A0C;
        r2 = r4.length;
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0041, code lost:
        if (r1 >= r2) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0043, code lost:
        A0b(r4[r1]);
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0052, code lost:
        r8.A0C = new com.facebook.ads.redexgen.X.InterfaceC1195Wu[0];
        r4 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0057, code lost:
        if (r3 == null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0059, code lost:
        A0V(r4);
        r2 = com.facebook.ads.redexgen.X.C0702Df.A0W;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x006e, code lost:
        if (r2[1].charAt(10) == r2[0].charAt(10)) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0070, code lost:
        r2 = com.facebook.ads.redexgen.X.C0702Df.A0W;
        r2[4] = "JYav744H3005gGdd3wHQ67gij";
        r2[3] = "FVGbgJ3f5rxs8oy2Mt1O3WpPvx";
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x007e, code lost:
        if (r3.A05 == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0080, code lost:
        r10 = r3.A08.AEg(r10);
        r7 = r3.A08;
        r2 = r10 - r8.A0D;
        r6 = r8.A0S;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x009b, code lost:
        if (com.facebook.ads.redexgen.X.C0702Df.A0W[7].charAt(9) == '8') goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00a5, code lost:
        if (r3.A05 == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a8, code lost:
        com.facebook.ads.redexgen.X.C0702Df.A0W[7] = "LvYFslBjN8wEk55S4mS5Jlrj4VNptxmz";
        r7.A4s(r2, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b2, code lost:
        A0P(r10);
        A09();
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b9, code lost:
        r8.A0K.A0O(true);
        A0P(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c2, code lost:
        r8.A0Q.AEi(2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00d4, code lost:
        if (com.facebook.ads.redexgen.X.C0702Df.A0W[2].charAt(12) == 'N') goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00d6, code lost:
        com.facebook.ads.redexgen.X.C0702Df.A0W[2] = "qbdkiXSPlbFYutVyIKxCWSr3uDHCS3n2";
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00dd, code lost:
        return r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0039, code lost:
        if (r4 != r3) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long A03(com.facebook.ads.redexgen.X.ER r9, long r10, boolean r12) throws com.facebook.ads.redexgen.X.C9F {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0702Df.A03(com.facebook.ads.redexgen.X.ER, long, boolean):long");
    }

    private Pair<Integer, Long> A04(C9O c9o, boolean z) {
        int A01;
        AbstractC06309u abstractC06309u = this.A05.A03;
        AbstractC06309u abstractC06309u2 = c9o.A02;
        if (abstractC06309u.A0E()) {
            return null;
        }
        if (abstractC06309u2.A0E()) {
            abstractC06309u2 = abstractC06309u;
        }
        try {
            Pair<Integer, Long> A07 = abstractC06309u2.A07(this.A0M, this.A0L, c9o.A00, c9o.A01);
            if (abstractC06309u == abstractC06309u2) {
                return A07;
            }
            int A04 = abstractC06309u.A04(abstractC06309u2.A0A(((Integer) A07.first).intValue(), this.A0L, true).A03);
            if (A04 != -1) {
                return Pair.create(Integer.valueOf(A04), (Long) A07.second);
            }
            if (!z || (A01 = A01(((Integer) A07.first).intValue(), abstractC06309u2, abstractC06309u)) == -1) {
                return null;
            }
            Pair<Integer, Long> A05 = A05(abstractC06309u, abstractC06309u.A09(A01, this.A0L).A00, C.TIME_UNSET);
            String[] strArr = A0W;
            if (strArr[4].length() != strArr[3].length()) {
                String[] strArr2 = A0W;
                strArr2[1] = "LZRu6qU1d7MAJxELkyp6D6bqJ9pCtQWv";
                strArr2[0] = "5OOlDtGsHYXmvjCA2lYHypc4I8JTMes9";
                return A05;
            }
            throw new RuntimeException();
        } catch (IndexOutOfBoundsException unused) {
            throw new C9T(abstractC06309u, c9o.A00, c9o.A01);
        }
    }

    private Pair<Integer, Long> A05(AbstractC06309u abstractC06309u, int i, long j) {
        return abstractC06309u.A07(this.A0M, this.A0L, i, j);
    }

    private void A08() {
        A0N(4);
        A0o(false, true, false);
    }

    private void A09() {
        C9V A0F = this.A0K.A0F();
        long nextLoadPositionUs = A0F.A06();
        if (nextLoadPositionUs == Long.MIN_VALUE) {
            A0k(false);
            return;
        }
        boolean AFC = this.A0J.AFC(nextLoadPositionUs - A0F.A08(this.A03), this.A0G.A7O().A01);
        A0k(AFC);
        if (AFC) {
            A0F.A0F(this.A03);
        }
    }

    private void A0A() {
        int i;
        boolean z;
        int i2;
        if (this.A0I.A06(this.A05)) {
            Handler handler = this.A0E;
            i = this.A0I.A01;
            z = this.A0I.A03;
            if (z) {
                i2 = this.A0I.A00;
            } else {
                i2 = -1;
            }
            handler.obtainMessage(0, i, i2, this.A05).sendToTarget();
            this.A0I.A05(this.A05);
        }
    }

    private void A0B() throws IOException {
        C9V A0F = this.A0K.A0F();
        C9V readingPeriodHolder = this.A0K.A0H();
        if (A0F != null && !A0F.A06) {
            if (readingPeriodHolder != null) {
                C9V loadingPeriodHolder = readingPeriodHolder.A01;
                if (loadingPeriodHolder != A0F) {
                    return;
                }
            }
            InterfaceC1195Wu[] interfaceC1195WuArr = this.A0C;
            if (A0W[2].charAt(12) == 'N') {
                throw new RuntimeException();
            }
            String[] strArr = A0W;
            strArr[4] = "M2PhxJTgTMxoek0nGdRGZ8ED7";
            strArr[3] = "JhH24KrsERDOvzAX41swXn1Uhz";
            for (InterfaceC1195Wu interfaceC1195Wu : interfaceC1195WuArr) {
                if (!interfaceC1195Wu.A8H()) {
                    return;
                }
            }
            A0F.A08.A9k();
        }
    }

    private void A0C() throws IOException {
        this.A0K.A0M(this.A03);
        if (this.A0K.A0Q()) {
            C9W A0I = this.A0K.A0I(this.A03, this.A05);
            if (A0I == null) {
                this.A07.A9l();
                return;
            }
            VA mediaPeriod = this.A0K.A0K(this.A0U, this.A0N, this.A0J.A5j(), this.A07, this.A05.A03.A0A(A0I.A04.A02, this.A0L, true).A03, A0I);
            mediaPeriod.ADY(this, A0I.A03);
            A0k(true);
        }
    }

    private void A0D() {
        A0o(true, true, true);
        this.A0J.ACJ();
        A0N(1);
        this.A0F.quit();
        synchronized (this) {
            this.A0A = true;
            notifyAll();
        }
    }

    private void A0F() {
        for (int size = this.A0R.size() - 1; size >= 0; size--) {
            if (!A0r(this.A0R.get(size))) {
                this.A0R.get(size).A03.A0A(false);
                this.A0R.remove(size);
            }
        }
        Collections.sort(this.A0R);
    }

    private void A0G() throws C9F {
        this.A09 = false;
        this.A0G.A05();
        for (InterfaceC1195Wu interfaceC1195Wu : this.A0C) {
            interfaceC1195Wu.start();
        }
    }

    private void A0H() throws C9F {
        this.A0G.A06();
        for (InterfaceC1195Wu interfaceC1195Wu : this.A0C) {
            A0c(interfaceC1195Wu);
        }
    }

    private void A0J() throws C9F {
        long A0C;
        if (!this.A0K.A0P()) {
            return;
        }
        C9V A0G = this.A0K.A0G();
        VA va = A0G.A08;
        if (A0W[6].length() != 17) {
            throw new RuntimeException();
        }
        A0W[7] = "e9etinPRA8BQH2CZknXr4yAbSJ3blA39";
        long ADt = va.ADt();
        if (ADt != C.TIME_UNSET) {
            A0P(ADt);
            if (ADt != this.A05.A0A) {
                C9Z c9z = this.A05;
                ER er = c9z.A04;
                long periodPositionUs = this.A05.A01;
                this.A05 = c9z.A04(er, ADt, periodPositionUs);
                this.A0I.A04(4);
            }
        } else {
            this.A03 = this.A0G.A04();
            long A08 = A0G.A08(this.A03);
            A0Q(this.A05.A0A, A08);
            this.A05.A0A = A08;
        }
        C9Z c9z2 = this.A05;
        if (this.A0C.length == 0) {
            A0C = A0G.A02.A01;
        } else {
            A0C = A0G.A0C(true);
        }
        c9z2.A09 = A0C;
    }

    private void A0L(float f2) {
        GJ[] A01;
        for (C9V A0E = this.A0K.A0E(); A0E != null; A0E = A0E.A01) {
            GN gn = A0E.A04;
            if (A0W[7].charAt(9) != '8') {
                throw new RuntimeException();
            }
            A0W[5] = "TmHCYSIZuHNmxK6kBnR58JopztOBcNrn";
            if (gn != null) {
                for (GJ gj : A0E.A04.A01.A01()) {
                    if (gj != null) {
                        gj.AC2(f2);
                    }
                }
            }
        }
    }

    private void A0M(int i) throws C9F {
        this.A02 = i;
        if (!this.A0K.A0R(i)) {
            A0j(true);
        }
    }

    private void A0N(int i) {
        if (this.A05.A00 != i) {
            C9Z A02 = this.A05.A02(i);
            if (A0W[7].charAt(9) != '8') {
                throw new RuntimeException();
            }
            A0W[2] = "kM2qExU4ybhQ7HWfawBquzR2zjX0F4jA";
            this.A05 = A02;
        }
    }

    private void A0O(int i, boolean playing, int i2) throws C9F {
        C9V A0G = this.A0K.A0G();
        InterfaceC1195Wu interfaceC1195Wu = this.A0T[i];
        this.A0C[i2] = interfaceC1195Wu;
        if (interfaceC1195Wu.A7i() == 0) {
            C06259o c06259o = A0G.A04.A03[i];
            String[] strArr = A0W;
            if (strArr[1].charAt(10) == strArr[0].charAt(10)) {
                throw new RuntimeException();
            }
            A0W[2] = "NYdCxyfB4qBB5fQElsuicf6C6huVudSr";
            Format[] A0v = A0v(A0G.A04.A01.A00(i));
            boolean z = this.A08 && this.A05.A00 == 3;
            interfaceC1195Wu.A5D(c06259o, A0v, A0G.A0A[i], this.A03, !playing && z, A0G.A07());
            this.A0G.A09(interfaceC1195Wu);
            if (z) {
                interfaceC1195Wu.start();
            }
        }
    }

    private void A0P(long j) throws C9F {
        if (this.A0K.A0P()) {
            j = this.A0K.A0G().A09(j);
        }
        this.A03 = j;
        this.A0G.A07(this.A03);
        for (InterfaceC1195Wu interfaceC1195Wu : this.A0C) {
            interfaceC1195Wu.AET(this.A03);
        }
    }

    private void A0Q(long j, long j2) throws C9F {
        C9M c9m;
        if (this.A0R.isEmpty() || this.A05.A04.A01()) {
            return;
        }
        if (this.A05.A02 == j) {
            j--;
        }
        C9Z c9z = this.A05;
        if (A0W[2].charAt(12) == 'N') {
            throw new RuntimeException();
        }
        A0W[2] = "iI9novLuZIFAEfCO4qiE3Y1J9OFTcxg5";
        int i = c9z.A04.A02;
        int currentPeriodIndex = this.A00;
        C9M c9m2 = currentPeriodIndex > 0 ? this.A0R.get(currentPeriodIndex - 1) : null;
        while (c9m2 != null) {
            if (c9m2.A00 <= i) {
                int i2 = c9m2.A00;
                if (A0W[7].charAt(9) == '8') {
                    A0W[2] = "hDlIvL5rLgyE5VG4VUIth4YrdDyvlxxs";
                    if (i2 == i) {
                        if (c9m2.A01 <= j) {
                            break;
                        }
                    } else {
                        break;
                    }
                } else {
                    throw new RuntimeException();
                }
            }
            this.A00--;
            int currentPeriodIndex2 = this.A00;
            c9m2 = currentPeriodIndex2 > 0 ? this.A0R.get(currentPeriodIndex2 - 1) : null;
        }
        if (this.A00 < this.A0R.size()) {
            c9m = this.A0R.get(this.A00);
        } else {
            c9m = null;
        }
        while (c9m != null && c9m.A02 != null && (c9m.A00 < i || (c9m.A00 == i && c9m.A01 <= j))) {
            this.A00++;
            if (this.A00 < this.A0R.size()) {
                c9m = this.A0R.get(this.A00);
            } else {
                c9m = null;
            }
        }
        while (c9m != null && c9m.A02 != null && c9m.A00 == i && c9m.A01 > j && c9m.A01 <= j2) {
            A0Z(c9m.A03);
            if (c9m.A03.A0B() || c9m.A03.A0D()) {
                this.A0R.remove(this.A00);
            } else {
                this.A00++;
            }
            if (this.A00 < this.A0R.size()) {
                ArrayList<C9M> arrayList = this.A0R;
                int i3 = this.A00;
                if (A0W[5].charAt(1) == 'w') {
                    throw new RuntimeException();
                }
                A0W[6] = "2inRqgHKNmW90mXz8";
                c9m = arrayList.get(i3);
            } else {
                c9m = null;
            }
        }
    }

    private void A0R(long j, long j2) {
        this.A0Q.AEE(2);
        this.A0Q.AEj(2, j + j2);
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:72:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0T(com.facebook.ads.redexgen.X.C9O r20) throws com.facebook.ads.redexgen.X.C9F {
        /*
            Method dump skipped, instructions count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0702Df.A0T(com.facebook.ads.redexgen.X.9O):void");
    }

    private void A0V(@Nullable C9V c9v) throws C9F {
        C9V A0G = this.A0K.A0G();
        if (A0G == null || c9v == A0G) {
            return;
        }
        int i = 0;
        boolean[] zArr = new boolean[this.A0T.length];
        int i2 = 0;
        while (true) {
            InterfaceC1195Wu[] interfaceC1195WuArr = this.A0T;
            if (i2 < interfaceC1195WuArr.length) {
                InterfaceC1195Wu interfaceC1195Wu = interfaceC1195WuArr[i2];
                zArr[i2] = interfaceC1195Wu.A7i() != 0;
                if (A0G.A04.A00(i2)) {
                    i++;
                }
                if (zArr[i2] && (!A0G.A04.A00(i2) || (interfaceC1195Wu.A8e() && interfaceC1195Wu.A7n() == c9v.A0A[i2]))) {
                    A0b(interfaceC1195Wu);
                }
                i2++;
            } else {
                this.A05 = this.A05.A05(A0G.A03, A0G.A04);
                A0p(zArr, i);
                return;
            }
        }
    }

    private void A0W(C06119a c06119a) {
        this.A0G.AF4(c06119a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0X(C06229l c06229l) throws C9F {
        if (c06229l.A0D()) {
            return;
        }
        try {
            c06229l.A04().A8C(c06229l.A00(), c06229l.A09());
            c06229l.A0A(true);
            String[] strArr = A0W;
            if (strArr[1].charAt(10) == strArr[0].charAt(10)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0W;
            strArr2[4] = "j7cBoz179DrNpy3qD7RptXNd9";
            strArr2[3] = "0iwSWX3dM4PAnuiRq1LulMUFPW";
        } catch (Throwable th) {
            c06229l.A0A(true);
            throw th;
        }
    }

    private void A0Y(C06229l c06229l) throws C9F {
        if (c06229l.A02() == C.TIME_UNSET) {
            A0Z(c06229l);
        } else if (this.A07 == null || this.A01 > 0) {
            this.A0R.add(new C9M(c06229l));
        } else {
            C9M c9m = new C9M(c06229l);
            if (A0r(c9m)) {
                this.A0R.add(c9m);
                Collections.sort(this.A0R);
                return;
            }
            c06229l.A0A(false);
        }
    }

    private void A0Z(C06229l c06229l) throws C9F {
        if (c06229l.A03().getLooper() == this.A0Q.A72()) {
            A0X(c06229l);
            C9Z c9z = this.A05;
            if (A0W[6].length() != 17) {
                throw new RuntimeException();
            }
            A0W[5] = "cBEQE15IFXZqMCE104UHZMDgeC8qTiqN";
            if (c9z.A00 == 3 || this.A05.A00 == 2) {
                this.A0Q.AEi(2);
                return;
            }
            return;
        }
        this.A0Q.A9y(15, c06229l).sendToTarget();
    }

    private void A0a(final C06229l c06229l) {
        c06229l.A03().post(new Runnable() { // from class: com.facebook.ads.redexgen.X.9K
            public static byte[] A02;

            static {
                A01();
            }

            public static String A00(int i, int i2, int i3) {
                byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
                for (int i4 = 0; i4 < copyOfRange.length; i4++) {
                    copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 14);
                }
                return new String(copyOfRange);
            }

            public static void A01() {
                A02 = new byte[]{-60, -9, -18, -49, -21, -32, -8, -28, -15, -56, -20, -17, -21, -56, -19, -13, -28, -15, -19, -32, -21, -52, -27, -36, -17, -25, -36, -38, -21, -36, -37, -105, -36, -23, -23, -26, -23, -105, -37, -36, -29, -32, -19, -36, -23, -32, -27, -34, -105, -28, -36, -22, -22, -40, -34, -36, -105, -26, -27, -105, -36, -17, -21, -36, -23, -27, -40, -29, -105, -21, -33, -23, -36, -40, -37, -91};
            }

            @Override // java.lang.Runnable
            public final void run() {
                if (C0864Jt.A02(this)) {
                    return;
                }
                try {
                    try {
                        C0702Df.this.A0X(c06229l);
                    } catch (C9F e2) {
                        Log.e(A00(0, 21, 113), A00(21, 55, 105), e2);
                        throw new RuntimeException(e2);
                    }
                } catch (Throwable th) {
                    C0864Jt.A00(th, this);
                }
            }
        });
    }

    private void A0b(InterfaceC1195Wu interfaceC1195Wu) throws C9F {
        this.A0G.A08(interfaceC1195Wu);
        A0c(interfaceC1195Wu);
        interfaceC1195Wu.A4q();
    }

    private void A0c(InterfaceC1195Wu interfaceC1195Wu) throws C9F {
        if (interfaceC1195Wu.A7i() == 2) {
            interfaceC1195Wu.stop();
        }
    }

    private void A0d(C06279q c06279q) {
        this.A06 = c06279q;
    }

    private void A0e(VA va) {
        if (!this.A0K.A0T(va)) {
            return;
        }
        this.A0K.A0M(this.A03);
        A09();
    }

    private void A0f(VA va) throws C9F {
        if (!this.A0K.A0T(va)) {
            return;
        }
        C9V A0F = this.A0K.A0F();
        A0F.A0E(this.A0G.A7O().A01);
        A0i(A0F.A03, A0F.A04);
        if (!this.A0K.A0P()) {
            C9V loadingPeriodHolder = this.A0K.A0C();
            A0P(loadingPeriodHolder.A02.A03);
            A0V(null);
        }
        A09();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.InterfaceC0738Ep
    /* renamed from: A0g */
    public final void AAc(VA va) {
        this.A0Q.A9y(10, va).sendToTarget();
    }

    private void A0h(ET et, boolean z, boolean z2) {
        this.A01++;
        A0o(true, z, z2);
        this.A0J.onPrepared();
        this.A07 = et;
        A0N(2);
        et.ADb(this.A0H, true, this);
        this.A0Q.AEi(2);
    }

    private void A0i(TrackGroupArray trackGroupArray, GN gn) {
        this.A0J.ACo(this.A0T, trackGroupArray, gn.A01);
    }

    private void A0j(boolean z) throws C9F {
        ER er = this.A0K.A0G().A02.A04;
        long A03 = A03(er, this.A05.A0A, true);
        if (A03 != this.A05.A0A) {
            C9Z c9z = this.A05;
            this.A05 = c9z.A04(er, A03, c9z.A01);
            if (z) {
                this.A0I.A04(4);
            }
        }
    }

    private void A0k(boolean z) {
        if (this.A05.A08 != z) {
            this.A05 = this.A05.A06(z);
        }
    }

    private void A0l(boolean z) throws C9F {
        this.A09 = false;
        this.A08 = z;
        if (!z) {
            A0H();
            A0J();
        } else if (this.A05.A00 == 3) {
            A0G();
            this.A0Q.AEi(2);
        } else if (this.A05.A00 != 2) {
        } else {
            this.A0Q.AEi(2);
        }
    }

    private void A0m(boolean z) throws C9F {
        this.A0B = z;
        if (!this.A0K.A0V(z)) {
            A0j(true);
        }
    }

    private void A0n(boolean z, boolean z2) {
        A0o(true, z, z);
        this.A0I.A03(this.A01 + (z2 ? 1 : 0));
        this.A01 = 0;
        this.A0J.ACg();
        A0N(1);
    }

    private void A0o(boolean z, boolean z2, boolean z3) {
        Object obj;
        long j;
        GN gn;
        ET et;
        this.A0Q.AEE(2);
        this.A09 = false;
        this.A0G.A06();
        this.A03 = 0L;
        for (InterfaceC1195Wu interfaceC1195Wu : this.A0C) {
            try {
                A0b(interfaceC1195Wu);
            } catch (C9F | RuntimeException e2) {
                Log.e(A06(0, 21, 43), A06(TsExtractor.TS_STREAM_TYPE_DTS, 12, 49), e2);
            }
        }
        this.A0C = new InterfaceC1195Wu[0];
        this.A0K.A0O(!z2);
        A0k(false);
        if (z2) {
            this.A04 = null;
        }
        if (z3) {
            this.A0K.A0N(AbstractC06309u.A01);
            Iterator<C9M> it = this.A0R.iterator();
            while (it.hasNext()) {
                it.next().A03.A0A(false);
            }
            this.A0R.clear();
            this.A00 = 0;
        }
        AbstractC06309u abstractC06309u = z3 ? AbstractC06309u.A01 : this.A05.A03;
        if (z3) {
            obj = null;
        } else {
            obj = this.A05.A07;
        }
        ER er = z2 ? new ER(A00()) : this.A05.A04;
        long j2 = C.TIME_UNSET;
        if (z2) {
            j = -9223372036854775807L;
        } else {
            j = this.A05.A0A;
        }
        if (!z2) {
            j2 = this.A05.A01;
        }
        int i = this.A05.A00;
        TrackGroupArray trackGroupArray = z3 ? TrackGroupArray.A04 : this.A05.A05;
        if (z3) {
            gn = this.A0O;
        } else {
            gn = this.A05.A06;
        }
        this.A05 = new C9Z(abstractC06309u, obj, er, j, j2, i, false, trackGroupArray, gn);
        if (z && (et = this.A07) != null) {
            et.AEB(this);
            this.A07 = null;
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x000f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0p(boolean[] r6, int r7) throws com.facebook.ads.redexgen.X.C9F {
        /*
            r5 = this;
            com.facebook.ads.redexgen.X.Wu[] r0 = new com.facebook.ads.redexgen.X.InterfaceC1195Wu[r7]
            r5.A0C = r0
            r4 = 0
            com.facebook.ads.redexgen.X.9X r0 = r5.A0K
            com.facebook.ads.redexgen.X.9V r3 = r0.A0G()
            r2 = 0
        Lc:
            com.facebook.ads.redexgen.X.Wu[] r0 = r5.A0T
            int r0 = r0.length
            if (r2 >= r0) goto L24
            com.facebook.ads.redexgen.X.GN r0 = r3.A04
            boolean r0 = r0.A00(r2)
            if (r0 == 0) goto L21
            boolean r1 = r6[r2]
            int r0 = r4 + 1
            r5.A0O(r2, r1, r4)
            r4 = r0
        L21:
            int r2 = r2 + 1
            goto Lc
        L24:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0702Df.A0p(boolean[], int):void");
    }

    private boolean A0q() {
        C9V A0G = this.A0K.A0G();
        long j = A0G.A02.A01;
        if (j != C.TIME_UNSET) {
            long playingPeriodDurationUs = this.A05.A0A;
            if (playingPeriodDurationUs >= j) {
                C9V c9v = A0G.A01;
                if (A0W[7].charAt(9) != '8') {
                    throw new RuntimeException();
                }
                String[] strArr = A0W;
                strArr[1] = "YaIhV2LltIG4HuclCS5WOO9hjwkCXeMt";
                strArr[0] = "X0pypN8zwLPsNLuJVHuHfetSc0yM8k9B";
                if (c9v != null) {
                    C9V playingPeriodHolder = A0G.A01;
                    if (!playingPeriodHolder.A06) {
                        C9V playingPeriodHolder2 = A0G.A01;
                        if (playingPeriodHolder2.A02.A04.A01()) {
                        }
                    }
                }
                return false;
            }
        }
        return true;
    }

    private boolean A0r(C9M c9m) {
        if (c9m.A02 == null) {
            Pair<Integer, Long> A04 = A04(new C9O(c9m.A03.A08(), c9m.A03.A01(), AnonymousClass99.A00(c9m.A03.A02())), false);
            if (A04 == null) {
                return false;
            }
            int intValue = ((Integer) A04.first).intValue();
            long longValue = ((Long) A04.second).longValue();
            AbstractC06309u abstractC06309u = this.A05.A03;
            Integer num = (Integer) A04.first;
            String[] strArr = A0W;
            String str = strArr[1];
            String str2 = strArr[0];
            int charAt = str.charAt(10);
            int index = str2.charAt(10);
            if (charAt == index) {
                throw new RuntimeException();
            }
            A0W[6] = "Qe4SjxIsSBa3x6HAW";
            c9m.A01(intValue, longValue, abstractC06309u.A0A(num.intValue(), this.A0L, true).A03);
        } else {
            int A042 = this.A05.A03.A04(c9m.A02);
            if (A042 == -1) {
                return false;
            }
            c9m.A00 = A042;
        }
        return true;
    }

    private boolean A0s(InterfaceC1195Wu interfaceC1195Wu) {
        C9V A0H = this.A0K.A0H();
        C9V readingPeriodHolder = A0H.A01;
        if (readingPeriodHolder != null) {
            C9V readingPeriodHolder2 = A0H.A01;
            if (readingPeriodHolder2.A06 && interfaceC1195Wu.A8H()) {
                return true;
            }
        }
        return false;
    }

    private boolean A0t(ER er, long j, C9V c9v) {
        if (er.equals(c9v.A02.A04) && c9v.A06) {
            this.A05.A03.A09(c9v.A02.A04.A02, this.A0L);
            int A04 = this.A0L.A04(j);
            if (A04 != -1) {
                int nextAdGroupIndex = (this.A0L.A09(A04) > c9v.A02.A02 ? 1 : (this.A0L.A09(A04) == c9v.A02.A02 ? 0 : -1));
                if (nextAdGroupIndex == 0) {
                    return true;
                }
                return false;
            }
            return true;
        }
        return false;
    }

    private boolean A0u(boolean z) {
        if (this.A0C.length == 0) {
            return A0q();
        }
        if (!z) {
            return false;
        }
        if (this.A05.A08) {
            C9V A0F = this.A0K.A0F();
            long A0C = A0F.A0C(!A0F.A02.A05);
            return A0C == Long.MIN_VALUE || this.A0J.AFF(A0C - A0F.A08(this.A03), this.A0G.A7O().A01, this.A09);
        }
        return true;
    }

    @NonNull
    public static Format[] A0v(GJ gj) {
        int length = gj != null ? gj.length() : 0;
        Format[] formatArr = new Format[length];
        String[] strArr = A0W;
        String str = strArr[1];
        String str2 = strArr[0];
        int charAt = str.charAt(10);
        int length2 = str2.charAt(10);
        if (charAt != length2) {
            String[] strArr2 = A0W;
            strArr2[4] = "X04sVE4WijYjotgv6w3bASzS6";
            strArr2[3] = "U1jCIvxI6fY8JZE6Ili1DHAvIg";
            for (int i = 0; i < length; i++) {
                formatArr[i] = gj.A6o(i);
            }
            return formatArr;
        }
        throw new RuntimeException();
    }

    public final Looper A0w() {
        return this.A0F.getLooper();
    }

    /* JADX WARN: Incorrect condition in loop: B:9:0x0010 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void A0x() {
        /*
            r2 = this;
            monitor-enter(r2)
            boolean r0 = r2.A0A     // Catch: java.lang.Throwable -> L23
            if (r0 == 0) goto L7
            monitor-exit(r2)
            return
        L7:
            com.facebook.ads.redexgen.X.HQ r1 = r2.A0Q     // Catch: java.lang.Throwable -> L23
            r0 = 7
            r1.AEi(r0)     // Catch: java.lang.Throwable -> L23
            r1 = 0
        Le:
            boolean r0 = r2.A0A     // Catch: java.lang.Throwable -> L23
            if (r0 != 0) goto L18
            r2.wait()     // Catch: java.lang.InterruptedException -> L16 java.lang.Throwable -> L23
            goto Le
        L16:
            r1 = 1
            goto Le
        L18:
            if (r1 == 0) goto L21
            java.lang.Thread r0 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L23
            r0.interrupt()     // Catch: java.lang.Throwable -> L23
        L21:
            monitor-exit(r2)
            return
        L23:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0702Df.A0x():void");
    }

    public final void A0y(AbstractC06309u abstractC06309u, int i, long j) {
        this.A0Q.A9y(3, new C9O(abstractC06309u, i, j)).sendToTarget();
    }

    public final void A0z(ET et, boolean z, boolean z2) {
        this.A0Q.A9x(0, z ? 1 : 0, z2 ? 1 : 0, et).sendToTarget();
    }

    public final void A10(boolean z) {
        this.A0Q.A9w(1, z ? 1 : 0, 0).sendToTarget();
    }

    public final void A11(boolean z) {
        this.A0Q.A9w(6, z ? 1 : 0, 0).sendToTarget();
    }

    @Override // com.facebook.ads.redexgen.X.C9C
    public final void AC1(C06119a c06119a) {
        this.A0E.obtainMessage(1, c06119a).sendToTarget();
        A0L(c06119a.A01);
    }

    @Override // com.facebook.ads.redexgen.X.VB
    public final void AC9(VA va) {
        this.A0Q.A9y(9, va).sendToTarget();
    }

    @Override // com.facebook.ads.redexgen.X.ES
    public final void ACb(ET et, AbstractC06309u abstractC06309u, Object obj) {
        this.A0Q.A9y(8, new C9L(et, abstractC06309u, obj)).sendToTarget();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06209j
    public final synchronized void AEk(C06229l c06229l) {
        if (this.A0A) {
            Log.w(A06(0, 21, 43), A06(50, 37, 33));
            c06229l.A0A(false);
            return;
        }
        this.A0Q.A9y(14, c06229l).sendToTarget();
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        String A06 = A06(0, 21, 43);
        try {
            switch (message.what) {
                case 0:
                    A0h((ET) message.obj, message.arg1 != 0, message.arg2 != 0);
                    break;
                case 1:
                    A0l(message.arg1 != 0);
                    break;
                case 2:
                    A07();
                    break;
                case 3:
                    A0T((C9O) message.obj);
                    break;
                case 4:
                    A0W((C06119a) message.obj);
                    break;
                case 5:
                    A0d((C06279q) message.obj);
                    break;
                case 6:
                    A0n(message.arg1 != 0, true);
                    break;
                case 7:
                    A0D();
                    return true;
                case 8:
                    A0S((C9L) message.obj);
                    break;
                case 9:
                    A0f((VA) message.obj);
                    break;
                case 10:
                    A0e((VA) message.obj);
                    break;
                case 11:
                    A0E();
                    break;
                case 12:
                    A0M(message.arg1);
                    break;
                case 13:
                    A0m(message.arg1 != 0);
                    break;
                case 14:
                    A0Y((C06229l) message.obj);
                    break;
                case 15:
                    A0a((C06229l) message.obj);
                    break;
                default:
                    return false;
            }
            A0A();
        } catch (C9F e2) {
            Log.e(A06, A06(110, 15, 98), e2);
            A0n(false, false);
            this.A0E.obtainMessage(2, e2).sendToTarget();
            A0A();
        } catch (IOException e3) {
            Log.e(A06, A06(125, 13, 51), e3);
            A0n(false, false);
            this.A0E.obtainMessage(2, C9F.A00(e3)).sendToTarget();
            A0A();
        } catch (RuntimeException e4) {
            Log.e(A06, A06(87, 23, 38), e4);
            A0n(false, false);
            this.A0E.obtainMessage(2, C9F.A02(e4)).sendToTarget();
            A0A();
        }
        return true;
    }
}

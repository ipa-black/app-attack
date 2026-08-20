package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.facebook.ads.internal.exoplayer2.thirdparty.offline.DownloadAction;
import com.google.common.primitives.SignedBytes;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: com.facebook.ads.redexgen.X.Dt  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0716Dt {
    public static byte[] A0F;
    public static String[] A0G = {"68X6mTnOwXdfZzYVO84LiBNlITu89iQX", "mcCM", "SB1U", "GkXNtRrGsWIfNkCQn88aLdXmD8Z6vhvm", "Qey5CsRmzWj382X", "n9", "Qz1jsOzCfP5BXHleCyslZPCOD1Jlt2Hf", "OEfF4KTHhKUz1ci9ksApPyeCZN0rEDYT"};
    public int A00;
    public boolean A01;
    public boolean A02;
    public boolean A03;
    public final int A04;
    public final int A05;
    public final Handler A06;
    public final Handler A07;
    public final HandlerThread A08;
    public final DZ A09;
    public final C0721Dy A0A;
    public final ArrayList<RunnableC0713Dq> A0B;
    public final ArrayList<RunnableC0713Dq> A0C;
    public final CopyOnWriteArraySet<InterfaceC0709Dm> A0D;
    public final DownloadAction.Deserializer[] A0E;

    public static String A05(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 37);
        }
        return new String(copyOfRange);
    }

    public static void A0C() {
        A0F = new byte[]{6, 69, 74, 71, 85, 78, 67, 85, 6, 81, 79, 82, 78, 6, 62, 36, SignedBytes.MAX_POWER_OF_TWO, 117, 33, 109, 100, 96, 114, 117, 33, 110, 111, 100, 33, 69, 100, 114, 100, 115, 104, 96, 109, 104, 123, 100, 115, 33, 104, 114, 33, 115, 100, 112, 116, 104, 115, 100, 101, 47, 82, 121, 97, 120, 122, 121, 119, 114, 91, 119, 120, 119, 113, 115, 100, 54, 112, Byte.MAX_VALUE, 122, 115, 54, Byte.MAX_VALUE, 57, 121, 42, 31, 13, 21, 94, 23, 13, 94, 31, 26, 26, 27, 26, 9, 60, 46, 54, 125, 46, 41, 60, 41, 56, 125, 52, 46, 125, 62, 53, 60, 51, 58, 56, 57};
    }

    static {
        A0C();
    }

    public C0716Dt(C0721Dy c0721Dy, int i, int i2, File file, DownloadAction.Deserializer... deserializerArr) {
        HD.A05(deserializerArr.length > 0, A05(16, 38, 36));
        this.A0A = c0721Dy;
        this.A04 = i;
        this.A05 = i2;
        this.A09 = new DZ(file);
        this.A0E = deserializerArr;
        this.A01 = true;
        this.A0C = new ArrayList<>();
        this.A0B = new ArrayList<>();
        Looper myLooper = Looper.myLooper();
        this.A07 = new Handler(myLooper == null ? Looper.getMainLooper() : myLooper);
        this.A08 = new HandlerThread(A05(54, 24, 51));
        this.A08.start();
        this.A06 = new Handler(this.A08.getLooper());
        this.A0D = new CopyOnWriteArraySet<>();
        A08();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RunnableC0713Dq A02(DownloadAction downloadAction) {
        int i = this.A00;
        this.A00 = i + 1;
        RunnableC0713Dq runnableC0713Dq = new RunnableC0713Dq(i, this, downloadAction, this.A05, null);
        this.A0C.add(runnableC0713Dq);
        A0J(A05(78, 13, 91), runnableC0713Dq);
        return runnableC0713Dq;
    }

    private void A08() {
        this.A06.post(new RunnableC0707Dk(this));
    }

    private void A09() {
        if (!A0R()) {
            return;
        }
        Iterator<InterfaceC0709Dm> it = this.A0D.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            if (A0G[3].charAt(7) == 'd') {
                throw new RuntimeException();
            }
            String[] strArr = A0G;
            strArr[5] = "Uj";
            strArr[4] = "M47RheKcpZxFkBs";
            if (hasNext) {
                it.next().AB9(this);
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0A() {
        DownloadAction A06;
        boolean canStartTask;
        if (!this.A02 || this.A03) {
            return;
        }
        boolean skipDownloadActions = this.A01 || this.A0B.size() == this.A04;
        for (int i = 0; i < this.A0C.size(); i++) {
            RunnableC0713Dq runnableC0713Dq = this.A0C.get(i);
            boolean A0H = RunnableC0713Dq.A0H(runnableC0713Dq);
            if (A0G[0].charAt(7) == 'Z') {
                throw new RuntimeException();
            }
            String[] strArr = A0G;
            strArr[5] = "ZZ";
            strArr[4] = "k3SOhcJE6F5rWIN";
            if (A0H && ((canStartTask = (A06 = RunnableC0713Dq.A06(runnableC0713Dq)).A03) || !skipDownloadActions)) {
                boolean z = true;
                int i2 = 0;
                while (true) {
                    if (i2 >= i) {
                        break;
                    }
                    RunnableC0713Dq runnableC0713Dq2 = this.A0C.get(i2);
                    if (RunnableC0713Dq.A06(runnableC0713Dq2).A09(A06)) {
                        if (canStartTask) {
                            z = false;
                            String str = runnableC0713Dq + A05(0, 14, 3) + runnableC0713Dq2;
                            RunnableC0713Dq.A0C(runnableC0713Dq2);
                        } else if (RunnableC0713Dq.A06(runnableC0713Dq2).A03) {
                            z = false;
                            skipDownloadActions = true;
                            break;
                        }
                    }
                    i2++;
                }
                if (z) {
                    RunnableC0713Dq.A0D(runnableC0713Dq);
                    if (!canStartTask) {
                        this.A0B.add(runnableC0713Dq);
                        skipDownloadActions = this.A0B.size() == this.A04;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0B() {
        if (this.A03) {
            return;
        }
        DownloadAction[] downloadActionArr = new DownloadAction[this.A0C.size()];
        for (int i = 0; i < this.A0C.size(); i++) {
            downloadActionArr[i] = RunnableC0713Dq.A06(this.A0C.get(i));
        }
        this.A06.post(new RunnableC0708Dl(this, downloadActionArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0D(RunnableC0713Dq runnableC0713Dq) {
        A0J(A05(91, 21, 120), runnableC0713Dq);
        C0715Ds A0K = runnableC0713Dq.A0K();
        Iterator<InterfaceC0709Dm> it = this.A0D.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            if (A0G[0].charAt(7) == 'Z') {
                throw new RuntimeException();
            }
            A0G[0] = "TUrgn6We5nsrVkZlQG2KUeV0nEHaGaai";
            if (hasNext) {
                it.next().ACk(this, A0K);
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0E(RunnableC0713Dq runnableC0713Dq) {
        if (this.A03) {
            return;
        }
        boolean z = !runnableC0713Dq.A0L();
        if (z) {
            this.A0B.remove(runnableC0713Dq);
        }
        A0D(runnableC0713Dq);
        if (A0G[3].charAt(7) == 'd') {
            throw new RuntimeException();
        }
        A0G[6] = "xCRZPuTuqF5VhljpIGNZbvIN3H6gjFvE";
        boolean stopped = runnableC0713Dq.A0M();
        if (stopped) {
            this.A0C.remove(runnableC0713Dq);
            A0B();
        }
        if (z) {
            A0A();
            A09();
        }
    }

    public static void A0J(String str, RunnableC0713Dq runnableC0713Dq) {
        String str2 = str + A05(14, 2, 33) + runnableC0713Dq;
    }

    public final int A0O(DownloadAction downloadAction) {
        HD.A04(!this.A03);
        RunnableC0713Dq A02 = A02(downloadAction);
        if (this.A02) {
            A0B();
            A0A();
            if (RunnableC0713Dq.A03(A02) == 0) {
                A0D(A02);
            }
        }
        return RunnableC0713Dq.A04(A02);
    }

    public final void A0P() {
        HD.A04(!this.A03);
        if (this.A01) {
            this.A01 = false;
            A0A();
        }
    }

    public final void A0Q(InterfaceC0709Dm interfaceC0709Dm) {
        this.A0D.add(interfaceC0709Dm);
    }

    /* JADX WARN: Incorrect condition in loop: B:7:0x0014 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean A0R() {
        /*
            r4 = this;
            boolean r0 = r4.A03
            r3 = 1
            r0 = r0 ^ r3
            com.facebook.ads.redexgen.X.HD.A04(r0)
            boolean r0 = r4.A02
            r2 = 0
            if (r0 != 0) goto Ld
            return r2
        Ld:
            r1 = 0
        Le:
            java.util.ArrayList<com.facebook.ads.redexgen.X.Dq> r0 = r4.A0C
            int r0 = r0.size()
            if (r1 >= r0) goto L28
            java.util.ArrayList<com.facebook.ads.redexgen.X.Dq> r0 = r4.A0C
            java.lang.Object r0 = r0.get(r1)
            com.facebook.ads.redexgen.X.Dq r0 = (com.facebook.ads.redexgen.X.RunnableC0713Dq) r0
            boolean r0 = r0.A0L()
            if (r0 == 0) goto L25
            return r2
        L25:
            int r1 = r1 + 1
            goto Le
        L28:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0716Dt.A0R():boolean");
    }

    public final C0715Ds[] A0S() {
        HD.A04(!this.A03);
        C0715Ds[] c0715DsArr = new C0715Ds[this.A0C.size()];
        for (int i = 0; i < c0715DsArr.length; i++) {
            c0715DsArr[i] = this.A0C.get(i).A0K();
        }
        return c0715DsArr;
    }
}

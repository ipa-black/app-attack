package com.facebook.ads.redexgen.X;

import android.util.Log;
import com.facebook.ads.internal.exoplayer2.thirdparty.offline.DownloadAction;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.Dl  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC0708Dl implements Runnable {
    public static byte[] A02;
    public final /* synthetic */ C0716Dt A00;
    public final /* synthetic */ DownloadAction[] A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 126);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{30, 53, 45, 52, 54, 53, 59, 62, 23, 59, 52, 59, 61, 63, 40, 105, 92, 75, 74, 80, 74, 77, 80, 87, 94, 25, 88, 90, 77, 80, 86, 87, 74, 25, 95, 88, 80, 85, 92, 93, 23};
    }

    public RunnableC0708Dl(C0716Dt c0716Dt, DownloadAction[] downloadActionArr) {
        this.A00 = c0716Dt;
        this.A01 = downloadActionArr;
    }

    @Override // java.lang.Runnable
    public final void run() {
        DZ dz;
        if (C0864Jt.A02(this)) {
            return;
        }
        try {
            try {
                dz = this.A00.A09;
                dz.A02(this.A01);
            } catch (IOException e2) {
                Log.e(A00(0, 15, 36), A00(15, 26, 71), e2);
            }
        } catch (Throwable th) {
            C0864Jt.A00(th, this);
        }
    }
}

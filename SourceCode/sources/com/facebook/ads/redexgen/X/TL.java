package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.app.AlertDialog;
import android.widget.EditText;
import com.explorestack.protobuf.openrtb.LossReason;
import com.facebook.ads.internal.util.activity.ActivityUtils;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: assets/audience_network.dex */
public class TL implements InterfaceC0894La {
    public static byte[] A04;
    public static String[] A05 = {"ZQ30B3g1EnWzQxn3crjjGmBLF8czgnrz", "nRJ0geoMgiM0DOpSqitarteTb49iW4bu", "zkGhqanHWGORl0FJV2wFc9MBhnbxSqBt", "Ydk0P72aTQrHa0LOhdAcfW", "R4envBHR3aj", "p22B9bEQtnR9xLSz", "XdKDLLdRQiXAjT4HFpZKaT6yuzMG741E", "BfaY"};
    public C1202Xb A00;
    public C8A A01;
    public QG A02;
    public final Executor A03;

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 127);
        }
        return new String(copyOfRange);
    }

    public static void A06() {
        A04 = new byte[]{107, 110, 110, 104, 109, 96, 104, 106, 111, 107, 106, 105, 110, 104, 107, SignedBytes.MAX_POWER_OF_TWO, 75, 69, 66, 65, 71, 70, SignedBytes.MAX_POWER_OF_TWO, 66, 74, 74, 71, 70, 65, 70, SignedBytes.MAX_POWER_OF_TWO, 79, 69, 79, 67, 69, 79, 66, 70, 79, 79, 65, 79, 70, 71, 10, 79, 20, 16, 68, 79, 23, 71, 16, 68, 65, 66, 67, 65, 66, SignedBytes.MAX_POWER_OF_TWO, 23, SignedBytes.MAX_POWER_OF_TWO, 21, SignedBytes.MAX_POWER_OF_TWO, 70, 18, 65, 70, 65, 16, 67, 20, 21, 68, 69, 21, 68, 116, 86, 89, 84, 82, 91, 30, 50, 42, 115, 60, 39, 59, 54, 33, 32, 115, 63, 60, 52, 58, 61, 115, 50, 32, 115, 42, 60, 38, 115, 39, 60, 115, 55, 54, 49, 38, 52, 108, 115, 27, 60, 36, 115, 55, 60, 115, 42, 60, 38, 115, 33, 54, 35, 33, 60, 55, 38, 48, 54, 115, 39, 59, 54, 115, 58, 32, 32, 38, 54, 108, 83, 101, 110, 100, 32, 82, 101, 112, 111, 114, 116, 52, 11, 2, 23, 67, 43, 2, 19, 19, 6, 13, 6, 7, 92, 27, 25, 25, 31, 9, 9, 37, 14, 21, 17, 31, 20, 14, 12, 25, 8, 10, 2, 31, 20, 50, 4, 9, 42, 37, 32, 44, 39, 61, 22, 61, 32, 36, 44, 90, 85, 80, 92, 87, 77, 102, 77, 86, 82, 92, 87, 108, 96, 97, 105, 102, 104, 80, 102, 107, 32, 33, 55, 39, 54, 45, 52, 48, 45, 43, 42, 61, 53, 36, 49, 52, 49, 36, 49, 116, 112, 106, 122, 70, 112, 119, Byte.MAX_VALUE, 118, 106, 108, 122, 109, SignedBytes.MAX_POWER_OF_TWO, 118, 123, 122, 113, 107, 118, 121, 118, 122, 109};
    }

    static {
        A06();
    }

    public TL(Executor executor, C8A c8a, C1203Xc c1203Xc) {
        this.A00 = c1203Xc.A01();
        this.A02 = QY.A01(this.A00);
        this.A03 = executor;
        this.A01 = c8a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> A04(String str) {
        QU qu = new QU();
        QU qu2 = new QU();
        QU qu3 = new QU();
        qu.put(A02(257, 15, 96), C05425y.A00().A03());
        qu.put(A02(220, 9, 112), A02(15, 15, 13));
        qu.put(A02(186, 11, 18), A02(0, 15, 38));
        qu.put(A02(174, 12, 5), A02(30, 48, 9));
        qu.put(A02(197, 11, 54), (System.currentTimeMillis() / 1000) + A02(0, 0, 125));
        String A07 = this.A01.A07();
        if (A07 != null) {
            qu3.put(A02(LossReason.LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS_VALUE, 12, 70), A07);
        }
        if (A05[2].charAt(28) != 'S') {
            throw new RuntimeException();
        }
        A05[1] = "6c1y5rO2F72616lTK87Vm3xCzjJjlGKf";
        qu2.put(A02(229, 11, 59), str);
        String clientToken = C0884Kq.A01(qu3);
        qu2.put(A02(248, 9, 102), clientToken);
        String clientToken2 = C0884Kq.A01(qu2);
        qu.A04(A02(PsExtractor.VIDEO_STREAM_MASK, 8, 47), clientToken2);
        return qu;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A07(C8A c8a) {
        this.A01 = c8a;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0894La
    public final void ACY() {
        Activity A00 = ActivityUtils.A00();
        if (A00 == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(A00);
        builder.setTitle(A02(160, 14, 28));
        EditText editText = new EditText(A00);
        editText.setSingleLine(false);
        editText.setImeOptions(1073741824);
        editText.setHint(A02(84, 65, 44));
        editText.setMaxLines(2);
        editText.setMinLines(2);
        builder.setView(editText);
        builder.setNegativeButton(A02(78, 6, 72), new LX(this));
        builder.setPositiveButton(A02(149, 11, 127), new LY(this, editText));
        builder.create().show();
    }
}

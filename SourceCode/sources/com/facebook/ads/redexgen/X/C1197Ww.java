package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.common.primitives.SignedBytes;
import java.util.ArrayList;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.Ww  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1197Ww implements InterfaceC06269p {
    public static byte[] A04;
    public final int A00;
    public final long A01;
    public final Context A02;
    @Nullable
    public final BF<C1175Wa> A03;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 84);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{113, 80, 83, 84, SignedBytes.MAX_POWER_OF_TWO, 89, 65, 103, 80, 91, 81, 80, 71, 80, 71, 70, 115, 84, 86, 65, 90, 71, 76, Byte.MAX_VALUE, 72, 72, 85, 72, 26, 83, 84, 73, 78, 91, 84, 78, 83, 91, 78, 83, 84, 93, 26, 124, 124, 87, 74, 95, 93, 26, 95, 66, 78, 95, 84, 73, 83, 85, 84, 60, 11, 11, 22, 11, 89, 16, 23, 10, 13, 24, 23, 13, 16, 24, 13, 16, 23, 30, 89, 63, 53, 56, 58, 89, 28, 1, 13, 28, 23, 10, 16, 22, 23, 59, 12, 12, 17, 12, 94, 23, 16, 13, 10, 31, 16, 10, 23, 31, 10, 23, 16, 25, 94, 49, 14, 11, 13, 94, 27, 6, 10, 27, 16, 13, 23, 17, 16, 24, 47, 47, 50, 47, 125, 52, 51, 46, 41, 60, 51, 41, 52, 60, 41, 52, 51, 58, 125, 11, 13, 100, 125, 56, 37, 41, 56, 51, 46, 52, 50, 51, 93, 126, 112, 117, 116, 117, 49, 87, 119, 124, 97, 116, 118, 80, 100, 117, 120, 126, 67, 116, Byte.MAX_VALUE, 117, 116, 99, 116, 99, 63, 81, 114, 124, 121, 120, 121, 61, 81, 116, Byte.MAX_VALUE, 123, 113, 124, 126, 92, 104, 121, 116, 114, 79, 120, 115, 121, 120, 111, 120, 111, 51, 45, 14, 0, 5, 4, 5, 65, 45, 8, 3, 14, 17, 20, 18, 32, 20, 5, 8, 14, 51, 4, 15, 5, 4, 19, 4, 19, 79, 54, 21, 27, 30, 31, 30, 90, 54, 19, 24, 12, 10, 2, 44, 19, 30, 31, 21, 40, 31, 20, 30, 31, 8, 31, 8, 84, 75, 71, 69, 6, 78, 73, 75, 77, 74, 71, 71, 67, 6, 73, 76, 91, 6, 65, 70, 92, 77, 90, 70, 73, 68, 6, 77, 80, 71, 88, 68, 73, 81, 77, 90, 26, 6, 77, 80, 92, 6, 78, 78, 69, 88, 77, 79, 6, 110, 78, 69, 88, 77, 79, 105, 93, 76, 65, 71, 122, 77, 70, 76, 77, 90, 77, 90, 84, 88, 90, 25, 81, 86, 84, 82, 85, 88, 88, 92, 25, 86, 83, 68, 25, 94, 89, 67, 82, 69, 89, 86, 91, 25, 82, 79, 88, 71, 91, 86, 78, 82, 69, 5, 25, 82, 79, 67, 25, 81, 91, 86, 84, 25, 123, 94, 85, 81, 91, 86, 84, 118, 66, 83, 94, 88, 101, 82, 89, 83, 82, 69, 82, 69, 87, 91, 89, 26, 82, 85, 87, 81, 86, 91, 91, 95, 26, 85, 80, 71, 26, 93, 90, SignedBytes.MAX_POWER_OF_TWO, 81, 70, 90, 85, 88, 26, 81, 76, 91, 68, 88, 85, 77, 81, 70, 6, 26, 81, 76, SignedBytes.MAX_POWER_OF_TWO, 26, 91, 68, 65, 71, 26, 120, 93, 86, 91, 68, 65, 71, 117, 65, 80, 93, 91, 102, 81, 90, 80, 81, 70, 81, 70, 60, 48, 50, 113, 57, 62, 60, 58, 61, 48, 48, 52, 113, 62, 59, 44, 113, 54, 49, 43, 58, 45, 49, 62, 51, 113, 58, 39, 48, 47, 51, 62, 38, 58, 45, 109, 113, 58, 39, 43, 113, 41, 47, 102, 113, 19, 54, 61, 41, 47, 39, 9, 54, 59, 58, 48, 13, 58, 49, 59, 58, 45, 58, 45};
    }

    public C1197Ww(Context context) {
        this(context, 0);
    }

    public C1197Ww(Context context, int i) {
        this(context, null, i, 5000L);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.BF != com.facebook.ads.internal.exoplayer2.thirdparty.drm.DrmSessionManager<com.facebook.ads.internal.exoplayer2.thirdparty.drm.FrameworkMediaCrypto> */
    @Deprecated
    public C1197Ww(Context context, @Nullable BF<C1175Wa> bf, int i, long j) {
        this.A02 = context;
        this.A00 = i;
        this.A01 = j;
        this.A03 = bf;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.BF != com.facebook.ads.internal.exoplayer2.thirdparty.drm.DrmSessionManager<com.facebook.ads.internal.exoplayer2.thirdparty.drm.FrameworkMediaCrypto> */
    private final void A02(Context context, @Nullable BF<C1175Wa> bf, long j, Handler handler, IG ig, int extensionRendererIndex, ArrayList<InterfaceC1195Wu> arrayList) {
        arrayList.add(new C1A(context, Cz.A00, j, bf, false, handler, ig, 50));
        if (extensionRendererIndex == 0) {
            return;
        }
        int size = arrayList.size();
        if (extensionRendererIndex == 2) {
            size--;
        }
        try {
            try {
                Class<?> cls = Class.forName(A00(469, 64, 11));
                Class<?> clazz = Boolean.TYPE;
                Class<?> clazz2 = Long.TYPE;
                Class<?> clazz3 = Integer.TYPE;
                try {
                    arrayList.add(size, (InterfaceC1195Wu) cls.getConstructor(clazz, clazz2, Handler.class, IG.class, clazz3).newInstance(true, Long.valueOf(j), handler, ig, 50));
                    Log.i(A00(0, 23, 97), A00(243, 27, 46));
                } catch (Exception e2) {
                    e = e2;
                    throw new RuntimeException(A00(127, 33, 9), e);
                }
            } catch (Exception e3) {
                e = e3;
            }
        } catch (ClassNotFoundException unused) {
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.BF != com.facebook.ads.internal.exoplayer2.thirdparty.drm.DrmSessionManager<com.facebook.ads.internal.exoplayer2.thirdparty.drm.FrameworkMediaCrypto> */
    private final void A03(Context context, @Nullable BF<C1175Wa> bf, AE[] aeArr, Handler handler, AM am, int i, ArrayList<InterfaceC1195Wu> arrayList) {
        int extensionRendererIndex;
        int i2;
        String A00 = A00(0, 23, 97);
        arrayList.add(new C04211e(context, Cz.A00, bf, false, handler, am, A7.A00(context), aeArr));
        if (i == 0) {
            return;
        }
        int size = arrayList.size();
        if (i == 2) {
            size--;
        }
        try {
            extensionRendererIndex = size + 1;
        } catch (ClassNotFoundException unused) {
            extensionRendererIndex = size;
        } catch (Exception e2) {
            e = e2;
        }
        try {
            arrayList.add(size, (InterfaceC1195Wu) Class.forName(A00(403, 66, 96)).getConstructor(Handler.class, AM.class, AE[].class).newInstance(handler, am, aeArr));
            Log.i(A00, A00(215, 28, 53));
        } catch (ClassNotFoundException unused2) {
        } catch (Exception e3) {
            e = e3;
            throw new RuntimeException(A00(93, 34, 42), e);
        }
        try {
            i2 = extensionRendererIndex + 1;
            try {
                arrayList.add(extensionRendererIndex, (InterfaceC1195Wu) Class.forName(A00(337, 66, 99)).getConstructor(Handler.class, AM.class, AE[].class).newInstance(handler, am, aeArr));
                Log.i(A00, A00(187, 28, 73));
            } catch (ClassNotFoundException unused3) {
            } catch (Exception e4) {
                e = e4;
                throw new RuntimeException(A00(59, 34, 45), e);
            }
        } catch (ClassNotFoundException unused4) {
            i2 = extensionRendererIndex;
        } catch (Exception e5) {
            e = e5;
        }
        try {
            try {
                try {
                    arrayList.add(i2, (InterfaceC1195Wu) Class.forName(A00(270, 67, 124)).getConstructor(Handler.class, AM.class, AE[].class).newInstance(handler, am, aeArr));
                    Log.i(A00, A00(160, 27, 69));
                } catch (Exception e6) {
                    e = e6;
                    throw new RuntimeException(A00(23, 36, 110), e);
                }
            } catch (Exception e7) {
                e = e7;
            }
        } catch (ClassNotFoundException unused5) {
        }
    }

    private final void A04(Context context, DC dc, Looper looper, int i, ArrayList<InterfaceC1195Wu> arrayList) {
        arrayList.add(new C3B(dc, looper));
    }

    private final void A05(Context context, FU fu, Looper looper, int i, ArrayList<InterfaceC1195Wu> arrayList) {
        arrayList.add(new AnonymousClass39(fu, looper));
    }

    private final AE[] A06() {
        return new AE[0];
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.BF != com.facebook.ads.internal.exoplayer2.thirdparty.drm.DrmSessionManager<com.facebook.ads.internal.exoplayer2.thirdparty.drm.FrameworkMediaCrypto> */
    @Override // com.facebook.ads.redexgen.X.InterfaceC06269p
    public final InterfaceC1195Wu[] A4U(Handler handler, IG ig, AM am, FU fu, DC dc, @Nullable BF<C1175Wa> bf) {
        BF<C1175Wa> bf2 = bf;
        if (bf2 == null) {
            bf2 = this.A03;
        }
        ArrayList<InterfaceC1195Wu> arrayList = new ArrayList<>();
        A02(this.A02, bf2, this.A01, handler, ig, this.A00, arrayList);
        A03(this.A02, bf2, A06(), handler, am, this.A00, arrayList);
        A05(this.A02, fu, handler.getLooper(), this.A00, arrayList);
        A04(this.A02, dc, handler.getLooper(), this.A00, arrayList);
        return (InterfaceC1195Wu[]) arrayList.toArray(new InterfaceC1195Wu[arrayList.size()]);
    }
}

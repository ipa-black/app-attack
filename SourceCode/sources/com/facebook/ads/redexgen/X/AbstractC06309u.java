package com.facebook.ads.redexgen.X;

import android.util.Pair;
import com.google.android.exoplayer2.C;
/* renamed from: com.facebook.ads.redexgen.X.9u  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC06309u {
    public static String[] A00 = {"PM7DSx0y0lrec1UT4WPnkT9xVE7xO4Q3", "BEgdeY8scYjWDgLVGs4ZUut3Hirr2MX3", "ZAPPhI63uMybzXuqxrZ5dKdt3S18BPE9", "MM2rXOZDxF7k2VlV9Dcr24aSmfbMyxXV", "eywYp4IUfN7s09w4sjk3CdaIEMxiykZ2", "eISkZjTp9yJ8vcJJgc2cD29HnvZjEHrc", "bxIeMq2jLgGDMU", "MX4WpiU2EnoJ87vmil9r758WOfjNIsLN"};
    public static final AbstractC06309u A01 = new C1193Ws();

    public abstract int A00();

    public abstract int A01();

    public abstract int A04(Object obj);

    public abstract C06289s A0A(int i, C06289s c06289s, boolean z);

    public abstract C06299t A0D(int i, C06299t c06299t, boolean z, long j);

    public int A02(int i, int i2, boolean z) {
        if (i2 == 0) {
            if (i == A06(z)) {
                return -1;
            }
            return i + 1;
        } else if (i2 != 1) {
            if (i2 == 2) {
                if (i == A06(z)) {
                    return A05(z);
                }
                return i + 1;
            }
            throw new IllegalStateException();
        } else {
            return i;
        }
    }

    public final int A03(int i, C06289s c06289s, C06299t c06299t, int i2, boolean z) {
        int i3 = A09(i, c06289s).A00;
        int windowIndex = A0B(i3, c06299t).A01;
        if (windowIndex == i) {
            int A02 = A02(i3, i2, z);
            if (A00[1].charAt(27) != 'r') {
                throw new RuntimeException();
            }
            A00[5] = "vHlQRfGLACzPc9SqhGGMQS9yx8mDrtQw";
            if (A02 == -1) {
                return -1;
            }
            C06299t A0B = A0B(A02, c06299t);
            int nextWindowIndex = A00[6].length();
            if (nextWindowIndex == 14) {
                A00[5] = "g3EvwHO3x67yk3ScCmOHXM9FC4inpbOU";
                int windowIndex2 = A0B.A00;
                return windowIndex2;
            }
            String[] strArr = A00;
            strArr[4] = "oJT8BcC7iC9ashzghnGVZpN5rOviRVye";
            strArr[3] = "BXJ5tQfk704SS2XTm0iOlKfvNFhc4WVf";
            int windowIndex3 = A0B.A00;
            return windowIndex3;
        }
        int windowIndex4 = i + 1;
        return windowIndex4;
    }

    public int A05(boolean z) {
        return A0E() ? -1 : 0;
    }

    public int A06(boolean z) {
        if (A0E()) {
            return -1;
        }
        return A01() - 1;
    }

    public final Pair<Integer, Long> A07(C06299t c06299t, C06289s c06289s, int i, long j) {
        return A08(c06299t, c06289s, i, j, 0L);
    }

    public final Pair<Integer, Long> A08(C06299t c06299t, C06289s c06289s, int i, long j, long j2) {
        HD.A00(i, 0, A01());
        A0D(i, c06299t, false, j2);
        if (j == C.TIME_UNSET) {
            j = c06299t.A01();
            if (A00[5].charAt(22) != '9') {
                throw new RuntimeException();
            }
            A00[0] = "jYNh2aRlntxjcST03zipQODHWrcZ3Q9N";
            if (j == C.TIME_UNSET) {
                return null;
            }
        }
        int i2 = c06299t.A00;
        long A03 = c06299t.A03() + j;
        long A07 = A09(i2, c06289s).A07();
        while (A07 != C.TIME_UNSET && A03 >= A07) {
            int i3 = c06299t.A01;
            if (A00[1].charAt(27) == 'r') {
                String[] strArr = A00;
                strArr[7] = "IuvzXoPM3cIs3JU7ThgGmV6LQ39mYtz4";
                strArr[2] = "DGRaGmTIVAXEwTC12jYPgBDTgoVWDlIc";
                if (i2 >= i3) {
                    break;
                }
                A03 -= A07;
                i2++;
                A07 = A09(i2, c06289s).A07();
            } else {
                throw new RuntimeException();
            }
        }
        return Pair.create(Integer.valueOf(i2), Long.valueOf(A03));
    }

    public final C06289s A09(int i, C06289s c06289s) {
        return A0A(i, c06289s, false);
    }

    public final C06299t A0B(int i, C06299t c06299t) {
        return A0C(i, c06299t, false);
    }

    public final C06299t A0C(int i, C06299t c06299t, boolean z) {
        return A0D(i, c06299t, z, 0L);
    }

    public final boolean A0E() {
        return A01() == 0;
    }

    public final boolean A0F(int i, C06289s c06289s, C06299t c06299t, int i2, boolean z) {
        return A03(i, c06289s, c06299t, i2, z) == -1;
    }
}

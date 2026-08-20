package com.facebook.ads.redexgen.X;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.EOFException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.Uh  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1133Uh implements GX {
    public static byte[] A05;
    public static String[] A06 = {"2AQ", "PKEE8tvP1F9G5CS2asOfHv5i9NmL9OD8", "nghUlW0EKiCso94RSH6SGDaiGhOOZ9vR", "y3nJ4vSOM9HwnTFSw", "dDA", "lgpDjnw", "z3SCjqWwobuDiPiZI", "K1NyJtZzbkl5fIhEU"};
    public long A00;
    public Uri A01;
    public RandomAccessFile A02;
    public boolean A03;
    @Nullable
    public final InterfaceC0790Gt<? super C1133Uh> A04;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 99);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        byte[] bArr = {-23};
        if (A06[3].length() == 0) {
            throw new RuntimeException();
        }
        String[] strArr = A06;
        strArr[2] = "0CNdTW9yzTlkWk7IYlaLkwwChYLMq6mo";
        strArr[1] = "0Hm8psTbLgTGmvvfzx0WFuRjr22Bb9pe";
        A05 = bArr;
    }

    static {
        A01();
    }

    public C1133Uh() {
        this(null);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Gt != com.facebook.ads.internal.exoplayer2.thirdparty.upstream.TransferListener<? super com.facebook.ads.internal.exoplayer2.thirdparty.upstream.FileDataSource> */
    public C1133Uh(@Nullable InterfaceC0790Gt<? super C1133Uh> interfaceC0790Gt) {
        this.A04 = interfaceC0790Gt;
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final Uri A7w() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final long ADF(C0774Gb c0774Gb) throws C0776Ge {
        try {
            this.A01 = c0774Gb.A04;
            this.A02 = new RandomAccessFile(c0774Gb.A04.getPath(), A00(0, 1, 20));
            this.A02.seek(c0774Gb.A03);
            this.A00 = c0774Gb.A02 == -1 ? this.A02.length() - c0774Gb.A03 : c0774Gb.A02;
            if (this.A00 >= 0) {
                this.A03 = true;
                InterfaceC0790Gt<? super C1133Uh> interfaceC0790Gt = this.A04;
                if (interfaceC0790Gt != null) {
                    interfaceC0790Gt.ACq(this, c0774Gb);
                }
                long j = this.A00;
                String[] strArr = A06;
                if (strArr[2].charAt(7) != strArr[1].charAt(7)) {
                    String[] strArr2 = A06;
                    strArr2[2] = "188hlIbKt9nIA1dvR5NGktGwzdp3IRsd";
                    strArr2[1] = "QFvQNdwNF8vXzE7Cd6SWqbxvkW74QyIe";
                    return j;
                }
                throw new RuntimeException();
            }
            throw new EOFException();
        } catch (IOException e2) {
            throw new C0776Ge(e2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final void close() throws C0776Ge {
        this.A01 = null;
        try {
            try {
                if (this.A02 != null) {
                    this.A02.close();
                }
            } catch (IOException e2) {
                throw new C0776Ge(e2);
            }
        } finally {
            this.A02 = null;
            if (this.A03) {
                this.A03 = false;
                InterfaceC0790Gt<? super C1133Uh> interfaceC0790Gt = this.A04;
                if (interfaceC0790Gt != null) {
                    interfaceC0790Gt.ACp(this);
                }
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final int read(byte[] bArr, int i, int i2) throws C0776Ge {
        if (i2 == 0) {
            return 0;
        }
        long j = this.A00;
        if (j == 0) {
            return -1;
        }
        try {
            int read = this.A02.read(bArr, i, (int) Math.min(j, i2));
            if (read > 0) {
                this.A00 -= read;
                InterfaceC0790Gt<? super C1133Uh> interfaceC0790Gt = this.A04;
                if (interfaceC0790Gt != null) {
                    interfaceC0790Gt.AAS(this, read);
                }
            }
            return read;
        } catch (IOException e2) {
            throw new C0776Ge(e2);
        }
    }
}

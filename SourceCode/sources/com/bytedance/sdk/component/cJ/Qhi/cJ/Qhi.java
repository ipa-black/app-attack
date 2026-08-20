package com.bytedance.sdk.component.cJ.Qhi.cJ;

import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
/* compiled from: Buffer.java */
/* loaded from: classes2.dex */
public final class Qhi implements ac, cJ, Cloneable, ByteChannel {
    private static final byte[] ac = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
    Tgh Qhi;
    long cJ;

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public void close() {
    }

    @Override // java.io.Flushable
    public void flush() {
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    public boolean Qhi() {
        return this.cJ == 0;
    }

    public byte cJ() {
        if (this.cJ == 0) {
            throw new IllegalStateException("size == 0");
        }
        Tgh tgh = this.Qhi;
        int i = tgh.cJ;
        int i2 = tgh.ac;
        int i3 = i + 1;
        byte b2 = tgh.Qhi[i];
        this.cJ--;
        if (i3 == i2) {
            this.Qhi = tgh.cJ();
            ROR.Qhi(tgh);
        } else {
            tgh.cJ = i3;
        }
        return b2;
    }

    public String ac() {
        try {
            return Qhi(this.cJ, WAv.Qhi);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    public String Qhi(long j, Charset charset) throws EOFException {
        WAv.Qhi(this.cJ, 0L, j);
        if (charset != null) {
            if (j <= 2147483647L) {
                if (j == 0) {
                    return "";
                }
                Tgh tgh = this.Qhi;
                if (tgh.cJ + j > tgh.ac) {
                    return new String(Qhi(j), charset);
                }
                String str = new String(tgh.Qhi, tgh.cJ, (int) j, charset);
                tgh.cJ = (int) (tgh.cJ + j);
                this.cJ -= j;
                if (tgh.cJ == tgh.ac) {
                    this.Qhi = tgh.cJ();
                    ROR.Qhi(tgh);
                }
                return str;
            }
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: ".concat(String.valueOf(j)));
        }
        throw new IllegalArgumentException("charset == null");
    }

    public byte[] Qhi(long j) throws EOFException {
        WAv.Qhi(this.cJ, 0L, j);
        if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: ".concat(String.valueOf(j)));
        }
        byte[] bArr = new byte[(int) j];
        Qhi(bArr);
        return bArr;
    }

    public void Qhi(byte[] bArr) throws EOFException {
        int i = 0;
        while (i < bArr.length) {
            int Qhi = Qhi(bArr, i, bArr.length - i);
            if (Qhi == -1) {
                throw new EOFException();
            }
            i += Qhi;
        }
    }

    public int Qhi(byte[] bArr, int i, int i2) {
        WAv.Qhi(bArr.length, i, i2);
        Tgh tgh = this.Qhi;
        if (tgh == null) {
            return -1;
        }
        int min = Math.min(i2, tgh.ac - tgh.cJ);
        System.arraycopy(tgh.Qhi, tgh.cJ, bArr, i, min);
        tgh.cJ += min;
        this.cJ -= min;
        if (tgh.cJ == tgh.ac) {
            this.Qhi = tgh.cJ();
            ROR.Qhi(tgh);
        }
        return min;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        Tgh tgh = this.Qhi;
        if (tgh == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), tgh.ac - tgh.cJ);
        byteBuffer.put(tgh.Qhi, tgh.cJ, min);
        tgh.cJ += min;
        this.cJ -= min;
        if (tgh.cJ == tgh.ac) {
            this.Qhi = tgh.cJ();
            ROR.Qhi(tgh);
        }
        return min;
    }

    public Qhi Qhi(String str) {
        return Qhi(str, 0, str.length());
    }

    public Qhi Qhi(String str, int i, int i2) {
        char charAt;
        if (str != null) {
            if (i >= 0) {
                if (i2 < i) {
                    throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
                }
                if (i2 <= str.length()) {
                    while (i < i2) {
                        char charAt2 = str.charAt(i);
                        if (charAt2 < 128) {
                            Tgh ac2 = ac(1);
                            byte[] bArr = ac2.Qhi;
                            int i3 = ac2.ac - i;
                            int min = Math.min(i2, 8192 - i3);
                            int i4 = i + 1;
                            bArr[i + i3] = (byte) charAt2;
                            while (true) {
                                i = i4;
                                if (i >= min || (charAt = str.charAt(i)) >= 128) {
                                    break;
                                }
                                i4 = i + 1;
                                bArr[i + i3] = (byte) charAt;
                            }
                            int i5 = (i3 + i) - ac2.ac;
                            ac2.ac += i5;
                            this.cJ += i5;
                        } else {
                            if (charAt2 < 2048) {
                                cJ((charAt2 >> 6) | 192);
                                cJ((charAt2 & '?') | 128);
                            } else if (charAt2 < 55296 || charAt2 > 57343) {
                                cJ((charAt2 >> '\f') | 224);
                                cJ(((charAt2 >> 6) & 63) | 128);
                                cJ((charAt2 & '?') | 128);
                            } else {
                                int i6 = i + 1;
                                char charAt3 = i6 < i2 ? str.charAt(i6) : (char) 0;
                                if (charAt2 > 56319 || charAt3 < 56320 || charAt3 > 57343) {
                                    cJ(63);
                                    i = i6;
                                } else {
                                    int i7 = (((charAt2 & 10239) << 10) | (9215 & charAt3)) + 65536;
                                    cJ((i7 >> 18) | PsExtractor.VIDEO_STREAM_MASK);
                                    cJ(((i7 >> 12) & 63) | 128);
                                    cJ(((i7 >> 6) & 63) | 128);
                                    cJ((i7 & 63) | 128);
                                    i += 2;
                                }
                            }
                            i++;
                        }
                    }
                    return this;
                }
                throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
            }
            throw new IllegalArgumentException("beginIndex < 0: ".concat(String.valueOf(i)));
        }
        throw new IllegalArgumentException("string == null");
    }

    public Qhi Qhi(int i) {
        if (i < 128) {
            cJ(i);
        } else if (i < 2048) {
            cJ((i >> 6) | 192);
            cJ((i & 63) | 128);
        } else if (i < 65536) {
            if (i >= 55296 && i <= 57343) {
                cJ(63);
            } else {
                cJ((i >> 12) | 224);
                cJ(((i >> 6) & 63) | 128);
                cJ((i & 63) | 128);
            }
        } else if (i <= 1114111) {
            cJ((i >> 18) | PsExtractor.VIDEO_STREAM_MASK);
            cJ(((i >> 12) & 63) | 128);
            cJ(((i >> 6) & 63) | 128);
            cJ((i & 63) | 128);
        } else {
            throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i));
        }
        return this;
    }

    public Qhi Qhi(String str, int i, int i2, Charset charset) {
        if (str != null) {
            if (i >= 0) {
                if (i2 < i) {
                    throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
                }
                if (i2 <= str.length()) {
                    if (charset == null) {
                        throw new IllegalArgumentException("charset == null");
                    }
                    if (charset.equals(WAv.Qhi)) {
                        return Qhi(str, i, i2);
                    }
                    byte[] bytes = str.substring(i, i2).getBytes(charset);
                    return cJ(bytes, 0, bytes.length);
                }
                throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
            }
            throw new IllegalAccessError("beginIndex < 0: ".concat(String.valueOf(i)));
        }
        throw new IllegalArgumentException("string == null");
    }

    public Qhi cJ(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = i2;
        WAv.Qhi(bArr.length, i, j);
        int i3 = i2 + i;
        while (i < i3) {
            Tgh ac2 = ac(1);
            int min = Math.min(i3 - i, 8192 - ac2.ac);
            System.arraycopy(bArr, i, ac2.Qhi, ac2.ac, min);
            i += min;
            ac2.ac += min;
        }
        this.cJ += j;
        return this;
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("source == null");
        }
        int remaining = byteBuffer.remaining();
        int i = remaining;
        while (i > 0) {
            Tgh ac2 = ac(1);
            int min = Math.min(i, 8192 - ac2.ac);
            byteBuffer.get(ac2.Qhi, ac2.ac, min);
            i -= min;
            ac2.ac += min;
        }
        this.cJ += remaining;
        return remaining;
    }

    public Qhi cJ(int i) {
        Tgh ac2 = ac(1);
        byte[] bArr = ac2.Qhi;
        int i2 = ac2.ac;
        ac2.ac = i2 + 1;
        bArr[i2] = (byte) i;
        this.cJ++;
        return this;
    }

    public Qhi cJ(long j) {
        if (j == 0) {
            return cJ(48);
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        Tgh ac2 = ac(numberOfTrailingZeros);
        byte[] bArr = ac2.Qhi;
        int i = ac2.ac;
        for (int i2 = (ac2.ac + numberOfTrailingZeros) - 1; i2 >= i; i2--) {
            bArr[i2] = ac[(int) (15 & j)];
            j >>>= 4;
        }
        ac2.ac += numberOfTrailingZeros;
        this.cJ += numberOfTrailingZeros;
        return this;
    }

    Tgh ac(int i) {
        if (i <= 0 || i > 8192) {
            throw new IllegalArgumentException();
        }
        Tgh tgh = this.Qhi;
        if (tgh == null) {
            Tgh Qhi = ROR.Qhi();
            this.Qhi = Qhi;
            Qhi.ROR = Qhi;
            Qhi.Tgh = Qhi;
            return Qhi;
        }
        Tgh tgh2 = tgh.ROR;
        return (tgh2.ac + i > 8192 || !tgh2.fl) ? tgh2.Qhi(ROR.Qhi()) : tgh2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Qhi) {
            Qhi qhi = (Qhi) obj;
            long j = this.cJ;
            if (j != qhi.cJ) {
                return false;
            }
            long j2 = 0;
            if (j == 0) {
                return true;
            }
            Tgh tgh = this.Qhi;
            Tgh tgh2 = qhi.Qhi;
            int i = tgh.cJ;
            int i2 = tgh2.cJ;
            while (j2 < this.cJ) {
                long min = Math.min(tgh.ac - i, tgh2.ac - i2);
                int i3 = 0;
                while (i3 < min) {
                    int i4 = i + 1;
                    int i5 = i2 + 1;
                    if (tgh.Qhi[i] != tgh2.Qhi[i2]) {
                        return false;
                    }
                    i3++;
                    i = i4;
                    i2 = i5;
                }
                if (i == tgh.ac) {
                    tgh = tgh.Tgh;
                    i = tgh.cJ;
                }
                if (i2 == tgh2.ac) {
                    tgh2 = tgh2.Tgh;
                    i2 = tgh2.cJ;
                }
                j2 += min;
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        Tgh tgh = this.Qhi;
        if (tgh == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = tgh.ac;
            for (int i3 = tgh.cJ; i3 < i2; i3++) {
                i = (i * 31) + tgh.Qhi[i3];
            }
            tgh = tgh.Tgh;
        } while (tgh != this.Qhi);
        return i;
    }

    public String toString() {
        return fl().toString();
    }

    /* renamed from: CJ */
    public Qhi clone() {
        Qhi qhi = new Qhi();
        if (this.cJ == 0) {
            return qhi;
        }
        Tgh Qhi = this.Qhi.Qhi();
        qhi.Qhi = Qhi;
        Qhi.ROR = Qhi;
        Qhi.Tgh = Qhi;
        Tgh tgh = this.Qhi;
        while (true) {
            tgh = tgh.Tgh;
            if (tgh != this.Qhi) {
                qhi.Qhi.ROR.Qhi(tgh.Qhi());
            } else {
                qhi.cJ = this.cJ;
                return qhi;
            }
        }
    }

    public final fl fl() {
        long j = this.cJ;
        if (j > 2147483647L) {
            throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.cJ);
        }
        return CJ((int) j);
    }

    public final fl CJ(int i) {
        if (i == 0) {
            return fl.ac;
        }
        return new Sf(this, i);
    }
}

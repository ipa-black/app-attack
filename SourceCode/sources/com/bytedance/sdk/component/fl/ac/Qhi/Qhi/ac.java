package com.bytedance.sdk.component.fl.ac.Qhi.Qhi;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
/* compiled from: StrictLineReader.java */
/* loaded from: classes2.dex */
class ac implements Closeable {
    private int CJ;
    private final InputStream Qhi;
    private byte[] ac;
    private final Charset cJ;
    private int fl;

    public ac(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    public ac(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        }
        if (!charset.equals(fl.Qhi)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.Qhi = inputStream;
        this.cJ = charset;
        this.ac = new byte[i];
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.Qhi) {
            if (this.ac != null) {
                this.ac = null;
                this.Qhi.close();
            }
        }
    }

    public String Qhi() throws IOException {
        int i;
        byte[] bArr;
        int i2;
        synchronized (this.Qhi) {
            if (this.ac == null) {
                throw new IOException("LineReader is closed");
            }
            if (this.CJ >= this.fl) {
                ac();
            }
            for (int i3 = this.CJ; i3 != this.fl; i3++) {
                byte[] bArr2 = this.ac;
                if (bArr2[i3] == 10) {
                    if (i3 != this.CJ) {
                        i2 = i3 - 1;
                        if (bArr2[i2] == 13) {
                            byte[] bArr3 = this.ac;
                            int i4 = this.CJ;
                            String str = new String(bArr3, i4, i2 - i4, this.cJ.name());
                            this.CJ = i3 + 1;
                            return str;
                        }
                    }
                    i2 = i3;
                    byte[] bArr32 = this.ac;
                    int i42 = this.CJ;
                    String str2 = new String(bArr32, i42, i2 - i42, this.cJ.name());
                    this.CJ = i3 + 1;
                    return str2;
                }
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((this.fl - this.CJ) + 80) { // from class: com.bytedance.sdk.component.fl.ac.Qhi.Qhi.ac.1
                @Override // java.io.ByteArrayOutputStream
                public String toString() {
                    try {
                        return new String(this.buf, 0, (this.count <= 0 || this.buf[this.count + (-1)] != 13) ? this.count : this.count - 1, ac.this.cJ.name());
                    } catch (UnsupportedEncodingException e2) {
                        throw new AssertionError(e2);
                    }
                }
            };
            loop1: while (true) {
                byte[] bArr4 = this.ac;
                int i5 = this.CJ;
                byteArrayOutputStream.write(bArr4, i5, this.fl - i5);
                this.fl = -1;
                ac();
                i = this.CJ;
                while (i != this.fl) {
                    bArr = this.ac;
                    if (bArr[i] == 10) {
                        break loop1;
                    }
                    i++;
                }
            }
            int i6 = this.CJ;
            if (i != i6) {
                byteArrayOutputStream.write(bArr, i6, i - i6);
            }
            this.CJ = i + 1;
            return byteArrayOutputStream.toString();
        }
    }

    public boolean cJ() {
        return this.fl == -1;
    }

    private void ac() throws IOException {
        InputStream inputStream = this.Qhi;
        byte[] bArr = this.ac;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read == -1) {
            throw new EOFException();
        }
        this.CJ = 0;
        this.fl = read;
    }
}

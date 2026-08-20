package com.pgl.ssdk;

import java.io.IOException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* compiled from: ApkSigningBlockUtilsLite.java */
/* renamed from: com.pgl.ssdk.g  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C1376g {
    static {
        "0123456789abcdef".toCharArray();
    }

    public static C1377h a(InterfaceC1383n interfaceC1383n, C1385p c1385p, int i) throws IOException, C1378i {
        try {
            C1373d a2 = AbstractC1372c.a(interfaceC1383n, c1385p);
            long b2 = a2.b();
            C1380k c1380k = (C1380k) a2.a();
            ByteBuffer a3 = c1380k.a(0L, (int) c1380k.a());
            a3.order(ByteOrder.LITTLE_ENDIAN);
            if (a3.order() == ByteOrder.LITTLE_ENDIAN) {
                int capacity = a3.capacity() - 24;
                if (capacity >= 8) {
                    int capacity2 = a3.capacity();
                    if (capacity <= a3.capacity()) {
                        int limit = a3.limit();
                        int position = a3.position();
                        int i2 = 0;
                        try {
                            a3.position(0);
                            a3.limit(capacity);
                            a3.position(8);
                            ByteBuffer slice = a3.slice();
                            slice.order(a3.order());
                            while (slice.hasRemaining()) {
                                i2++;
                                if (slice.remaining() >= 8) {
                                    long j = slice.getLong();
                                    if (j >= 4 && j <= 2147483647L) {
                                        int i3 = (int) j;
                                        int position2 = slice.position() + i3;
                                        if (i3 <= slice.remaining()) {
                                            if (slice.getInt() == i) {
                                                return new C1377h(a(slice, i3 - 4), b2, c1385p.a(), c1385p.e(), c1385p.d());
                                            }
                                            slice.position(position2);
                                        } else {
                                            throw new C1378i("APK Signing Block entry #" + i2 + " size out of range: " + i3 + ", available: " + slice.remaining());
                                        }
                                    } else {
                                        throw new C1378i("APK Signing Block entry #" + i2 + " size out of range: " + j);
                                    }
                                } else {
                                    throw new C1378i("Insufficient data to read size of APK Signing Block entry #".concat(String.valueOf(i2)));
                                }
                            }
                            throw new C1378i("No APK Signature Scheme block in APK Signing Block with ID: ".concat(String.valueOf(i)));
                        } finally {
                            a3.position(0);
                            a3.limit(limit);
                            a3.position(position);
                        }
                    }
                    throw new IllegalArgumentException("end > capacity: " + capacity + " > " + capacity2);
                }
                throw new IllegalArgumentException("end < start: " + capacity + " < 8");
            }
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        } catch (C1371b e2) {
            throw new C1378i(e2.getMessage(), e2);
        }
    }

    public static byte[] b(ByteBuffer byteBuffer) throws C1370a {
        int i = byteBuffer.getInt();
        if (i >= 0) {
            if (i <= byteBuffer.remaining()) {
                byte[] bArr = new byte[i];
                byteBuffer.get(bArr);
                return bArr;
            }
            throw new C1370a("Underflow while reading length-prefixed value. Length: " + i + ", available: " + byteBuffer.remaining());
        }
        throw new C1370a("Negative length");
    }

    private static ByteBuffer a(ByteBuffer byteBuffer, int i) {
        if (i >= 0) {
            int limit = byteBuffer.limit();
            int position = byteBuffer.position();
            int i2 = i + position;
            if (i2 >= position && i2 <= limit) {
                byteBuffer.limit(i2);
                try {
                    ByteBuffer slice = byteBuffer.slice();
                    slice.order(byteBuffer.order());
                    byteBuffer.position(i2);
                    return slice;
                } finally {
                    byteBuffer.limit(limit);
                }
            }
            throw new BufferUnderflowException();
        }
        throw new IllegalArgumentException("size: ".concat(String.valueOf(i)));
    }

    public static ByteBuffer a(ByteBuffer byteBuffer) throws C1370a {
        if (byteBuffer.remaining() >= 4) {
            int i = byteBuffer.getInt();
            if (i >= 0) {
                if (i <= byteBuffer.remaining()) {
                    return a(byteBuffer, i);
                }
                throw new C1370a("Length-prefixed field longer than remaining buffer. Field length: " + i + ", remaining: " + byteBuffer.remaining());
            }
            throw new IllegalArgumentException("Negative length");
        }
        throw new C1370a("Remaining buffer too short to contain length of length-prefixed field. Remaining: " + byteBuffer.remaining());
    }
}

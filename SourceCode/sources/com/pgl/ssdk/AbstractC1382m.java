package com.pgl.ssdk;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.UShort;
import org.apache.commons.collections.primitives.ArrayUnsignedIntList;
/* compiled from: ZipUtils.java */
/* renamed from: com.pgl.ssdk.m  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC1382m {
    public static C1381l<ByteBuffer, Long> a(InterfaceC1383n interfaceC1383n) throws IOException {
        C1380k c1380k = (C1380k) interfaceC1383n;
        if (c1380k.a() < 22) {
            return null;
        }
        C1381l<ByteBuffer, Long> a2 = a(c1380k, 0);
        return a2 != null ? a2 : a(c1380k, 65535);
    }

    public static long b(ByteBuffer byteBuffer) {
        a(byteBuffer);
        return byteBuffer.getInt(byteBuffer.position() + 16) & ArrayUnsignedIntList.MAX_VALUE;
    }

    public static long c(ByteBuffer byteBuffer) {
        a(byteBuffer);
        return byteBuffer.getInt(byteBuffer.position() + 12) & ArrayUnsignedIntList.MAX_VALUE;
    }

    public static int d(ByteBuffer byteBuffer) {
        a(byteBuffer);
        return byteBuffer.getShort(byteBuffer.position() + 10) & UShort.MAX_VALUE;
    }

    private static C1381l<ByteBuffer, Long> a(InterfaceC1383n interfaceC1383n, int i) throws IOException {
        int i2;
        if (i >= 0 && i <= 65535) {
            C1380k c1380k = (C1380k) interfaceC1383n;
            long a2 = c1380k.a();
            if (a2 < 22) {
                return null;
            }
            int min = ((int) Math.min(i, a2 - 22)) + 22;
            long j = a2 - min;
            ByteBuffer a3 = c1380k.a(j, min);
            a3.order(ByteOrder.LITTLE_ENDIAN);
            a(a3);
            int capacity = a3.capacity();
            if (capacity >= 22) {
                int i3 = capacity - 22;
                int min2 = Math.min(i3, 65535);
                for (int i4 = 0; i4 <= min2; i4++) {
                    i2 = i3 - i4;
                    if (a3.getInt(i2) == 101010256 && (a3.getShort(i2 + 20) & UShort.MAX_VALUE) == i4) {
                        break;
                    }
                }
            }
            i2 = -1;
            if (i2 == -1) {
                return null;
            }
            a3.position(i2);
            ByteBuffer slice = a3.slice();
            slice.order(ByteOrder.LITTLE_ENDIAN);
            return new C1381l<>(slice, Long.valueOf(j + i2));
        }
        throw new IllegalArgumentException("maxCommentSize: ".concat(String.valueOf(i)));
    }

    static void a(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }
}

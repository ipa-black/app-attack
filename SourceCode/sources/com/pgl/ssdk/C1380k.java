package com.pgl.ssdk;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
/* compiled from: FileChannelDataSource.java */
/* renamed from: com.pgl.ssdk.k  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C1380k implements InterfaceC1383n {

    /* renamed from: a  reason: collision with root package name */
    private final FileChannel f12229a;

    /* renamed from: b  reason: collision with root package name */
    private final long f12230b;

    /* renamed from: c  reason: collision with root package name */
    private final long f12231c;

    public C1380k(FileChannel fileChannel, long j, long j2) {
        if (j < 0) {
            throw new IndexOutOfBoundsException("offset: ".concat(String.valueOf(j2)));
        }
        if (j2 >= 0) {
            this.f12229a = fileChannel;
            this.f12230b = j;
            this.f12231c = j2;
            return;
        }
        throw new IndexOutOfBoundsException("size: ".concat(String.valueOf(j2)));
    }

    public long a() {
        long j = this.f12231c;
        if (j == -1) {
            try {
                return this.f12229a.size();
            } catch (IOException unused) {
                return 0L;
            }
        }
        return j;
    }

    public InterfaceC1383n a(long j, long j2) {
        long a2 = a();
        a(j, j2, a2);
        return (j == 0 && j2 == a2) ? this : new C1380k(this.f12229a, this.f12230b + j, j2);
    }

    public ByteBuffer a(long j, int i) throws IOException {
        int read;
        if (i >= 0) {
            ByteBuffer allocate = ByteBuffer.allocate(i);
            a(j, i, a());
            if (i != 0) {
                if (i <= allocate.remaining()) {
                    long j2 = this.f12230b + j;
                    int limit = allocate.limit();
                    try {
                        allocate.limit(allocate.position() + i);
                        while (i > 0) {
                            synchronized (this.f12229a) {
                                this.f12229a.position(j2);
                                read = this.f12229a.read(allocate);
                            }
                            j2 += read;
                            i -= read;
                        }
                    } finally {
                        allocate.limit(limit);
                    }
                } else {
                    throw new BufferOverflowException();
                }
            }
            allocate.flip();
            return allocate;
        }
        throw new IndexOutOfBoundsException("size: ".concat(String.valueOf(i)));
    }

    private static void a(long j, long j2, long j3) {
        if (j < 0) {
            throw new IndexOutOfBoundsException("offset: ".concat(String.valueOf(j)));
        }
        if (j2 < 0) {
            throw new IndexOutOfBoundsException("size: ".concat(String.valueOf(j2)));
        }
        if (j > j3) {
            throw new IndexOutOfBoundsException("offset (" + j + ") > source size (" + j3 + ")");
        }
        long j4 = j + j2;
        if (j4 < j) {
            throw new IndexOutOfBoundsException("offset (" + j + ") + size (" + j2 + ") overflow");
        }
        if (j4 > j3) {
            throw new IndexOutOfBoundsException("offset (" + j + ") + size (" + j2 + ") > source size (" + j3 + ")");
        }
    }
}

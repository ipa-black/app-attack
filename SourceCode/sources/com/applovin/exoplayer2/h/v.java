package com.applovin.exoplayer2.h;

import com.applovin.exoplayer2.e.x;
import com.applovin.exoplayer2.h.w;
import com.applovin.exoplayer2.l.ai;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class v {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.exoplayer2.k.b f3135a;

    /* renamed from: b  reason: collision with root package name */
    private final int f3136b;

    /* renamed from: c  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.y f3137c;

    /* renamed from: d  reason: collision with root package name */
    private a f3138d;

    /* renamed from: e  reason: collision with root package name */
    private a f3139e;

    /* renamed from: f  reason: collision with root package name */
    private a f3140f;

    /* renamed from: g  reason: collision with root package name */
    private long f3141g;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f3142a;

        /* renamed from: b  reason: collision with root package name */
        public final long f3143b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f3144c;

        /* renamed from: d  reason: collision with root package name */
        public com.applovin.exoplayer2.k.a f3145d;

        /* renamed from: e  reason: collision with root package name */
        public a f3146e;

        public a(long j, int i) {
            this.f3142a = j;
            this.f3143b = j + i;
        }

        public int a(long j) {
            return ((int) (j - this.f3142a)) + this.f3145d.f3587b;
        }

        public a a() {
            this.f3145d = null;
            a aVar = this.f3146e;
            this.f3146e = null;
            return aVar;
        }

        public void a(com.applovin.exoplayer2.k.a aVar, a aVar2) {
            this.f3145d = aVar;
            this.f3146e = aVar2;
            this.f3144c = true;
        }
    }

    public v(com.applovin.exoplayer2.k.b bVar) {
        this.f3135a = bVar;
        int c2 = bVar.c();
        this.f3136b = c2;
        this.f3137c = new com.applovin.exoplayer2.l.y(32);
        a aVar = new a(0L, c2);
        this.f3138d = aVar;
        this.f3139e = aVar;
        this.f3140f = aVar;
    }

    private int a(int i) {
        if (!this.f3140f.f3144c) {
            this.f3140f.a(this.f3135a.a(), new a(this.f3140f.f3143b, this.f3136b));
        }
        return Math.min(i, (int) (this.f3140f.f3143b - this.f3141g));
    }

    private static a a(a aVar, long j) {
        while (j >= aVar.f3143b) {
            aVar = aVar.f3146e;
        }
        return aVar;
    }

    private static a a(a aVar, long j, ByteBuffer byteBuffer, int i) {
        a a2 = a(aVar, j);
        while (i > 0) {
            int min = Math.min(i, (int) (a2.f3143b - j));
            byteBuffer.put(a2.f3145d.f3586a, a2.a(j), min);
            i -= min;
            j += min;
            if (j == a2.f3143b) {
                a2 = a2.f3146e;
            }
        }
        return a2;
    }

    private static a a(a aVar, long j, byte[] bArr, int i) {
        a a2 = a(aVar, j);
        int i2 = i;
        while (i2 > 0) {
            int min = Math.min(i2, (int) (a2.f3143b - j));
            System.arraycopy(a2.f3145d.f3586a, a2.a(j), bArr, i - i2, min);
            i2 -= min;
            j += min;
            if (j == a2.f3143b) {
                a2 = a2.f3146e;
            }
        }
        return a2;
    }

    private static a a(a aVar, com.applovin.exoplayer2.c.g gVar, w.a aVar2, com.applovin.exoplayer2.l.y yVar) {
        long j;
        ByteBuffer byteBuffer;
        if (gVar.g()) {
            aVar = b(aVar, gVar, aVar2, yVar);
        }
        if (gVar.e()) {
            yVar.a(4);
            a a2 = a(aVar, aVar2.f3156b, yVar.d(), 4);
            int w = yVar.w();
            aVar2.f3156b += 4;
            aVar2.f3155a -= 4;
            gVar.f(w);
            aVar = a(a2, aVar2.f3156b, gVar.f1675b, w);
            aVar2.f3156b += w;
            aVar2.f3155a -= w;
            gVar.e(aVar2.f3155a);
            j = aVar2.f3156b;
            byteBuffer = gVar.f1678e;
        } else {
            gVar.f(aVar2.f3155a);
            j = aVar2.f3156b;
            byteBuffer = gVar.f1675b;
        }
        return a(aVar, j, byteBuffer, aVar2.f3155a);
    }

    private void a(a aVar) {
        if (aVar.f3144c) {
            int i = (this.f3140f.f3144c ? 1 : 0) + (((int) (this.f3140f.f3142a - aVar.f3142a)) / this.f3136b);
            com.applovin.exoplayer2.k.a[] aVarArr = new com.applovin.exoplayer2.k.a[i];
            for (int i2 = 0; i2 < i; i2++) {
                aVarArr[i2] = aVar.f3145d;
                aVar = aVar.a();
            }
            this.f3135a.a(aVarArr);
        }
    }

    private static a b(a aVar, com.applovin.exoplayer2.c.g gVar, w.a aVar2, com.applovin.exoplayer2.l.y yVar) {
        long j = aVar2.f3156b;
        int i = 1;
        yVar.a(1);
        a a2 = a(aVar, j, yVar.d(), 1);
        long j2 = j + 1;
        byte b2 = yVar.d()[0];
        boolean z = (b2 & 128) != 0;
        int i2 = b2 & Byte.MAX_VALUE;
        com.applovin.exoplayer2.c.c cVar = gVar.f1674a;
        if (cVar.f1656a == null) {
            cVar.f1656a = new byte[16];
        } else {
            Arrays.fill(cVar.f1656a, (byte) 0);
        }
        a a3 = a(a2, j2, cVar.f1656a, i2);
        long j3 = j2 + i2;
        if (z) {
            yVar.a(2);
            a3 = a(a3, j3, yVar.d(), 2);
            j3 += 2;
            i = yVar.i();
        }
        int i3 = i;
        int[] iArr = cVar.f1659d;
        if (iArr == null || iArr.length < i3) {
            iArr = new int[i3];
        }
        int[] iArr2 = iArr;
        int[] iArr3 = cVar.f1660e;
        if (iArr3 == null || iArr3.length < i3) {
            iArr3 = new int[i3];
        }
        int[] iArr4 = iArr3;
        if (z) {
            int i4 = i3 * 6;
            yVar.a(i4);
            a3 = a(a3, j3, yVar.d(), i4);
            j3 += i4;
            yVar.d(0);
            for (int i5 = 0; i5 < i3; i5++) {
                iArr2[i5] = yVar.i();
                iArr4[i5] = yVar.w();
            }
        } else {
            iArr2[0] = 0;
            iArr4[0] = aVar2.f3155a - ((int) (j3 - aVar2.f3156b));
        }
        x.a aVar3 = (x.a) ai.a(aVar2.f3157c);
        cVar.a(i3, iArr2, iArr4, aVar3.f2716b, cVar.f1656a, aVar3.f2715a, aVar3.f2717c, aVar3.f2718d);
        int i6 = (int) (j3 - aVar2.f3156b);
        aVar2.f3156b += i6;
        aVar2.f3155a -= i6;
        return a3;
    }

    private void b(int i) {
        long j = this.f3141g + i;
        this.f3141g = j;
        if (j == this.f3140f.f3143b) {
            this.f3140f = this.f3140f.f3146e;
        }
    }

    public int a(com.applovin.exoplayer2.k.g gVar, int i, boolean z) throws IOException {
        int a2 = gVar.a(this.f3140f.f3145d.f3586a, this.f3140f.a(this.f3141g), a(i));
        if (a2 != -1) {
            b(a2);
            return a2;
        } else if (z) {
            return -1;
        } else {
            throw new EOFException();
        }
    }

    public void a() {
        a(this.f3138d);
        a aVar = new a(0L, this.f3136b);
        this.f3138d = aVar;
        this.f3139e = aVar;
        this.f3140f = aVar;
        this.f3141g = 0L;
        this.f3135a.b();
    }

    public void a(long j) {
        if (j == -1) {
            return;
        }
        while (j >= this.f3138d.f3143b) {
            this.f3135a.a(this.f3138d.f3145d);
            this.f3138d = this.f3138d.a();
        }
        if (this.f3139e.f3142a < this.f3138d.f3142a) {
            this.f3139e = this.f3138d;
        }
    }

    public void a(com.applovin.exoplayer2.c.g gVar, w.a aVar) {
        this.f3139e = a(this.f3139e, gVar, aVar, this.f3137c);
    }

    public void a(com.applovin.exoplayer2.l.y yVar, int i) {
        while (i > 0) {
            int a2 = a(i);
            yVar.a(this.f3140f.f3145d.f3586a, this.f3140f.a(this.f3141g), a2);
            i -= a2;
            b(a2);
        }
    }

    public void b() {
        this.f3139e = this.f3138d;
    }

    public void b(com.applovin.exoplayer2.c.g gVar, w.a aVar) {
        a(this.f3139e, gVar, aVar, this.f3137c);
    }

    public long c() {
        return this.f3141g;
    }
}

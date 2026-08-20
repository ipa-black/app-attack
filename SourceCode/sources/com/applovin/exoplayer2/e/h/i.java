package com.applovin.exoplayer2.e.h;

import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.e.h.h;
import com.applovin.exoplayer2.e.z;
import com.applovin.exoplayer2.l.y;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: classes.dex */
final class i extends h {

    /* renamed from: a  reason: collision with root package name */
    private a f2392a;

    /* renamed from: b  reason: collision with root package name */
    private int f2393b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f2394c;

    /* renamed from: d  reason: collision with root package name */
    private z.d f2395d;

    /* renamed from: e  reason: collision with root package name */
    private z.b f2396e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final z.d f2397a;

        /* renamed from: b  reason: collision with root package name */
        public final z.b f2398b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f2399c;

        /* renamed from: d  reason: collision with root package name */
        public final z.c[] f2400d;

        /* renamed from: e  reason: collision with root package name */
        public final int f2401e;

        public a(z.d dVar, z.b bVar, byte[] bArr, z.c[] cVarArr, int i) {
            this.f2397a = dVar;
            this.f2398b = bVar;
            this.f2399c = bArr;
            this.f2400d = cVarArr;
            this.f2401e = i;
        }
    }

    static int a(byte b2, int i, int i2) {
        return (b2 >> i2) & (255 >>> (8 - i));
    }

    private static int a(byte b2, a aVar) {
        return !aVar.f2400d[a(b2, aVar.f2401e, 1)].f2731a ? aVar.f2397a.f2741g : aVar.f2397a.f2742h;
    }

    static void a(y yVar, long j) {
        if (yVar.e() < yVar.b() + 4) {
            yVar.a(Arrays.copyOf(yVar.d(), yVar.b() + 4));
        } else {
            yVar.c(yVar.b() + 4);
        }
        byte[] d2 = yVar.d();
        d2[yVar.b() - 4] = (byte) (j & 255);
        d2[yVar.b() - 3] = (byte) ((j >>> 8) & 255);
        d2[yVar.b() - 2] = (byte) ((j >>> 16) & 255);
        d2[yVar.b() - 1] = (byte) ((j >>> 24) & 255);
    }

    public static boolean a(y yVar) {
        try {
            return z.a(1, yVar, true);
        } catch (ai unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.e.h.h
    public void a(boolean z) {
        super.a(z);
        if (z) {
            this.f2392a = null;
            this.f2395d = null;
            this.f2396e = null;
        }
        this.f2393b = 0;
        this.f2394c = false;
    }

    @Override // com.applovin.exoplayer2.e.h.h
    protected boolean a(y yVar, long j, h.a aVar) throws IOException {
        if (this.f2392a != null) {
            com.applovin.exoplayer2.l.a.b(aVar.f2390a);
            return false;
        }
        a c2 = c(yVar);
        this.f2392a = c2;
        if (c2 == null) {
            return true;
        }
        z.d dVar = c2.f2397a;
        ArrayList arrayList = new ArrayList();
        arrayList.add(dVar.j);
        arrayList.add(c2.f2399c);
        aVar.f2390a = new v.a().f(MimeTypes.AUDIO_VORBIS).d(dVar.f2739e).e(dVar.f2738d).k(dVar.f2736b).l(dVar.f2737c).a(arrayList).a();
        return true;
    }

    @Override // com.applovin.exoplayer2.e.h.h
    protected long b(y yVar) {
        if ((yVar.d()[0] & 1) == 1) {
            return -1L;
        }
        int a2 = a(yVar.d()[0], (a) com.applovin.exoplayer2.l.a.a(this.f2392a));
        long j = this.f2394c ? (this.f2393b + a2) / 4 : 0;
        a(yVar, j);
        this.f2394c = true;
        this.f2393b = a2;
        return j;
    }

    a c(y yVar) throws IOException {
        z.d dVar = this.f2395d;
        if (dVar == null) {
            this.f2395d = z.a(yVar);
            return null;
        }
        z.b bVar = this.f2396e;
        if (bVar == null) {
            this.f2396e = z.b(yVar);
            return null;
        }
        byte[] bArr = new byte[yVar.b()];
        System.arraycopy(yVar.d(), 0, bArr, 0, yVar.b());
        z.c[] a2 = z.a(yVar, dVar.f2736b);
        return new a(dVar, bVar, bArr, a2, z.a(a2.length - 1));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.e.h.h
    public void c(long j) {
        super.c(j);
        this.f2394c = j != 0;
        z.d dVar = this.f2395d;
        this.f2393b = dVar != null ? dVar.f2741g : 0;
    }
}

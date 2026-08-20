package com.applovin.exoplayer2.i.c;

import android.graphics.Bitmap;
import com.applovin.exoplayer2.i.a;
import com.applovin.exoplayer2.i.d;
import com.applovin.exoplayer2.i.f;
import com.applovin.exoplayer2.i.h;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.y;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.zip.Inflater;
/* loaded from: classes.dex */
public final class a extends d {

    /* renamed from: a  reason: collision with root package name */
    private final y f3289a;

    /* renamed from: b  reason: collision with root package name */
    private final y f3290b;

    /* renamed from: c  reason: collision with root package name */
    private final C0050a f3291c;

    /* renamed from: d  reason: collision with root package name */
    private Inflater f3292d;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.applovin.exoplayer2.i.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0050a {

        /* renamed from: a  reason: collision with root package name */
        private final y f3293a = new y();

        /* renamed from: b  reason: collision with root package name */
        private final int[] f3294b = new int[256];

        /* renamed from: c  reason: collision with root package name */
        private boolean f3295c;

        /* renamed from: d  reason: collision with root package name */
        private int f3296d;

        /* renamed from: e  reason: collision with root package name */
        private int f3297e;

        /* renamed from: f  reason: collision with root package name */
        private int f3298f;

        /* renamed from: g  reason: collision with root package name */
        private int f3299g;

        /* renamed from: h  reason: collision with root package name */
        private int f3300h;
        private int i;

        /* JADX INFO: Access modifiers changed from: private */
        public void a(y yVar, int i) {
            if (i % 5 != 2) {
                return;
            }
            yVar.e(2);
            Arrays.fill(this.f3294b, 0);
            int i2 = i / 5;
            for (int i3 = 0; i3 < i2; i3++) {
                int h2 = yVar.h();
                int h3 = yVar.h();
                int h4 = yVar.h();
                int h5 = yVar.h();
                double d2 = h3;
                double d3 = h4 - 128;
                double d4 = h5 - 128;
                this.f3294b[h2] = (ai.a((int) ((d2 - (0.34414d * d4)) - (d3 * 0.71414d)), 0, 255) << 8) | (yVar.h() << 24) | (ai.a((int) ((1.402d * d3) + d2), 0, 255) << 16) | ai.a((int) (d2 + (d4 * 1.772d)), 0, 255);
            }
            this.f3295c = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(y yVar, int i) {
            int m;
            if (i < 4) {
                return;
            }
            yVar.e(3);
            int i2 = i - 4;
            if ((yVar.h() & 128) != 0) {
                if (i2 < 7 || (m = yVar.m()) < 4) {
                    return;
                }
                this.f3300h = yVar.i();
                this.i = yVar.i();
                this.f3293a.a(m - 4);
                i2 = i - 11;
            }
            int c2 = this.f3293a.c();
            int b2 = this.f3293a.b();
            if (c2 >= b2 || i2 <= 0) {
                return;
            }
            int min = Math.min(i2, b2 - c2);
            yVar.a(this.f3293a.d(), c2, min);
            this.f3293a.d(c2 + min);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c(y yVar, int i) {
            if (i < 19) {
                return;
            }
            this.f3296d = yVar.i();
            this.f3297e = yVar.i();
            yVar.e(11);
            this.f3298f = yVar.i();
            this.f3299g = yVar.i();
        }

        public com.applovin.exoplayer2.i.a a() {
            int i;
            if (this.f3296d == 0 || this.f3297e == 0 || this.f3300h == 0 || this.i == 0 || this.f3293a.b() == 0 || this.f3293a.c() != this.f3293a.b() || !this.f3295c) {
                return null;
            }
            this.f3293a.d(0);
            int i2 = this.f3300h * this.i;
            int[] iArr = new int[i2];
            int i3 = 0;
            while (i3 < i2) {
                int h2 = this.f3293a.h();
                if (h2 != 0) {
                    i = i3 + 1;
                    iArr[i3] = this.f3294b[h2];
                } else {
                    int h3 = this.f3293a.h();
                    if (h3 != 0) {
                        i = ((h3 & 64) == 0 ? h3 & 63 : ((h3 & 63) << 8) | this.f3293a.h()) + i3;
                        Arrays.fill(iArr, i3, i, (h3 & 128) == 0 ? 0 : this.f3294b[this.f3293a.h()]);
                    }
                }
                i3 = i;
            }
            return new a.C0045a().a(Bitmap.createBitmap(iArr, this.f3300h, this.i, Bitmap.Config.ARGB_8888)).a(this.f3298f / this.f3296d).b(0).a(this.f3299g / this.f3297e, 0).a(0).b(this.f3300h / this.f3296d).c(this.i / this.f3297e).e();
        }

        public void b() {
            this.f3296d = 0;
            this.f3297e = 0;
            this.f3298f = 0;
            this.f3299g = 0;
            this.f3300h = 0;
            this.i = 0;
            this.f3293a.a(0);
            this.f3295c = false;
        }
    }

    public a() {
        super("PgsDecoder");
        this.f3289a = new y();
        this.f3290b = new y();
        this.f3291c = new C0050a();
    }

    private static com.applovin.exoplayer2.i.a a(y yVar, C0050a c0050a) {
        int b2 = yVar.b();
        int h2 = yVar.h();
        int i = yVar.i();
        int c2 = yVar.c() + i;
        com.applovin.exoplayer2.i.a aVar = null;
        if (c2 > b2) {
            yVar.d(b2);
            return null;
        }
        if (h2 != 128) {
            switch (h2) {
                case 20:
                    c0050a.a(yVar, i);
                    break;
                case 21:
                    c0050a.b(yVar, i);
                    break;
                case 22:
                    c0050a.c(yVar, i);
                    break;
            }
        } else {
            aVar = c0050a.a();
            c0050a.b();
        }
        yVar.d(c2);
        return aVar;
    }

    private void a(y yVar) {
        if (yVar.a() <= 0 || yVar.f() != 120) {
            return;
        }
        if (this.f3292d == null) {
            this.f3292d = new Inflater();
        }
        if (ai.a(yVar, this.f3290b, this.f3292d)) {
            yVar.a(this.f3290b.d(), this.f3290b.b());
        }
    }

    @Override // com.applovin.exoplayer2.i.d
    protected f a(byte[] bArr, int i, boolean z) throws h {
        this.f3289a.a(bArr, i);
        a(this.f3289a);
        this.f3291c.b();
        ArrayList arrayList = new ArrayList();
        while (this.f3289a.a() >= 3) {
            com.applovin.exoplayer2.i.a a2 = a(this.f3289a, this.f3291c);
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        return new b(Collections.unmodifiableList(arrayList));
    }
}

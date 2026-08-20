package com.applovin.exoplayer2.i.b;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import androidx.core.view.ViewCompat;
import com.applovin.exoplayer2.i.a;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.x;
import com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f3231a = {0, 7, 8, 15};

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f3232b = {0, 119, -120, -1};

    /* renamed from: c  reason: collision with root package name */
    private static final byte[] f3233c = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};

    /* renamed from: d  reason: collision with root package name */
    private final Paint f3234d;

    /* renamed from: e  reason: collision with root package name */
    private final Paint f3235e;

    /* renamed from: f  reason: collision with root package name */
    private final Canvas f3236f;

    /* renamed from: g  reason: collision with root package name */
    private final C0049b f3237g;

    /* renamed from: h  reason: collision with root package name */
    private final a f3238h;
    private final h i;
    private Bitmap j;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f3239a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f3240b;

        /* renamed from: c  reason: collision with root package name */
        public final int[] f3241c;

        /* renamed from: d  reason: collision with root package name */
        public final int[] f3242d;

        public a(int i, int[] iArr, int[] iArr2, int[] iArr3) {
            this.f3239a = i;
            this.f3240b = iArr;
            this.f3241c = iArr2;
            this.f3242d = iArr3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.applovin.exoplayer2.i.b.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0049b {

        /* renamed from: a  reason: collision with root package name */
        public final int f3243a;

        /* renamed from: b  reason: collision with root package name */
        public final int f3244b;

        /* renamed from: c  reason: collision with root package name */
        public final int f3245c;

        /* renamed from: d  reason: collision with root package name */
        public final int f3246d;

        /* renamed from: e  reason: collision with root package name */
        public final int f3247e;

        /* renamed from: f  reason: collision with root package name */
        public final int f3248f;

        public C0049b(int i, int i2, int i3, int i4, int i5, int i6) {
            this.f3243a = i;
            this.f3244b = i2;
            this.f3245c = i3;
            this.f3246d = i4;
            this.f3247e = i5;
            this.f3248f = i6;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f3249a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f3250b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f3251c;

        /* renamed from: d  reason: collision with root package name */
        public final byte[] f3252d;

        public c(int i, boolean z, byte[] bArr, byte[] bArr2) {
            this.f3249a = i;
            this.f3250b = z;
            this.f3251c = bArr;
            this.f3252d = bArr2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final int f3253a;

        /* renamed from: b  reason: collision with root package name */
        public final int f3254b;

        /* renamed from: c  reason: collision with root package name */
        public final int f3255c;

        /* renamed from: d  reason: collision with root package name */
        public final SparseArray<e> f3256d;

        public d(int i, int i2, int i3, SparseArray<e> sparseArray) {
            this.f3253a = i;
            this.f3254b = i2;
            this.f3255c = i3;
            this.f3256d = sparseArray;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public final int f3257a;

        /* renamed from: b  reason: collision with root package name */
        public final int f3258b;

        public e(int i, int i2) {
            this.f3257a = i;
            this.f3258b = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        public final int f3259a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f3260b;

        /* renamed from: c  reason: collision with root package name */
        public final int f3261c;

        /* renamed from: d  reason: collision with root package name */
        public final int f3262d;

        /* renamed from: e  reason: collision with root package name */
        public final int f3263e;

        /* renamed from: f  reason: collision with root package name */
        public final int f3264f;

        /* renamed from: g  reason: collision with root package name */
        public final int f3265g;

        /* renamed from: h  reason: collision with root package name */
        public final int f3266h;
        public final int i;
        public final int j;
        public final SparseArray<g> k;

        public f(int i, boolean z, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, SparseArray<g> sparseArray) {
            this.f3259a = i;
            this.f3260b = z;
            this.f3261c = i2;
            this.f3262d = i3;
            this.f3263e = i4;
            this.f3264f = i5;
            this.f3265g = i6;
            this.f3266h = i7;
            this.i = i8;
            this.j = i9;
            this.k = sparseArray;
        }

        public void a(f fVar) {
            SparseArray<g> sparseArray = fVar.k;
            for (int i = 0; i < sparseArray.size(); i++) {
                this.k.put(sparseArray.keyAt(i), sparseArray.valueAt(i));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        public final int f3267a;

        /* renamed from: b  reason: collision with root package name */
        public final int f3268b;

        /* renamed from: c  reason: collision with root package name */
        public final int f3269c;

        /* renamed from: d  reason: collision with root package name */
        public final int f3270d;

        /* renamed from: e  reason: collision with root package name */
        public final int f3271e;

        /* renamed from: f  reason: collision with root package name */
        public final int f3272f;

        public g(int i, int i2, int i3, int i4, int i5, int i6) {
            this.f3267a = i;
            this.f3268b = i2;
            this.f3269c = i3;
            this.f3270d = i4;
            this.f3271e = i5;
            this.f3272f = i6;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class h {

        /* renamed from: a  reason: collision with root package name */
        public final int f3273a;

        /* renamed from: b  reason: collision with root package name */
        public final int f3274b;

        /* renamed from: c  reason: collision with root package name */
        public final SparseArray<f> f3275c = new SparseArray<>();

        /* renamed from: d  reason: collision with root package name */
        public final SparseArray<a> f3276d = new SparseArray<>();

        /* renamed from: e  reason: collision with root package name */
        public final SparseArray<c> f3277e = new SparseArray<>();

        /* renamed from: f  reason: collision with root package name */
        public final SparseArray<a> f3278f = new SparseArray<>();

        /* renamed from: g  reason: collision with root package name */
        public final SparseArray<c> f3279g = new SparseArray<>();

        /* renamed from: h  reason: collision with root package name */
        public C0049b f3280h;
        public d i;

        public h(int i, int i2) {
            this.f3273a = i;
            this.f3274b = i2;
        }

        public void a() {
            this.f3275c.clear();
            this.f3276d.clear();
            this.f3277e.clear();
            this.f3278f.clear();
            this.f3279g.clear();
            this.f3280h = null;
            this.i = null;
        }
    }

    public b(int i, int i2) {
        Paint paint = new Paint();
        this.f3234d = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.f3235e = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.f3236f = new Canvas();
        this.f3237g = new C0049b(AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, 575, 0, AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, 0, 575);
        this.f3238h = new a(0, b(), c(), d());
        this.i = new h(i, i2);
    }

    private static int a(int i, int i2, int i3, int i4) {
        return (i << 24) | (i2 << 16) | (i3 << 8) | i4;
    }

    private static int a(x xVar, int[] iArr, byte[] bArr, int i, int i2, Paint paint, Canvas canvas) {
        boolean z;
        int i3;
        int c2;
        int i4 = i;
        boolean z2 = false;
        while (true) {
            byte c3 = xVar.c(2);
            if (c3 != 0) {
                z = z2;
                i3 = 1;
            } else {
                if (xVar.e()) {
                    c2 = xVar.c(3) + 3;
                } else {
                    if (xVar.e()) {
                        z = z2;
                        i3 = 1;
                    } else {
                        int c4 = xVar.c(2);
                        if (c4 == 0) {
                            z = true;
                        } else if (c4 == 1) {
                            z = z2;
                            i3 = 2;
                        } else if (c4 == 2) {
                            c2 = xVar.c(4) + 12;
                        } else if (c4 != 3) {
                            z = z2;
                        } else {
                            c2 = xVar.c(8) + 29;
                        }
                        c3 = 0;
                        i3 = 0;
                    }
                    c3 = 0;
                }
                z = z2;
                i3 = c2;
                c3 = xVar.c(2);
            }
            if (i3 != 0 && paint != null) {
                if (bArr != null) {
                    c3 = bArr[c3];
                }
                paint.setColor(iArr[c3]);
                canvas.drawRect(i4, i2, i4 + i3, i2 + 1, paint);
            }
            i4 += i3;
            if (z) {
                return i4;
            }
            z2 = z;
        }
    }

    private static C0049b a(x xVar) {
        int i;
        int i2;
        int i3;
        int i4;
        xVar.b(4);
        boolean e2 = xVar.e();
        xVar.b(3);
        int c2 = xVar.c(16);
        int c3 = xVar.c(16);
        if (e2) {
            int c4 = xVar.c(16);
            int c5 = xVar.c(16);
            int c6 = xVar.c(16);
            i4 = xVar.c(16);
            i3 = c5;
            i2 = c6;
            i = c4;
        } else {
            i = 0;
            i2 = 0;
            i3 = c2;
            i4 = c3;
        }
        return new C0049b(c2, c3, i, i3, i2, i4);
    }

    private static d a(x xVar, int i) {
        int c2 = xVar.c(8);
        int c3 = xVar.c(4);
        int c4 = xVar.c(2);
        xVar.b(2);
        int i2 = i - 2;
        SparseArray sparseArray = new SparseArray();
        while (i2 > 0) {
            int c5 = xVar.c(8);
            xVar.b(8);
            i2 -= 6;
            sparseArray.put(c5, new e(xVar.c(16), xVar.c(16)));
        }
        return new d(c2, c3, c4, sparseArray);
    }

    private static void a(c cVar, a aVar, int i, int i2, int i3, Paint paint, Canvas canvas) {
        int[] iArr = i == 3 ? aVar.f3242d : i == 2 ? aVar.f3241c : aVar.f3240b;
        a(cVar.f3251c, iArr, i, i2, i3, paint, canvas);
        a(cVar.f3252d, iArr, i, i2, i3 + 1, paint, canvas);
    }

    private static void a(x xVar, h hVar) {
        f fVar;
        SparseArray sparseArray;
        a aVar;
        int i;
        a aVar2;
        c cVar;
        int c2 = xVar.c(8);
        int c3 = xVar.c(16);
        int c4 = xVar.c(16);
        int c5 = xVar.c() + c4;
        if (c4 * 8 > xVar.a()) {
            q.c("DvbParser", "Data field length exceeds limit");
            xVar.b(xVar.a());
            return;
        }
        switch (c2) {
            case 16:
                if (c3 == hVar.f3273a) {
                    d dVar = hVar.i;
                    d a2 = a(xVar, c4);
                    if (a2.f3255c == 0) {
                        if (dVar != null && dVar.f3254b != a2.f3254b) {
                            hVar.i = a2;
                            break;
                        }
                    } else {
                        hVar.i = a2;
                        hVar.f3275c.clear();
                        hVar.f3276d.clear();
                        hVar.f3277e.clear();
                        break;
                    }
                }
                break;
            case 17:
                d dVar2 = hVar.i;
                if (c3 == hVar.f3273a && dVar2 != null) {
                    f b2 = b(xVar, c4);
                    if (dVar2.f3255c == 0 && (fVar = hVar.f3275c.get(b2.f3259a)) != null) {
                        b2.a(fVar);
                    }
                    hVar.f3275c.put(b2.f3259a, b2);
                    break;
                }
                break;
            case 18:
                if (c3 == hVar.f3273a) {
                    a c6 = c(xVar, c4);
                    sparseArray = hVar.f3276d;
                    aVar = c6;
                } else if (c3 == hVar.f3274b) {
                    a c7 = c(xVar, c4);
                    sparseArray = hVar.f3278f;
                    aVar = c7;
                }
                i = aVar.f3239a;
                aVar2 = aVar;
                sparseArray.put(i, aVar2);
                break;
            case 19:
                if (c3 == hVar.f3273a) {
                    c b3 = b(xVar);
                    sparseArray = hVar.f3277e;
                    cVar = b3;
                } else if (c3 == hVar.f3274b) {
                    c b4 = b(xVar);
                    sparseArray = hVar.f3279g;
                    cVar = b4;
                }
                i = cVar.f3249a;
                aVar2 = cVar;
                sparseArray.put(i, aVar2);
                break;
            case 20:
                if (c3 == hVar.f3273a) {
                    hVar.f3280h = a(xVar);
                    break;
                }
                break;
        }
        xVar.e(c5 - xVar.c());
    }

    private static void a(byte[] bArr, int[] iArr, int i, int i2, int i3, Paint paint, Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        byte[] bArr4;
        x xVar = new x(bArr);
        int i4 = i2;
        int i5 = i3;
        byte[] bArr5 = null;
        byte[] bArr6 = null;
        byte[] bArr7 = null;
        while (xVar.a() != 0) {
            int c2 = xVar.c(8);
            if (c2 != 240) {
                switch (c2) {
                    case 16:
                        if (i != 3) {
                            if (i != 2) {
                                bArr2 = null;
                                i4 = a(xVar, iArr, bArr2, i4, i5, paint, canvas);
                                xVar.f();
                                break;
                            } else {
                                bArr3 = bArr7 == null ? f3231a : bArr7;
                            }
                        } else {
                            bArr3 = bArr5 == null ? f3232b : bArr5;
                        }
                        bArr2 = bArr3;
                        i4 = a(xVar, iArr, bArr2, i4, i5, paint, canvas);
                        xVar.f();
                    case 17:
                        if (i == 3) {
                            bArr4 = bArr6 == null ? f3233c : bArr6;
                        } else {
                            bArr4 = null;
                        }
                        i4 = b(xVar, iArr, bArr4, i4, i5, paint, canvas);
                        xVar.f();
                        break;
                    case 18:
                        i4 = c(xVar, iArr, null, i4, i5, paint, canvas);
                        break;
                    default:
                        switch (c2) {
                            case 32:
                                bArr7 = a(4, 4, xVar);
                                continue;
                            case 33:
                                bArr5 = a(4, 8, xVar);
                                continue;
                            case 34:
                                bArr6 = a(16, 8, xVar);
                                continue;
                        }
                }
            } else {
                i5 += 2;
                i4 = i2;
            }
        }
    }

    private static byte[] a(int i, int i2, x xVar) {
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) xVar.c(i2);
        }
        return bArr;
    }

    private static int b(x xVar, int[] iArr, byte[] bArr, int i, int i2, Paint paint, Canvas canvas) {
        boolean z;
        int i3;
        int c2;
        int i4 = i;
        boolean z2 = false;
        while (true) {
            byte c3 = xVar.c(4);
            if (c3 != 0) {
                z = z2;
                i3 = 1;
            } else if (xVar.e()) {
                if (xVar.e()) {
                    int c4 = xVar.c(2);
                    if (c4 == 0) {
                        z = z2;
                        i3 = 1;
                    } else if (c4 == 1) {
                        z = z2;
                        i3 = 2;
                    } else if (c4 == 2) {
                        c2 = xVar.c(4) + 9;
                    } else if (c4 != 3) {
                        z = z2;
                        c3 = 0;
                        i3 = 0;
                    } else {
                        c2 = xVar.c(8) + 25;
                    }
                    c3 = 0;
                } else {
                    c2 = xVar.c(2) + 4;
                }
                z = z2;
                i3 = c2;
                c3 = xVar.c(4);
            } else {
                int c5 = xVar.c(3);
                if (c5 != 0) {
                    z = z2;
                    i3 = c5 + 2;
                    c3 = 0;
                } else {
                    z = true;
                    c3 = 0;
                    i3 = 0;
                }
            }
            if (i3 != 0 && paint != null) {
                if (bArr != null) {
                    c3 = bArr[c3];
                }
                paint.setColor(iArr[c3]);
                canvas.drawRect(i4, i2, i4 + i3, i2 + 1, paint);
            }
            i4 += i3;
            if (z) {
                return i4;
            }
            z2 = z;
        }
    }

    private static c b(x xVar) {
        int c2 = xVar.c(16);
        xVar.b(4);
        int c3 = xVar.c(2);
        boolean e2 = xVar.e();
        xVar.b(1);
        byte[] bArr = ai.f3786f;
        byte[] bArr2 = ai.f3786f;
        if (c3 == 1) {
            xVar.b(xVar.c(8) * 16);
        } else if (c3 == 0) {
            int c4 = xVar.c(16);
            int c5 = xVar.c(16);
            if (c4 > 0) {
                bArr = new byte[c4];
                xVar.b(bArr, 0, c4);
            }
            if (c5 > 0) {
                bArr2 = new byte[c5];
                xVar.b(bArr2, 0, c5);
            } else {
                bArr2 = bArr;
            }
        }
        return new c(c2, e2, bArr, bArr2);
    }

    private static f b(x xVar, int i) {
        int i2;
        int c2;
        int c3;
        int c4 = xVar.c(8);
        xVar.b(4);
        boolean e2 = xVar.e();
        xVar.b(3);
        int i3 = 16;
        int c5 = xVar.c(16);
        int c6 = xVar.c(16);
        int c7 = xVar.c(3);
        int c8 = xVar.c(3);
        int i4 = 2;
        xVar.b(2);
        int c9 = xVar.c(8);
        int c10 = xVar.c(8);
        int c11 = xVar.c(4);
        int c12 = xVar.c(2);
        xVar.b(2);
        int i5 = i - 10;
        SparseArray sparseArray = new SparseArray();
        while (i5 > 0) {
            int c13 = xVar.c(i3);
            int c14 = xVar.c(i4);
            int c15 = xVar.c(i4);
            int c16 = xVar.c(12);
            int i6 = c12;
            xVar.b(4);
            int c17 = xVar.c(12);
            int i7 = i5 - 6;
            if (c14 != 1) {
                i2 = 2;
                if (c14 != 2) {
                    c2 = 0;
                    c3 = 0;
                    i5 = i7;
                    sparseArray.put(c13, new g(c14, c15, c16, c17, c2, c3));
                    i4 = i2;
                    c12 = i6;
                    i3 = 16;
                }
            } else {
                i2 = 2;
            }
            i5 -= 8;
            c2 = xVar.c(8);
            c3 = xVar.c(8);
            sparseArray.put(c13, new g(c14, c15, c16, c17, c2, c3));
            i4 = i2;
            c12 = i6;
            i3 = 16;
        }
        return new f(c4, e2, c5, c6, c7, c8, c9, c10, c11, c12, sparseArray);
    }

    private static int[] b() {
        return new int[]{0, -1, ViewCompat.MEASURED_STATE_MASK, -8421505};
    }

    private static int c(x xVar, int[] iArr, byte[] bArr, int i, int i2, Paint paint, Canvas canvas) {
        boolean z;
        int c2;
        int i3 = i;
        boolean z2 = false;
        while (true) {
            byte c3 = xVar.c(8);
            if (c3 != 0) {
                z = z2;
                c2 = 1;
            } else if (xVar.e()) {
                z = z2;
                c2 = xVar.c(7);
                c3 = xVar.c(8);
            } else {
                int c4 = xVar.c(7);
                if (c4 != 0) {
                    z = z2;
                    c2 = c4;
                    c3 = 0;
                } else {
                    z = true;
                    c3 = 0;
                    c2 = 0;
                }
            }
            if (c2 != 0 && paint != null) {
                if (bArr != null) {
                    c3 = bArr[c3];
                }
                paint.setColor(iArr[c3]);
                canvas.drawRect(i3, i2, i3 + c2, i2 + 1, paint);
            }
            i3 += c2;
            if (z) {
                return i3;
            }
            z2 = z;
        }
    }

    private static a c(x xVar, int i) {
        int c2;
        int i2;
        int c3;
        int c4;
        int i3;
        int i4 = 8;
        int c5 = xVar.c(8);
        xVar.b(8);
        int i5 = 2;
        int i6 = i - 2;
        int[] b2 = b();
        int[] c6 = c();
        int[] d2 = d();
        while (i6 > 0) {
            int c7 = xVar.c(i4);
            int c8 = xVar.c(i4);
            int[] iArr = (c8 & 128) != 0 ? b2 : (c8 & 64) != 0 ? c6 : d2;
            if ((c8 & 1) != 0) {
                c4 = xVar.c(i4);
                i3 = xVar.c(i4);
                c2 = xVar.c(i4);
                c3 = xVar.c(i4);
                i2 = i6 - 6;
            } else {
                int c9 = xVar.c(4) << 4;
                c2 = xVar.c(4) << 4;
                i2 = i6 - 4;
                c3 = xVar.c(i5) << 6;
                c4 = xVar.c(6) << i5;
                i3 = c9;
            }
            if (c4 == 0) {
                c3 = 255;
                i3 = 0;
                c2 = 0;
            }
            double d3 = c4;
            double d4 = i3 - 128;
            double d5 = c2 - 128;
            iArr[c7] = a((byte) (255 - (c3 & 255)), ai.a((int) (d3 + (1.402d * d4)), 0, 255), ai.a((int) ((d3 - (0.34414d * d5)) - (d4 * 0.71414d)), 0, 255), ai.a((int) (d3 + (d5 * 1.772d)), 0, 255));
            i6 = i2;
            c5 = c5;
            i4 = 8;
            i5 = 2;
        }
        return new a(c5, b2, c6, d2);
    }

    private static int[] c() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i = 1; i < 16; i++) {
            if (i < 8) {
                iArr[i] = a(255, (i & 1) != 0 ? 255 : 0, (i & 2) != 0 ? 255 : 0, (i & 4) != 0 ? 255 : 0);
            } else {
                iArr[i] = a(255, (i & 1) != 0 ? 127 : 0, (i & 2) != 0 ? 127 : 0, (i & 4) == 0 ? 0 : 127);
            }
        }
        return iArr;
    }

    private static int[] d() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i = 0; i < 256; i++) {
            if (i < 8) {
                iArr[i] = a(63, (i & 1) != 0 ? 255 : 0, (i & 2) != 0 ? 255 : 0, (i & 4) == 0 ? 0 : 255);
            } else {
                int i2 = i & 136;
                if (i2 == 0) {
                    iArr[i] = a(255, ((i & 1) != 0 ? 85 : 0) + ((i & 16) != 0 ? 170 : 0), ((i & 2) != 0 ? 85 : 0) + ((i & 32) != 0 ? 170 : 0), ((i & 4) == 0 ? 0 : 85) + ((i & 64) == 0 ? 0 : 170));
                } else if (i2 == 8) {
                    iArr[i] = a(127, ((i & 1) != 0 ? 85 : 0) + ((i & 16) != 0 ? 170 : 0), ((i & 2) != 0 ? 85 : 0) + ((i & 32) != 0 ? 170 : 0), ((i & 4) == 0 ? 0 : 85) + ((i & 64) == 0 ? 0 : 170));
                } else if (i2 == 128) {
                    iArr[i] = a(255, ((i & 1) != 0 ? 43 : 0) + 127 + ((i & 16) != 0 ? 85 : 0), ((i & 2) != 0 ? 43 : 0) + 127 + ((i & 32) != 0 ? 85 : 0), ((i & 4) == 0 ? 0 : 43) + 127 + ((i & 64) == 0 ? 0 : 85));
                } else if (i2 == 136) {
                    iArr[i] = a(255, ((i & 1) != 0 ? 43 : 0) + ((i & 16) != 0 ? 85 : 0), ((i & 2) != 0 ? 43 : 0) + ((i & 32) != 0 ? 85 : 0), ((i & 4) == 0 ? 0 : 43) + ((i & 64) == 0 ? 0 : 85));
                }
            }
        }
        return iArr;
    }

    public List<com.applovin.exoplayer2.i.a> a(byte[] bArr, int i) {
        int i2;
        SparseArray<g> sparseArray;
        x xVar = new x(bArr, i);
        while (xVar.a() >= 48 && xVar.c(8) == 15) {
            a(xVar, this.i);
        }
        d dVar = this.i.i;
        if (dVar == null) {
            return Collections.emptyList();
        }
        C0049b c0049b = this.i.f3280h != null ? this.i.f3280h : this.f3237g;
        if (this.j == null || c0049b.f3243a + 1 != this.j.getWidth() || c0049b.f3244b + 1 != this.j.getHeight()) {
            Bitmap createBitmap = Bitmap.createBitmap(c0049b.f3243a + 1, c0049b.f3244b + 1, Bitmap.Config.ARGB_8888);
            this.j = createBitmap;
            this.f3236f.setBitmap(createBitmap);
        }
        ArrayList arrayList = new ArrayList();
        SparseArray<e> sparseArray2 = dVar.f3256d;
        for (int i3 = 0; i3 < sparseArray2.size(); i3++) {
            this.f3236f.save();
            e valueAt = sparseArray2.valueAt(i3);
            f fVar = this.i.f3275c.get(sparseArray2.keyAt(i3));
            int i4 = valueAt.f3257a + c0049b.f3245c;
            int i5 = valueAt.f3258b + c0049b.f3247e;
            this.f3236f.clipRect(i4, i5, Math.min(fVar.f3261c + i4, c0049b.f3246d), Math.min(fVar.f3262d + i5, c0049b.f3248f));
            a aVar = this.i.f3276d.get(fVar.f3265g);
            if (aVar == null && (aVar = this.i.f3278f.get(fVar.f3265g)) == null) {
                aVar = this.f3238h;
            }
            SparseArray<g> sparseArray3 = fVar.k;
            int i6 = 0;
            while (i6 < sparseArray3.size()) {
                int keyAt = sparseArray3.keyAt(i6);
                g valueAt2 = sparseArray3.valueAt(i6);
                c cVar = this.i.f3277e.get(keyAt);
                c cVar2 = cVar == null ? this.i.f3279g.get(keyAt) : cVar;
                if (cVar2 != null) {
                    i2 = i6;
                    sparseArray = sparseArray3;
                    a(cVar2, aVar, fVar.f3264f, valueAt2.f3269c + i4, i5 + valueAt2.f3270d, cVar2.f3250b ? null : this.f3234d, this.f3236f);
                } else {
                    i2 = i6;
                    sparseArray = sparseArray3;
                }
                i6 = i2 + 1;
                sparseArray3 = sparseArray;
            }
            if (fVar.f3260b) {
                this.f3235e.setColor(fVar.f3264f == 3 ? aVar.f3242d[fVar.f3266h] : fVar.f3264f == 2 ? aVar.f3241c[fVar.i] : aVar.f3240b[fVar.j]);
                this.f3236f.drawRect(i4, i5, fVar.f3261c + i4, fVar.f3262d + i5, this.f3235e);
            }
            arrayList.add(new a.C0045a().a(Bitmap.createBitmap(this.j, i4, i5, fVar.f3261c, fVar.f3262d)).a(i4 / c0049b.f3243a).b(0).a(i5 / c0049b.f3244b, 0).a(0).b(fVar.f3261c / c0049b.f3243a).c(fVar.f3262d / c0049b.f3244b).e());
            this.f3236f.drawColor(0, PorterDuff.Mode.CLEAR);
            this.f3236f.restore();
        }
        return Collections.unmodifiableList(arrayList);
    }

    public void a() {
        this.i.a();
    }
}

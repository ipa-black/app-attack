package com.applovin.exoplayer2.i.a;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import com.applovin.exoplayer2.i.a;
import com.applovin.exoplayer2.i.a.b;
import com.applovin.exoplayer2.i.f;
import com.applovin.exoplayer2.i.h;
import com.applovin.exoplayer2.i.j;
import com.applovin.exoplayer2.i.k;
import com.applovin.exoplayer2.l.e;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.x;
import com.applovin.exoplayer2.l.y;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import kotlin.text.Typography;
/* loaded from: classes.dex */
public final class b extends com.applovin.exoplayer2.i.a.c {

    /* renamed from: a  reason: collision with root package name */
    private final y f3198a = new y();

    /* renamed from: b  reason: collision with root package name */
    private final x f3199b = new x();

    /* renamed from: c  reason: collision with root package name */
    private int f3200c = -1;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f3201d;

    /* renamed from: e  reason: collision with root package name */
    private final int f3202e;

    /* renamed from: f  reason: collision with root package name */
    private final C0048b[] f3203f;

    /* renamed from: g  reason: collision with root package name */
    private C0048b f3204g;

    /* renamed from: h  reason: collision with root package name */
    private List<com.applovin.exoplayer2.i.a> f3205h;
    private List<com.applovin.exoplayer2.i.a> i;
    private c j;
    private int k;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: c  reason: collision with root package name */
        private static final Comparator<a> f3206c = new Comparator() { // from class: com.applovin.exoplayer2.i.a.b$a$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int a2;
                a2 = b.a.a((b.a) obj, (b.a) obj2);
                return a2;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final com.applovin.exoplayer2.i.a f3207a;

        /* renamed from: b  reason: collision with root package name */
        public final int f3208b;

        public a(CharSequence charSequence, Layout.Alignment alignment, float f2, int i, int i2, float f3, int i3, float f4, boolean z, int i4, int i5) {
            a.C0045a b2 = new a.C0045a().a(charSequence).a(alignment).a(f2, i).a(i2).a(f3).b(i3).b(f4);
            if (z) {
                b2.c(i4);
            }
            this.f3207a = b2.e();
            this.f3208b = i5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int a(a aVar, a aVar2) {
            return Integer.compare(aVar2.f3208b, aVar.f3208b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.applovin.exoplayer2.i.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0048b {

        /* renamed from: a  reason: collision with root package name */
        public static final int f3209a = a(2, 2, 2, 0);

        /* renamed from: b  reason: collision with root package name */
        public static final int f3210b;

        /* renamed from: c  reason: collision with root package name */
        public static final int f3211c;

        /* renamed from: d  reason: collision with root package name */
        private static final int[] f3212d;

        /* renamed from: e  reason: collision with root package name */
        private static final int[] f3213e;

        /* renamed from: f  reason: collision with root package name */
        private static final int[] f3214f;

        /* renamed from: g  reason: collision with root package name */
        private static final boolean[] f3215g;

        /* renamed from: h  reason: collision with root package name */
        private static final int[] f3216h;
        private static final int[] i;
        private static final int[] j;
        private static final int[] k;
        private int A;
        private int B;
        private int C;
        private int D;
        private int E;
        private int F;
        private int G;
        private final List<SpannableString> l = new ArrayList();
        private final SpannableStringBuilder m = new SpannableStringBuilder();
        private boolean n;
        private boolean o;
        private int p;
        private boolean q;
        private int r;
        private int s;
        private int t;
        private int u;
        private boolean v;
        private int w;
        private int x;
        private int y;
        private int z;

        static {
            int a2 = a(0, 0, 0, 0);
            f3210b = a2;
            int a3 = a(0, 0, 0, 3);
            f3211c = a3;
            f3212d = new int[]{0, 0, 0, 0, 0, 2, 0};
            f3213e = new int[]{0, 0, 0, 0, 0, 0, 2};
            f3214f = new int[]{3, 3, 3, 3, 3, 3, 1};
            f3215g = new boolean[]{false, false, false, true, true, true, false};
            f3216h = new int[]{a2, a3, a2, a2, a3, a2, a2};
            i = new int[]{0, 1, 2, 3, 4, 3, 4};
            j = new int[]{0, 0, 0, 0, 0, 3, 3};
            k = new int[]{a2, a2, a2, a2, a2, a3, a3};
        }

        public C0048b() {
            b();
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0026  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0029  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x002b  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x002e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int a(int r4, int r5, int r6, int r7) {
            /*
                r0 = 0
                r1 = 4
                com.applovin.exoplayer2.l.a.a(r4, r0, r1)
                com.applovin.exoplayer2.l.a.a(r5, r0, r1)
                com.applovin.exoplayer2.l.a.a(r6, r0, r1)
                com.applovin.exoplayer2.l.a.a(r7, r0, r1)
                r1 = 1
                r2 = 255(0xff, float:3.57E-43)
                if (r7 == 0) goto L21
                if (r7 == r1) goto L21
                r3 = 2
                if (r7 == r3) goto L1e
                r3 = 3
                if (r7 == r3) goto L1c
                goto L21
            L1c:
                r7 = r0
                goto L22
            L1e:
                r7 = 127(0x7f, float:1.78E-43)
                goto L22
            L21:
                r7 = r2
            L22:
                if (r4 <= r1) goto L26
                r4 = r2
                goto L27
            L26:
                r4 = r0
            L27:
                if (r5 <= r1) goto L2b
                r5 = r2
                goto L2c
            L2b:
                r5 = r0
            L2c:
                if (r6 <= r1) goto L2f
                r0 = r2
            L2f:
                int r4 = android.graphics.Color.argb(r7, r4, r5, r0)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.i.a.b.C0048b.a(int, int, int, int):int");
        }

        public static int b(int i2, int i3, int i4) {
            return a(i2, i3, i4, 0);
        }

        public void a(char c2) {
            if (c2 != '\n') {
                this.m.append(c2);
                return;
            }
            this.l.add(g());
            this.m.clear();
            if (this.A != -1) {
                this.A = 0;
            }
            if (this.B != -1) {
                this.B = 0;
            }
            if (this.C != -1) {
                this.C = 0;
            }
            if (this.E != -1) {
                this.E = 0;
            }
            while (true) {
                if ((!this.v || this.l.size() < this.u) && this.l.size() < 15) {
                    return;
                }
                this.l.remove(0);
            }
        }

        public void a(int i2, int i3) {
            if (this.G != i2) {
                a('\n');
            }
            this.G = i2;
        }

        public void a(int i2, int i3, int i4) {
            if (this.C != -1 && this.D != i2) {
                this.m.setSpan(new ForegroundColorSpan(this.D), this.C, this.m.length(), 33);
            }
            if (i2 != f3209a) {
                this.C = this.m.length();
                this.D = i2;
            }
            if (this.E != -1 && this.F != i3) {
                this.m.setSpan(new BackgroundColorSpan(this.F), this.E, this.m.length(), 33);
            }
            if (i3 != f3210b) {
                this.E = this.m.length();
                this.F = i3;
            }
        }

        public void a(int i2, int i3, int i4, boolean z, boolean z2, int i5, int i6) {
            if (this.A != -1) {
                if (!z) {
                    this.m.setSpan(new StyleSpan(2), this.A, this.m.length(), 33);
                    this.A = -1;
                }
            } else if (z) {
                this.A = this.m.length();
            }
            if (this.B == -1) {
                if (z2) {
                    this.B = this.m.length();
                }
            } else if (z2) {
            } else {
                this.m.setSpan(new UnderlineSpan(), this.B, this.m.length(), 33);
                this.B = -1;
            }
        }

        public void a(int i2, int i3, boolean z, int i4, int i5, int i6, int i7) {
            this.z = i2;
            this.w = i7;
        }

        public void a(boolean z) {
            this.o = z;
        }

        public void a(boolean z, boolean z2, boolean z3, int i2, boolean z4, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            this.n = true;
            this.o = z;
            this.v = z2;
            this.p = i2;
            this.q = z4;
            this.r = i3;
            this.s = i4;
            this.t = i7;
            int i10 = i5 + 1;
            if (this.u != i10) {
                this.u = i10;
                while (true) {
                    if ((!z2 || this.l.size() < this.u) && this.l.size() < 15) {
                        break;
                    }
                    this.l.remove(0);
                }
            }
            if (i8 != 0 && this.x != i8) {
                this.x = i8;
                int i11 = i8 - 1;
                a(f3216h[i11], f3211c, f3215g[i11], 0, f3213e[i11], f3214f[i11], f3212d[i11]);
            }
            if (i9 == 0 || this.y == i9) {
                return;
            }
            this.y = i9;
            int i12 = i9 - 1;
            a(0, 1, 1, false, false, j[i12], i[i12]);
            a(f3209a, k[i12], f3210b);
        }

        public boolean a() {
            return !d() || (this.l.isEmpty() && this.m.length() == 0);
        }

        public void b() {
            c();
            this.n = false;
            this.o = false;
            this.p = 4;
            this.q = false;
            this.r = 0;
            this.s = 0;
            this.t = 0;
            this.u = 15;
            this.v = true;
            this.w = 0;
            this.x = 0;
            this.y = 0;
            int i2 = f3210b;
            this.z = i2;
            this.D = f3209a;
            this.F = i2;
        }

        public void c() {
            this.l.clear();
            this.m.clear();
            this.A = -1;
            this.B = -1;
            this.C = -1;
            this.E = -1;
            this.G = 0;
        }

        public boolean d() {
            return this.n;
        }

        public boolean e() {
            return this.o;
        }

        public void f() {
            int length = this.m.length();
            if (length > 0) {
                this.m.delete(length - 1, length);
            }
        }

        public SpannableString g() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.m);
            int length = spannableStringBuilder.length();
            if (length > 0) {
                if (this.A != -1) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), this.A, length, 33);
                }
                if (this.B != -1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), this.B, length, 33);
                }
                if (this.C != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(this.D), this.C, length, 33);
                }
                if (this.E != -1) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(this.F), this.E, length, 33);
                }
            }
            return new SpannableString(spannableStringBuilder);
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x0063  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x006e  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x008d  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x008f  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x009a  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x009c  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00a8  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.applovin.exoplayer2.i.a.b.a h() {
            /*
                Method dump skipped, instructions count: 191
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.i.a.b.C0048b.h():com.applovin.exoplayer2.i.a.b$a");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f3217a;

        /* renamed from: b  reason: collision with root package name */
        public final int f3218b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f3219c;

        /* renamed from: d  reason: collision with root package name */
        int f3220d = 0;

        public c(int i, int i2) {
            this.f3217a = i;
            this.f3218b = i2;
            this.f3219c = new byte[(i2 * 2) - 1];
        }
    }

    public b(int i, List<byte[]> list) {
        boolean z = true;
        this.f3202e = i == -1 ? 1 : i;
        this.f3201d = (list == null || !e.a(list)) ? false : z;
        this.f3203f = new C0048b[8];
        for (int i2 = 0; i2 < 8; i2++) {
            this.f3203f[i2] = new C0048b();
        }
        this.f3204g = this.f3203f[0];
    }

    private void a(int i) {
        x xVar;
        if (i != 0) {
            if (i == 3) {
                this.f3205h = q();
                return;
            }
            int i2 = 8;
            if (i == 8) {
                this.f3204g.f();
                return;
            }
            switch (i) {
                case 12:
                    r();
                    return;
                case 13:
                    this.f3204g.a('\n');
                    return;
                case 14:
                    return;
                default:
                    if (i >= 17 && i <= 23) {
                        q.c("Cea708Decoder", "Currently unsupported COMMAND_EXT1 Command: " + i);
                        xVar = this.f3199b;
                    } else if (i < 24 || i > 31) {
                        q.c("Cea708Decoder", "Invalid C0 command: " + i);
                        return;
                    } else {
                        q.c("Cea708Decoder", "Currently unsupported COMMAND_P16 Command: " + i);
                        xVar = this.f3199b;
                        i2 = 16;
                    }
                    xVar.b(i2);
                    return;
            }
        }
    }

    private void b(int i) {
        C0048b c0048b;
        C0048b c0048b2;
        x xVar;
        int i2 = 16;
        int i3 = 1;
        switch (i) {
            case 128:
            case TsExtractor.TS_STREAM_TYPE_AC3 /* 129 */:
            case TsExtractor.TS_STREAM_TYPE_HDMV_DTS /* 130 */:
            case 131:
            case 132:
            case 133:
            case TsExtractor.TS_STREAM_TYPE_SPLICE_INFO /* 134 */:
            case TsExtractor.TS_STREAM_TYPE_E_AC3 /* 135 */:
                int i4 = i - 128;
                if (this.k != i4) {
                    this.k = i4;
                    c0048b = this.f3203f[i4];
                    this.f3204g = c0048b;
                    return;
                }
                return;
            case 136:
                while (i3 <= 8) {
                    if (this.f3199b.e()) {
                        this.f3203f[8 - i3].c();
                    }
                    i3++;
                }
                return;
            case 137:
                for (int i5 = 1; i5 <= 8; i5++) {
                    if (this.f3199b.e()) {
                        this.f3203f[8 - i5].a(true);
                    }
                }
                return;
            case TsExtractor.TS_STREAM_TYPE_DTS /* 138 */:
                while (i3 <= 8) {
                    if (this.f3199b.e()) {
                        this.f3203f[8 - i3].a(false);
                    }
                    i3++;
                }
                return;
            case 139:
                for (int i6 = 1; i6 <= 8; i6++) {
                    if (this.f3199b.e()) {
                        this.f3203f[8 - i6].a(!c0048b2.e());
                    }
                }
                return;
            case IronSourceConstants.USING_CACHE_FOR_INIT_EVENT /* 140 */:
                while (i3 <= 8) {
                    if (this.f3199b.e()) {
                        this.f3203f[8 - i3].b();
                    }
                    i3++;
                }
                return;
            case 141:
                this.f3199b.b(8);
                return;
            case 142:
                return;
            case 143:
                r();
                return;
            case 144:
                if (this.f3204g.d()) {
                    m();
                    return;
                }
                xVar = this.f3199b;
                xVar.b(i2);
                return;
            case 145:
                if (this.f3204g.d()) {
                    n();
                    return;
                }
                xVar = this.f3199b;
                i2 = 24;
                xVar.b(i2);
                return;
            case 146:
                if (this.f3204g.d()) {
                    o();
                    return;
                }
                xVar = this.f3199b;
                xVar.b(i2);
                return;
            case 147:
            case 148:
            case 149:
            case IronSourceConstants.REWARDED_VIDEO_DAILY_CAPPED /* 150 */:
            default:
                q.c("Cea708Decoder", "Invalid C1 command: " + i);
                return;
            case 151:
                if (this.f3204g.d()) {
                    p();
                    return;
                }
                xVar = this.f3199b;
                i2 = 32;
                xVar.b(i2);
                return;
            case 152:
            case 153:
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
            case 159:
                int i7 = i - 152;
                i(i7);
                if (this.k != i7) {
                    this.k = i7;
                    c0048b = this.f3203f[i7];
                    this.f3204g = c0048b;
                    return;
                }
                return;
        }
    }

    private void c(int i) {
        x xVar;
        int i2;
        if (i <= 7) {
            return;
        }
        if (i <= 15) {
            xVar = this.f3199b;
            i2 = 8;
        } else if (i <= 23) {
            xVar = this.f3199b;
            i2 = 16;
        } else if (i > 31) {
            return;
        } else {
            xVar = this.f3199b;
            i2 = 24;
        }
        xVar.b(i2);
    }

    private void d(int i) {
        x xVar;
        int i2;
        if (i <= 135) {
            xVar = this.f3199b;
            i2 = 32;
        } else if (i > 143) {
            if (i <= 159) {
                this.f3199b.b(2);
                this.f3199b.b(this.f3199b.c(6) * 8);
                return;
            }
            return;
        } else {
            xVar = this.f3199b;
            i2 = 40;
        }
        xVar.b(i2);
    }

    private void e(int i) {
        if (i == 127) {
            this.f3204g.a((char) 9835);
        } else {
            this.f3204g.a((char) (i & 255));
        }
    }

    private void f(int i) {
        this.f3204g.a((char) (i & 255));
    }

    private void g(int i) {
        C0048b c0048b;
        char c2 = ' ';
        if (i == 32) {
            c0048b = this.f3204g;
        } else if (i == 33) {
            c0048b = this.f3204g;
            c2 = Typography.nbsp;
        } else if (i == 37) {
            c0048b = this.f3204g;
            c2 = Typography.ellipsis;
        } else if (i == 42) {
            c0048b = this.f3204g;
            c2 = 352;
        } else if (i == 44) {
            c0048b = this.f3204g;
            c2 = 338;
        } else if (i == 63) {
            c0048b = this.f3204g;
            c2 = 376;
        } else if (i == 57) {
            c0048b = this.f3204g;
            c2 = Typography.tm;
        } else if (i == 58) {
            c0048b = this.f3204g;
            c2 = 353;
        } else if (i == 60) {
            c0048b = this.f3204g;
            c2 = 339;
        } else if (i != 61) {
            switch (i) {
                case 48:
                    c0048b = this.f3204g;
                    c2 = 9608;
                    break;
                case 49:
                    c0048b = this.f3204g;
                    c2 = Typography.leftSingleQuote;
                    break;
                case 50:
                    c0048b = this.f3204g;
                    c2 = Typography.rightSingleQuote;
                    break;
                case 51:
                    c0048b = this.f3204g;
                    c2 = Typography.leftDoubleQuote;
                    break;
                case 52:
                    c0048b = this.f3204g;
                    c2 = Typography.rightDoubleQuote;
                    break;
                case 53:
                    c0048b = this.f3204g;
                    c2 = Typography.bullet;
                    break;
                default:
                    switch (i) {
                        case 118:
                            c0048b = this.f3204g;
                            c2 = 8539;
                            break;
                        case 119:
                            c0048b = this.f3204g;
                            c2 = 8540;
                            break;
                        case 120:
                            c0048b = this.f3204g;
                            c2 = 8541;
                            break;
                        case 121:
                            c0048b = this.f3204g;
                            c2 = 8542;
                            break;
                        case 122:
                            c0048b = this.f3204g;
                            c2 = 9474;
                            break;
                        case 123:
                            c0048b = this.f3204g;
                            c2 = 9488;
                            break;
                        case 124:
                            c0048b = this.f3204g;
                            c2 = 9492;
                            break;
                        case 125:
                            c0048b = this.f3204g;
                            c2 = 9472;
                            break;
                        case 126:
                            c0048b = this.f3204g;
                            c2 = 9496;
                            break;
                        case 127:
                            c0048b = this.f3204g;
                            c2 = 9484;
                            break;
                        default:
                            q.c("Cea708Decoder", "Invalid G2 character: " + i);
                            return;
                    }
            }
        } else {
            c0048b = this.f3204g;
            c2 = 8480;
        }
        c0048b.a(c2);
    }

    private void h(int i) {
        C0048b c0048b;
        char c2;
        if (i == 160) {
            c0048b = this.f3204g;
            c2 = 13252;
        } else {
            q.c("Cea708Decoder", "Invalid G3 character: " + i);
            c0048b = this.f3204g;
            c2 = '_';
        }
        c0048b.a(c2);
    }

    private void i() {
        if (this.j == null) {
            return;
        }
        l();
        this.j = null;
    }

    private void i(int i) {
        C0048b c0048b = this.f3203f[i];
        this.f3199b.b(2);
        boolean e2 = this.f3199b.e();
        boolean e3 = this.f3199b.e();
        boolean e4 = this.f3199b.e();
        int c2 = this.f3199b.c(3);
        boolean e5 = this.f3199b.e();
        int c3 = this.f3199b.c(7);
        int c4 = this.f3199b.c(8);
        int c5 = this.f3199b.c(4);
        int c6 = this.f3199b.c(4);
        this.f3199b.b(2);
        int c7 = this.f3199b.c(6);
        this.f3199b.b(2);
        c0048b.a(e2, e3, e4, c2, e5, c3, c4, c6, c7, c5, this.f3199b.c(3), this.f3199b.c(3));
    }

    private void l() {
        StringBuilder sb;
        if (this.j.f3220d != (this.j.f3218b * 2) - 1) {
            q.a("Cea708Decoder", "DtvCcPacket ended prematurely; size is " + ((this.j.f3218b * 2) - 1) + ", but current index is " + this.j.f3220d + " (sequence number " + this.j.f3217a + ");");
        }
        this.f3199b.a(this.j.f3219c, this.j.f3220d);
        int c2 = this.f3199b.c(3);
        int c3 = this.f3199b.c(5);
        if (c2 == 7) {
            this.f3199b.b(2);
            c2 = this.f3199b.c(6);
            if (c2 < 7) {
                q.c("Cea708Decoder", "Invalid extended service number: " + c2);
            }
        }
        if (c3 == 0) {
            if (c2 != 0) {
                q.c("Cea708Decoder", "serviceNumber is non-zero (" + c2 + ") when blockSize is 0");
            }
        } else if (c2 != this.f3202e) {
        } else {
            boolean z = false;
            while (this.f3199b.a() > 0) {
                int c4 = this.f3199b.c(8);
                if (c4 == 16) {
                    c4 = this.f3199b.c(8);
                    if (c4 <= 31) {
                        c(c4);
                    } else {
                        if (c4 <= 127) {
                            g(c4);
                        } else if (c4 <= 159) {
                            d(c4);
                        } else if (c4 <= 255) {
                            h(c4);
                        } else {
                            sb = new StringBuilder("Invalid extended command: ");
                            q.c("Cea708Decoder", sb.append(c4).toString());
                        }
                        z = true;
                    }
                } else if (c4 <= 31) {
                    a(c4);
                } else {
                    if (c4 <= 127) {
                        e(c4);
                    } else if (c4 <= 159) {
                        b(c4);
                    } else if (c4 <= 255) {
                        f(c4);
                    } else {
                        sb = new StringBuilder("Invalid base command: ");
                        q.c("Cea708Decoder", sb.append(c4).toString());
                    }
                    z = true;
                }
            }
            if (z) {
                this.f3205h = q();
            }
        }
    }

    private void m() {
        this.f3204g.a(this.f3199b.c(4), this.f3199b.c(2), this.f3199b.c(2), this.f3199b.e(), this.f3199b.e(), this.f3199b.c(3), this.f3199b.c(3));
    }

    private void n() {
        int a2 = C0048b.a(this.f3199b.c(2), this.f3199b.c(2), this.f3199b.c(2), this.f3199b.c(2));
        int a3 = C0048b.a(this.f3199b.c(2), this.f3199b.c(2), this.f3199b.c(2), this.f3199b.c(2));
        this.f3199b.b(2);
        this.f3204g.a(a2, a3, C0048b.b(this.f3199b.c(2), this.f3199b.c(2), this.f3199b.c(2)));
    }

    private void o() {
        this.f3199b.b(4);
        int c2 = this.f3199b.c(4);
        this.f3199b.b(2);
        this.f3204g.a(c2, this.f3199b.c(6));
    }

    private void p() {
        int a2 = C0048b.a(this.f3199b.c(2), this.f3199b.c(2), this.f3199b.c(2), this.f3199b.c(2));
        int c2 = this.f3199b.c(2);
        int b2 = C0048b.b(this.f3199b.c(2), this.f3199b.c(2), this.f3199b.c(2));
        if (this.f3199b.e()) {
            c2 |= 4;
        }
        boolean e2 = this.f3199b.e();
        int c3 = this.f3199b.c(2);
        int c4 = this.f3199b.c(2);
        int c5 = this.f3199b.c(2);
        this.f3199b.b(8);
        this.f3204g.a(a2, b2, e2, c2, c3, c4, c5);
    }

    private List<com.applovin.exoplayer2.i.a> q() {
        a h2;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 8; i++) {
            if (!this.f3203f[i].a() && this.f3203f[i].e() && (h2 = this.f3203f[i].h()) != null) {
                arrayList.add(h2);
            }
        }
        Collections.sort(arrayList, a.f3206c);
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            arrayList2.add(((a) arrayList.get(i2)).f3207a);
        }
        return Collections.unmodifiableList(arrayList2);
    }

    private void r() {
        for (int i = 0; i < 8; i++) {
            this.f3203f[i].b();
        }
    }

    @Override // com.applovin.exoplayer2.i.a.c, com.applovin.exoplayer2.i.g
    public /* bridge */ /* synthetic */ void a(long j) {
        super.a(j);
    }

    @Override // com.applovin.exoplayer2.i.a.c
    protected void a(j jVar) {
        ByteBuffer byteBuffer = (ByteBuffer) com.applovin.exoplayer2.l.a.b(jVar.f1675b);
        this.f3198a.a(byteBuffer.array(), byteBuffer.limit());
        while (this.f3198a.a() >= 3) {
            int h2 = this.f3198a.h();
            int i = h2 & 3;
            boolean z = (h2 & 4) == 4;
            byte h3 = (byte) this.f3198a.h();
            byte h4 = (byte) this.f3198a.h();
            if (i == 2 || i == 3) {
                if (z) {
                    if (i == 3) {
                        i();
                        int i2 = (h3 & 192) >> 6;
                        int i3 = this.f3200c;
                        if (i3 != -1 && i2 != (i3 + 1) % 4) {
                            r();
                            q.c("Cea708Decoder", "Sequence number discontinuity. previous=" + this.f3200c + " current=" + i2);
                        }
                        this.f3200c = i2;
                        int i4 = h3 & 63;
                        if (i4 == 0) {
                            i4 = 64;
                        }
                        c cVar = new c(i2, i4);
                        this.j = cVar;
                        byte[] bArr = cVar.f3219c;
                        c cVar2 = this.j;
                        int i5 = cVar2.f3220d;
                        cVar2.f3220d = i5 + 1;
                        bArr[i5] = h4;
                    } else {
                        com.applovin.exoplayer2.l.a.a(i == 2);
                        c cVar3 = this.j;
                        if (cVar3 == null) {
                            q.d("Cea708Decoder", "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr2 = cVar3.f3219c;
                            c cVar4 = this.j;
                            int i6 = cVar4.f3220d;
                            cVar4.f3220d = i6 + 1;
                            bArr2[i6] = h3;
                            byte[] bArr3 = this.j.f3219c;
                            c cVar5 = this.j;
                            int i7 = cVar5.f3220d;
                            cVar5.f3220d = i7 + 1;
                            bArr3[i7] = h4;
                        }
                    }
                    if (this.j.f3220d == (this.j.f3218b * 2) - 1) {
                        i();
                    }
                }
            }
        }
    }

    @Override // com.applovin.exoplayer2.i.a.c
    public /* bridge */ /* synthetic */ void b(j jVar) throws h {
        super.a(jVar);
    }

    @Override // com.applovin.exoplayer2.i.a.c, com.applovin.exoplayer2.c.d
    public void c() {
        super.c();
        this.f3205h = null;
        this.i = null;
        this.k = 0;
        this.f3204g = this.f3203f[0];
        r();
        this.j = null;
    }

    @Override // com.applovin.exoplayer2.i.a.c, com.applovin.exoplayer2.c.d
    public /* bridge */ /* synthetic */ void d() {
        super.d();
    }

    @Override // com.applovin.exoplayer2.i.a.c
    public /* bridge */ /* synthetic */ k e() throws h {
        return super.b();
    }

    @Override // com.applovin.exoplayer2.i.a.c
    protected boolean f() {
        return this.f3205h != this.i;
    }

    @Override // com.applovin.exoplayer2.i.a.c
    protected f g() {
        this.i = this.f3205h;
        return new d((List) com.applovin.exoplayer2.l.a.b(this.f3205h));
    }

    @Override // com.applovin.exoplayer2.i.a.c
    public /* bridge */ /* synthetic */ j h() throws h {
        return super.a();
    }
}

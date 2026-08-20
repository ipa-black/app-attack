package com.applovin.exoplayer2.i.a;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import com.applovin.exoplayer2.i.a;
import com.applovin.exoplayer2.i.f;
import com.applovin.exoplayer2.i.h;
import com.applovin.exoplayer2.i.j;
import com.applovin.exoplayer2.i.k;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.y;
import com.explorestack.protobuf.openrtb.LossReason;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.google.android.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class a extends c {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f3171a = {11, 1, 3, 12, 14, 5, 7, 9};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f3172b = {0, 4, 8, 12, 16, 20, 24, 28};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f3173c = {-1, -16711936, -16776961, -16711681, SupportMenu.CATEGORY_MASK, InputDeviceCompat.SOURCE_ANY, -65281};

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f3174d = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 231, 247, LossReason.LOSS_REASON_CREATIVE_FILTERED_CREATIVE_ATTRIBUTE_EXCLUSIONS_VALUE, 241, 9632};

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f3175e = {174, 176, PsExtractor.PRIVATE_STREAM_1, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, 244, 251};

    /* renamed from: f  reason: collision with root package name */
    private static final int[] f3176f = {193, 201, LossReason.LOSS_REASON_CREATIVE_FILTERED_ANIMATION_TOO_LONG_VALUE, 218, 220, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, 192, 194, 199, 200, 202, LossReason.LOSS_REASON_CREATIVE_FILTERED_SIZE_NOT_ALLOWED_VALUE, 235, LossReason.LOSS_REASON_CREATIVE_FILTERED_NOT_SECURE_VALUE, LossReason.LOSS_REASON_CREATIVE_FILTERED_LANGUAGE_EXCLUSIONS_VALUE, 239, LossReason.LOSS_REASON_CREATIVE_FILTERED_NOT_ALLOWED_IN_DEAL_VALUE, 217, 249, 219, 171, 187};

    /* renamed from: g  reason: collision with root package name */
    private static final int[] f3177g = {195, 227, LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, 204, 236, LossReason.LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS_VALUE, 242, 213, 245, 123, 125, 92, 94, 95, 124, 126, 196, 228, 214, 246, 223, 165, 164, 9474, 197, 229, 216, 248, 9484, 9488, 9492, 9496};

    /* renamed from: h  reason: collision with root package name */
    private static final boolean[] f3178h = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};
    private final int j;
    private final int k;
    private final int l;
    private final long m;
    private List<com.applovin.exoplayer2.i.a> p;
    private List<com.applovin.exoplayer2.i.a> q;
    private int r;
    private int s;
    private boolean t;
    private boolean u;
    private byte v;
    private byte w;
    private boolean y;
    private long z;
    private final y i = new y();
    private final ArrayList<C0046a> n = new ArrayList<>();
    private C0046a o = new C0046a(0, 4);
    private int x = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.applovin.exoplayer2.i.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0046a {

        /* renamed from: a  reason: collision with root package name */
        private final List<C0047a> f3187a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private final List<SpannableString> f3188b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        private final StringBuilder f3189c = new StringBuilder();

        /* renamed from: d  reason: collision with root package name */
        private int f3190d;

        /* renamed from: e  reason: collision with root package name */
        private int f3191e;

        /* renamed from: f  reason: collision with root package name */
        private int f3192f;

        /* renamed from: g  reason: collision with root package name */
        private int f3193g;

        /* renamed from: h  reason: collision with root package name */
        private int f3194h;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.applovin.exoplayer2.i.a.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0047a {

            /* renamed from: a  reason: collision with root package name */
            public final int f3195a;

            /* renamed from: b  reason: collision with root package name */
            public final boolean f3196b;

            /* renamed from: c  reason: collision with root package name */
            public int f3197c;

            public C0047a(int i, boolean z, int i2) {
                this.f3195a = i;
                this.f3196b = z;
                this.f3197c = i2;
            }
        }

        public C0046a(int i, int i2) {
            a(i);
            this.f3194h = i2;
        }

        private static void a(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
        }

        private static void a(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3) {
            if (i3 == -1) {
                return;
            }
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i3), i, i2, 33);
        }

        private static void b(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
            spannableStringBuilder.setSpan(new StyleSpan(2), i, i2, 33);
        }

        private SpannableString d() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f3189c);
            int length = spannableStringBuilder.length();
            int i = -1;
            int i2 = -1;
            int i3 = -1;
            int i4 = -1;
            int i5 = 0;
            int i6 = 0;
            boolean z = false;
            while (i5 < this.f3187a.size()) {
                C0047a c0047a = this.f3187a.get(i5);
                boolean z2 = c0047a.f3196b;
                int i7 = c0047a.f3195a;
                if (i7 != 8) {
                    boolean z3 = i7 == 7;
                    if (i7 != 7) {
                        i4 = a.f3173c[i7];
                    }
                    z = z3;
                }
                int i8 = c0047a.f3197c;
                i5++;
                if (i8 != (i5 < this.f3187a.size() ? this.f3187a.get(i5).f3197c : length)) {
                    if (i != -1 && !z2) {
                        a(spannableStringBuilder, i, i8);
                        i = -1;
                    } else if (i == -1 && z2) {
                        i = i8;
                    }
                    if (i2 != -1 && !z) {
                        b(spannableStringBuilder, i2, i8);
                        i2 = -1;
                    } else if (i2 == -1 && z) {
                        i2 = i8;
                    }
                    if (i4 != i3) {
                        a(spannableStringBuilder, i6, i8, i3);
                        i3 = i4;
                        i6 = i8;
                    }
                }
            }
            if (i != -1 && i != length) {
                a(spannableStringBuilder, i, length);
            }
            if (i2 != -1 && i2 != length) {
                b(spannableStringBuilder, i2, length);
            }
            if (i6 != length) {
                a(spannableStringBuilder, i6, length, i3);
            }
            return new SpannableString(spannableStringBuilder);
        }

        public void a(char c2) {
            if (this.f3189c.length() < 32) {
                this.f3189c.append(c2);
            }
        }

        public void a(int i) {
            this.f3193g = i;
            this.f3187a.clear();
            this.f3188b.clear();
            this.f3189c.setLength(0);
            this.f3190d = 15;
            this.f3191e = 0;
            this.f3192f = 0;
        }

        public void a(int i, boolean z) {
            this.f3187a.add(new C0047a(i, z, this.f3189c.length()));
        }

        public boolean a() {
            return this.f3187a.isEmpty() && this.f3188b.isEmpty() && this.f3189c.length() == 0;
        }

        public void b() {
            C0047a c0047a;
            int length = this.f3189c.length();
            if (length > 0) {
                this.f3189c.delete(length - 1, length);
                for (int size = this.f3187a.size() - 1; size >= 0; size--) {
                    if (this.f3187a.get(size).f3197c != length) {
                        return;
                    }
                    c0047a.f3197c--;
                }
            }
        }

        public void b(int i) {
            this.f3193g = i;
        }

        public void c() {
            this.f3188b.add(d());
            this.f3189c.setLength(0);
            this.f3187a.clear();
            int min = Math.min(this.f3194h, this.f3190d);
            while (this.f3188b.size() >= min) {
                this.f3188b.remove(0);
            }
        }

        public void c(int i) {
            this.f3194h = i;
        }

        public com.applovin.exoplayer2.i.a d(int i) {
            float f2;
            int i2 = this.f3191e + this.f3192f;
            int i3 = 32 - i2;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i4 = 0; i4 < this.f3188b.size(); i4++) {
                spannableStringBuilder.append(ai.a(this.f3188b.get(i4), i3));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append(ai.a(d(), i3));
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int length = i3 - spannableStringBuilder.length();
            int i5 = i2 - length;
            if (i == Integer.MIN_VALUE) {
                i = (this.f3193g != 2 || (Math.abs(i5) >= 3 && length >= 0)) ? (this.f3193g != 2 || i5 <= 0) ? 0 : 2 : 1;
            }
            if (i != 1) {
                if (i == 2) {
                    i2 = 32 - length;
                }
                f2 = ((i2 / 32.0f) * 0.8f) + 0.1f;
            } else {
                f2 = 0.5f;
            }
            int i6 = this.f3190d;
            if (i6 > 7) {
                i6 -= 17;
            } else if (this.f3193g == 1) {
                i6 -= this.f3194h - 1;
            }
            return new a.C0045a().a(spannableStringBuilder).a(Layout.Alignment.ALIGN_NORMAL).a(i6, 1).a(f2).b(i).e();
        }
    }

    public a(String str, int i, long j) {
        this.m = j > 0 ? j * 1000 : -9223372036854775807L;
        this.j = MimeTypes.APPLICATION_MP4CEA608.equals(str) ? 2 : 3;
        if (i != 1) {
            if (i == 2) {
                this.l = 1;
                this.k = 0;
                a(0);
                m();
                this.y = true;
                this.z = C.TIME_UNSET;
            }
            if (i == 3) {
                this.l = 0;
            } else if (i != 4) {
                q.c("Cea608Decoder", "Invalid channel. Defaulting to CC1.");
            } else {
                this.l = 1;
            }
            this.k = 1;
            a(0);
            m();
            this.y = true;
            this.z = C.TIME_UNSET;
        }
        this.l = 0;
        this.k = 0;
        a(0);
        m();
        this.y = true;
        this.z = C.TIME_UNSET;
    }

    private void a(byte b2, byte b3) {
        int i = f3171a[b2 & 7];
        if ((b3 & 32) != 0) {
            i++;
        }
        if (i != this.o.f3190d) {
            if (this.r != 1 && !this.o.a()) {
                C0046a c0046a = new C0046a(this.r, this.s);
                this.o = c0046a;
                this.n.add(c0046a);
            }
            this.o.f3190d = i;
        }
        boolean z = (b3 & 16) == 16;
        boolean z2 = (b3 & 1) == 1;
        int i2 = (b3 >> 1) & 7;
        this.o.a(z ? 8 : i2, z2);
        if (z) {
            this.o.f3191e = f3172b[i2];
        }
    }

    private void a(int i) {
        int i2 = this.r;
        if (i2 == i) {
            return;
        }
        this.r = i;
        if (i == 3) {
            for (int i3 = 0; i3 < this.n.size(); i3++) {
                this.n.get(i3).b(i);
            }
            return;
        }
        m();
        if (i2 == 3 || i == 1 || i == 0) {
            this.p = Collections.emptyList();
        }
    }

    private boolean a(byte b2) {
        if (h(b2)) {
            this.x = i(b2);
        }
        return this.x == this.l;
    }

    private boolean a(boolean z, byte b2, byte b3) {
        if (!z || !j(b2)) {
            this.u = false;
        } else if (this.u && this.v == b2 && this.w == b3) {
            this.u = false;
            return true;
        } else {
            this.u = true;
            this.v = b2;
            this.w = b3;
        }
        return false;
    }

    private void b(byte b2) {
        this.o.a(' ');
        this.o.a((b2 >> 1) & 7, (b2 & 1) == 1);
    }

    private void b(byte b2, byte b3) {
        if (!k(b2)) {
            if (l(b2)) {
                if (b3 != 32 && b3 != 47) {
                    switch (b3) {
                        case 37:
                        case 38:
                        case 39:
                            break;
                        default:
                            switch (b3) {
                                case 41:
                                    break;
                                case 42:
                                case 43:
                                    break;
                                default:
                                    return;
                            }
                    }
                }
                this.y = true;
                return;
            }
            return;
        }
        this.y = false;
    }

    private void b(int i) {
        this.s = i;
        this.o.c(i);
    }

    private void c(byte b2) {
        if (b2 == 32) {
            a(2);
        } else if (b2 == 41) {
            a(3);
        } else {
            switch (b2) {
                case 37:
                    a(1);
                    b(2);
                    return;
                case 38:
                    a(1);
                    b(3);
                    return;
                case 39:
                    a(1);
                    b(4);
                    return;
                default:
                    int i = this.r;
                    if (i == 0) {
                        return;
                    }
                    if (b2 == 33) {
                        this.o.b();
                        return;
                    }
                    switch (b2) {
                        case 44:
                            this.p = Collections.emptyList();
                            int i2 = this.r;
                            if (i2 != 1 && i2 != 3) {
                                return;
                            }
                            break;
                        case 45:
                            if (i != 1 || this.o.a()) {
                                return;
                            }
                            this.o.c();
                            return;
                        case 46:
                            break;
                        case 47:
                            this.p = l();
                            break;
                        default:
                            return;
                    }
                    m();
                    return;
            }
        }
    }

    private static boolean c(byte b2, byte b3) {
        return (b2 & 247) == 17 && (b3 & 240) == 48;
    }

    private static char d(byte b2) {
        return (char) f3174d[(b2 & Byte.MAX_VALUE) - 32];
    }

    private static boolean d(byte b2, byte b3) {
        return (b2 & 246) == 18 && (b3 & 224) == 32;
    }

    private static char e(byte b2) {
        return (char) f3175e[b2 & 15];
    }

    private static char e(byte b2, byte b3) {
        return (b2 & 1) == 0 ? f(b3) : g(b3);
    }

    private static char f(byte b2) {
        return (char) f3176f[b2 & 31];
    }

    private static boolean f(byte b2, byte b3) {
        return (b2 & 247) == 17 && (b3 & 240) == 32;
    }

    private static char g(byte b2) {
        return (char) f3177g[b2 & 31];
    }

    private static boolean g(byte b2, byte b3) {
        return (b2 & 240) == 16 && (b3 & 192) == 64;
    }

    private static boolean h(byte b2) {
        return (b2 & 224) == 0;
    }

    private static boolean h(byte b2, byte b3) {
        return (b2 & 247) == 23 && b3 >= 33 && b3 <= 35;
    }

    private static int i(byte b2) {
        return (b2 >> 3) & 1;
    }

    private static boolean i(byte b2, byte b3) {
        return (b2 & 246) == 20 && (b3 & 240) == 32;
    }

    private static boolean j(byte b2) {
        return (b2 & 240) == 16;
    }

    private static boolean k(byte b2) {
        return 1 <= b2 && b2 <= 15;
    }

    private List<com.applovin.exoplayer2.i.a> l() {
        int size = this.n.size();
        ArrayList arrayList = new ArrayList(size);
        int i = 2;
        for (int i2 = 0; i2 < size; i2++) {
            com.applovin.exoplayer2.i.a d2 = this.n.get(i2).d(Integer.MIN_VALUE);
            arrayList.add(d2);
            if (d2 != null) {
                i = Math.min(i, d2.j);
            }
        }
        ArrayList arrayList2 = new ArrayList(size);
        for (int i3 = 0; i3 < size; i3++) {
            com.applovin.exoplayer2.i.a aVar = (com.applovin.exoplayer2.i.a) arrayList.get(i3);
            if (aVar != null) {
                if (aVar.j != i) {
                    aVar = (com.applovin.exoplayer2.i.a) com.applovin.exoplayer2.l.a.b(this.n.get(i3).d(i));
                }
                arrayList2.add(aVar);
            }
        }
        return arrayList2;
    }

    private static boolean l(byte b2) {
        return (b2 & 247) == 20;
    }

    private void m() {
        this.o.a(this.r);
        this.n.clear();
        this.n.add(this.o);
    }

    private boolean n() {
        return (this.m == C.TIME_UNSET || this.z == C.TIME_UNSET || k() - this.z < this.m) ? false : true;
    }

    @Override // com.applovin.exoplayer2.i.a.c, com.applovin.exoplayer2.i.g
    public /* bridge */ /* synthetic */ void a(long j) {
        super.a(j);
    }

    /* JADX WARN: Removed duplicated region for block: B:77:0x006e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0017 A[SYNTHETIC] */
    @Override // com.applovin.exoplayer2.i.a.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void a(com.applovin.exoplayer2.i.j r10) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.i.a.a.a(com.applovin.exoplayer2.i.j):void");
    }

    @Override // com.applovin.exoplayer2.i.a.c
    public /* bridge */ /* synthetic */ void b(j jVar) throws h {
        super.a(jVar);
    }

    @Override // com.applovin.exoplayer2.i.a.c, com.applovin.exoplayer2.c.d
    public void c() {
        super.c();
        this.p = null;
        this.q = null;
        a(0);
        b(4);
        m();
        this.t = false;
        this.u = false;
        this.v = (byte) 0;
        this.w = (byte) 0;
        this.x = 0;
        this.y = true;
        this.z = C.TIME_UNSET;
    }

    @Override // com.applovin.exoplayer2.i.a.c, com.applovin.exoplayer2.c.d
    public void d() {
    }

    @Override // com.applovin.exoplayer2.i.a.c, com.applovin.exoplayer2.c.d
    /* renamed from: e */
    public k b() throws h {
        k j;
        k b2 = super.b();
        if (b2 != null) {
            return b2;
        }
        if (!n() || (j = j()) == null) {
            return null;
        }
        this.p = Collections.emptyList();
        this.z = C.TIME_UNSET;
        j.a(k(), g(), Long.MAX_VALUE);
        return j;
    }

    @Override // com.applovin.exoplayer2.i.a.c
    protected boolean f() {
        return this.p != this.q;
    }

    @Override // com.applovin.exoplayer2.i.a.c
    protected f g() {
        this.q = this.p;
        return new d((List) com.applovin.exoplayer2.l.a.b(this.p));
    }

    @Override // com.applovin.exoplayer2.i.a.c
    public /* bridge */ /* synthetic */ j h() throws h {
        return super.a();
    }
}

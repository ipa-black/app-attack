package com.applovin.exoplayer2.i;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.Layout;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import androidx.core.view.ViewCompat;
import com.applovin.exoplayer2.common.base.Objects;
import com.applovin.exoplayer2.g;
/* loaded from: classes.dex */
public final class a implements com.applovin.exoplayer2.g {

    /* renamed from: a  reason: collision with root package name */
    public static final a f3163a = new C0045a().a("").e();
    public static final g.a<a> s = new g.a() { // from class: com.applovin.exoplayer2.i.a$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.g.a
        public final com.applovin.exoplayer2.g fromBundle(Bundle bundle) {
            a a2;
            a2 = a.a(bundle);
            return a2;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    public final CharSequence f3164b;

    /* renamed from: c  reason: collision with root package name */
    public final Layout.Alignment f3165c;

    /* renamed from: d  reason: collision with root package name */
    public final Layout.Alignment f3166d;

    /* renamed from: e  reason: collision with root package name */
    public final Bitmap f3167e;

    /* renamed from: f  reason: collision with root package name */
    public final float f3168f;

    /* renamed from: g  reason: collision with root package name */
    public final int f3169g;

    /* renamed from: h  reason: collision with root package name */
    public final int f3170h;
    public final float i;
    public final int j;
    public final float k;
    public final float l;
    public final boolean m;
    public final int n;
    public final int o;
    public final float p;
    public final int q;
    public final float r;

    /* renamed from: com.applovin.exoplayer2.i.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0045a {

        /* renamed from: a  reason: collision with root package name */
        private CharSequence f3179a;

        /* renamed from: b  reason: collision with root package name */
        private Bitmap f3180b;

        /* renamed from: c  reason: collision with root package name */
        private Layout.Alignment f3181c;

        /* renamed from: d  reason: collision with root package name */
        private Layout.Alignment f3182d;

        /* renamed from: e  reason: collision with root package name */
        private float f3183e;

        /* renamed from: f  reason: collision with root package name */
        private int f3184f;

        /* renamed from: g  reason: collision with root package name */
        private int f3185g;

        /* renamed from: h  reason: collision with root package name */
        private float f3186h;
        private int i;
        private int j;
        private float k;
        private float l;
        private float m;
        private boolean n;
        private int o;
        private int p;
        private float q;

        public C0045a() {
            this.f3179a = null;
            this.f3180b = null;
            this.f3181c = null;
            this.f3182d = null;
            this.f3183e = -3.4028235E38f;
            this.f3184f = Integer.MIN_VALUE;
            this.f3185g = Integer.MIN_VALUE;
            this.f3186h = -3.4028235E38f;
            this.i = Integer.MIN_VALUE;
            this.j = Integer.MIN_VALUE;
            this.k = -3.4028235E38f;
            this.l = -3.4028235E38f;
            this.m = -3.4028235E38f;
            this.n = false;
            this.o = ViewCompat.MEASURED_STATE_MASK;
            this.p = Integer.MIN_VALUE;
        }

        private C0045a(a aVar) {
            this.f3179a = aVar.f3164b;
            this.f3180b = aVar.f3167e;
            this.f3181c = aVar.f3165c;
            this.f3182d = aVar.f3166d;
            this.f3183e = aVar.f3168f;
            this.f3184f = aVar.f3169g;
            this.f3185g = aVar.f3170h;
            this.f3186h = aVar.i;
            this.i = aVar.j;
            this.j = aVar.o;
            this.k = aVar.p;
            this.l = aVar.k;
            this.m = aVar.l;
            this.n = aVar.m;
            this.o = aVar.n;
            this.p = aVar.q;
            this.q = aVar.r;
        }

        public C0045a a(float f2) {
            this.f3186h = f2;
            return this;
        }

        public C0045a a(float f2, int i) {
            this.f3183e = f2;
            this.f3184f = i;
            return this;
        }

        public C0045a a(int i) {
            this.f3185g = i;
            return this;
        }

        public C0045a a(Bitmap bitmap) {
            this.f3180b = bitmap;
            return this;
        }

        public C0045a a(Layout.Alignment alignment) {
            this.f3181c = alignment;
            return this;
        }

        public C0045a a(CharSequence charSequence) {
            this.f3179a = charSequence;
            return this;
        }

        public CharSequence a() {
            return this.f3179a;
        }

        public int b() {
            return this.f3185g;
        }

        public C0045a b(float f2) {
            this.l = f2;
            return this;
        }

        public C0045a b(float f2, int i) {
            this.k = f2;
            this.j = i;
            return this;
        }

        public C0045a b(int i) {
            this.i = i;
            return this;
        }

        public C0045a b(Layout.Alignment alignment) {
            this.f3182d = alignment;
            return this;
        }

        public int c() {
            return this.i;
        }

        public C0045a c(float f2) {
            this.m = f2;
            return this;
        }

        public C0045a c(int i) {
            this.o = i;
            this.n = true;
            return this;
        }

        public C0045a d() {
            this.n = false;
            return this;
        }

        public C0045a d(float f2) {
            this.q = f2;
            return this;
        }

        public C0045a d(int i) {
            this.p = i;
            return this;
        }

        public a e() {
            return new a(this.f3179a, this.f3181c, this.f3182d, this.f3180b, this.f3183e, this.f3184f, this.f3185g, this.f3186h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.p, this.q);
        }
    }

    private a(CharSequence charSequence, Layout.Alignment alignment, Layout.Alignment alignment2, Bitmap bitmap, float f2, int i, int i2, float f3, int i3, int i4, float f4, float f5, float f6, boolean z, int i5, int i6, float f7) {
        if (charSequence == null) {
            com.applovin.exoplayer2.l.a.b(bitmap);
        } else {
            com.applovin.exoplayer2.l.a.a(bitmap == null);
        }
        this.f3164b = charSequence instanceof Spanned ? SpannedString.valueOf(charSequence) : charSequence != null ? charSequence.toString() : null;
        this.f3165c = alignment;
        this.f3166d = alignment2;
        this.f3167e = bitmap;
        this.f3168f = f2;
        this.f3169g = i;
        this.f3170h = i2;
        this.i = f3;
        this.j = i3;
        this.k = f5;
        this.l = f6;
        this.m = z;
        this.n = i5;
        this.o = i4;
        this.p = f4;
        this.q = i6;
        this.r = f7;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a a(Bundle bundle) {
        C0045a c0045a = new C0045a();
        CharSequence charSequence = bundle.getCharSequence(a(0));
        if (charSequence != null) {
            c0045a.a(charSequence);
        }
        Layout.Alignment alignment = (Layout.Alignment) bundle.getSerializable(a(1));
        if (alignment != null) {
            c0045a.a(alignment);
        }
        Layout.Alignment alignment2 = (Layout.Alignment) bundle.getSerializable(a(2));
        if (alignment2 != null) {
            c0045a.b(alignment2);
        }
        Bitmap bitmap = (Bitmap) bundle.getParcelable(a(3));
        if (bitmap != null) {
            c0045a.a(bitmap);
        }
        if (bundle.containsKey(a(4)) && bundle.containsKey(a(5))) {
            c0045a.a(bundle.getFloat(a(4)), bundle.getInt(a(5)));
        }
        if (bundle.containsKey(a(6))) {
            c0045a.a(bundle.getInt(a(6)));
        }
        if (bundle.containsKey(a(7))) {
            c0045a.a(bundle.getFloat(a(7)));
        }
        if (bundle.containsKey(a(8))) {
            c0045a.b(bundle.getInt(a(8)));
        }
        if (bundle.containsKey(a(10)) && bundle.containsKey(a(9))) {
            c0045a.b(bundle.getFloat(a(10)), bundle.getInt(a(9)));
        }
        if (bundle.containsKey(a(11))) {
            c0045a.b(bundle.getFloat(a(11)));
        }
        if (bundle.containsKey(a(12))) {
            c0045a.c(bundle.getFloat(a(12)));
        }
        if (bundle.containsKey(a(13))) {
            c0045a.c(bundle.getInt(a(13)));
        }
        if (!bundle.getBoolean(a(14), false)) {
            c0045a.d();
        }
        if (bundle.containsKey(a(15))) {
            c0045a.d(bundle.getInt(a(15)));
        }
        if (bundle.containsKey(a(16))) {
            c0045a.d(bundle.getFloat(a(16)));
        }
        return c0045a.e();
    }

    private static String a(int i) {
        return Integer.toString(i, 36);
    }

    public C0045a a() {
        return new C0045a();
    }

    public boolean equals(Object obj) {
        Bitmap bitmap;
        Bitmap bitmap2;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return TextUtils.equals(this.f3164b, aVar.f3164b) && this.f3165c == aVar.f3165c && this.f3166d == aVar.f3166d && ((bitmap = this.f3167e) != null ? !((bitmap2 = aVar.f3167e) == null || !bitmap.sameAs(bitmap2)) : aVar.f3167e == null) && this.f3168f == aVar.f3168f && this.f3169g == aVar.f3169g && this.f3170h == aVar.f3170h && this.i == aVar.i && this.j == aVar.j && this.k == aVar.k && this.l == aVar.l && this.m == aVar.m && this.n == aVar.n && this.o == aVar.o && this.p == aVar.p && this.q == aVar.q && this.r == aVar.r;
    }

    public int hashCode() {
        return Objects.hashCode(this.f3164b, this.f3165c, this.f3166d, this.f3167e, Float.valueOf(this.f3168f), Integer.valueOf(this.f3169g), Integer.valueOf(this.f3170h), Float.valueOf(this.i), Integer.valueOf(this.j), Float.valueOf(this.k), Float.valueOf(this.l), Boolean.valueOf(this.m), Integer.valueOf(this.n), Integer.valueOf(this.o), Float.valueOf(this.p), Integer.valueOf(this.q), Float.valueOf(this.r));
    }
}

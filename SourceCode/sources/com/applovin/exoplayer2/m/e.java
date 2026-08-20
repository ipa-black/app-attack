package com.applovin.exoplayer2.m;

import com.google.android.exoplayer2.C;
import java.util.Arrays;
/* loaded from: classes.dex */
final class e {

    /* renamed from: c  reason: collision with root package name */
    private boolean f3949c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f3950d;

    /* renamed from: f  reason: collision with root package name */
    private int f3952f;

    /* renamed from: a  reason: collision with root package name */
    private a f3947a = new a();

    /* renamed from: b  reason: collision with root package name */
    private a f3948b = new a();

    /* renamed from: e  reason: collision with root package name */
    private long f3951e = C.TIME_UNSET;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private long f3953a;

        /* renamed from: b  reason: collision with root package name */
        private long f3954b;

        /* renamed from: c  reason: collision with root package name */
        private long f3955c;

        /* renamed from: d  reason: collision with root package name */
        private long f3956d;

        /* renamed from: e  reason: collision with root package name */
        private long f3957e;

        /* renamed from: f  reason: collision with root package name */
        private long f3958f;

        /* renamed from: g  reason: collision with root package name */
        private final boolean[] f3959g = new boolean[15];

        /* renamed from: h  reason: collision with root package name */
        private int f3960h;

        private static int b(long j) {
            return (int) (j % 15);
        }

        public void a() {
            this.f3956d = 0L;
            this.f3957e = 0L;
            this.f3958f = 0L;
            this.f3960h = 0;
            Arrays.fill(this.f3959g, false);
        }

        public void a(long j) {
            int i;
            long j2 = this.f3956d;
            if (j2 == 0) {
                this.f3953a = j;
            } else if (j2 == 1) {
                long j3 = j - this.f3953a;
                this.f3954b = j3;
                this.f3958f = j3;
                this.f3957e = 1L;
            } else {
                long j4 = j - this.f3955c;
                int b2 = b(j2);
                if (Math.abs(j4 - this.f3954b) <= 1000000) {
                    this.f3957e++;
                    this.f3958f += j4;
                    boolean[] zArr = this.f3959g;
                    if (zArr[b2]) {
                        zArr[b2] = false;
                        i = this.f3960h - 1;
                        this.f3960h = i;
                    }
                } else {
                    boolean[] zArr2 = this.f3959g;
                    if (!zArr2[b2]) {
                        zArr2[b2] = true;
                        i = this.f3960h + 1;
                        this.f3960h = i;
                    }
                }
            }
            this.f3956d++;
            this.f3955c = j;
        }

        public boolean b() {
            return this.f3956d > 15 && this.f3960h == 0;
        }

        public boolean c() {
            long j = this.f3956d;
            if (j == 0) {
                return false;
            }
            return this.f3959g[b(j - 1)];
        }

        public long d() {
            return this.f3958f;
        }

        public long e() {
            long j = this.f3957e;
            if (j == 0) {
                return 0L;
            }
            return this.f3958f / j;
        }
    }

    public void a() {
        this.f3947a.a();
        this.f3948b.a();
        this.f3949c = false;
        this.f3951e = C.TIME_UNSET;
        this.f3952f = 0;
    }

    public void a(long j) {
        this.f3947a.a(j);
        if (this.f3947a.b() && !this.f3950d) {
            this.f3949c = false;
        } else if (this.f3951e != C.TIME_UNSET) {
            if (!this.f3949c || this.f3948b.c()) {
                this.f3948b.a();
                this.f3948b.a(this.f3951e);
            }
            this.f3949c = true;
            this.f3948b.a(j);
        }
        if (this.f3949c && this.f3948b.b()) {
            a aVar = this.f3947a;
            this.f3947a = this.f3948b;
            this.f3948b = aVar;
            this.f3949c = false;
            this.f3950d = false;
        }
        this.f3951e = j;
        this.f3952f = this.f3947a.b() ? 0 : this.f3952f + 1;
    }

    public boolean b() {
        return this.f3947a.b();
    }

    public int c() {
        return this.f3952f;
    }

    public long d() {
        return b() ? this.f3947a.d() : C.TIME_UNSET;
    }

    public long e() {
        return b() ? this.f3947a.e() : C.TIME_UNSET;
    }

    public float f() {
        if (b()) {
            return (float) (1.0E9d / this.f3947a.e());
        }
        return -1.0f;
    }
}

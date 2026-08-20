package com.ironsource.mediationsdk.model;
/* loaded from: classes3.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public boolean f11274a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f11275b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f11276c;

    /* renamed from: d  reason: collision with root package name */
    public l f11277d;

    /* renamed from: e  reason: collision with root package name */
    public int f11278e;

    /* renamed from: f  reason: collision with root package name */
    public int f11279f;

    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public boolean f11280a = true;

        /* renamed from: b  reason: collision with root package name */
        private boolean f11281b = false;

        /* renamed from: c  reason: collision with root package name */
        private boolean f11282c = false;

        /* renamed from: d  reason: collision with root package name */
        private l f11283d = null;

        /* renamed from: e  reason: collision with root package name */
        private int f11284e = 0;

        /* renamed from: f  reason: collision with root package name */
        private int f11285f = 0;

        public final a a(boolean z, int i) {
            this.f11282c = z;
            this.f11285f = i;
            return this;
        }

        public final a a(boolean z, l lVar, int i) {
            this.f11281b = z;
            if (lVar == null) {
                lVar = l.PER_DAY;
            }
            this.f11283d = lVar;
            this.f11284e = i;
            return this;
        }

        public final k a() {
            return new k(this.f11280a, this.f11281b, this.f11282c, this.f11283d, this.f11284e, this.f11285f, (byte) 0);
        }
    }

    private k(boolean z, boolean z2, boolean z3, l lVar, int i, int i2) {
        this.f11274a = z;
        this.f11275b = z2;
        this.f11276c = z3;
        this.f11277d = lVar;
        this.f11278e = i;
        this.f11279f = i2;
    }

    /* synthetic */ k(boolean z, boolean z2, boolean z3, l lVar, int i, int i2, byte b2) {
        this(z, z2, z3, lVar, i, i2);
    }
}

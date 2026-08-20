package com.ironsource.mediationsdk.utils;

import com.ironsource.mediationsdk.IronSource;
/* loaded from: classes3.dex */
public final class o {

    /* renamed from: f  reason: collision with root package name */
    private static o f11463f;

    /* renamed from: a  reason: collision with root package name */
    private int f11464a = 1;

    /* renamed from: b  reason: collision with root package name */
    private int f11465b = 1;

    /* renamed from: c  reason: collision with root package name */
    private int f11466c = 1;

    /* renamed from: d  reason: collision with root package name */
    private int f11467d = 1;

    /* renamed from: e  reason: collision with root package name */
    private com.ironsource.sdk.a.e f11468e = new com.ironsource.sdk.a.e();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ironsource.mediationsdk.utils.o$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f11469a;

        static {
            int[] iArr = new int[IronSource.AD_UNIT.values().length];
            f11469a = iArr;
            try {
                iArr[IronSource.AD_UNIT.OFFERWALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11469a[IronSource.AD_UNIT.REWARDED_VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11469a[IronSource.AD_UNIT.INTERSTITIAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f11469a[IronSource.AD_UNIT.BANNER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private o() {
        d(this.f11464a);
        e(this.f11465b);
        f(this.f11467d);
    }

    public static synchronized o a() {
        o oVar;
        synchronized (o.class) {
            if (f11463f == null) {
                f11463f = new o();
            }
            oVar = f11463f;
        }
        return oVar;
    }

    private static IronSource.AD_UNIT c(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return null;
                    }
                    return IronSource.AD_UNIT.BANNER;
                }
                return IronSource.AD_UNIT.INTERSTITIAL;
            }
            return IronSource.AD_UNIT.REWARDED_VIDEO;
        }
        return IronSource.AD_UNIT.OFFERWALL;
    }

    private void d(int i) {
        this.f11464a = i;
        this.f11468e.b(i);
    }

    private void e(int i) {
        this.f11465b = i;
        this.f11468e.a(i);
    }

    private void f(int i) {
        this.f11467d = i;
        this.f11468e.c(i);
    }

    public final synchronized void a(int i) {
        a(c(i));
    }

    public final synchronized void a(IronSource.AD_UNIT ad_unit) {
        if (ad_unit == null) {
            return;
        }
        int i = AnonymousClass1.f11469a[ad_unit.ordinal()];
        if (i == 1) {
            this.f11466c++;
        } else if (i == 2) {
            d(this.f11464a + 1);
        } else if (i == 3) {
            e(this.f11465b + 1);
        } else {
            if (i == 4) {
                f(this.f11467d + 1);
            }
        }
    }

    public final synchronized int b(int i) {
        return b(c(i));
    }

    public final synchronized int b(IronSource.AD_UNIT ad_unit) {
        if (ad_unit == null) {
            return -1;
        }
        int i = AnonymousClass1.f11469a[ad_unit.ordinal()];
        if (i == 1) {
            return this.f11466c;
        } else if (i == 2) {
            return this.f11464a;
        } else if (i == 3) {
            return this.f11465b;
        } else if (i != 4) {
            return -1;
        } else {
            return this.f11467d;
        }
    }
}

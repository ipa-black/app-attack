package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public class Z8 extends AbstractC1482d9 {

    /* renamed from: c  reason: collision with root package name */
    private static final Rd f14342c = new Rd("LAST_SATELLITE_CLIDS_DIAGNOSTICS_SENT_TIME", null);

    /* renamed from: d  reason: collision with root package name */
    private static final Rd f14343d = new Rd("LAST_PRELOAD_INFO_DIAGNOSTICS_SENT_TIME", null);

    public Z8(S7 s7) {
        super(s7);
    }

    public long b(long j) {
        return a(f14342c.a(), j);
    }

    public long c(long j) {
        return a(f14343d.a(), j);
    }

    public Z8 d(long j) {
        return (Z8) b(f14342c.a(), j);
    }

    public Z8 e(long j) {
        return (Z8) b(f14343d.a(), j);
    }
}

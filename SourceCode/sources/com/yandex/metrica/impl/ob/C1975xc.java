package com.yandex.metrica.impl.ob;

import android.location.Location;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* renamed from: com.yandex.metrica.impl.ob.xc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
class C1975xc extends AbstractC1917v2<Location> {

    /* renamed from: d  reason: collision with root package name */
    public static final long f16034d = TimeUnit.MINUTES.toMillis(2);

    /* renamed from: e  reason: collision with root package name */
    public static final List<String> f16035e = Arrays.asList("gps", "network");

    /* renamed from: c  reason: collision with root package name */
    private a f16036c;

    /* renamed from: com.yandex.metrica.impl.ob.xc$a */
    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f16037a;

        public a(long j, long j2, long j3) {
            this.f16037a = j;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1975xc(com.yandex.metrica.impl.ob.Ph r9) {
        /*
            r8 = this;
            com.yandex.metrica.impl.ob.xc$a r7 = new com.yandex.metrica.impl.ob.xc$a
            long r1 = com.yandex.metrica.impl.ob.C1975xc.f16034d
            r3 = 200(0xc8, double:9.9E-322)
            r5 = 50
            r0 = r7
            r0.<init>(r1, r3, r5)
            if (r9 == 0) goto L11
            long r0 = r9.f13718c
            goto L15
        L11:
            com.yandex.metrica.impl.ob.If$c r0 = com.yandex.metrica.impl.ob.G.f12951e
            long r0 = r0.f13088c
        L15:
            r2 = r0
            r0 = 2
            if (r9 == 0) goto L1d
            long r4 = r9.f13718c
            goto L21
        L1d:
            com.yandex.metrica.impl.ob.If$c r9 = com.yandex.metrica.impl.ob.G.f12951e
            long r4 = r9.f13088c
        L21:
            long r4 = r4 * r0
            r0 = r8
            r1 = r7
            r0.<init>(r1, r2, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C1975xc.<init>(com.yandex.metrica.impl.ob.Ph):void");
    }

    @Override // com.yandex.metrica.impl.ob.G0
    protected boolean a(Object obj) {
        Location location = (Location) obj;
        return f16035e.contains(location.getProvider()) && (this.f12956a.b() || this.f12956a.d() || a(location, (Location) this.f12956a.a()));
    }

    @Override // com.yandex.metrica.impl.ob.G0
    protected long b(Ph ph) {
        return ph.f13718c;
    }

    @Override // com.yandex.metrica.impl.ob.G0
    protected long a(Ph ph) {
        return ph.f13718c * 2;
    }

    private boolean a(Location location, Location location2) {
        boolean equals;
        long j = this.f16036c.f16037a;
        if (location2 == null) {
            return true;
        }
        long time = location.getTime() - location2.getTime();
        boolean z = time > j;
        boolean z2 = time < (-j);
        boolean z3 = time > 0;
        if (z) {
            return true;
        }
        if (!z2) {
            int accuracy = (int) (location.getAccuracy() - location2.getAccuracy());
            boolean z4 = accuracy > 0;
            boolean z5 = accuracy < 0;
            boolean z6 = ((long) accuracy) > 200;
            String provider = location.getProvider();
            String provider2 = location2.getProvider();
            if (provider == null) {
                equals = provider2 == null;
            } else {
                equals = provider.equals(provider2);
            }
            if (z5) {
                return true;
            }
            if (z3 && !z4) {
                return true;
            }
            if (z3 && !z6 && equals) {
                return true;
            }
        }
        return false;
    }

    C1975xc(a aVar, long j, long j2) {
        super(j, j2);
        this.f16036c = aVar;
    }
}

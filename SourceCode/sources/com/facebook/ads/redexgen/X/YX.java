package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class YX implements C4T {
    public static String[] A01 = {"IP6gXu3Aic9rrZpr", "DSm6OHbiM4aoMyjFh2wy7Spd3inn5axc", "lJd94ygIcpnkIi9oYNWqXg3HQV8t0X4Q", "337I3pVrWHOBtYrFGcdtPHZp8Kpz9VIJ", "vd5lczoeg9gY82TvyWngHoQKFpNC9gt0", "CefcuhKyPhUbDvzsvxPUhaoMgi2Xy5FO", "Qia1n7qQgpdEP2KZeQvga8Xzcvoo51Ij", "UfDKqgBAky8ekVpIbdpaQQPTuf6RISL4"};
    public final /* synthetic */ E9 A00;

    public YX(E9 e9) {
        this.A00 = e9;
    }

    @Override // com.facebook.ads.redexgen.X.C4T
    public final void AAB(AbstractC05094r abstractC05094r) {
        boolean A0A;
        abstractC05094r.A0Z(true);
        if (abstractC05094r.A06 != null && abstractC05094r.A07 == null) {
            abstractC05094r.A06 = null;
        }
        abstractC05094r.A07 = null;
        A0A = abstractC05094r.A0A();
        if (!A0A && !this.A00.A20(abstractC05094r.A0H) && abstractC05094r.A0e()) {
            E9 e9 = this.A00;
            if (A01[6].charAt(16) != 'e') {
                throw new RuntimeException();
            }
            A01[0] = "BbBTSQcWyeSpGVnm";
            e9.removeDetachedView(abstractC05094r.A0H, false);
        }
    }
}

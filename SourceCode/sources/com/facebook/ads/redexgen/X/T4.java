package com.facebook.ads.redexgen.X;

import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: assets/audience_network.dex */
public class T4 implements InterfaceC0901Lh {
    public final /* synthetic */ T0 A00;

    public T4(T0 t0) {
        this.A00 = t0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0901Lh
    public final void AAW() {
        boolean A0Z;
        boolean z;
        C0829Ii c0829Ii;
        InterfaceC0903Lj interfaceC0903Lj;
        MC mc;
        AtomicBoolean atomicBoolean;
        boolean A0Y;
        AtomicBoolean atomicBoolean2;
        NS ns;
        A0Z = this.A00.A0Z();
        if (A0Z) {
            atomicBoolean2 = this.A00.A0T;
            if (!atomicBoolean2.get()) {
                ns = this.A00.A0R;
                ns.A07(this.A00);
                return;
            }
        }
        z = this.A00.A0V;
        if (z) {
            atomicBoolean = this.A00.A0T;
            if (!atomicBoolean.get()) {
                A0Y = this.A00.A0Y();
                if (A0Y) {
                    this.A00.A0Y.setToolbarActionMode(0);
                    this.A00.A0M();
                    return;
                }
            }
        }
        c0829Ii = this.A00.A0L;
        c0829Ii.A04(EnumC0828Ih.A07, null);
        interfaceC0903Lj = this.A00.A0O;
        mc = this.A00.A0P;
        interfaceC0903Lj.A3t(mc.A6b());
    }
}

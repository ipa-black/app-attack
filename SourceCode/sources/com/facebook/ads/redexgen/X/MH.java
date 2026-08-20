package com.facebook.ads.redexgen.X;

import android.widget.FrameLayout;
import androidx.annotation.Nullable;
/* loaded from: assets/audience_network.dex */
public abstract class MH extends FrameLayout {
    public int A00;
    public C2F A01;
    public C2G A02;
    @Nullable
    public C2H A03;
    public final C2D A04;
    public final C1203Xc A05;
    public final InterfaceC0821Ia A06;
    @Nullable
    public final InterfaceC0903Lj A07;
    @Nullable
    public final InterfaceC0904Lk A08;
    public final String A09;
    @Nullable
    public final C1V A0A;
    public final MJ A0B;

    public abstract void A0L();

    public abstract void A0M();

    public abstract void A0N(C2H c2h, C2F c2f);

    public abstract void A0O(C2H c2h, C2F c2f);

    public abstract boolean A0P();

    public MH(C1203Xc c1203Xc, InterfaceC0821Ia interfaceC0821Ia, String str) {
        this(c1203Xc, interfaceC0821Ia, str, null, null, null);
    }

    public MH(C1203Xc c1203Xc, InterfaceC0821Ia interfaceC0821Ia, String str, @Nullable C1V c1v, @Nullable InterfaceC0904Lk interfaceC0904Lk, @Nullable InterfaceC0903Lj interfaceC0903Lj) {
        super(c1203Xc);
        this.A00 = 0;
        this.A01 = C2F.A04;
        this.A03 = null;
        this.A0B = new C1096Sv(this);
        this.A05 = c1203Xc;
        this.A06 = interfaceC0821Ia;
        this.A08 = interfaceC0904Lk;
        this.A07 = interfaceC0903Lj;
        this.A09 = str;
        this.A0A = c1v;
        this.A04 = C2E.A00(this.A05.A01());
    }

    public static /* synthetic */ int A00(MH mh) {
        int i = mh.A00;
        mh.A00 = i + 1;
        return i;
    }

    public static /* synthetic */ int A01(MH mh) {
        int i = mh.A00;
        mh.A00 = i - 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0B() {
        if (this.A02.A0A()) {
            this.A06.A95(this.A09, this.A02.A02());
            this.A02.A03();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0C() {
        this.A03 = null;
        this.A02.A05();
        A0L();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0D(C2H c2h) {
        this.A02.A08(this.A01);
        A0N(c2h, this.A01);
        C04110u.A01(this.A05).A0L();
        if (A0P()) {
            A0B();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0E(C2H c2h) {
        this.A03 = c2h;
        this.A02.A09(this.A01, this.A00);
        A0O(c2h, this.A01);
    }

    public final void A0J() {
        A0B();
    }

    public final void A0K() {
        this.A02 = new C2G(new C0829Ii(this.A09, this.A06));
        InterfaceC0904Lk interfaceC0904Lk = this.A08;
        if (interfaceC0904Lk != null) {
            interfaceC0904Lk.ABw(true);
        }
        A0C();
    }
}

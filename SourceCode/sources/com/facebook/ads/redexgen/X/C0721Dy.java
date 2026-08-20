package com.facebook.ads.redexgen.X;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.Nullable;
/* renamed from: com.facebook.ads.redexgen.X.Dy  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0721Dy {
    public final GU A00;
    public final GW A01;
    public final GW A02;
    public final InterfaceC0794Gx A03;
    public final C0803Hg A04;

    public C0721Dy(InterfaceC0794Gx interfaceC0794Gx, GW gw) {
        this(interfaceC0794Gx, gw, null, null, null);
    }

    public C0721Dy(InterfaceC0794Gx interfaceC0794Gx, GW gw, @Nullable GW gw2, @Nullable GU gu, @Nullable C0803Hg c0803Hg) {
        HD.A01(gw);
        this.A03 = interfaceC0794Gx;
        this.A02 = gw;
        this.A01 = gw2;
        this.A00 = gu;
        this.A04 = c0803Hg;
    }

    public final InterfaceC0794Gx A00() {
        return this.A03;
    }

    public final UU A01(boolean z) {
        GX c1133Uh;
        GV uv;
        GW gw = this.A01;
        if (gw != null) {
            c1133Uh = gw.A4H();
        } else {
            c1133Uh = new C1133Uh();
        }
        if (z) {
            return new UU(this.A03, C1134Ui.A02, c1133Uh, null, 1, null);
        }
        GU gu = this.A00;
        if (gu != null) {
            uv = gu.createDataSink();
        } else {
            uv = new UV(this.A03, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE);
        }
        GX A4H = this.A02.A4H();
        C0803Hg c0803Hg = this.A04;
        if (c0803Hg != null) {
            A4H = new UZ(A4H, c0803Hg, -1000);
        }
        GX upstream = c1133Uh;
        return new UU(this.A03, A4H, upstream, uv, 1, null);
    }

    public final C0803Hg A02() {
        C0803Hg c0803Hg = this.A04;
        return c0803Hg != null ? c0803Hg : new C0803Hg();
    }
}

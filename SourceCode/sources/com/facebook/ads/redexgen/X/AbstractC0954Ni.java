package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.os.Bundle;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.view.ToolbarActionView$ToolbarActionMode;
import java.util.HashMap;
/* renamed from: com.facebook.ads.redexgen.X.Ni  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC0954Ni extends RelativeLayout {
    public static final int A07 = (int) (Kk.A02 * 16.0f);
    public static final int A08 = (int) (Kk.A02 * 28.0f);
    public C1L A00;
    public boolean A01;
    public final C1203Xc A02;
    public final InterfaceC0821Ia A03;
    public final View$OnClickListenerC1075Sa A04;
    public final C0946Na A05;
    public final C0958Nm A06;

    public abstract boolean A0d();

    public AbstractC0954Ni(C0958Nm c0958Nm, boolean z) {
        super(c0958Nm.A05());
        C1L A00;
        this.A06 = c0958Nm;
        this.A02 = c0958Nm.A05();
        this.A03 = c0958Nm.A06();
        if (c0958Nm.A00() == 1) {
            A00 = c0958Nm.A04().A0g().A01();
        } else {
            A00 = c0958Nm.A04().A0g().A00();
        }
        this.A00 = A00;
        this.A01 = z;
        this.A04 = new View$OnClickListenerC1075Sa(c0958Nm.A05(), c0958Nm.A04().A0G(), this.A00, c0958Nm.A04().A0h().A0F().A06(), c0958Nm.A06(), c0958Nm.A09(), c0958Nm.A0B(), c0958Nm.A07());
        this.A04.setRoundedCornersEnabled(A00());
        this.A04.setViewShowsOverMedia(A0D());
        LL.A0G(1001, this.A04);
        this.A05 = new C0946Na(this.A02, this.A00, this.A01, A01(), A02());
        LL.A0K(this.A05);
    }

    public boolean A00() {
        return true;
    }

    public boolean A01() {
        return true;
    }

    public boolean A02() {
        return true;
    }

    public void A0B(AnonymousClass72 anonymousClass72) {
    }

    public void A0C(C05616y c05616y) {
    }

    public boolean A0D() {
        return true;
    }

    public void A0X() {
    }

    public void A0Y() {
    }

    public void A0Z() {
    }

    public void A0a() {
    }

    public void A0b() {
    }

    public void A0c(C1C c1c, String str, double d2, @Nullable Bundle bundle) {
        this.A05.A03(c1c.A0E().A05(), c1c.A0E().A01(), null, false, !A0d() && d2 > 0.0d && d2 < 1.0d);
        this.A04.setCta(c1c.A0F(), str, new HashMap());
    }

    public boolean A0e(boolean z) {
        return false;
    }

    public C1203Xc getAdContextWrapper() {
        return this.A02;
    }

    public InterfaceC0821Ia getAdEventManager() {
        return this.A03;
    }

    @ToolbarActionView$ToolbarActionMode
    public int getCloseButtonStyle() {
        return 0;
    }

    public C1L getColors() {
        return this.A00;
    }

    public View$OnClickListenerC1075Sa getCtaButton() {
        return this.A04;
    }

    public C0946Na getTitleDescContainer() {
        return this.A05;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        C1L A00;
        super.onConfigurationChanged(configuration);
        if (configuration.orientation == 1) {
            A00 = this.A06.A04().A0g().A01();
        } else {
            A00 = this.A06.A04().A0g().A00();
        }
        this.A00 = A00;
        this.A04.setViewShowsOverMedia(A0D());
        this.A04.setUpButtonColors(this.A00);
        this.A05.A02(this.A00, this.A01);
    }
}

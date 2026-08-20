package com.facebook.ads.redexgen.X;

import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.Op  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0986Op extends FrameLayout {
    public static final int A08 = (int) (Kk.A02 * 16.0f);
    public AA A00;
    @Nullable
    public PB A01;
    @Nullable
    public AnonymousClass75 A02;
    public C0858Jn A03;
    public C05476g A04;
    public C6G A05;
    public final C1203Xc A06;
    public final C0829Ii A07;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 10 out of bounds for length 10
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public final void A04(InterfaceC0821Ia interfaceC0821Ia, String str, Map<String, String> map) {
        A02();
        this.A02 = new AnonymousClass75(this.A06, interfaceC0821Ia, this.A00, str, map);
        if (IK.A1R(this.A06)) {
            this.A01 = new PB(this.A06, interfaceC0821Ia, this.A00, str, map);
        } else {
            this.A01 = null;
        }
    }

    public C0986Op(C1203Xc c1203Xc, C0829Ii c0829Ii) {
        super(c1203Xc);
        this.A07 = c0829Ii;
        this.A06 = c1203Xc;
        setUpView(c1203Xc);
    }

    public final void A01() {
        this.A00.A0e(true, 10);
    }

    public final void A02() {
        PB pb = this.A01;
        if (pb != null) {
            pb.A0A();
            this.A01 = null;
        }
        AnonymousClass75 anonymousClass75 = this.A02;
        if (anonymousClass75 != null) {
            anonymousClass75.A0g();
            this.A02 = null;
        }
    }

    public final void A03(C8V c8v) {
        this.A00.getEventBus().A05(c8v);
    }

    public final void A05(PK pk) {
        this.A00.A0b(pk, 13);
    }

    public final boolean A06() {
        return this.A00.A0k();
    }

    public RA getSimpleVideoView() {
        return this.A00;
    }

    public float getVolume() {
        return this.A00.getVolume();
    }

    public void setPlaceholderUrl(String str) {
        this.A04.setImage(str);
    }

    private void setUpPlugins(C1203Xc c1203Xc) {
        this.A00.A0X();
        this.A04 = new C05476g(c1203Xc);
        this.A00.A0c(this.A04);
        this.A03 = new C0858Jn(c1203Xc, this.A07);
        this.A00.A0c(new C05536o(c1203Xc));
        this.A00.A0c(this.A03);
        this.A05 = new C6G(c1203Xc, true, this.A07);
        this.A00.A0c(this.A05);
        this.A00.A0c(new C0861Jq(this.A05, PX.A03, true, true));
        if (!this.A00.A0g() && !IK.A2A(c1203Xc)) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(11);
        int i = A08;
        layoutParams.setMargins(i, i, i, i);
        this.A03.setLayoutParams(layoutParams);
        this.A00.addView(this.A03);
    }

    private void setUpVideo(C1203Xc c1203Xc) {
        this.A00 = new AA(c1203Xc);
        this.A00.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
        LL.A0K(this.A00);
        addView(this.A00);
        setOnClickListener(new View$OnClickListenerC0985Oo(this));
    }

    private void setUpView(C1203Xc c1203Xc) {
        setUpVideo(c1203Xc);
        setUpPlugins(c1203Xc);
    }

    public void setVideoURI(String str) {
        this.A00.setVideoURI(str);
    }

    public void setVolume(float f2) {
        this.A00.setVolume(f2);
        this.A03.A09();
    }
}

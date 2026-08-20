package com.bytedance.adsdk.ugeno.component.frame;

import android.content.Context;
import android.text.TextUtils;
import android.widget.FrameLayout;
import com.bytedance.adsdk.ugeno.component.Qhi;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import org.apache.ldap.server.jndi.JavaLdapSupport;
/* compiled from: UGFrameWidget.java */
/* loaded from: classes2.dex */
public class Qhi extends com.bytedance.adsdk.ugeno.component.Qhi<UGFrameLayout> {
    private UGFrameLayout dIT;

    public Qhi(Context context) {
        super(context);
    }

    @Override // com.bytedance.adsdk.ugeno.component.cJ
    /* renamed from: tP */
    public UGFrameLayout ac() {
        UGFrameLayout uGFrameLayout = new UGFrameLayout(this.cJ);
        this.dIT = uGFrameLayout;
        uGFrameLayout.Qhi(this);
        return this.dIT;
    }

    @Override // com.bytedance.adsdk.ugeno.component.Qhi, com.bytedance.adsdk.ugeno.component.cJ
    public void cJ() {
        this.dIT.setEventMap(this.MND);
        super.cJ();
    }

    @Override // com.bytedance.adsdk.ugeno.component.Qhi
    public Qhi.C0178Qhi Sf() {
        return new C0179Qhi();
    }

    /* compiled from: UGFrameWidget.java */
    /* renamed from: com.bytedance.adsdk.ugeno.component.frame.Qhi$Qhi  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0179Qhi extends Qhi.C0178Qhi {
        protected int hm = -1;

        @Override // com.bytedance.adsdk.ugeno.component.Qhi.C0178Qhi
        public void Qhi(Context context, String str, String str2) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            super.Qhi(context, str, str2);
            if (TextUtils.equals(str, "layoutGravity")) {
                this.hm = Qhi(str2);
            }
        }

        private int Qhi(String str) {
            String[] split;
            if (TextUtils.isEmpty(str) || (split = str.split("\\|")) == null || split.length <= 0) {
                return -1;
            }
            int i = 0;
            for (String str2 : split) {
                i |= cJ(str2);
            }
            return i;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        private int cJ(String str) {
            char c2;
            str.hashCode();
            switch (str.hashCode()) {
                case -1383228885:
                    if (str.equals("bottom")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1364013995:
                    if (str.equals(TtmlNode.CENTER)) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -348726240:
                    if (str.equals("center_vertical")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 115029:
                    if (str.equals(JavaLdapSupport.TOP_ATTR)) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3317767:
                    if (str.equals(TtmlNode.LEFT)) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 108511772:
                    if (str.equals(TtmlNode.RIGHT)) {
                        c2 = 5;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1063616078:
                    if (str.equals("center_horizontal")) {
                        c2 = 6;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            switch (c2) {
                case 0:
                    return 80;
                case 1:
                    return 17;
                case 2:
                    return 16;
                case 3:
                    return 48;
                case 4:
                    return 3;
                case 5:
                    return 5;
                case 6:
                    return 1;
                default:
                    return -1;
            }
        }

        @Override // com.bytedance.adsdk.ugeno.component.Qhi.C0178Qhi
        /* renamed from: cJ */
        public FrameLayout.LayoutParams Qhi() {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) this.Qhi, (int) this.cJ);
            layoutParams.leftMargin = (int) this.CJ;
            layoutParams.rightMargin = (int) this.fl;
            layoutParams.topMargin = (int) this.Tgh;
            layoutParams.bottomMargin = (int) this.ROR;
            layoutParams.gravity = this.hm;
            return layoutParams;
        }
    }
}

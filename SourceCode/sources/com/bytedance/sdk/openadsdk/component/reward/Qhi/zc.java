package com.bytedance.sdk.openadsdk.component.reward.Qhi;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.component.reward.top.TopProxyLayout;
import com.bytedance.sdk.openadsdk.utils.zn;
/* compiled from: RewardFullTopProxyManager.java */
/* loaded from: classes2.dex */
public class zc {
    private final Qhi CJ;
    TopProxyLayout Qhi;
    private boolean Tgh;
    private final Activity ac;
    com.bytedance.sdk.component.adexpress.dynamic.fl cJ;
    private boolean fl = false;

    public zc(Qhi qhi) {
        this.ac = qhi.FQ;
        this.CJ = qhi;
    }

    public void Qhi() {
        if (this.fl) {
            return;
        }
        this.fl = true;
        if (this.CJ.Ri != null) {
            this.Qhi = this.CJ.Ri;
            this.Tgh = true;
        } else {
            this.Qhi = (TopProxyLayout) this.CJ.yN.findViewById(com.bytedance.sdk.openadsdk.utils.iMK.YCN);
        }
        TopProxyLayout topProxyLayout = this.Qhi;
        if (topProxyLayout != null) {
            topProxyLayout.Qhi(this.CJ.cJ);
            if (this.CJ.cJ.IC()) {
                Qhi(false);
            } else {
                Qhi(this.CJ.cJ.rB());
            }
        }
    }

    public void Qhi(boolean z) {
        TopProxyLayout topProxyLayout;
        if (this.Tgh || (topProxyLayout = this.Qhi) == null) {
            return;
        }
        topProxyLayout.setShowDislike(z);
    }

    public void cJ(boolean z) {
        TopProxyLayout topProxyLayout = this.Qhi;
        if (topProxyLayout != null) {
            topProxyLayout.setSoundMute(z);
        }
        com.bytedance.sdk.component.adexpress.dynamic.fl flVar = this.cJ;
        if (flVar != null) {
            flVar.setSoundMute(z);
        }
    }

    public void ac(boolean z) {
        TopProxyLayout topProxyLayout;
        if (this.Tgh || (topProxyLayout = this.Qhi) == null) {
            return;
        }
        topProxyLayout.setShowSound(z);
    }

    public void CJ(boolean z) {
        TopProxyLayout topProxyLayout;
        if (this.Tgh || (topProxyLayout = this.Qhi) == null) {
            return;
        }
        topProxyLayout.setShowSkip(z);
    }

    public void Qhi(String str, CharSequence charSequence) {
        TopProxyLayout topProxyLayout;
        if (this.Tgh || (topProxyLayout = this.Qhi) == null) {
            return;
        }
        topProxyLayout.Qhi(String.valueOf(str), charSequence);
    }

    public void Qhi(CharSequence charSequence) {
        TopProxyLayout topProxyLayout;
        if (this.Tgh || (topProxyLayout = this.Qhi) == null) {
            return;
        }
        topProxyLayout.setSkipText(charSequence);
    }

    public void cJ() {
        TopProxyLayout topProxyLayout;
        if (this.Tgh || (topProxyLayout = this.Qhi) == null) {
            return;
        }
        topProxyLayout.CJ();
    }

    public void fl(boolean z) {
        TopProxyLayout topProxyLayout;
        if (this.Tgh || (topProxyLayout = this.Qhi) == null) {
            return;
        }
        topProxyLayout.setSkipEnable(z);
    }

    public void ac() {
        TopProxyLayout topProxyLayout;
        if (this.Tgh || (topProxyLayout = this.Qhi) == null) {
            return;
        }
        topProxyLayout.fl();
    }

    public void CJ() {
        TopProxyLayout topProxyLayout = this.Qhi;
        if (topProxyLayout != null) {
            topProxyLayout.Qhi();
        }
    }

    public void fl() {
        TopProxyLayout topProxyLayout = this.Qhi;
        if (topProxyLayout != null) {
            topProxyLayout.cJ();
        }
    }

    public void Tgh() {
        TopProxyLayout topProxyLayout;
        if (this.Tgh || (topProxyLayout = this.Qhi) == null) {
            return;
        }
        topProxyLayout.ac();
    }

    public void Qhi(com.bytedance.sdk.openadsdk.component.reward.top.cJ cJVar) {
        TopProxyLayout topProxyLayout = this.Qhi;
        if (topProxyLayout != null) {
            topProxyLayout.setListener(cJVar);
        }
    }

    public void Qhi(com.bytedance.sdk.component.adexpress.dynamic.fl flVar) {
        this.cJ = flVar;
    }

    public void Qhi(int i) {
        View findViewById;
        TopProxyLayout topProxyLayout = this.Qhi;
        if (topProxyLayout == null || topProxyLayout.getITopLayout() == null || i == 0 || (findViewById = this.Qhi.getITopLayout().findViewById(520093713)) == null || !(findViewById.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) || findViewById.getWidth() <= 0 || findViewById.getVisibility() != 0) {
            return;
        }
        int[] iArr = new int[2];
        findViewById.getLocationOnScreen(iArr);
        int width = i - (iArr[0] + findViewById.getWidth());
        if (width < zn.cJ(this.ac, 16.0f)) {
            ((ViewGroup.MarginLayoutParams) findViewById.getLayoutParams()).rightMargin += zn.cJ(this.ac, 16.0f) - width;
            findViewById.requestLayout();
        }
    }
}

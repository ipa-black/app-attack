package com.bytedance.sdk.openadsdk.component.reward.view;

import android.graphics.Color;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.iMK;
import com.bytedance.sdk.openadsdk.utils.zn;
/* compiled from: RewardFullNativeVideoLayout.java */
/* loaded from: classes2.dex */
public class fl extends Tgh {
    @Override // com.bytedance.sdk.openadsdk.component.reward.view.Tgh
    protected boolean Qhi() {
        return false;
    }

    public fl(com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi) {
        super(qhi);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.view.Tgh
    public void Qhi(int i, int i2) {
        super.Qhi(i, i2);
        if (tP.fl(this.CJ) && this.CJ.aP() == 3 && this.CJ.NFd() == 0) {
            try {
                FrameLayout frameLayout = (FrameLayout) this.ac.yN.findViewById(iMK.WAv);
                frameLayout.setBackgroundColor(Color.parseColor("#000000"));
                if (this.CJ.SL() == 1) {
                    int cJ = zn.cJ(HzH.Qhi(), 90.0f);
                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) frameLayout.getLayoutParams();
                    layoutParams.bottomMargin = cJ;
                    frameLayout.setLayoutParams(layoutParams);
                }
            } catch (Throwable unused) {
            }
        }
    }
}

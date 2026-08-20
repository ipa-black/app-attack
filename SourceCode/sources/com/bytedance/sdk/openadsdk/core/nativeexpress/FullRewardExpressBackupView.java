package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.zn;
import java.util.List;
/* loaded from: classes2.dex */
public class FullRewardExpressBackupView extends BackupView {
    private NativeExpressView ABk;
    private FrameLayout Qhi;
    private FrameLayout iMK;

    public FullRewardExpressBackupView(Context context) {
        super(context);
        this.cJ = context;
    }

    public void Qhi(tP tPVar, NativeExpressView nativeExpressView, ViewGroup viewGroup) {
        String str;
        if (tPVar == null) {
            return;
        }
        setBackgroundColor(-1);
        this.ac = tPVar;
        this.ABk = nativeExpressView;
        if (tPVar.sqa() == 7) {
            this.Tgh = "rewarded_video";
        } else {
            this.Tgh = "fullscreen_interstitial_ad";
        }
        cJ();
        this.ABk.addView(this, new ViewGroup.LayoutParams(-2, -2));
        View findViewById = viewGroup.findViewById(com.bytedance.sdk.openadsdk.utils.iMK.gt);
        if (findViewById != null) {
            com.bykv.vk.openvk.component.video.api.ac.cJ FQ = this.ac.FQ();
            if (FQ != null) {
                str = FQ.WAv();
            } else {
                List<com.bytedance.sdk.openadsdk.core.model.hpZ> cjC = this.ac.cjC();
                if (cjC != null && !cjC.isEmpty()) {
                    str = cjC.get(0).Qhi();
                } else {
                    str = "";
                }
            }
            if (TextUtils.isEmpty(str)) {
                return;
            }
            com.bytedance.sdk.openadsdk.iMK.ac.Qhi().Qhi(str, findViewById);
        }
    }

    private void cJ() {
        this.ROR = zn.cJ(this.cJ, this.ABk.getExpectExpressWidth());
        this.Sf = zn.cJ(this.cJ, this.ABk.getExpectExpressWidth());
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(this.ROR, this.Sf);
        }
        layoutParams.width = this.ROR;
        layoutParams.height = this.Sf;
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) layoutParams).gravity = 17;
        }
        setLayoutParams(layoutParams);
        this.ac.NFd();
        ac();
    }

    private void ac() {
        PAGFrameLayout pAGFrameLayout = new PAGFrameLayout(this.cJ);
        this.Qhi = pAGFrameLayout;
        addView(pAGFrameLayout, new FrameLayout.LayoutParams(-1, -1));
        PAGFrameLayout pAGFrameLayout2 = new PAGFrameLayout(this.cJ);
        this.iMK = pAGFrameLayout2;
        this.Qhi.addView(pAGFrameLayout2, new FrameLayout.LayoutParams(-1, -1));
        this.iMK.removeAllViews();
    }

    public FrameLayout getVideoContainer() {
        return this.iMK;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView
    protected void Qhi(View view, int i, com.bytedance.sdk.openadsdk.core.model.pA pAVar) {
        NativeExpressView nativeExpressView = this.ABk;
        if (nativeExpressView != null) {
            nativeExpressView.Qhi(view, i, pAVar);
        }
    }

    public View getBackupContainerBackgroundView() {
        return this.Qhi;
    }
}

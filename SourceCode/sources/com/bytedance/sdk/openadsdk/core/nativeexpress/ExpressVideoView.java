package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.utils.zn;
/* loaded from: classes2.dex */
public class ExpressVideoView extends NativeVideoTsView implements View.OnClickListener {
    private boolean hpZ;

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView
    protected void Qhi(boolean z) {
    }

    public ExpressVideoView(Context context, tP tPVar, String str, com.bytedance.sdk.openadsdk.cJ.Sf sf) {
        super(context, tPVar, false, str, false, false, sf);
        this.hpZ = false;
        setOnClickListener(this);
        setNeedNativeVideoPlayBtnVisible(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView
    public void cJ() {
        if (!this.fl || !kYc.cJ(this.zc)) {
            this.CJ = false;
        }
        super.cJ();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView
    public void ac() {
        if (this.hpZ) {
            super.ac();
        }
    }

    public void setCanInterruptVideoPlay(boolean z) {
        this.hpZ = z;
    }

    public void setShouldCheckNetChange(boolean z) {
        if (this.cJ != null) {
            this.cJ.fl(z);
        }
    }

    public void CJ() {
        if (this.WAv != null) {
            zn.Qhi((View) this.WAv, 8);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView, android.view.View
    public void onWindowVisibilityChanged(int i) {
        if (this.hm != null && this.hm.getVisibility() == 0) {
            kYc();
        } else {
            super.onWindowVisibilityChanged(i);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView, android.view.View
    public void onWindowFocusChanged(boolean z) {
        if (this.hm != null && this.hm.getVisibility() == 0) {
            kYc();
        } else {
            super.onWindowFocusChanged(z);
        }
    }

    private void HzH() {
        zn.Qhi((View) this.ROR, 0);
        zn.Qhi((View) this.Sf, 0);
        zn.Qhi((View) this.WAv, 8);
    }

    private void kYc() {
        ROR();
        if (this.ROR != null) {
            if (this.ROR.getVisibility() == 0) {
                return;
            }
            com.bytedance.sdk.openadsdk.iMK.ac.Qhi().Qhi(this.Qhi.FQ().WAv(), this.Qhi.FQ().ac(), this.Qhi.FQ().cJ(), this.Sf, this.Qhi);
        }
        HzH();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.hm != null && this.hm.getVisibility() == 0) {
            zn.fl(this.ROR);
        }
        ac();
    }

    public void setShowAdInteractionView(boolean z) {
        com.bykv.vk.openvk.component.video.api.CJ.ac ABk;
        if (this.cJ == null || (ABk = this.cJ.ABk()) == null) {
            return;
        }
        ABk.Qhi(z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void fl() {
        ROR();
        zn.Qhi((View) this.ROR, 0);
    }
}

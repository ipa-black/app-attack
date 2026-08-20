package com.bytedance.sdk.openadsdk.component.view;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.core.customview.PAGLinearLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGRelativeLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.widget.DSPAdChoice;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.TTRatingBar2;
import com.bytedance.sdk.openadsdk.core.widget.TTRoundRectImageView;
/* loaded from: classes2.dex */
public abstract class PAGAppOpenBaseLayout extends PAGRelativeLayout {
    PAGLogoView CJ;
    PAGTextView Gm;
    PAGImageView Qhi;
    PAGTextView ROR;
    final PAGAppOpenTopBarView Sf;
    TTRoundRectImageView Tgh;
    PAGTextView WAv;
    PAGImageView ac;
    PAGFrameLayout cJ;
    PAGTextView fl;
    TTRoundRectImageView hm;
    DSPAdChoice zc;

    public abstract PAGImageView getAdIconView();

    public abstract PAGTextView getAdTitleTextView();

    public PAGLinearLayout getOverlayLayout() {
        return null;
    }

    public abstract TTRatingBar2 getScoreBar();

    public abstract View getUserInfo();

    public PAGAppOpenBaseLayout(Context context) {
        super(context);
        this.Sf = new PAGAppOpenTopBarView(context);
    }

    public TTRoundRectImageView getIconOnlyView() {
        return this.hm;
    }

    public PAGTextView getTitle() {
        return this.WAv;
    }

    public PAGTextView getContent() {
        return this.Gm;
    }

    public PAGImageView getBackImage() {
        return this.Qhi;
    }

    public PAGFrameLayout getVideoContainer() {
        return this.cJ;
    }

    public PAGImageView getImageView() {
        return this.ac;
    }

    public PAGLogoView getAdLogo() {
        return this.CJ;
    }

    public PAGTextView getClickButton() {
        return this.fl;
    }

    public TTRoundRectImageView getHostAppIcon() {
        return this.Tgh;
    }

    public PAGTextView getHostAppName() {
        return this.ROR;
    }

    public DSPAdChoice getDspAdChoice() {
        return this.zc;
    }

    public View getTopDisLike() {
        PAGAppOpenTopBarView pAGAppOpenTopBarView = this.Sf;
        if (pAGAppOpenTopBarView != null) {
            return pAGAppOpenTopBarView.getTopDislike();
        }
        return null;
    }

    public PAGImageView getTopSkip() {
        PAGAppOpenTopBarView pAGAppOpenTopBarView = this.Sf;
        if (pAGAppOpenTopBarView != null) {
            return pAGAppOpenTopBarView.getTopSkip();
        }
        return null;
    }
}

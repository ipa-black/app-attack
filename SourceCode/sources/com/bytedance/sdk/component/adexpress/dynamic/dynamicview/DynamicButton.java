package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.dynamic.ac.hm;
import com.bytedance.sdk.component.adexpress.dynamic.animation.view.AnimationButton;
/* loaded from: classes2.dex */
public class DynamicButton extends DynamicBaseWidgetImp {
    public DynamicButton(Context context, DynamicRootView dynamicRootView, hm hmVar) {
        super(context, dynamicRootView, hmVar);
        this.pA = new AnimationButton(context);
        this.pA.setTag(Integer.valueOf(getClickArea()));
        addView(this.pA, getWidgetLayoutParams());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp
    public FrameLayout.LayoutParams getWidgetLayoutParams() {
        if (com.bytedance.sdk.component.adexpress.fl.cJ() && "fillButton".equals(this.ABk.WAv().cJ())) {
            ((TextView) this.pA).setEllipsize(TextUtils.TruncateAt.END);
            ((TextView) this.pA).setMaxLines(1);
            FrameLayout.LayoutParams widgetLayoutParams = super.getWidgetLayoutParams();
            widgetLayoutParams.width -= this.zc.kYc() * 2;
            widgetLayoutParams.height -= this.zc.kYc() * 2;
            widgetLayoutParams.topMargin += this.zc.kYc();
            widgetLayoutParams.leftMargin += this.zc.kYc();
            widgetLayoutParams.setMarginStart(widgetLayoutParams.leftMargin);
            widgetLayoutParams.setMarginEnd(widgetLayoutParams.rightMargin);
            return widgetLayoutParams;
        }
        return super.getWidgetLayoutParams();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.fl
    public boolean hm() {
        super.hm();
        if (TextUtils.equals("download-progress-button", this.ABk.WAv().cJ()) && TextUtils.isEmpty(this.zc.WAv())) {
            this.pA.setVisibility(4);
            return true;
        }
        this.pA.setTextAlignment(this.zc.Sf());
        ((TextView) this.pA).setText(this.zc.WAv());
        ((TextView) this.pA).setTextColor(this.zc.ROR());
        ((TextView) this.pA).setTextSize(this.zc.fl());
        ((TextView) this.pA).setGravity(17);
        ((TextView) this.pA).setIncludeFontPadding(false);
        if ("fillButton".equals(this.ABk.WAv().cJ())) {
            this.pA.setPadding(0, 0, 0, 0);
        } else {
            this.pA.setPadding(this.zc.ac(), this.zc.cJ(), this.zc.CJ(), this.zc.Qhi());
        }
        return true;
    }
}

package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.ClickSlideUpShakeView;
import com.bytedance.sdk.component.adexpress.widget.ShakeAnimationView;
import com.bytedance.sdk.component.adexpress.widget.ShakeClickView;
import org.json.JSONObject;
/* compiled from: ClickSlideUpShakeInteract.java */
/* loaded from: classes2.dex */
public class Sf extends tP<ClickSlideUpShakeView> {
    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.tP
    protected void CJ() {
    }

    public Sf(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.ac.Sf sf, int i, int i2, int i3, JSONObject jSONObject) {
        super(context, dynamicBaseWidget, sf);
        this.cJ = context;
        this.CJ = sf;
        this.ac = dynamicBaseWidget;
        Qhi(i, i2, i3, jSONObject, sf);
    }

    private void Qhi(int i, int i2, int i3, JSONObject jSONObject, com.bytedance.sdk.component.adexpress.dynamic.ac.Sf sf) {
        int i4;
        this.Qhi = new ClickSlideUpShakeView(this.cJ, i, i2, i3, jSONObject);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, (int) CQU.Qhi(this.cJ, 300.0f));
        layoutParams.gravity = 81;
        Context context = this.cJ;
        if (sf.dIT() > 0) {
            i4 = sf.dIT();
        } else {
            i4 = com.bytedance.sdk.component.adexpress.fl.cJ() ? 0 : 120;
        }
        layoutParams.bottomMargin = (int) CQU.Qhi(context, i4);
        this.Qhi.setLayoutParams(layoutParams);
        this.Qhi.setClipChildren(false);
        this.Qhi.setSlideText(this.CJ.Dq());
        if (this.Qhi instanceof ClickSlideUpShakeView) {
            ((ClickSlideUpShakeView) this.Qhi).setShakeText(this.CJ.NBs());
            final ShakeClickView shakeView = ((ClickSlideUpShakeView) this.Qhi).getShakeView();
            if (shakeView != null) {
                shakeView.setOnShakeViewListener(new ShakeAnimationView.Qhi() { // from class: com.bytedance.sdk.component.adexpress.dynamic.interact.Sf.1
                });
                shakeView.setOnClickListener((View.OnClickListener) this.ac.getDynamicClickListener());
            }
        }
    }
}

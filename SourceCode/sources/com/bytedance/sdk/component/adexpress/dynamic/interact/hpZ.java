package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.ShakeAnimationView;
import org.json.JSONObject;
/* compiled from: ShakeInteract.java */
/* loaded from: classes2.dex */
public class hpZ implements hm<ShakeAnimationView> {
    private com.bytedance.sdk.component.adexpress.dynamic.ac.Sf CJ;
    private ShakeAnimationView Qhi;
    private int ROR;
    private int Sf;
    private int Tgh;
    private DynamicBaseWidget ac;
    private Context cJ;
    private String fl;
    private JSONObject hm;

    public hpZ(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.ac.Sf sf, String str, int i, int i2, int i3, JSONObject jSONObject) {
        this.cJ = context;
        this.ac = dynamicBaseWidget;
        this.CJ = sf;
        this.fl = str;
        this.Tgh = i;
        this.ROR = i2;
        this.Sf = i3;
        this.hm = jSONObject;
        fl();
    }

    private void fl() {
        final com.bytedance.sdk.component.adexpress.dynamic.fl.Qhi dynamicClickListener = this.ac.getDynamicClickListener();
        try {
            new JSONObject().put("convertActionType", 1);
        } catch (Throwable unused) {
        }
        if ("16".equals(this.fl)) {
            Context context = this.cJ;
            ShakeAnimationView shakeAnimationView = new ShakeAnimationView(context, com.bytedance.sdk.component.adexpress.ac.Qhi.hm(context), this.Tgh, this.ROR, this.Sf, this.hm);
            this.Qhi = shakeAnimationView;
            if (shakeAnimationView.getShakeLayout() != null) {
                this.Qhi.getShakeLayout().setOnClickListener((View.OnClickListener) dynamicClickListener);
            }
        } else {
            Context context2 = this.cJ;
            this.Qhi = new ShakeAnimationView(context2, com.bytedance.sdk.component.adexpress.ac.Qhi.Sf(context2), this.Tgh, this.ROR, this.Sf, this.hm);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        this.Qhi.setGravity(17);
        layoutParams.gravity = 17;
        this.Qhi.setLayoutParams(layoutParams);
        this.Qhi.setTranslationY(CQU.Qhi(this.cJ, this.CJ.ReL()));
        this.Qhi.setShakeText(this.CJ.Dq());
        this.Qhi.setClipChildren(false);
        this.Qhi.setOnShakeViewListener(new ShakeAnimationView.Qhi() { // from class: com.bytedance.sdk.component.adexpress.dynamic.interact.hpZ.1
        });
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.hm
    public void Qhi() {
        this.Qhi.Qhi();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.hm
    public void cJ() {
        this.Qhi.clearAnimation();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.hm
    /* renamed from: CJ */
    public ShakeAnimationView ac() {
        return this.Qhi;
    }
}

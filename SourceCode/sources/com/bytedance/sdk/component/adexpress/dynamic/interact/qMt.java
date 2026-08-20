package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.WriggleGuideAnimationView;
import org.json.JSONObject;
/* compiled from: WriggleGuideInteract.java */
/* loaded from: classes2.dex */
public class qMt implements hm<WriggleGuideAnimationView> {
    private com.bytedance.sdk.component.adexpress.dynamic.ac.Sf CJ;
    private WriggleGuideAnimationView Qhi;
    private com.bytedance.sdk.component.adexpress.dynamic.ac.Gm Tgh;
    private DynamicBaseWidget ac;
    private Context cJ;
    private String fl;

    public qMt(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.ac.Sf sf, String str, com.bytedance.sdk.component.adexpress.dynamic.ac.Gm gm) {
        this.cJ = context;
        this.ac = dynamicBaseWidget;
        this.CJ = sf;
        this.fl = str;
        this.Tgh = gm;
        fl();
    }

    private void fl() {
        int dIT = this.CJ.dIT();
        final com.bytedance.sdk.component.adexpress.dynamic.fl.Qhi dynamicClickListener = this.ac.getDynamicClickListener();
        try {
            new JSONObject().put("convertActionType", 2);
        } catch (Throwable unused) {
        }
        if ("18".equals(this.fl)) {
            Context context = this.cJ;
            WriggleGuideAnimationView wriggleGuideAnimationView = new WriggleGuideAnimationView(context, com.bytedance.sdk.component.adexpress.ac.Qhi.WAv(context), this.Tgh);
            this.Qhi = wriggleGuideAnimationView;
            if (wriggleGuideAnimationView.getWriggleLayout() != null) {
                this.Qhi.getWriggleLayout().setOnClickListener((View.OnClickListener) dynamicClickListener);
            }
            if (this.Qhi.getTopTextView() != null) {
                if (TextUtils.isEmpty(this.CJ.EGK())) {
                    this.Qhi.getTopTextView().setText(com.bytedance.sdk.component.utils.MQ.cJ(this.cJ, "tt_splash_wriggle_top_text_style_17"));
                } else {
                    this.Qhi.getTopTextView().setText(this.CJ.EGK());
                }
            }
        } else {
            Context context2 = this.cJ;
            this.Qhi = new WriggleGuideAnimationView(context2, com.bytedance.sdk.component.adexpress.ac.Qhi.WAv(context2), this.Tgh);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 81;
        this.Qhi.setTranslationY(-((int) CQU.Qhi(this.cJ, dIT)));
        this.Qhi.setLayoutParams(layoutParams);
        this.Qhi.setShakeText(this.CJ.Dq());
        this.Qhi.setClipChildren(false);
        final View wriggleProgressIv = this.Qhi.getWriggleProgressIv();
        this.Qhi.setOnShakeViewListener(new WriggleGuideAnimationView.Qhi() { // from class: com.bytedance.sdk.component.adexpress.dynamic.interact.qMt.1
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
    public WriggleGuideAnimationView ac() {
        return this.Qhi;
    }
}

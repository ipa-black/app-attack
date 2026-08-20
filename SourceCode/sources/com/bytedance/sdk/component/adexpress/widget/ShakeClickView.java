package com.bytedance.sdk.component.adexpress.widget;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.component.utils.MQ;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class ShakeClickView extends ShakeAnimationView {
    private TextView Qhi;

    public ShakeClickView(Context context, View view, int i, int i2, int i3, JSONObject jSONObject) {
        super(context, view, i, i2, i3, jSONObject);
    }

    @Override // com.bytedance.sdk.component.adexpress.widget.ShakeAnimationView
    protected void Qhi(Context context, View view) {
        addView(view);
        this.Qhi = (TextView) findViewById(2097610747);
    }

    @Override // com.bytedance.sdk.component.adexpress.widget.ShakeAnimationView
    public void setShakeText(String str) {
        if (this.Qhi == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            try {
                this.Qhi.setText(MQ.cJ(this.Qhi.getContext(), "tt_splash_default_click_shake"));
                return;
            } catch (Exception e2) {
                ABk.Qhi("shakeClickView", e2.getMessage());
                return;
            }
        }
        this.Qhi.setText(str);
    }
}

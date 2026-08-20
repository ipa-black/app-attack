package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.adexpress.dynamic.ac.ROR;
import com.bytedance.sdk.component.adexpress.dynamic.ac.hm;
import com.bytedance.sdk.component.adexpress.widget.DynamicLottieView;
/* loaded from: classes2.dex */
public class DynamicLottie extends DynamicBaseWidgetImp {
    String Qhi;
    hm cJ;

    public DynamicLottie(Context context, DynamicRootView dynamicRootView, hm hmVar, String str) {
        super(context, dynamicRootView, hmVar);
        this.Qhi = str;
        this.cJ = hmVar;
        DynamicLottieView lottieView = getLottieView();
        if (lottieView != null) {
            addView(lottieView, getWidgetLayoutParams());
        }
    }

    private DynamicLottieView getLottieView() {
        String str;
        if (this.ABk == null || this.ABk.WAv() == null || this.Gm == null || TextUtils.isEmpty(this.Qhi)) {
            return null;
        }
        ROR fl = this.ABk.WAv().fl();
        if (fl == null) {
            str = "";
        } else {
            str = fl.ReL();
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        DynamicLottieView dynamicLottieView = new DynamicLottieView(this.Gm);
        dynamicLottieView.setImageLottieTosPath(this.Qhi + "static/lotties/" + str + ".json");
        dynamicLottieView.Tgh();
        return dynamicLottieView;
    }
}

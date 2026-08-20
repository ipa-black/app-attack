package com.bytedance.adsdk.ugeno.swiper.Qhi;

import android.view.View;
import com.bytedance.adsdk.ugeno.viewpager.ViewPager;
/* compiled from: ScaleAndAlphaTransformer.java */
/* loaded from: classes2.dex */
public class Qhi implements ViewPager.Tgh {
    final float Qhi = 0.8f;
    final float cJ = 0.5f;

    @Override // com.bytedance.adsdk.ugeno.viewpager.ViewPager.Tgh
    public void Qhi(View view, float f2) {
        int i = (f2 > 0.0f ? 1 : (f2 == 0.0f ? 0 : -1));
        float f3 = ((i < 0 ? 0.19999999f : -0.19999999f) * f2) + 1.0f;
        float f4 = (f2 * (i < 0 ? 0.5f : -0.5f)) + 1.0f;
        if (i < 0) {
            view.setPivotX(view.getWidth());
            view.setPivotY(view.getHeight() / 2);
        } else {
            view.setPivotX(0.0f);
            view.setPivotY(view.getHeight() / 2);
        }
        view.setScaleX(f3);
        view.setScaleY(f3);
        view.setAlpha(Math.abs(f4));
    }
}

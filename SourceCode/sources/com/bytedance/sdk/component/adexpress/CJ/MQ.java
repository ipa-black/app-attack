package com.bytedance.sdk.component.adexpress.CJ;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import com.bytedance.sdk.component.adexpress.dynamic.ac.Sf;
/* compiled from: DrawableFactory.java */
/* loaded from: classes2.dex */
public class MQ {
    public static Drawable Qhi(Context context, Sf sf) {
        if (context == null || sf == null) {
            return null;
        }
        return Qhi(context, (int) CQU.Qhi(context, sf.HzH()), sf.hpZ(), sf.aP());
    }

    public static Drawable Qhi(Context context, int i, int i2, int i3) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        if (context != null) {
            gradientDrawable.setStroke(i, i2);
        }
        gradientDrawable.setColor(i3);
        return gradientDrawable;
    }
}

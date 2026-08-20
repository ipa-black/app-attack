package com.bytedance.sdk.openadsdk.utils;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
/* compiled from: AdmobOverlayHelper.java */
/* loaded from: classes2.dex */
public class ac {
    public static void Qhi(ViewGroup viewGroup, com.bytedance.sdk.openadsdk.core.model.tP tPVar) {
        if (viewGroup == null || tPVar == null || TextUtils.isEmpty(tPVar.cBj())) {
            return;
        }
        try {
            if (viewGroup.getTag(iMK.wa) != null) {
                return;
            }
            int i = iMK.wa;
            viewGroup.setTag(i, Integer.valueOf(i));
            Drawable Qhi2 = Qhi(viewGroup.getResources(), tPVar);
            if (Qhi2 == null) {
                return;
            }
            viewGroup.setForeground(Qhi2);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("add overlay fail", th.getMessage());
        }
    }

    public static void Qhi(Activity activity, com.bytedance.sdk.openadsdk.core.model.tP tPVar) {
        if (activity == null || tPVar == null || TextUtils.isEmpty(tPVar.cBj())) {
            return;
        }
        try {
            if (activity.getWindow().getDecorView().getTag(iMK.wa) != null) {
                return;
            }
            View decorView = activity.getWindow().getDecorView();
            int i = iMK.wa;
            decorView.setTag(i, Integer.valueOf(i));
            Drawable Qhi2 = Qhi(activity.getResources(), tPVar);
            if (Qhi2 == null) {
                return;
            }
            activity.getWindow().getDecorView().setForeground(Qhi2);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("add overlay fail", th.getMessage());
        }
    }

    private static Drawable Qhi(Resources resources, com.bytedance.sdk.openadsdk.core.model.tP tPVar) {
        try {
            String cBj = tPVar.cBj();
            if (TextUtils.isEmpty(cBj)) {
                return null;
            }
            byte[] decode = Base64.decode(cBj, 0);
            BitmapDrawable bitmapDrawable = new BitmapDrawable(resources, BitmapFactory.decodeByteArray(decode, 0, decode.length));
            Shader.TileMode tileMode = Shader.TileMode.REPEAT;
            bitmapDrawable.setTileModeXY(tileMode, tileMode);
            bitmapDrawable.setTargetDensity(resources.getDisplayMetrics());
            return bitmapDrawable;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* compiled from: AdmobOverlayHelper.java */
    /* loaded from: classes2.dex */
    private static class Qhi implements View.OnLayoutChangeListener {
        private final Drawable Qhi;
        private int ac;
        private int cJ;

        public Qhi(Drawable drawable) {
            this.Qhi = drawable;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            int i9 = i3 - i;
            int i10 = i4 - i2;
            if (i9 == this.cJ && i10 == this.ac) {
                return;
            }
            this.cJ = i9;
            this.ac = i10;
            this.Qhi.setBounds(0, 0, i9, i10);
        }
    }
}

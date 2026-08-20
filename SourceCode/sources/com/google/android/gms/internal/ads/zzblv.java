package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public final class zzblv extends RelativeLayout {
    private static final float[] zza = {5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f};
    private AnimationDrawable zzb;

    public zzblv(Context context, zzblu zzbluVar, RelativeLayout.LayoutParams layoutParams) {
        super(context);
        Preconditions.checkNotNull(zzbluVar);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(zza, null, null));
        shapeDrawable.getPaint().setColor(zzbluVar.zzd());
        setLayoutParams(layoutParams);
        setBackground(shapeDrawable);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        if (!TextUtils.isEmpty(zzbluVar.zzg())) {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            TextView textView = new TextView(context);
            textView.setLayoutParams(layoutParams3);
            textView.setId(1195835393);
            textView.setTypeface(Typeface.DEFAULT);
            textView.setText(zzbluVar.zzg());
            textView.setTextColor(zzbluVar.zze());
            textView.setTextSize(zzbluVar.zzf());
            com.google.android.gms.ads.internal.client.zzay.zzb();
            int zzy = zzchh.zzy(context, 4);
            com.google.android.gms.ads.internal.client.zzay.zzb();
            textView.setPadding(zzy, 0, zzchh.zzy(context, 4), 0);
            addView(textView);
            layoutParams2.addRule(1, textView.getId());
        }
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(layoutParams2);
        imageView.setId(1195835394);
        List<zzblx> zzi = zzbluVar.zzi();
        if (zzi == null || zzi.size() <= 1) {
            if (zzi.size() == 1) {
                try {
                    imageView.setImageDrawable((Drawable) ObjectWrapper.unwrap(((zzblx) zzi.get(0)).zzf()));
                } catch (Exception e2) {
                    com.google.android.gms.ads.internal.util.zze.zzh("Error while getting drawable.", e2);
                }
            }
        } else {
            this.zzb = new AnimationDrawable();
            for (zzblx zzblxVar : zzi) {
                try {
                    this.zzb.addFrame((Drawable) ObjectWrapper.unwrap(zzblxVar.zzf()), zzbluVar.zzb());
                } catch (Exception e3) {
                    com.google.android.gms.ads.internal.util.zze.zzh("Error while getting drawable.", e3);
                }
            }
            imageView.setBackground(this.zzb);
        }
        addView(imageView);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        AnimationDrawable animationDrawable = this.zzb;
        if (animationDrawable != null) {
            animationDrawable.start();
        }
        super.onAttachedToWindow();
    }
}

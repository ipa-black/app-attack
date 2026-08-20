package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import io.bidmachine.utils.IabUtils;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzczz extends FrameLayout implements ViewTreeObserver.OnScrollChangedListener, ViewTreeObserver.OnGlobalLayoutListener {
    private final Context zza;
    private View zzb;

    private zzczz(Context context) {
        super(context);
        this.zza = context;
    }

    public static zzczz zza(Context context, View view, zzfil zzfilVar) {
        Resources resources;
        DisplayMetrics displayMetrics;
        zzczz zzczzVar = new zzczz(context);
        if (!zzfilVar.zzv.isEmpty() && (resources = zzczzVar.zza.getResources()) != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
            zzfim zzfimVar = (zzfim) zzfilVar.zzv.get(0);
            zzczzVar.setLayoutParams(new FrameLayout.LayoutParams((int) (zzfimVar.zza * displayMetrics.density), (int) (zzfimVar.zzb * displayMetrics.density)));
        }
        zzczzVar.zzb = view;
        zzczzVar.addView(view);
        com.google.android.gms.ads.internal.zzt.zzx();
        zzcio.zzb(zzczzVar, zzczzVar);
        com.google.android.gms.ads.internal.zzt.zzx();
        zzcio.zza(zzczzVar, zzczzVar);
        JSONObject jSONObject = zzfilVar.zzaj;
        RelativeLayout relativeLayout = new RelativeLayout(zzczzVar.zza);
        JSONObject optJSONObject = jSONObject.optJSONObject("header");
        if (optJSONObject != null) {
            zzczzVar.zzc(optJSONObject, relativeLayout, 10);
        }
        JSONObject optJSONObject2 = jSONObject.optJSONObject("footer");
        if (optJSONObject2 != null) {
            zzczzVar.zzc(optJSONObject2, relativeLayout, 12);
        }
        zzczzVar.addView(relativeLayout);
        return zzczzVar;
    }

    private final int zzb(double d2) {
        com.google.android.gms.ads.internal.client.zzay.zzb();
        return zzchh.zzy(this.zza, (int) d2);
    }

    private final void zzc(JSONObject jSONObject, RelativeLayout relativeLayout, int i) {
        TextView textView = new TextView(this.zza);
        textView.setTextColor(-1);
        textView.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        textView.setGravity(17);
        textView.setText(jSONObject.optString("text", ""));
        textView.setTextSize((float) jSONObject.optDouble("text_size", 11.0d));
        int zzb = zzb(jSONObject.optDouble("padding", 0.0d));
        textView.setPadding(0, zzb, 0, zzb);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, zzb(jSONObject.optDouble(IabUtils.KEY_HEIGHT, 15.0d)));
        layoutParams.addRule(i);
        relativeLayout.addView(textView, layoutParams);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        this.zzb.setY(-iArr[1]);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        this.zzb.setY(-iArr[1]);
    }
}

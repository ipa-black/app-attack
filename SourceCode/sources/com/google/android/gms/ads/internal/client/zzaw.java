package com.google.android.gms.ads.internal.client;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.ads.h5.OnH5AdsEventListener;
import com.google.android.gms.internal.ads.zzbmp;
import com.google.android.gms.internal.ads.zzbmv;
import com.google.android.gms.internal.ads.zzbok;
import com.google.android.gms.internal.ads.zzbol;
import com.google.android.gms.internal.ads.zzbrd;
import com.google.android.gms.internal.ads.zzbvt;
import com.google.android.gms.internal.ads.zzbzj;
import com.google.android.gms.internal.ads.zzbzn;
import com.google.android.gms.internal.ads.zzbzq;
import com.google.android.gms.internal.ads.zzcav;
import com.google.android.gms.internal.ads.zzcdk;
import com.google.android.gms.internal.ads.zzcdw;
import com.google.android.gms.internal.ads.zzcgf;
import com.google.android.gms.internal.ads.zzcho;
import java.util.HashMap;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes3.dex */
public final class zzaw {
    private final zzk zza;
    private final zzi zzb;
    private final zzeq zzc;
    private final zzbok zzd;
    private final zzcdw zze;
    private final zzbzn zzf;
    private final zzbol zzg;
    private zzcav zzh;

    public zzaw(zzk zzkVar, zzi zziVar, zzeq zzeqVar, zzbok zzbokVar, zzcdw zzcdwVar, zzbzn zzbznVar, zzbol zzbolVar) {
        this.zza = zzkVar;
        this.zzb = zziVar;
        this.zzc = zzeqVar;
        this.zzd = zzbokVar;
        this.zze = zzcdwVar;
        this.zzf = zzbznVar;
        this.zzg = zzbolVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzt(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("action", "no_ads_fallback");
        bundle.putString("flow", str);
        zzay.zzb().zzo(context, zzay.zzc().zza, "gmob-apps", bundle, true);
    }

    public final zzbq zzc(Context context, String str, zzbvt zzbvtVar) {
        return (zzbq) new zzao(this, context, str, zzbvtVar).zzd(context, false);
    }

    public final zzbu zzd(Context context, zzq zzqVar, String str, zzbvt zzbvtVar) {
        return (zzbu) new zzak(this, context, zzqVar, str, zzbvtVar).zzd(context, false);
    }

    public final zzbu zze(Context context, zzq zzqVar, String str, zzbvt zzbvtVar) {
        return (zzbu) new zzam(this, context, zzqVar, str, zzbvtVar).zzd(context, false);
    }

    public final zzdj zzf(Context context, zzbvt zzbvtVar) {
        return (zzdj) new zzac(this, context, zzbvtVar).zzd(context, false);
    }

    public final zzbmp zzh(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        return (zzbmp) new zzas(this, frameLayout, frameLayout2, context).zzd(context, false);
    }

    public final zzbmv zzi(View view, HashMap hashMap, HashMap hashMap2) {
        return (zzbmv) new zzau(this, view, hashMap, hashMap2).zzd(view.getContext(), false);
    }

    public final zzbrd zzl(Context context, zzbvt zzbvtVar, OnH5AdsEventListener onH5AdsEventListener) {
        return (zzbrd) new zzai(this, context, zzbvtVar, onH5AdsEventListener).zzd(context, false);
    }

    public final zzbzj zzm(Context context, zzbvt zzbvtVar) {
        return (zzbzj) new zzag(this, context, zzbvtVar).zzd(context, false);
    }

    public final zzbzq zzo(Activity activity) {
        zzaa zzaaVar = new zzaa(this, activity);
        Intent intent = activity.getIntent();
        boolean z = false;
        if (!intent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
            zzcho.zzg("useClientJar flag not found in activity intent extras.");
        } else {
            z = intent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
        }
        return (zzbzq) zzaaVar.zzd(activity, z);
    }

    public final zzcdk zzq(Context context, String str, zzbvt zzbvtVar) {
        return (zzcdk) new zzav(this, context, str, zzbvtVar).zzd(context, false);
    }

    public final zzcgf zzr(Context context, zzbvt zzbvtVar) {
        return (zzcgf) new zzae(this, context, zzbvtVar).zzd(context, false);
    }
}

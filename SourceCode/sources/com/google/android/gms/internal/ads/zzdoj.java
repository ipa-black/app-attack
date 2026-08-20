package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdoj implements zzden, zzdll {
    private final zzcfb zza;
    private final Context zzb;
    private final zzcft zzc;
    private final View zzd;
    private String zze;
    private final zzbfg zzf;

    public zzdoj(zzcfb zzcfbVar, Context context, zzcft zzcftVar, View view, zzbfg zzbfgVar) {
        this.zza = zzcfbVar;
        this.zzb = context;
        this.zzc = zzcftVar;
        this.zzd = view;
        this.zzf = zzbfgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzbw() {
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzbx() {
    }

    @Override // com.google.android.gms.internal.ads.zzdll
    public final void zzf() {
    }

    @Override // com.google.android.gms.internal.ads.zzdll
    public final void zzg() {
        if (this.zzf == zzbfg.APP_OPEN) {
            return;
        }
        String zzd = this.zzc.zzd(this.zzb);
        this.zze = zzd;
        this.zze = String.valueOf(zzd).concat(this.zzf == zzbfg.REWARD_BASED_VIDEO_AD ? "/Rewarded" : "/Interstitial");
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzj() {
        this.zza.zzb(false);
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzm() {
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzo() {
        View view = this.zzd;
        if (view != null && this.zze != null) {
            this.zzc.zzs(view.getContext(), this.zze);
        }
        this.zza.zzb(true);
    }

    @Override // com.google.android.gms.internal.ads.zzden
    @ParametersAreNonnullByDefault
    public final void zzp(zzccr zzccrVar, String str, String str2) {
        if (this.zzc.zzu(this.zzb)) {
            try {
                zzcft zzcftVar = this.zzc;
                Context context = this.zzb;
                zzcftVar.zzo(context, zzcftVar.zza(context), this.zza.zza(), zzccrVar.zzc(), zzccrVar.zzb());
            } catch (RemoteException e2) {
                com.google.android.gms.ads.internal.util.zze.zzk("Remote Exception to get reward item.", e2);
            }
        }
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzemy implements zzdoe {
    private final Context zza;
    private final zzchu zzb;
    private final zzgfb zzc;
    private final zzfil zzd;
    private final zzcno zze;
    private final zzfjg zzf;
    private final zzbqf zzg;
    private final boolean zzh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzemy(Context context, zzchu zzchuVar, zzgfb zzgfbVar, zzfil zzfilVar, zzcno zzcnoVar, zzfjg zzfjgVar, boolean z, zzbqf zzbqfVar) {
        this.zza = context;
        this.zzb = zzchuVar;
        this.zzc = zzgfbVar;
        this.zzd = zzfilVar;
        this.zze = zzcnoVar;
        this.zzf = zzfjgVar;
        this.zzg = zzbqfVar;
        this.zzh = z;
    }

    @Override // com.google.android.gms.internal.ads.zzdoe
    public final void zza(boolean z, Context context, zzdfa zzdfaVar) {
        zzdmw zzdmwVar = (zzdmw) zzger.zzq(this.zzc);
        this.zze.zzap(true);
        boolean zze = this.zzh ? this.zzg.zze(false) : false;
        com.google.android.gms.ads.internal.zzt.zzp();
        boolean zzE = com.google.android.gms.ads.internal.util.zzs.zzE(this.zza);
        boolean z2 = this.zzh;
        com.google.android.gms.ads.internal.zzj zzjVar = new com.google.android.gms.ads.internal.zzj(zze, zzE, z2 ? this.zzg.zzd() : false, z2 ? this.zzg.zza() : 0.0f, -1, z, this.zzd.zzP, false);
        if (zzdfaVar != null) {
            zzdfaVar.zzf();
        }
        com.google.android.gms.ads.internal.zzt.zzi();
        zzdnt zzj = zzdmwVar.zzj();
        zzcno zzcnoVar = this.zze;
        zzfil zzfilVar = this.zzd;
        int i = zzfilVar.zzR;
        zzchu zzchuVar = this.zzb;
        String str = zzfilVar.zzC;
        zzfiq zzfiqVar = zzfilVar.zzt;
        com.google.android.gms.ads.internal.overlay.zzm.zza(context, new AdOverlayInfoParcel((com.google.android.gms.ads.internal.client.zza) null, zzj, (com.google.android.gms.ads.internal.overlay.zzz) null, zzcnoVar, i, zzchuVar, str, zzjVar, zzfiqVar.zzb, zzfiqVar.zza, this.zzf.zzf, zzdfaVar), true);
    }
}

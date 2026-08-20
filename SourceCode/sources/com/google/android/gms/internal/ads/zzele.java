package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzele implements zzdoe {
    private final zzchu zza;
    private final zzgfb zzb;
    private final zzfil zzc;
    private final zzcno zzd;
    private final zzfjg zze;
    private final zzbqf zzf;
    private final boolean zzg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzele(zzchu zzchuVar, zzgfb zzgfbVar, zzfil zzfilVar, zzcno zzcnoVar, zzfjg zzfjgVar, boolean z, zzbqf zzbqfVar) {
        this.zza = zzchuVar;
        this.zzb = zzgfbVar;
        this.zzc = zzfilVar;
        this.zzd = zzcnoVar;
        this.zze = zzfjgVar;
        this.zzg = z;
        this.zzf = zzbqfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdoe
    public final void zza(boolean z, Context context, zzdfa zzdfaVar) {
        zzcxv zzcxvVar = (zzcxv) zzger.zzq(this.zzb);
        this.zzd.zzap(true);
        boolean zze = this.zzg ? this.zzf.zze(true) : true;
        boolean z2 = this.zzg;
        com.google.android.gms.ads.internal.zzj zzjVar = new com.google.android.gms.ads.internal.zzj(zze, true, z2 ? this.zzf.zzd() : false, z2 ? this.zzf.zza() : 0.0f, -1, z, this.zzc.zzP, false);
        if (zzdfaVar != null) {
            zzdfaVar.zzf();
        }
        com.google.android.gms.ads.internal.zzt.zzi();
        zzdnt zzg = zzcxvVar.zzg();
        zzcno zzcnoVar = this.zzd;
        int i = this.zzc.zzR;
        if (i == -1) {
            com.google.android.gms.ads.internal.client.zzw zzwVar = this.zze.zzj;
            if (zzwVar != null) {
                int i2 = zzwVar.zza;
                if (i2 == 1) {
                    i = 7;
                } else if (i2 == 2) {
                    i = 6;
                }
            }
            com.google.android.gms.ads.internal.util.zze.zze("Error setting app open orientation; no targeting orientation available.");
            i = this.zzc.zzR;
        }
        int i3 = i;
        zzchu zzchuVar = this.zza;
        zzfil zzfilVar = this.zzc;
        String str = zzfilVar.zzC;
        zzfiq zzfiqVar = zzfilVar.zzt;
        com.google.android.gms.ads.internal.overlay.zzm.zza(context, new AdOverlayInfoParcel((com.google.android.gms.ads.internal.client.zza) null, zzg, (com.google.android.gms.ads.internal.overlay.zzz) null, zzcnoVar, i3, zzchuVar, str, zzjVar, zzfiqVar.zzb, zzfiqVar.zza, this.zze.zzf, zzdfaVar), true);
    }
}

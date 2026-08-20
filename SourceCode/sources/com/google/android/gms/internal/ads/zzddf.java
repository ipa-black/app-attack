package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzddf implements zzdhi {
    private final Context zza;
    private final zzfjg zzb;
    private final zzchu zzc;
    private final com.google.android.gms.ads.internal.util.zzg zzd;
    private final zzebj zze;
    private final zzfoy zzf;

    public zzddf(Context context, zzfjg zzfjgVar, zzchu zzchuVar, com.google.android.gms.ads.internal.util.zzg zzgVar, zzebj zzebjVar, zzfoy zzfoyVar) {
        this.zza = context;
        this.zzb = zzfjgVar;
        this.zzc = zzchuVar;
        this.zzd = zzgVar;
        this.zze = zzebjVar;
        this.zzf = zzfoyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdhi
    public final void zzb(zzfix zzfixVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdhi
    public final void zzbG(zzccb zzccbVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdv)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zza().zzc(this.zza, this.zzc, this.zzb.zzf, this.zzd.zzh(), this.zzf);
        }
        this.zze.zzr();
    }
}

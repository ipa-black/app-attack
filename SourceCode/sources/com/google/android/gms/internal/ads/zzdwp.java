package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdwp {
    private final zzcoa zza;
    private final Context zzb;
    private final zzapj zzc;
    private final zzbki zzd;
    private final zzchu zze;
    private final com.google.android.gms.ads.internal.zza zzf;
    private final zzbew zzg;
    private final zzdhc zzh;

    public zzdwp(zzcoa zzcoaVar, Context context, zzapj zzapjVar, zzbki zzbkiVar, zzchu zzchuVar, com.google.android.gms.ads.internal.zza zzaVar, zzbew zzbewVar, zzdhc zzdhcVar) {
        this.zza = zzcoaVar;
        this.zzb = context;
        this.zzc = zzapjVar;
        this.zzd = zzbkiVar;
        this.zze = zzchuVar;
        this.zzf = zzaVar;
        this.zzg = zzbewVar;
        this.zzh = zzdhcVar;
    }

    public final zzcno zza(com.google.android.gms.ads.internal.client.zzq zzqVar, zzfil zzfilVar, zzfio zzfioVar) throws zzcnz {
        return zzcoa.zza(this.zzb, zzcpd.zzc(zzqVar), zzqVar.zza, false, false, this.zzc, this.zzd, this.zze, null, new zzdwe(this), this.zzf, this.zzg, zzfilVar, zzfioVar);
    }
}

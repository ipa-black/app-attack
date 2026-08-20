package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcwg implements zzgen {
    final /* synthetic */ String zza;
    final /* synthetic */ zzcwh zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcwg(zzcwh zzcwhVar, String str) {
        this.zzb = zzcwhVar;
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final void zza(Throwable th) {
        zzfjp zzfjpVar;
        zzfpk zzfpkVar;
        zzfix zzfixVar;
        zzfil zzfilVar;
        zzfil zzfilVar2;
        zzcwh zzcwhVar = this.zzb;
        zzfjpVar = zzcwhVar.zzh;
        zzfpkVar = zzcwhVar.zzg;
        zzfixVar = zzcwhVar.zze;
        zzfilVar = zzcwhVar.zzf;
        String str = this.zza;
        zzfilVar2 = zzcwhVar.zzf;
        zzfjpVar.zza(zzfpkVar.zzd(zzfixVar, zzfilVar, false, str, null, zzfilVar2.zzd));
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzfjp zzfjpVar;
        zzfpk zzfpkVar;
        zzfix zzfixVar;
        zzfil zzfilVar;
        zzfil zzfilVar2;
        String str = (String) obj;
        zzcwh zzcwhVar = this.zzb;
        zzfjpVar = zzcwhVar.zzh;
        zzfpkVar = zzcwhVar.zzg;
        zzfixVar = zzcwhVar.zze;
        zzfilVar = zzcwhVar.zzf;
        String str2 = this.zza;
        zzfilVar2 = zzcwhVar.zzf;
        zzfjpVar.zza(zzfpkVar.zzd(zzfixVar, zzfilVar, false, str2, str, zzfilVar2.zzd));
    }
}

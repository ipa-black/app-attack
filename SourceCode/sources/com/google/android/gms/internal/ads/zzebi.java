package com.google.android.gms.internal.ads;

import com.google.firebase.messaging.Constants;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzebi extends zzbsc {
    final /* synthetic */ Object zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ zzfol zzd;
    final /* synthetic */ zzcig zze;
    final /* synthetic */ zzebj zzf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzebi(zzebj zzebjVar, Object obj, String str, long j, zzfol zzfolVar, zzcig zzcigVar) {
        this.zzf = zzebjVar;
        this.zza = obj;
        this.zzb = str;
        this.zzc = j;
        this.zzd = zzfolVar;
        this.zze = zzcigVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbsd
    public final void zze(String str) {
        zzdzq zzdzqVar;
        zzdlf zzdlfVar;
        zzfoy zzfoyVar;
        synchronized (this.zza) {
            this.zzf.zzv(this.zzb, false, str, (int) (com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - this.zzc));
            zzdzqVar = this.zzf.zzl;
            zzdzqVar.zzb(this.zzb, Constants.IPC_BUNDLE_KEY_SEND_ERROR);
            zzdlfVar = this.zzf.zzo;
            zzdlfVar.zzb(this.zzb, Constants.IPC_BUNDLE_KEY_SEND_ERROR);
            zzfoyVar = this.zzf.zzp;
            zzfol zzfolVar = this.zzd;
            zzfolVar.zzc(str);
            zzfolVar.zzf(false);
            zzfoyVar.zzb(zzfolVar.zzl());
            this.zze.zzd(false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsd
    public final void zzf() {
        zzdzq zzdzqVar;
        zzdlf zzdlfVar;
        zzfoy zzfoyVar;
        synchronized (this.zza) {
            this.zzf.zzv(this.zzb, true, "", (int) (com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - this.zzc));
            zzdzqVar = this.zzf.zzl;
            zzdzqVar.zzd(this.zzb);
            zzdlfVar = this.zzf.zzo;
            zzdlfVar.zzd(this.zzb);
            zzfoyVar = this.zzf.zzp;
            zzfol zzfolVar = this.zzd;
            zzfolVar.zzf(true);
            zzfoyVar.zzb(zzfolVar.zzl());
            this.zze.zzd(true);
        }
    }
}

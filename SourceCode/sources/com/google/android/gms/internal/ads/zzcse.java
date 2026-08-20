package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzcse implements zzfey {
    private final Context zza;
    private final com.google.android.gms.ads.internal.client.zzq zzb;
    private final String zzc;
    private final zzcre zzd;
    private final zzcse zze = this;
    private final zzhfc zzf;
    private final zzhfc zzg;
    private final zzhfc zzh;
    private final zzhfc zzi;
    private final zzhfc zzj;
    private final zzhfc zzk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzcse(zzcre zzcreVar, Context context, String str, com.google.android.gms.ads.internal.client.zzq zzqVar, zzcsd zzcsdVar) {
        zzhfc zzhfcVar;
        zzhfc zzhfcVar2;
        zzhfc zzhfcVar3;
        this.zzd = zzcreVar;
        this.zza = context;
        this.zzb = zzqVar;
        this.zzc = str;
        zzhep zza = zzheq.zza(context);
        this.zzf = zza;
        zzhep zza2 = zzheq.zza(zzqVar);
        this.zzg = zza2;
        zzhfcVar = zzcreVar.zzo;
        zzhfc zzc = zzheo.zzc(new zzesc(zzhfcVar));
        this.zzh = zzc;
        zzhfc zzc2 = zzheo.zzc(zzesh.zza());
        this.zzi = zzc2;
        zzhfc zzc3 = zzheo.zzc(zzdjl.zza());
        this.zzj = zzc3;
        zzhfcVar2 = zzcreVar.zzp;
        zzhfcVar3 = zzcreVar.zzT;
        this.zzk = zzheo.zzc(new zzfew(zza, zzhfcVar2, zza2, zzhfcVar3, zzc, zzc2, zzfji.zza(), zzc3));
    }

    @Override // com.google.android.gms.internal.ads.zzfey
    public final zzerh zza() {
        zzcpm zzcpmVar;
        Context context = this.zza;
        com.google.android.gms.ads.internal.client.zzq zzqVar = this.zzb;
        String str = this.zzc;
        zzfev zzfevVar = (zzfev) this.zzk.zzb();
        zzesb zzesbVar = (zzesb) this.zzh.zzb();
        zzcpmVar = this.zzd.zza;
        zzchu zzd = zzcpmVar.zzd();
        zzhex.zzb(zzd);
        return new zzerh(context, zzqVar, str, zzfevVar, zzesbVar, zzd);
    }
}

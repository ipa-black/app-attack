package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzctc implements zzfgr {
    private final zzcre zza;
    private final zzctc zzb = this;
    private final zzhfc zzc;
    private final zzhfc zzd;
    private final zzhfc zze;
    private final zzhfc zzf;
    private final zzhfc zzg;
    private final zzhfc zzh;
    private final zzhfc zzi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzctc(zzcre zzcreVar, Context context, String str, com.google.android.gms.ads.internal.client.zzq zzqVar, zzctb zzctbVar) {
        zzhfc zzhfcVar;
        zzhfc zzhfcVar2;
        zzhfc zzhfcVar3;
        zzhfc zzhfcVar4;
        zzhfc zzhfcVar5;
        this.zza = zzcreVar;
        zzhep zza = zzheq.zza(context);
        this.zzc = zza;
        zzhep zza2 = zzheq.zza(zzqVar);
        this.zzd = zza2;
        zzhep zza3 = zzheq.zza(str);
        this.zze = zza3;
        zzhfcVar = zzcreVar.zzo;
        zzhfc zzc = zzheo.zzc(new zzesc(zzhfcVar));
        this.zzf = zzc;
        zzhfcVar2 = zzcreVar.zzaD;
        zzhfc zzc2 = zzheo.zzc(new zzfhp(zzhfcVar2));
        this.zzg = zzc2;
        zzhfcVar3 = zzcreVar.zzp;
        zzhfcVar4 = zzcreVar.zzT;
        zzhfc zzc3 = zzheo.zzc(new zzfgp(zza, zzhfcVar3, zzhfcVar4, zzc, zzc2, zzfji.zza()));
        this.zzh = zzc3;
        zzhfcVar5 = zzcreVar.zzi;
        this.zzi = zzheo.zzc(new zzesk(zza, zza2, zza3, zzc3, zzc, zzc2, zzhfcVar5));
    }

    @Override // com.google.android.gms.internal.ads.zzfgr
    public final zzesj zza() {
        return (zzesj) this.zzi.zzb();
    }
}

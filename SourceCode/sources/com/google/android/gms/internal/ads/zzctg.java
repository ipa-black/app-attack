package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzctg implements zzfif {
    private final zzcre zza;
    private final zzctg zzb = this;
    private final zzhfc zzc;
    private final zzhfc zzd;
    private final zzhfc zze;
    private final zzhfc zzf;
    private final zzhfc zzg;
    private final zzhfc zzh;
    private final zzhfc zzi;
    private final zzhfc zzj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzctg(zzcre zzcreVar, Context context, String str, zzctf zzctfVar) {
        zzhfc zzhfcVar;
        zzhfc zzhfcVar2;
        zzhfc zzhfcVar3;
        zzhfc zzhfcVar4;
        zzhfc zzhfcVar5;
        zzhfc zzhfcVar6;
        this.zza = zzcreVar;
        zzhep zza = zzheq.zza(context);
        this.zzc = zza;
        zzhfcVar = zzcreVar.zzaD;
        zzhfcVar2 = zzcreVar.zzaE;
        zzfgf zzfgfVar = new zzfgf(zza, zzhfcVar, zzhfcVar2);
        this.zzd = zzfgfVar;
        zzhfcVar3 = zzcreVar.zzaD;
        zzhfc zzc = zzheo.zzc(new zzfhp(zzhfcVar3));
        this.zze = zzc;
        zzhfc zzc2 = zzheo.zzc(zzfjd.zza());
        this.zzf = zzc2;
        zzhfcVar4 = zzcreVar.zzp;
        zzhfcVar5 = zzcreVar.zzT;
        zzhfc zzc3 = zzheo.zzc(new zzfhz(zza, zzhfcVar4, zzhfcVar5, zzfgfVar, zzc, zzfji.zza(), zzc2));
        this.zzg = zzc3;
        this.zzh = zzheo.zzc(new zzfij(zzc3, zzc, zzc2));
        zzhep zzc4 = zzheq.zzc(str);
        this.zzi = zzc4;
        zzhfcVar6 = zzcreVar.zzi;
        this.zzj = zzheo.zzc(new zzfid(zzc4, zzc3, zza, zzc, zzc2, zzhfcVar6));
    }

    @Override // com.google.android.gms.internal.ads.zzfif
    public final zzfic zza() {
        return (zzfic) this.zzj.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzfif
    public final zzfii zzb() {
        return (zzfii) this.zzh.zzb();
    }
}

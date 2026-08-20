package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzcru implements zzfdk {
    private final zzcre zza;
    private final zzcru zzb = this;
    private final zzhfc zzc;
    private final zzhfc zzd;
    private final zzhfc zze;
    private final zzhfc zzf;
    private final zzhfc zzg;
    private final zzhfc zzh;
    private final zzhfc zzi;
    private final zzhfc zzj;
    private final zzhfc zzk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzcru(zzcre zzcreVar, Context context, String str, zzcrt zzcrtVar) {
        zzhfc zzhfcVar;
        zzhfc zzhfcVar2;
        zzhfc zzhfcVar3;
        zzhfc zzhfcVar4;
        zzhfc zzhfcVar5;
        zzhfc zzhfcVar6;
        zzhfc zzhfcVar7;
        zzhfc zzhfcVar8;
        zzhfc zzhfcVar9;
        zzhfc zzhfcVar10;
        zzhfc zzhfcVar11;
        zzhfc zzhfcVar12;
        zzhfc zzhfcVar13;
        zzhfc zzhfcVar14;
        zzhfc zzhfcVar15;
        this.zza = zzcreVar;
        zzhep zza = zzheq.zza(context);
        this.zzc = zza;
        zzhep zza2 = zzheq.zza(str);
        this.zzd = zza2;
        zzhfcVar = zzcreVar.zzaD;
        zzhfcVar2 = zzcreVar.zzaE;
        zzfge zzfgeVar = new zzfge(zza, zzhfcVar, zzhfcVar2);
        this.zze = zzfgeVar;
        zzhfcVar3 = zzcreVar.zzaD;
        zzhfc zzc = zzheo.zzc(new zzfei(zzhfcVar3));
        this.zzf = zzc;
        zzhfcVar4 = zzcreVar.zzp;
        zzhfcVar5 = zzcreVar.zzT;
        zzfji zza3 = zzfji.zza();
        zzhfcVar6 = zzcreVar.zzi;
        zzhfc zzc2 = zzheo.zzc(new zzfdc(zza, zzhfcVar4, zzhfcVar5, zzfgeVar, zzc, zza3, zzhfcVar6));
        this.zzg = zzc2;
        zzhfcVar7 = zzcreVar.zzT;
        zzhfcVar8 = zzcreVar.zzi;
        this.zzh = zzheo.zzc(new zzfdi(zzhfcVar7, zza, zza2, zzc2, zzc, zzhfcVar8));
        zzhfcVar9 = zzcreVar.zzaD;
        zzhfcVar10 = zzcreVar.zzaE;
        zzfgd zzfgdVar = new zzfgd(zza, zzhfcVar9, zzhfcVar10);
        this.zzi = zzfgdVar;
        zzhfcVar11 = zzcreVar.zzp;
        zzhfcVar12 = zzcreVar.zzT;
        zzfji zza4 = zzfji.zza();
        zzhfcVar13 = zzcreVar.zzi;
        zzhfc zzc3 = zzheo.zzc(new zzfek(zza, zzhfcVar11, zzhfcVar12, zzfgdVar, zzc, zza4, zzhfcVar13));
        this.zzj = zzc3;
        zzhfcVar14 = zzcreVar.zzT;
        zzhfcVar15 = zzcreVar.zzi;
        this.zzk = zzheo.zzc(new zzfeq(zzhfcVar14, zza, zza2, zzc3, zzc, zzhfcVar15));
    }

    @Override // com.google.android.gms.internal.ads.zzfdk
    public final zzfdh zza() {
        return (zzfdh) this.zzh.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzfdk
    public final zzfep zzb() {
        return (zzfep) this.zzk.zzb();
    }
}

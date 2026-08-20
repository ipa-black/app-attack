package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcwi implements zzhep {
    private final zzhfc zza;
    private final zzhfc zzb;
    private final zzhfc zzc;
    private final zzhfc zzd;
    private final zzhfc zze;
    private final zzhfc zzf;
    private final zzhfc zzg;
    private final zzhfc zzh;
    private final zzhfc zzi;
    private final zzhfc zzj;
    private final zzhfc zzk;
    private final zzhfc zzl;
    private final zzhfc zzm;
    private final zzhfc zzn;

    public zzcwi(zzhfc zzhfcVar, zzhfc zzhfcVar2, zzhfc zzhfcVar3, zzhfc zzhfcVar4, zzhfc zzhfcVar5, zzhfc zzhfcVar6, zzhfc zzhfcVar7, zzhfc zzhfcVar8, zzhfc zzhfcVar9, zzhfc zzhfcVar10, zzhfc zzhfcVar11, zzhfc zzhfcVar12, zzhfc zzhfcVar13, zzhfc zzhfcVar14) {
        this.zza = zzhfcVar;
        this.zzb = zzhfcVar2;
        this.zzc = zzhfcVar3;
        this.zzd = zzhfcVar4;
        this.zze = zzhfcVar5;
        this.zzf = zzhfcVar6;
        this.zzg = zzhfcVar7;
        this.zzh = zzhfcVar8;
        this.zzi = zzhfcVar9;
        this.zzj = zzhfcVar10;
        this.zzk = zzhfcVar11;
        this.zzl = zzhfcVar12;
        this.zzm = zzhfcVar13;
        this.zzn = zzhfcVar14;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* synthetic */ Object zzb() {
        Context zza = ((zzcpp) this.zza).zza();
        zzgfc zzgfcVar = zzcib.zza;
        zzhex.zzb(zzgfcVar);
        return new zzcwh(zza, zzgfcVar, (Executor) this.zzc.zzb(), (ScheduledExecutorService) this.zzd.zzb(), ((zzdbg) this.zze).zza(), ((zzdbd) this.zzf).zza(), (zzfpk) this.zzg.zzb(), (zzfjp) this.zzh.zzb(), (View) this.zzi.zzb(), (zzcno) this.zzj.zzb(), (zzapj) this.zzk.zzb(), (zzbki) this.zzl.zzb(), new zzbkk(), (zzfow) this.zzn.zzb(), null);
    }
}

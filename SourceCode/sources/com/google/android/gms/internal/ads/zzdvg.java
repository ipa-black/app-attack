package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdvg implements zzhep {
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

    public zzdvg(zzhfc zzhfcVar, zzhfc zzhfcVar2, zzhfc zzhfcVar3, zzhfc zzhfcVar4, zzhfc zzhfcVar5, zzhfc zzhfcVar6, zzhfc zzhfcVar7, zzhfc zzhfcVar8, zzhfc zzhfcVar9, zzhfc zzhfcVar10) {
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
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* synthetic */ Object zzb() {
        return new zzdvb(((zzcpp) this.zza).zza(), (Executor) this.zzb.zzb(), (zzapj) this.zzc.zzb(), ((zzcqa) this.zzd).zza(), com.google.android.gms.ads.internal.zza.zza(), new zzcoa(), (zzekc) this.zzg.zzb(), (zzfpo) this.zzh.zzb(), (zzdzh) this.zzi.zzb(), (zzfnt) this.zzj.zzb());
    }
}

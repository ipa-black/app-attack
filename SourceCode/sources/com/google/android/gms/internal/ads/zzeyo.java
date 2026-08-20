package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeyo implements zzhep {
    private final zzhfc zza;
    private final zzhfc zzb;
    private final zzhfc zzc;
    private final zzhfc zzd;
    private final zzhfc zze;
    private final zzhfc zzf;
    private final zzhfc zzg;
    private final zzhfc zzh;
    private final zzhfc zzi;

    public zzeyo(zzhfc zzhfcVar, zzhfc zzhfcVar2, zzhfc zzhfcVar3, zzhfc zzhfcVar4, zzhfc zzhfcVar5, zzhfc zzhfcVar6, zzhfc zzhfcVar7, zzhfc zzhfcVar8, zzhfc zzhfcVar9) {
        this.zza = zzhfcVar;
        this.zzb = zzhfcVar2;
        this.zzc = zzhfcVar3;
        this.zzd = zzhfcVar4;
        this.zze = zzhfcVar5;
        this.zzf = zzhfcVar6;
        this.zzg = zzhfcVar7;
        this.zzh = zzhfcVar8;
        this.zzi = zzhfcVar9;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzgfc zzgfcVar = zzcib.zza;
        zzhex.zzb(zzgfcVar);
        return new zzeym(zzgfcVar, (ScheduledExecutorService) this.zzb.zzb(), (String) this.zzc.zzb(), (zzeqx) this.zzd.zzb(), (Context) this.zze.zzb(), ((zzdee) this.zzf).zza(), (zzeqt) this.zzg.zzb(), (zzdxc) this.zzh.zzb(), (zzebl) this.zzi.zzb());
    }
}

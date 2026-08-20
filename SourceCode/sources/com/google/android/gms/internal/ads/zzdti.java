package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdti implements zzhep {
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
    private final zzhfc zzo;
    private final zzhfc zzp;

    public zzdti(zzhfc zzhfcVar, zzhfc zzhfcVar2, zzhfc zzhfcVar3, zzhfc zzhfcVar4, zzhfc zzhfcVar5, zzhfc zzhfcVar6, zzhfc zzhfcVar7, zzhfc zzhfcVar8, zzhfc zzhfcVar9, zzhfc zzhfcVar10, zzhfc zzhfcVar11, zzhfc zzhfcVar12, zzhfc zzhfcVar13, zzhfc zzhfcVar14, zzhfc zzhfcVar15, zzhfc zzhfcVar16) {
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
        this.zzo = zzhfcVar15;
        this.zzp = zzhfcVar16;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    /* renamed from: zza */
    public final zzdth zzb() {
        Context context = (Context) this.zza.zzb();
        zzdsq zzdsqVar = (zzdsq) this.zzb.zzb();
        zzapj zzapjVar = (zzapj) this.zzc.zzb();
        zzchu zza = ((zzcqa) this.zzd).zza();
        com.google.android.gms.ads.internal.zza zza2 = com.google.android.gms.ads.internal.zza.zza();
        zzbew zzbewVar = (zzbew) this.zzf.zzb();
        zzgfc zzgfcVar = zzcib.zza;
        zzhex.zzb(zzgfcVar);
        return new zzdth(context, zzdsqVar, zzapjVar, zza, zza2, zzbewVar, zzgfcVar, ((zzdee) this.zzh).zza(), (zzdtz) this.zzi.zzb(), (zzdwp) this.zzj.zzb(), (ScheduledExecutorService) this.zzk.zzb(), (zzdzh) this.zzl.zzb(), (zzfnt) this.zzm.zzb(), (zzfpo) this.zzn.zzb(), (zzekc) this.zzo.zzb(), (zzdvk) this.zzp.zzb());
    }
}

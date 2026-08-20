package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcyp implements zzhep {
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

    public zzcyp(zzhfc zzhfcVar, zzhfc zzhfcVar2, zzhfc zzhfcVar3, zzhfc zzhfcVar4, zzhfc zzhfcVar5, zzhfc zzhfcVar6, zzhfc zzhfcVar7, zzhfc zzhfcVar8, zzhfc zzhfcVar9, zzhfc zzhfcVar10) {
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

    public static zzcyo zzc(zzdam zzdamVar, Context context, zzfim zzfimVar, View view, zzcno zzcnoVar, zzdal zzdalVar, zzdqr zzdqrVar, zzdme zzdmeVar, zzhej zzhejVar, Executor executor) {
        return new zzcyo(zzdamVar, context, zzfimVar, view, zzcnoVar, zzdalVar, zzdqrVar, zzdmeVar, zzhejVar, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    /* renamed from: zza */
    public final zzcyo zzb() {
        return new zzcyo(((zzdcm) this.zza).zzb(), (Context) this.zzb.zzb(), ((zzcyv) this.zzc).zza(), ((zzcyu) this.zzd).zza(), ((zzczg) this.zze).zza(), ((zzcyw) this.zzf).zza(), ((zzdoq) this.zzg).zza(), (zzdme) this.zzh.zzb(), zzheo.zza(this.zzi), (Executor) this.zzj.zzb());
    }
}

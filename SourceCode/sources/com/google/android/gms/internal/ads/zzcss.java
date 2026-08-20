package com.google.android.gms.internal.ads;

import android.content.Context;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcss implements zzeaq {
    private final Context zza;
    private final zzbra zzb;
    private final zzcre zzc;
    private final zzcss zzd = this;
    private final zzhfc zze;
    private final zzhfc zzf;
    private final zzhfc zzg;
    private final zzhfc zzh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzcss(zzcre zzcreVar, Context context, zzbra zzbraVar, zzcsr zzcsrVar) {
        this.zzc = zzcreVar;
        this.zza = context;
        this.zzb = zzbraVar;
        zzhep zza = zzheq.zza(this);
        this.zze = zza;
        zzhep zza2 = zzheq.zza(zzbraVar);
        this.zzf = zza2;
        zzeam zzeamVar = new zzeam(zza2);
        this.zzg = zzeamVar;
        this.zzh = zzheo.zzc(new zzeao(zza, zzeamVar));
    }

    @Override // com.google.android.gms.internal.ads.zzeaq
    public final zzeah zzb() {
        return new zzcsm(this.zzc, this.zzd, null);
    }

    @Override // com.google.android.gms.internal.ads.zzeaq
    public final zzean zzd() {
        return (zzean) this.zzh.zzb();
    }
}

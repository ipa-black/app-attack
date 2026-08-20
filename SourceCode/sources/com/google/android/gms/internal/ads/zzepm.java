package com.google.android.gms.internal.ads;

import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzepm extends zzcdb {
    final /* synthetic */ zzdgt zza;
    final /* synthetic */ zzdel zzb;
    final /* synthetic */ zzdfu zzc;
    final /* synthetic */ zzdml zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzepm(zzepn zzepnVar, zzdgt zzdgtVar, zzdel zzdelVar, zzdfu zzdfuVar, zzdml zzdmlVar) {
        this.zza = zzdgtVar;
        this.zzb = zzdelVar;
        this.zzc = zzdfuVar;
        this.zzd = zzdmlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final void zze(IObjectWrapper iObjectWrapper) {
        this.zzb.onAdClicked();
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final void zzf(IObjectWrapper iObjectWrapper) {
        this.zza.zzf(4);
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final void zzg(IObjectWrapper iObjectWrapper, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final void zzh(IObjectWrapper iObjectWrapper) {
        this.zzc.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final void zzi(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final void zzj(IObjectWrapper iObjectWrapper) {
        this.zza.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final void zzk(IObjectWrapper iObjectWrapper, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final void zzl(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final void zzm(IObjectWrapper iObjectWrapper, zzcdd zzcddVar) {
        this.zzd.zza(zzcddVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final void zzn(IObjectWrapper iObjectWrapper) {
        this.zzc.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final void zzo(IObjectWrapper iObjectWrapper) {
        this.zzd.zzc();
    }
}

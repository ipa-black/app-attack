package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfoi implements zzdll, zzdfd, zzdlp {
    private final zzfow zza;
    private final zzfol zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfoi(Context context, zzfow zzfowVar) {
        this.zza = zzfowVar;
        this.zzb = zzfok.zza(context, 13);
    }

    @Override // com.google.android.gms.internal.ads.zzdlp
    public final void zza() {
    }

    @Override // com.google.android.gms.internal.ads.zzdlp
    public final void zzb() {
        if (((Boolean) zzbks.zzd.zze()).booleanValue()) {
            zzfow zzfowVar = this.zza;
            zzfol zzfolVar = this.zzb;
            zzfolVar.zzf(true);
            zzfowVar.zza(zzfolVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdll
    public final void zzf() {
    }

    @Override // com.google.android.gms.internal.ads.zzdll
    public final void zzg() {
        if (((Boolean) zzbks.zzd.zze()).booleanValue()) {
            this.zzb.zzh();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdfd
    public final void zzk(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (((Boolean) zzbks.zzd.zze()).booleanValue()) {
            zzfow zzfowVar = this.zza;
            zzfol zzfolVar = this.zzb;
            zzfolVar.zzc(zzeVar.zza().toString());
            zzfolVar.zzf(false);
            zzfowVar.zza(zzfolVar);
        }
    }
}

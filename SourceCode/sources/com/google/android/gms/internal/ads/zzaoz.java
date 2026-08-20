package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzaoz implements zzftc {
    final /* synthetic */ zzfrz zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaoz(zzfrz zzfrzVar) {
        this.zza = zzfrzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzftc
    public final void zza(int i, long j) {
        this.zza.zzd(i, System.currentTimeMillis() - j);
    }

    @Override // com.google.android.gms.internal.ads.zzftc
    public final void zzb(int i, long j, String str) {
        this.zza.zze(i, System.currentTimeMillis() - j, str);
    }
}

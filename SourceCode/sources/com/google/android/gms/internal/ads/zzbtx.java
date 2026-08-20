package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbtx implements zzcik {
    final /* synthetic */ zzbtz zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbtx(zzbtz zzbtzVar) {
        this.zza = zzbtzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcik
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        zzbue zzbueVar;
        zzbug zzbugVar = (zzbug) obj;
        com.google.android.gms.ads.internal.util.zze.zza("Releasing engine reference.");
        zzbueVar = this.zza.zzb;
        zzbueVar.zzd();
    }
}

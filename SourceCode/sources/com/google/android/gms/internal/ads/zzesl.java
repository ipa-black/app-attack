package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzesl implements zzesq {
    final /* synthetic */ zzesm zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzesl(zzesm zzesmVar) {
        this.zza = zzesmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzesq
    public final void zza() {
        synchronized (this.zza) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzesq
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        synchronized (this.zza) {
            this.zza.zzc = ((zzdan) obj).zzl();
            ((zzdan) obj).zzab();
        }
    }
}

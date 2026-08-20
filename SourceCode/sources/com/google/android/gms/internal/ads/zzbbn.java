package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbbn implements Runnable {
    final /* synthetic */ int zza;
    final /* synthetic */ long zzb;
    final /* synthetic */ zzbbr zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbbn(zzbbr zzbbrVar, int i, long j) {
        this.zzc = zzbbrVar;
        this.zza = i;
        this.zzb = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbbs zzbbsVar;
        zzbbsVar = this.zzc.zzb;
        zzbbsVar.zzl(this.zza, this.zzb);
    }
}

package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbbm implements Runnable {
    final /* synthetic */ zzatd zza;
    final /* synthetic */ zzbbr zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbbm(zzbbr zzbbrVar, zzatd zzatdVar) {
        this.zzb = zzbbrVar;
        this.zza = zzatdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbbs zzbbsVar;
        zzbbsVar = this.zzb.zzb;
        zzbbsVar.zzn(this.zza);
    }
}

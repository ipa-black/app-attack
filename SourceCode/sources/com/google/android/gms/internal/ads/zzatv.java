package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzatv implements Runnable {
    final /* synthetic */ zzatd zza;
    final /* synthetic */ zzatz zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzatv(zzatz zzatzVar, zzatd zzatdVar) {
        this.zzb = zzatzVar;
        this.zza = zzatdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzaua zzauaVar;
        zzauaVar = this.zzb.zzb;
        zzauaVar.zzh(this.zza);
    }
}

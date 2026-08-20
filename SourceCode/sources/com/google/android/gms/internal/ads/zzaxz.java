package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzaxz implements Runnable {
    final /* synthetic */ zzayf zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaxz(zzayf zzayfVar) {
        this.zza = zzayfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        zzayi zzayiVar;
        zzayf zzayfVar = this.zza;
        z = zzayfVar.zzF;
        if (z) {
            return;
        }
        zzayiVar = zzayfVar.zzo;
        zzayiVar.zze(zzayfVar);
    }
}

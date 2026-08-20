package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzayb implements Runnable {
    final /* synthetic */ IOException zza;
    final /* synthetic */ zzayf zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzayb(zzayf zzayfVar, IOException iOException) {
        this.zzb = zzayfVar;
        this.zza = iOException;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzayg zzaygVar;
        zzaygVar = this.zzb.zze;
        zzaygVar.zzi(this.zza);
    }
}

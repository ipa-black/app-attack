package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzaxy implements Runnable {
    final /* synthetic */ zzayf zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaxy(zzayf zzayfVar) {
        this.zza = zzayfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzayf.zzp(this.zza);
    }
}

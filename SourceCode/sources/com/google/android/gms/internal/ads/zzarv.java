package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzarv implements Runnable {
    final /* synthetic */ zzarw zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzarv(zzarw zzarwVar) {
        this.zza = zzarwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzarw.zzb(this.zza);
    }
}

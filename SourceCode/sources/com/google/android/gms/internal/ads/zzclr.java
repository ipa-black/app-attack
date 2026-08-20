package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzclr implements Runnable {
    final /* synthetic */ zzcls zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzclr(zzcls zzclsVar) {
        this.zza = zzclsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.ads.internal.zzt.zzy().zzc(this.zza);
    }
}

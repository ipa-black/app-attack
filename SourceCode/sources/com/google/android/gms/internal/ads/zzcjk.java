package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzcjk implements Runnable {
    final /* synthetic */ boolean zza;
    final /* synthetic */ zzcjl zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcjk(zzcjl zzcjlVar, boolean z) {
        this.zzb = zzcjlVar;
        this.zza = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzK("windowVisibilityChanged", "isVisible", String.valueOf(this.zza));
    }
}

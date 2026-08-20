package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzcji implements Runnable {
    final /* synthetic */ zzcjl zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcji(zzcjl zzcjlVar) {
        this.zza = zzcjlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzK("surfaceCreated", new String[0]);
    }
}

package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzcix implements Runnable {
    final /* synthetic */ int zza;
    final /* synthetic */ int zzb;
    final /* synthetic */ zzcjb zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcix(zzcjb zzcjbVar, int i, int i2) {
        this.zzc = zzcjbVar;
        this.zza = i;
        this.zzb = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcjc zzcjcVar;
        zzcjc zzcjcVar2;
        zzcjb zzcjbVar = this.zzc;
        zzcjcVar = zzcjbVar.zzr;
        if (zzcjcVar != null) {
            zzcjcVar2 = zzcjbVar.zzr;
            zzcjcVar2.zzj(this.zza, this.zzb);
        }
    }
}

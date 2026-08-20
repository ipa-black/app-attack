package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzciu implements Runnable {
    final /* synthetic */ zzcjb zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzciu(zzcjb zzcjbVar) {
        this.zza = zzcjbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcjc zzcjcVar;
        zzcjc zzcjcVar2;
        zzcjb zzcjbVar = this.zza;
        zzcjcVar = zzcjbVar.zzr;
        if (zzcjcVar != null) {
            zzcjcVar2 = zzcjbVar.zzr;
            zzcjcVar2.zza();
        }
    }
}

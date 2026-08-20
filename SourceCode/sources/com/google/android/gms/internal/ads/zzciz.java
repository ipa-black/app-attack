package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzciz implements Runnable {
    final /* synthetic */ zzcjb zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzciz(zzcjb zzcjbVar) {
        this.zza = zzcjbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcjc zzcjcVar;
        boolean z;
        zzcjc zzcjcVar2;
        zzcjc zzcjcVar3;
        zzcjb zzcjbVar = this.zza;
        zzcjcVar = zzcjbVar.zzr;
        if (zzcjcVar != null) {
            z = zzcjbVar.zzs;
            if (!z) {
                zzcjcVar3 = zzcjbVar.zzr;
                zzcjcVar3.zzg();
                this.zza.zzs = true;
            }
            zzcjcVar2 = this.zza.zzr;
            zzcjcVar2.zze();
        }
    }
}

package com.google.android.gms.internal.ads;

import android.media.MediaPlayer;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzcit implements Runnable {
    final /* synthetic */ MediaPlayer zza;
    final /* synthetic */ zzcjb zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcit(zzcjb zzcjbVar, MediaPlayer mediaPlayer) {
        this.zzb = zzcjbVar;
        this.zza = mediaPlayer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcjc zzcjcVar;
        zzcjc zzcjcVar2;
        zzcjb.zzl(this.zzb, this.zza);
        zzcjb zzcjbVar = this.zzb;
        zzcjcVar = zzcjbVar.zzr;
        if (zzcjcVar != null) {
            zzcjcVar2 = zzcjbVar.zzr;
            zzcjcVar2.zzf();
        }
    }
}

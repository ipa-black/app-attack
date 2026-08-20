package com.google.android.gms.internal.ads;

import android.view.Surface;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbbp implements Runnable {
    final /* synthetic */ Surface zza;
    final /* synthetic */ zzbbr zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbbp(zzbbr zzbbrVar, Surface surface) {
        this.zzb = zzbbrVar;
        this.zza = surface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbbs zzbbsVar;
        zzbbsVar = this.zzb.zzb;
        zzbbsVar.zzm(this.zza);
    }
}

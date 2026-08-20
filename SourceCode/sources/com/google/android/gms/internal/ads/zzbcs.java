package com.google.android.gms.internal.ads;

import android.view.View;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzbcs implements Runnable {
    final /* synthetic */ View zza;
    final /* synthetic */ zzbcw zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbcs(zzbcw zzbcwVar, View view) {
        this.zzb = zzbcwVar;
        this.zza = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzc(this.zza);
    }
}

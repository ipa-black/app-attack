package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.zzfrz;
import com.google.android.gms.internal.ads.zzftc;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes3.dex */
public final class zzh implements zzftc {
    final /* synthetic */ zzi zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzh(zzi zziVar) {
        this.zza = zziVar;
    }

    @Override // com.google.android.gms.internal.ads.zzftc
    public final void zza(int i, long j) {
        zzfrz zzfrzVar;
        zzfrzVar = this.zza.zzi;
        zzfrzVar.zzd(i, System.currentTimeMillis() - j);
    }

    @Override // com.google.android.gms.internal.ads.zzftc
    public final void zzb(int i, long j, String str) {
        zzfrz zzfrzVar;
        zzfrzVar = this.zza.zzi;
        zzfrzVar.zze(i, System.currentTimeMillis() - j, str);
    }
}

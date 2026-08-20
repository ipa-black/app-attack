package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeoi implements zzgen {
    final /* synthetic */ long zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzfil zzc;
    final /* synthetic */ zzfio zzd;
    final /* synthetic */ zzfpk zze;
    final /* synthetic */ zzfix zzf;
    final /* synthetic */ zzeoj zzg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeoi(zzeoj zzeojVar, long j, String str, zzfil zzfilVar, zzfio zzfioVar, zzfpk zzfpkVar, zzfix zzfixVar) {
        this.zzg = zzeojVar;
        this.zza = j;
        this.zzb = str;
        this.zzc = zzfilVar;
        this.zzd = zzfioVar;
        this.zze = zzfpkVar;
        this.zzf = zzfixVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x009e  */
    @Override // com.google.android.gms.internal.ads.zzgen
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(java.lang.Throwable r13) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeoi.zza(java.lang.Throwable):void");
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final void zzb(Object obj) {
        Clock clock;
        boolean z;
        zzekv zzekvVar;
        zzeok zzeokVar;
        clock = this.zzg.zza;
        long elapsedRealtime = clock.elapsedRealtime() - this.zza;
        zzeoj.zzg(this.zzg, this.zzb, 0, elapsedRealtime, this.zzc.zzah, null);
        zzeoj zzeojVar = this.zzg;
        z = zzeojVar.zze;
        if (z) {
            zzeokVar = zzeojVar.zzb;
            zzeokVar.zza(this.zzd, this.zzc, 0, null, elapsedRealtime);
        }
        zzekvVar = this.zzg.zzf;
        zzekvVar.zzf(this.zzc, elapsedRealtime, null);
    }
}

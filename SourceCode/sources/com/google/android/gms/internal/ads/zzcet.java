package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcet {
    private final Clock zza;
    private final com.google.android.gms.ads.internal.util.zzg zzb;
    private final zzcft zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcet(Clock clock, com.google.android.gms.ads.internal.util.zzg zzgVar, zzcft zzcftVar) {
        this.zza = clock;
        this.zzb = zzgVar;
        this.zzc = zzcftVar;
    }

    public final void zza() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzao)).booleanValue()) {
            this.zzc.zzt();
        }
    }

    public final void zzb(int i, long j) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzan)).booleanValue()) {
            return;
        }
        if (j - this.zzb.zzf() < 0) {
            com.google.android.gms.ads.internal.util.zze.zza("Receiving npa decision in the past, ignoring.");
            return;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzao)).booleanValue()) {
            this.zzb.zzK(-1);
            this.zzb.zzL(j);
        } else {
            this.zzb.zzK(i);
            this.zzb.zzL(j);
        }
        zza();
    }
}

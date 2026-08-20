package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcpd {
    public final int zza;
    public final int zzb;
    private final int zzc;

    private zzcpd(int i, int i2, int i3) {
        this.zzc = i;
        this.zzb = i2;
        this.zza = i3;
    }

    public static zzcpd zza() {
        return new zzcpd(0, 0, 0);
    }

    public static zzcpd zzb(int i, int i2) {
        return new zzcpd(1, i, i2);
    }

    public static zzcpd zzc(com.google.android.gms.ads.internal.client.zzq zzqVar) {
        return zzqVar.zzd ? new zzcpd(3, 0, 0) : zzqVar.zzi ? new zzcpd(2, 0, 0) : zzqVar.zzh ? zza() : zzb(zzqVar.zzf, zzqVar.zzc);
    }

    public static zzcpd zzd() {
        return new zzcpd(5, 0, 0);
    }

    public static zzcpd zze() {
        return new zzcpd(4, 0, 0);
    }

    public final boolean zzf() {
        return this.zzc == 0;
    }

    public final boolean zzg() {
        return this.zzc == 2;
    }

    public final boolean zzh() {
        return this.zzc == 5;
    }

    public final boolean zzi() {
        return this.zzc == 3;
    }

    public final boolean zzj() {
        return this.zzc == 4;
    }
}

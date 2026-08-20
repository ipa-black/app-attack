package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzawe {
    public final int zza;
    public int zzb;
    public int zzc;
    public long zzd;
    private final boolean zze;
    private final zzbar zzf;
    private final zzbar zzg;
    private int zzh;
    private int zzi;

    public zzawe(zzbar zzbarVar, zzbar zzbarVar2, boolean z) {
        this.zzg = zzbarVar;
        this.zzf = zzbarVar2;
        this.zze = z;
        zzbarVar2.zzv(12);
        this.zza = zzbarVar2.zzi();
        zzbarVar.zzv(12);
        this.zzi = zzbarVar.zzi();
        zzbaj.zzf(zzbarVar.zze() == 1, "first_chunk must be 1");
        this.zzb = -1;
    }

    public final boolean zza() {
        int i = this.zzb + 1;
        this.zzb = i;
        if (i == this.zza) {
            return false;
        }
        this.zzd = this.zze ? this.zzf.zzn() : this.zzf.zzm();
        if (this.zzb == this.zzh) {
            this.zzc = this.zzg.zzi();
            this.zzg.zzw(4);
            int i2 = this.zzi - 1;
            this.zzi = i2;
            this.zzh = i2 > 0 ? (-1) + this.zzg.zzi() : -1;
        }
        return true;
    }
}

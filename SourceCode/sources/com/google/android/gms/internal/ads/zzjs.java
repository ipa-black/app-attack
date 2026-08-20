package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzjs {
    private static final zzsh zzs = new zzsh(new Object());
    public final zzcn zza;
    public final zzsh zzb;
    public final long zzc;
    public final long zzd;
    public final int zze;
    public final zzha zzf;
    public final boolean zzg;
    public final zzug zzh;
    public final zzwa zzi;
    public final List zzj;
    public final zzsh zzk;
    public final boolean zzl;
    public final int zzm;
    public final zzby zzn;
    public final boolean zzo;
    public volatile long zzp;
    public volatile long zzq;
    public volatile long zzr;

    public zzjs(zzcn zzcnVar, zzsh zzshVar, long j, long j2, int i, zzha zzhaVar, boolean z, zzug zzugVar, zzwa zzwaVar, List list, zzsh zzshVar2, boolean z2, int i2, zzby zzbyVar, long j3, long j4, long j5, boolean z3) {
        this.zza = zzcnVar;
        this.zzb = zzshVar;
        this.zzc = j;
        this.zzd = j2;
        this.zze = i;
        this.zzf = zzhaVar;
        this.zzg = z;
        this.zzh = zzugVar;
        this.zzi = zzwaVar;
        this.zzj = list;
        this.zzk = zzshVar2;
        this.zzl = z2;
        this.zzm = i2;
        this.zzn = zzbyVar;
        this.zzp = j3;
        this.zzq = j4;
        this.zzr = j5;
        this.zzo = z3;
    }

    public static zzjs zzg(zzwa zzwaVar) {
        zzcn zzcnVar = zzcn.zza;
        zzsh zzshVar = zzs;
        return new zzjs(zzcnVar, zzshVar, C.TIME_UNSET, 0L, 1, null, false, zzug.zza, zzwaVar, zzgau.zzo(), zzshVar, false, 0, zzby.zza, 0L, 0L, 0L, false);
    }

    public static zzsh zzh() {
        return zzs;
    }

    public final zzjs zza(zzsh zzshVar) {
        return new zzjs(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi, this.zzj, zzshVar, this.zzl, this.zzm, this.zzn, this.zzp, this.zzq, this.zzr, this.zzo);
    }

    public final zzjs zzb(zzsh zzshVar, long j, long j2, long j3, long j4, zzug zzugVar, zzwa zzwaVar, List list) {
        return new zzjs(this.zza, zzshVar, j2, j3, this.zze, this.zzf, this.zzg, zzugVar, zzwaVar, list, this.zzk, this.zzl, this.zzm, this.zzn, this.zzp, j4, j, this.zzo);
    }

    public final zzjs zzc(boolean z, int i) {
        return new zzjs(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk, z, i, this.zzn, this.zzp, this.zzq, this.zzr, this.zzo);
    }

    public final zzjs zzd(zzha zzhaVar) {
        return new zzjs(this.zza, this.zzb, this.zzc, this.zzd, this.zze, zzhaVar, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk, this.zzl, this.zzm, this.zzn, this.zzp, this.zzq, this.zzr, this.zzo);
    }

    public final zzjs zze(int i) {
        return new zzjs(this.zza, this.zzb, this.zzc, this.zzd, i, this.zzf, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk, this.zzl, this.zzm, this.zzn, this.zzp, this.zzq, this.zzr, this.zzo);
    }

    public final zzjs zzf(zzcn zzcnVar) {
        return new zzjs(zzcnVar, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk, this.zzl, this.zzm, this.zzn, this.zzp, this.zzq, this.zzr, this.zzo);
    }
}

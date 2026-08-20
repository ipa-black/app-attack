package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.MediaPeriodQueue;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzjh {
    public final zzsf zza;
    public final Object zzb;
    public boolean zzd;
    public boolean zze;
    public zzji zzf;
    public boolean zzg;
    private final zzjz[] zzi;
    private final zzvz zzj;
    private final zzjr zzk;
    private zzjh zzl;
    private zzwa zzn;
    private long zzo;
    private zzug zzm = zzug.zza;
    public final zzty[] zzc = new zzty[2];
    private final boolean[] zzh = new boolean[2];

    public zzjh(zzjz[] zzjzVarArr, long j, zzvz zzvzVar, zzwi zzwiVar, zzjr zzjrVar, zzji zzjiVar, zzwa zzwaVar, byte[] bArr) {
        this.zzi = zzjzVarArr;
        this.zzo = j;
        this.zzj = zzvzVar;
        this.zzk = zzjrVar;
        this.zzb = zzjiVar.zza.zza;
        this.zzf = zzjiVar;
        this.zzn = zzwaVar;
        zzsh zzshVar = zzjiVar.zza;
        long j2 = zzjiVar.zzb;
        long j3 = zzjiVar.zzd;
        zzsf zzo = zzjrVar.zzo(zzshVar, zzwiVar, j2);
        this.zza = j3 != C.TIME_UNSET ? new zzrm(zzo, true, 0L, j3) : zzo;
    }

    private final void zzs() {
        if (!zzu()) {
            return;
        }
        int i = 0;
        while (true) {
            zzwa zzwaVar = this.zzn;
            if (i >= zzwaVar.zza) {
                return;
            }
            zzwaVar.zzb(i);
            zzvt zzvtVar = this.zzn.zzc[i];
            i++;
        }
    }

    private final void zzt() {
        if (!zzu()) {
            return;
        }
        int i = 0;
        while (true) {
            zzwa zzwaVar = this.zzn;
            if (i >= zzwaVar.zza) {
                return;
            }
            zzwaVar.zzb(i);
            zzvt zzvtVar = this.zzn.zzc[i];
            i++;
        }
    }

    private final boolean zzu() {
        return this.zzl == null;
    }

    public final long zza(zzwa zzwaVar, long j, boolean z) {
        return zzb(zzwaVar, j, false, new boolean[2]);
    }

    public final long zzb(zzwa zzwaVar, long j, boolean z, boolean[] zArr) {
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= zzwaVar.zza) {
                break;
            }
            boolean[] zArr2 = this.zzh;
            if (z || !zzwaVar.zza(this.zzn, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        int i2 = 0;
        while (true) {
            zzjz[] zzjzVarArr = this.zzi;
            if (i2 >= 2) {
                break;
            }
            zzjzVarArr[i2].zzb();
            i2++;
        }
        zzs();
        this.zzn = zzwaVar;
        zzt();
        long zzf = this.zza.zzf(zzwaVar.zzc, this.zzh, this.zzc, zArr, j);
        int i3 = 0;
        while (true) {
            zzjz[] zzjzVarArr2 = this.zzi;
            if (i3 >= 2) {
                break;
            }
            zzjzVarArr2[i3].zzb();
            i3++;
        }
        this.zze = false;
        int i4 = 0;
        while (true) {
            zzty[] zztyVarArr = this.zzc;
            if (i4 >= 2) {
                return zzf;
            }
            if (zztyVarArr[i4] != null) {
                zzdd.zzf(zzwaVar.zzb(i4));
                this.zzi[i4].zzb();
                this.zze = true;
            } else {
                zzdd.zzf(zzwaVar.zzc[i4] == null);
            }
            i4++;
        }
    }

    public final long zzc() {
        if (this.zzd) {
            long zzb = this.zze ? this.zza.zzb() : Long.MIN_VALUE;
            return zzb == Long.MIN_VALUE ? this.zzf.zze : zzb;
        }
        return this.zzf.zzb;
    }

    public final long zzd() {
        if (this.zzd) {
            return this.zza.zzc();
        }
        return 0L;
    }

    public final long zze() {
        return this.zzo;
    }

    public final long zzf() {
        return this.zzf.zzb + this.zzo;
    }

    public final zzjh zzg() {
        return this.zzl;
    }

    public final zzug zzh() {
        return this.zzm;
    }

    public final zzwa zzi() {
        return this.zzn;
    }

    public final zzwa zzj(float f2, zzcn zzcnVar) throws zzha {
        zzvt[] zzvtVarArr;
        zzwa zzn = this.zzj.zzn(this.zzi, this.zzm, this.zzf.zza, zzcnVar);
        for (zzvt zzvtVar : zzn.zzc) {
        }
        return zzn;
    }

    public final void zzk(long j) {
        zzdd.zzf(zzu());
        this.zza.zzo(j - this.zzo);
    }

    public final void zzl(float f2, zzcn zzcnVar) throws zzha {
        this.zzd = true;
        this.zzm = this.zza.zzh();
        zzwa zzj = zzj(f2, zzcnVar);
        zzji zzjiVar = this.zzf;
        long j = zzjiVar.zzb;
        long j2 = zzjiVar.zze;
        if (j2 != C.TIME_UNSET && j >= j2) {
            j = Math.max(0L, j2 - 1);
        }
        long zza = zza(zzj, j, false);
        long j3 = this.zzo;
        zzji zzjiVar2 = this.zzf;
        this.zzo = j3 + (zzjiVar2.zzb - zza);
        this.zzf = zzjiVar2.zzb(zza);
    }

    public final void zzm(long j) {
        zzdd.zzf(zzu());
        if (this.zzd) {
            this.zza.zzm(j - this.zzo);
        }
    }

    public final void zzn() {
        zzs();
        zzjr zzjrVar = this.zzk;
        zzsf zzsfVar = this.zza;
        try {
            if (zzsfVar instanceof zzrm) {
                zzjrVar.zzh(((zzrm) zzsfVar).zza);
            } else {
                zzjrVar.zzh(zzsfVar);
            }
        } catch (RuntimeException e2) {
            zzdw.zzc("MediaPeriodHolder", "Period release failed.", e2);
        }
    }

    public final void zzo(zzjh zzjhVar) {
        if (zzjhVar == this.zzl) {
            return;
        }
        zzs();
        this.zzl = zzjhVar;
        zzt();
    }

    public final void zzp(long j) {
        this.zzo = MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US;
    }

    public final void zzq() {
        zzsf zzsfVar = this.zza;
        if (zzsfVar instanceof zzrm) {
            long j = this.zzf.zzd;
            if (j == C.TIME_UNSET) {
                j = Long.MIN_VALUE;
            }
            ((zzrm) zzsfVar).zzn(0L, j);
        }
    }

    public final boolean zzr() {
        if (this.zzd) {
            return !this.zze || this.zza.zzb() == Long.MIN_VALUE;
        }
        return false;
    }
}

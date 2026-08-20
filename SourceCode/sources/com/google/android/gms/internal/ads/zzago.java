package com.google.android.gms.internal.ads;

import java.io.IOException;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzago {
    private zzaaq zzb;
    private zzzm zzc;
    private zzagj zzd;
    private long zze;
    private long zzf;
    private long zzg;
    private int zzh;
    private int zzi;
    private long zzk;
    private boolean zzl;
    private boolean zzm;
    private final zzagh zza = new zzagh();
    private zzagl zzj = new zzagl();

    protected abstract long zza(zzef zzefVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzb(boolean z) {
        int i;
        if (z) {
            this.zzj = new zzagl();
            this.zzf = 0L;
            i = 0;
        } else {
            i = 1;
        }
        this.zzh = i;
        this.zze = -1L;
        this.zzg = 0L;
    }

    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    protected abstract boolean zzc(zzef zzefVar, long j, zzagl zzaglVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zze(zzzk zzzkVar, zzaaj zzaajVar) throws IOException {
        zzdd.zzb(this.zzb);
        int i = zzen.zza;
        int i2 = this.zzh;
        if (i2 == 0) {
            while (this.zza.zze(zzzkVar)) {
                long zzf = zzzkVar.zzf();
                long j = this.zzf;
                this.zzk = zzf - j;
                if (!zzc(this.zza.zza(), j, this.zzj)) {
                    zzaf zzafVar = this.zzj.zza;
                    this.zzi = zzafVar.zzA;
                    if (!this.zzm) {
                        this.zzb.zzk(zzafVar);
                        this.zzm = true;
                    }
                    zzagj zzagjVar = this.zzj.zzb;
                    if (zzagjVar != null) {
                        this.zzd = zzagjVar;
                    } else if (zzzkVar.zzd() == -1) {
                        this.zzd = new zzagn(null);
                    } else {
                        zzagi zzb = this.zza.zzb();
                        this.zzd = new zzagc(this, this.zzf, zzzkVar.zzd(), zzb.zzd + zzb.zze, zzb.zzb, (zzb.zza & 4) != 0);
                    }
                    this.zzh = 2;
                    this.zza.zzd();
                    return 0;
                }
                this.zzf = zzzkVar.zzf();
            }
            this.zzh = 3;
            return -1;
        } else if (i2 == 1) {
            ((zzyz) zzzkVar).zzo((int) this.zzf, false);
            this.zzh = 2;
            return 0;
        } else if (i2 != 2) {
            return -1;
        } else {
            long zzd = this.zzd.zzd(zzzkVar);
            if (zzd >= 0) {
                zzaajVar.zza = zzd;
                return 1;
            }
            if (zzd < -1) {
                zzi(-(zzd + 2));
            }
            if (!this.zzl) {
                zzaam zze = this.zzd.zze();
                zzdd.zzb(zze);
                this.zzc.zzN(zze);
                this.zzl = true;
            }
            if (this.zzk > 0 || this.zza.zze(zzzkVar)) {
                this.zzk = 0L;
                zzef zza = this.zza.zza();
                long zza2 = zza(zza);
                if (zza2 >= 0) {
                    long j2 = this.zzg;
                    if (j2 + zza2 >= this.zze) {
                        long zzf2 = zzf(j2);
                        zzaao.zzb(this.zzb, zza, zza.zzd());
                        this.zzb.zzs(zzf2, 1, zza.zzd(), 0, null);
                        this.zze = -1L;
                    }
                }
                this.zzg += zza2;
                return 0;
            }
            this.zzh = 3;
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long zzf(long j) {
        return (j * 1000000) / this.zzi;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long zzg(long j) {
        return (this.zzi * j) / 1000000;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzh(zzzm zzzmVar, zzaaq zzaaqVar) {
        this.zzc = zzzmVar;
        this.zzb = zzaaqVar;
        zzb(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzi(long j) {
        this.zzg = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzj(long j, long j2) {
        this.zza.zzc();
        if (j == 0) {
            zzb(!this.zzl);
        } else if (this.zzh != 0) {
            this.zze = zzg(j2);
            zzagj zzagjVar = this.zzd;
            int i = zzen.zza;
            zzagjVar.zzg(this.zze);
            this.zzh = 2;
        }
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzagt implements zzahd {
    private final zzee zza;
    private final zzef zzb;
    private final String zzc;
    private String zzd;
    private zzaaq zze;
    private int zzf;
    private int zzg;
    private boolean zzh;
    private long zzi;
    private zzaf zzj;
    private int zzk;
    private long zzl;

    public zzagt() {
        this(null);
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zza(zzef zzefVar) {
        zzdd.zzb(this.zze);
        while (zzefVar.zza() > 0) {
            int i = this.zzf;
            if (i == 0) {
                while (true) {
                    if (zzefVar.zza() <= 0) {
                        break;
                    } else if (!this.zzh) {
                        this.zzh = zzefVar.zzk() == 11;
                    } else {
                        int zzk = zzefVar.zzk();
                        if (zzk == 119) {
                            this.zzh = false;
                            this.zzf = 1;
                            zzef zzefVar2 = this.zzb;
                            zzefVar2.zzH()[0] = 11;
                            zzefVar2.zzH()[1] = 119;
                            this.zzg = 2;
                            break;
                        }
                        this.zzh = zzk == 11;
                    }
                }
            } else if (i == 1) {
                byte[] zzH = this.zzb.zzH();
                int min = Math.min(zzefVar.zza(), 128 - this.zzg);
                zzefVar.zzB(zzH, this.zzg, min);
                int i2 = this.zzg + min;
                this.zzg = i2;
                if (i2 == 128) {
                    this.zza.zzh(0);
                    zzyj zze = zzyk.zze(this.zza);
                    zzaf zzafVar = this.zzj;
                    if (zzafVar == null || zze.zzc != zzafVar.zzz || zze.zzb != zzafVar.zzA || !zzen.zzT(zze.zza, zzafVar.zzm)) {
                        zzad zzadVar = new zzad();
                        zzadVar.zzH(this.zzd);
                        zzadVar.zzS(zze.zza);
                        zzadVar.zzw(zze.zzc);
                        zzadVar.zzT(zze.zzb);
                        zzadVar.zzK(this.zzc);
                        zzaf zzY = zzadVar.zzY();
                        this.zzj = zzY;
                        this.zze.zzk(zzY);
                    }
                    this.zzk = zze.zzd;
                    this.zzi = (zze.zze * 1000000) / this.zzj.zzA;
                    this.zzb.zzF(0);
                    this.zze.zzq(this.zzb, 128);
                    this.zzf = 2;
                }
            } else {
                int min2 = Math.min(zzefVar.zza(), this.zzk - this.zzg);
                this.zze.zzq(zzefVar, min2);
                int i3 = this.zzg + min2;
                this.zzg = i3;
                int i4 = this.zzk;
                if (i3 == i4) {
                    long j = this.zzl;
                    if (j != C.TIME_UNSET) {
                        this.zze.zzs(j, 1, i4, 0, null);
                        this.zzl += this.zzi;
                    }
                    this.zzf = 0;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zzb(zzzm zzzmVar, zzaip zzaipVar) {
        zzaipVar.zzc();
        this.zzd = zzaipVar.zzb();
        this.zze = zzzmVar.zzv(zzaipVar.zza(), 1);
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zzc() {
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zzd(long j, int i) {
        if (j != C.TIME_UNSET) {
            this.zzl = j;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zze() {
        this.zzf = 0;
        this.zzg = 0;
        this.zzh = false;
        this.zzl = C.TIME_UNSET;
    }

    public zzagt(String str) {
        zzee zzeeVar = new zzee(new byte[128], 128);
        this.zza = zzeeVar;
        this.zzb = new zzef(zzeeVar.zza);
        this.zzf = 0;
        this.zzl = C.TIME_UNSET;
        this.zzc = str;
    }
}

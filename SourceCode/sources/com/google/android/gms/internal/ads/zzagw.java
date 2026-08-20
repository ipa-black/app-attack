package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.common.primitives.SignedBytes;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzagw implements zzahd {
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

    public zzagw() {
        this(null);
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zza(zzef zzefVar) {
        zzdd.zzb(this.zze);
        while (zzefVar.zza() > 0) {
            int i = this.zzf;
            if (i == 0) {
                while (zzefVar.zza() > 0) {
                    if (!this.zzh) {
                        this.zzh = zzefVar.zzk() == 172;
                    } else {
                        int zzk = zzefVar.zzk();
                        this.zzh = zzk == 172;
                        byte b2 = SignedBytes.MAX_POWER_OF_TWO;
                        if (zzk != 64) {
                            if (zzk == 65) {
                                zzk = 65;
                            }
                        }
                        this.zzf = 1;
                        zzef zzefVar2 = this.zzb;
                        zzefVar2.zzH()[0] = -84;
                        byte[] zzH = zzefVar2.zzH();
                        if (zzk == 65) {
                            b2 = 65;
                        }
                        zzH[1] = b2;
                        this.zzg = 2;
                    }
                }
            } else if (i == 1) {
                byte[] zzH2 = this.zzb.zzH();
                int min = Math.min(zzefVar.zza(), 16 - this.zzg);
                zzefVar.zzB(zzH2, this.zzg, min);
                int i2 = this.zzg + min;
                this.zzg = i2;
                if (i2 == 16) {
                    this.zza.zzh(0);
                    zzym zza = zzyn.zza(this.zza);
                    zzaf zzafVar = this.zzj;
                    if (zzafVar == null || zzafVar.zzz != 2 || zza.zza != zzafVar.zzA || !MimeTypes.AUDIO_AC4.equals(zzafVar.zzm)) {
                        zzad zzadVar = new zzad();
                        zzadVar.zzH(this.zzd);
                        zzadVar.zzS(MimeTypes.AUDIO_AC4);
                        zzadVar.zzw(2);
                        zzadVar.zzT(zza.zza);
                        zzadVar.zzK(this.zzc);
                        zzaf zzY = zzadVar.zzY();
                        this.zzj = zzY;
                        this.zze.zzk(zzY);
                    }
                    this.zzk = zza.zzb;
                    this.zzi = (zza.zzc * 1000000) / this.zzj.zzA;
                    this.zzb.zzF(0);
                    this.zze.zzq(this.zzb, 16);
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

    public zzagw(String str) {
        zzee zzeeVar = new zzee(new byte[16], 16);
        this.zza = zzeeVar;
        this.zzb = new zzef(zzeeVar.zza);
        this.zzf = 0;
        this.zzg = 0;
        this.zzh = false;
        this.zzl = C.TIME_UNSET;
        this.zzc = str;
    }
}

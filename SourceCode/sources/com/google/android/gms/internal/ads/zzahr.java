package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzahr implements zzahd {
    private final zzef zza;
    private final zzaac zzb;
    private final String zzc;
    private zzaaq zzd;
    private String zze;
    private int zzf;
    private int zzg;
    private boolean zzh;
    private boolean zzi;
    private long zzj;
    private int zzk;
    private long zzl;

    public zzahr() {
        this(null);
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zza(zzef zzefVar) {
        zzaac zzaacVar;
        zzdd.zzb(this.zzd);
        while (zzefVar.zza() > 0) {
            int i = this.zzf;
            if (i == 0) {
                byte[] zzH = zzefVar.zzH();
                int zzc = zzefVar.zzc();
                int zzd = zzefVar.zzd();
                while (true) {
                    if (zzc < zzd) {
                        byte b2 = zzH[zzc];
                        boolean z = (b2 & 255) == 255;
                        boolean z2 = this.zzi && (b2 & 224) == 224;
                        this.zzi = z;
                        if (z2) {
                            zzefVar.zzF(zzc + 1);
                            this.zzi = false;
                            this.zza.zzH()[1] = zzH[zzc];
                            this.zzg = 2;
                            this.zzf = 1;
                            break;
                        }
                        zzc++;
                    } else {
                        zzefVar.zzF(zzd);
                        break;
                    }
                }
            } else if (i == 1) {
                int min = Math.min(zzefVar.zza(), 4 - this.zzg);
                zzefVar.zzB(this.zza.zzH(), this.zzg, min);
                int i2 = this.zzg + min;
                this.zzg = i2;
                if (i2 >= 4) {
                    this.zza.zzF(0);
                    if (this.zzb.zza(this.zza.zze())) {
                        this.zzk = this.zzb.zzc;
                        if (!this.zzh) {
                            this.zzj = (zzaacVar.zzg * 1000000) / zzaacVar.zzd;
                            zzad zzadVar = new zzad();
                            zzadVar.zzH(this.zze);
                            zzadVar.zzS(this.zzb.zzb);
                            zzadVar.zzL(4096);
                            zzadVar.zzw(this.zzb.zze);
                            zzadVar.zzT(this.zzb.zzd);
                            zzadVar.zzK(this.zzc);
                            this.zzd.zzk(zzadVar.zzY());
                            this.zzh = true;
                        }
                        this.zza.zzF(0);
                        this.zzd.zzq(this.zza, 4);
                        this.zzf = 2;
                    } else {
                        this.zzg = 0;
                        this.zzf = 1;
                    }
                }
            } else {
                int min2 = Math.min(zzefVar.zza(), this.zzk - this.zzg);
                this.zzd.zzq(zzefVar, min2);
                int i3 = this.zzg + min2;
                this.zzg = i3;
                int i4 = this.zzk;
                if (i3 >= i4) {
                    long j = this.zzl;
                    if (j != C.TIME_UNSET) {
                        this.zzd.zzs(j, 1, i4, 0, null);
                        this.zzl += this.zzj;
                    }
                    this.zzg = 0;
                    this.zzf = 0;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zzb(zzzm zzzmVar, zzaip zzaipVar) {
        zzaipVar.zzc();
        this.zze = zzaipVar.zzb();
        this.zzd = zzzmVar.zzv(zzaipVar.zza(), 1);
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
        this.zzi = false;
        this.zzl = C.TIME_UNSET;
    }

    public zzahr(String str) {
        this.zzf = 0;
        zzef zzefVar = new zzef(4);
        this.zza = zzefVar;
        zzefVar.zzH()[0] = -1;
        this.zzb = new zzaac();
        this.zzl = C.TIME_UNSET;
        this.zzc = str;
    }
}

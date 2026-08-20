package com.google.android.gms.internal.ads;

import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.exoplayer2.C;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Stack;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzawt implements zzavg, zzavn {
    public static final zzavi zza = new zzawr();
    private static final int zzb = zzbay.zzg("qt  ");
    private int zzg;
    private int zzh;
    private long zzi;
    private int zzj;
    private zzbar zzk;
    private int zzl;
    private int zzm;
    private zzavh zzn;
    private zzaws[] zzo;
    private long zzp;
    private boolean zzq;
    private final zzbar zze = new zzbar(16);
    private final Stack zzf = new Stack();
    private final zzbar zzc = new zzbar(zzbap.zza);
    private final zzbar zzd = new zzbar(4);

    private final void zzh() {
        this.zzg = 0;
        this.zzj = 0;
    }

    private final void zzi(long j) throws zzatg {
        zzaxo zzaxoVar;
        zzavk zzavkVar;
        zzaxo zzaxoVar2;
        zzawv zza2;
        while (!this.zzf.isEmpty() && ((zzawb) this.zzf.peek()).zza == j) {
            zzawb zzawbVar = (zzawb) this.zzf.pop();
            if (zzawbVar.zzaR == zzawd.zzE) {
                ArrayList arrayList = new ArrayList();
                zzavk zzavkVar2 = new zzavk();
                zzawc zzb2 = zzawbVar.zzb(zzawd.zzaC);
                if (zzb2 != null) {
                    zzaxoVar = zzawk.zzc(zzb2, this.zzq);
                    if (zzaxoVar != null) {
                        zzavkVar2.zzb(zzaxoVar);
                    }
                } else {
                    zzaxoVar = null;
                }
                long j2 = C.TIME_UNSET;
                long j3 = Long.MAX_VALUE;
                int i = 0;
                while (i < zzawbVar.zzc.size()) {
                    zzawb zzawbVar2 = (zzawb) zzawbVar.zzc.get(i);
                    if (zzawbVar2.zzaR == zzawd.zzG && (zza2 = zzawk.zza(zzawbVar2, zzawbVar.zzb(zzawd.zzF), C.TIME_UNSET, null, this.zzq)) != null) {
                        zzawy zzb3 = zzawk.zzb(zza2, zzawbVar2.zza(zzawd.zzH).zza(zzawd.zzI).zza(zzawd.zzJ), zzavkVar2);
                        if (zzb3.zza != 0) {
                            zzaws zzawsVar = new zzaws(zza2, zzb3, this.zzn.zzbi(i, zza2.zzb));
                            zzatd zze = zza2.zzf.zze(zzb3.zzd + 30);
                            if (zza2.zzb == 1) {
                                if (zzavkVar2.zza()) {
                                    zze = zze.zzd(zzavkVar2.zzb, zzavkVar2.zzc);
                                }
                                if (zzaxoVar != null) {
                                    zze = zze.zzf(zzaxoVar);
                                }
                            }
                            zzawsVar.zzc.zza(zze);
                            zzavkVar = zzavkVar2;
                            zzaxoVar2 = zzaxoVar;
                            long max = Math.max(j2, zza2.zze);
                            arrayList.add(zzawsVar);
                            long j4 = zzb3.zzb[0];
                            if (j4 < j3) {
                                j2 = max;
                                j3 = j4;
                            } else {
                                j2 = max;
                            }
                            i++;
                            zzavkVar2 = zzavkVar;
                            zzaxoVar = zzaxoVar2;
                        }
                    }
                    zzavkVar = zzavkVar2;
                    zzaxoVar2 = zzaxoVar;
                    i++;
                    zzavkVar2 = zzavkVar;
                    zzaxoVar = zzaxoVar2;
                }
                this.zzp = j2;
                this.zzo = (zzaws[]) arrayList.toArray(new zzaws[arrayList.size()]);
                this.zzn.zzb();
                this.zzn.zzc(this);
                this.zzf.clear();
                this.zzg = 2;
            } else if (!this.zzf.isEmpty()) {
                ((zzawb) this.zzf.peek()).zzc(zzawbVar);
            }
        }
        if (this.zzg != 2) {
            zzh();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavn
    public final long zza() {
        return this.zzp;
    }

    @Override // com.google.android.gms.internal.ads.zzavn
    public final long zzb(long j) {
        long j2 = Long.MAX_VALUE;
        for (zzaws zzawsVar : this.zzo) {
            zzawy zzawyVar = zzawsVar.zzb;
            int zza2 = zzawyVar.zza(j);
            if (zza2 == -1) {
                zza2 = zzawyVar.zzb(j);
            }
            long j3 = zzawyVar.zzb[zza2];
            if (j3 < j2) {
                j2 = j3;
            }
        }
        return j2;
    }

    @Override // com.google.android.gms.internal.ads.zzavn
    public final boolean zzc() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final void zzd(zzavh zzavhVar) {
        this.zzn = zzavhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final void zze(long j, long j2) {
        this.zzf.clear();
        this.zzj = 0;
        this.zzl = 0;
        this.zzm = 0;
        if (j == 0) {
            zzh();
            return;
        }
        zzaws[] zzawsVarArr = this.zzo;
        if (zzawsVarArr != null) {
            for (zzaws zzawsVar : zzawsVarArr) {
                zzawy zzawyVar = zzawsVar.zzb;
                int zza2 = zzawyVar.zza(j2);
                if (zza2 == -1) {
                    zza2 = zzawyVar.zzb(j2);
                }
                zzawsVar.zzd = zza2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final boolean zzg(zzavf zzavfVar) throws IOException, InterruptedException {
        return zzawu.zzb(zzavfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final int zzf(zzavf zzavfVar, zzavl zzavlVar) throws IOException, InterruptedException {
        zzaws[] zzawsVarArr;
        boolean z;
        boolean z2;
        while (true) {
            int i = this.zzg;
            if (i == 0) {
                if (this.zzj == 0) {
                    if (!zzavfVar.zzh(this.zze.zza, 0, 8, true)) {
                        return -1;
                    }
                    this.zzj = 8;
                    this.zze.zzv(0);
                    this.zzi = this.zze.zzm();
                    this.zzh = this.zze.zze();
                }
                if (this.zzi == 1) {
                    zzavfVar.zzh(this.zze.zza, 8, 8, false);
                    this.zzj += 8;
                    this.zzi = this.zze.zzn();
                }
                int i2 = this.zzh;
                if (i2 == zzawd.zzE || i2 == zzawd.zzG || i2 == zzawd.zzH || i2 == zzawd.zzI || i2 == zzawd.zzJ || i2 == zzawd.zzS) {
                    long zzd = (zzavfVar.zzd() + this.zzi) - this.zzj;
                    this.zzf.add(new zzawb(this.zzh, zzd));
                    if (this.zzi == this.zzj) {
                        zzi(zzd);
                    } else {
                        zzh();
                    }
                } else {
                    int i3 = this.zzh;
                    if (i3 == zzawd.zzU || i3 == zzawd.zzF || i3 == zzawd.zzV || i3 == zzawd.zzW || i3 == zzawd.zzao || i3 == zzawd.zzap || i3 == zzawd.zzaq || i3 == zzawd.zzT || i3 == zzawd.zzar || i3 == zzawd.zzas || i3 == zzawd.zzat || i3 == zzawd.zzau || i3 == zzawd.zzav || i3 == zzawd.zzR || i3 == zzawd.zzd || i3 == zzawd.zzaC) {
                        zzbaj.zze(this.zzj == 8);
                        zzbaj.zze(this.zzi <= 2147483647L);
                        this.zzk = new zzbar((int) this.zzi);
                        System.arraycopy(this.zze.zza, 0, this.zzk.zza, 0, 8);
                    } else {
                        this.zzk = null;
                    }
                    this.zzg = 1;
                }
            } else if (i != 1) {
                long j = Long.MAX_VALUE;
                int i4 = -1;
                int i5 = 0;
                while (true) {
                    zzawsVarArr = this.zzo;
                    if (i5 >= zzawsVarArr.length) {
                        break;
                    }
                    zzaws zzawsVar = zzawsVarArr[i5];
                    int i6 = zzawsVar.zzd;
                    zzawy zzawyVar = zzawsVar.zzb;
                    if (i6 != zzawyVar.zza) {
                        long j2 = zzawyVar.zzb[i6];
                        if (j2 < j) {
                            i4 = i5;
                            j = j2;
                        }
                    }
                    i5++;
                }
                if (i4 == -1) {
                    return -1;
                }
                zzaws zzawsVar2 = zzawsVarArr[i4];
                zzavp zzavpVar = zzawsVar2.zzc;
                int i7 = zzawsVar2.zzd;
                zzawy zzawyVar2 = zzawsVar2.zzb;
                long j3 = zzawyVar2.zzb[i7];
                int i8 = zzawyVar2.zzc[i7];
                if (zzawsVar2.zza.zzg == 1) {
                    j3 += 8;
                    i8 -= 8;
                }
                long zzd2 = (j3 - zzavfVar.zzd()) + this.zzl;
                if (zzd2 < 0 || zzd2 >= PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
                    zzavlVar.zza = j3;
                    return 1;
                }
                int i9 = (int) zzd2;
                boolean z3 = false;
                zzavfVar.zzi(i9, false);
                int i10 = zzawsVar2.zza.zzk;
                if (i10 == 0) {
                    while (true) {
                        int i11 = this.zzl;
                        if (i11 >= i8) {
                            break;
                        }
                        int zzd3 = zzavpVar.zzd(zzavfVar, i8 - i11, false);
                        this.zzl += zzd3;
                        this.zzm -= zzd3;
                    }
                } else {
                    byte[] bArr = this.zzd.zza;
                    bArr[0] = 0;
                    bArr[1] = 0;
                    bArr[2] = 0;
                    int i12 = 4 - i10;
                    while (this.zzl < i8) {
                        int i13 = this.zzm;
                        if (i13 == 0) {
                            zzavfVar.zzh(this.zzd.zza, i12, i10, z3);
                            this.zzd.zzv(z3 ? 1 : 0);
                            this.zzm = this.zzd.zzi();
                            this.zzc.zzv(z3 ? 1 : 0);
                            zzavpVar.zzb(this.zzc, 4);
                            this.zzl += 4;
                            i8 += i12;
                        } else {
                            int zzd4 = zzavpVar.zzd(zzavfVar, i13, z3);
                            this.zzl += zzd4;
                            this.zzm -= zzd4;
                            z3 = false;
                        }
                    }
                }
                int i14 = i8;
                zzawy zzawyVar3 = zzawsVar2.zzb;
                zzavpVar.zzc(zzawyVar3.zze[i7], zzawyVar3.zzf[i7], i14, 0, null);
                zzawsVar2.zzd++;
                this.zzl = 0;
                this.zzm = 0;
                return 0;
            } else {
                long j4 = this.zzi;
                int i15 = this.zzj;
                long j5 = j4 - i15;
                long zzd5 = zzavfVar.zzd() + j5;
                zzbar zzbarVar = this.zzk;
                if (zzbarVar != null) {
                    zzavfVar.zzh(zzbarVar.zza, i15, (int) j5, false);
                    if (this.zzh == zzawd.zzd) {
                        zzbar zzbarVar2 = this.zzk;
                        zzbarVar2.zzv(8);
                        if (zzbarVar2.zze() == zzb) {
                            z2 = true;
                            break;
                        }
                        zzbarVar2.zzw(4);
                        while (zzbarVar2.zza() > 0) {
                            if (zzbarVar2.zze() == zzb) {
                                z2 = true;
                                break;
                            }
                        }
                        z2 = false;
                        this.zzq = z2;
                    } else if (!this.zzf.isEmpty()) {
                        ((zzawb) this.zzf.peek()).zzd(new zzawc(this.zzh, this.zzk));
                    }
                } else if (j5 < PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
                    zzavfVar.zzi((int) j5, false);
                } else {
                    zzavlVar.zza = zzavfVar.zzd() + j5;
                    z = true;
                    zzi(zzd5);
                    if (z && this.zzg != 2) {
                        return 1;
                    }
                }
                z = false;
                zzi(zzd5);
                if (z) {
                    return 1;
                }
                continue;
            }
        }
    }
}

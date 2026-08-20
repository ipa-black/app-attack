package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzabp implements zzzj {
    public static final zzzq zza = new zzzq() { // from class: com.google.android.gms.internal.ads.zzabo
        @Override // com.google.android.gms.internal.ads.zzzq
        public final zzzj[] zza() {
            zzzq zzzqVar = zzabp.zza;
            return new zzzj[]{new zzabp(0)};
        }

        @Override // com.google.android.gms.internal.ads.zzzq
        public final /* synthetic */ zzzj[] zzb(Uri uri, Map map) {
            return zzzp.zza(this, uri, map);
        }
    };
    private final byte[] zzb;
    private final zzef zzc;
    private final zzzr zzd;
    private zzzm zze;
    private zzaaq zzf;
    private int zzg;
    private zzbq zzh;
    private zzzw zzi;
    private int zzj;
    private int zzk;
    private zzabn zzl;
    private int zzm;
    private long zzn;

    public zzabp() {
        this(0);
    }

    public zzabp(int i) {
        this.zzb = new byte[42];
        this.zzc = new zzef(new byte[32768], 0);
        this.zzd = new zzzr();
        this.zzg = 0;
    }

    private final long zze(zzef zzefVar, boolean z) {
        boolean z2;
        this.zzi.getClass();
        int zzc = zzefVar.zzc();
        while (zzc <= zzefVar.zzd() - 16) {
            zzefVar.zzF(zzc);
            if (zzzs.zzc(zzefVar, this.zzi, this.zzk, this.zzd)) {
                zzefVar.zzF(zzc);
                return this.zzd.zza;
            }
            zzc++;
        }
        if (z) {
            while (zzc <= zzefVar.zzd() - this.zzj) {
                zzefVar.zzF(zzc);
                try {
                    z2 = zzzs.zzc(zzefVar, this.zzi, this.zzk, this.zzd);
                } catch (IndexOutOfBoundsException unused) {
                    z2 = false;
                }
                if (zzefVar.zzc() <= zzefVar.zzd() && z2) {
                    zzefVar.zzF(zzc);
                    return this.zzd.zza;
                }
                zzc++;
            }
            zzefVar.zzF(zzefVar.zzd());
            return -1L;
        }
        zzefVar.zzF(zzc);
        return -1L;
    }

    private final void zzf() {
        long j = this.zzn;
        zzzw zzzwVar = this.zzi;
        int i = zzen.zza;
        this.zzf.zzs((j * 1000000) / zzzwVar.zze, 1, this.zzm, 0, null);
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final void zzb(zzzm zzzmVar) {
        this.zze = zzzmVar;
        this.zzf = zzzmVar.zzv(0, 1);
        zzzmVar.zzC();
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final boolean zzd(zzzk zzzkVar) throws IOException {
        zzzt.zza(zzzkVar, false);
        zzef zzefVar = new zzef(4);
        ((zzyz) zzzkVar).zzm(zzefVar.zzH(), 0, 4, false);
        return zzefVar.zzs() == 1716281667;
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final void zzc(long j, long j2) {
        if (j == 0) {
            this.zzg = 0;
        } else {
            zzabn zzabnVar = this.zzl;
            if (zzabnVar != null) {
                zzabnVar.zzd(j2);
            }
        }
        this.zzn = j2 != 0 ? -1L : 0L;
        this.zzm = 0;
        this.zzc.zzC(0);
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final int zza(zzzk zzzkVar, zzaaj zzaajVar) throws IOException {
        boolean zzl;
        zzaam zzaalVar;
        boolean z;
        int i = this.zzg;
        if (i == 0) {
            zzzkVar.zzj();
            long zze = zzzkVar.zze();
            zzbq zza2 = zzzt.zza(zzzkVar, true);
            ((zzyz) zzzkVar).zzo((int) (zzzkVar.zze() - zze), false);
            this.zzh = zza2;
            this.zzg = 1;
            return 0;
        } else if (i == 1) {
            ((zzyz) zzzkVar).zzm(this.zzb, 0, 42, false);
            zzzkVar.zzj();
            this.zzg = 2;
            return 0;
        } else if (i == 2) {
            zzef zzefVar = new zzef(4);
            ((zzyz) zzzkVar).zzn(zzefVar.zzH(), 0, 4, false);
            if (zzefVar.zzs() == 1716281667) {
                this.zzg = 3;
                return 0;
            }
            throw zzbu.zza("Failed to read FLAC stream marker.", null);
        } else if (i == 3) {
            zzzw zzzwVar = this.zzi;
            do {
                zzzkVar.zzj();
                zzee zzeeVar = new zzee(new byte[4], 4);
                zzyz zzyzVar = (zzyz) zzzkVar;
                zzyzVar.zzm(zzeeVar.zza, 0, 4, false);
                zzl = zzeeVar.zzl();
                int zzc = zzeeVar.zzc(7);
                int zzc2 = zzeeVar.zzc(24) + 4;
                if (zzc == 0) {
                    byte[] bArr = new byte[38];
                    zzyzVar.zzn(bArr, 0, 38, false);
                    zzzwVar = new zzzw(bArr, 4);
                } else if (zzzwVar == null) {
                    throw new IllegalArgumentException();
                } else {
                    if (zzc == 3) {
                        zzef zzefVar2 = new zzef(zzc2);
                        zzyzVar.zzn(zzefVar2.zzH(), 0, zzc2, false);
                        zzzwVar = zzzwVar.zzf(zzzt.zzb(zzefVar2));
                    } else if (zzc == 4) {
                        zzef zzefVar3 = new zzef(zzc2);
                        zzyzVar.zzn(zzefVar3.zzH(), 0, zzc2, false);
                        zzefVar3.zzG(4);
                        zzzwVar = zzzwVar.zzg(Arrays.asList(zzaaw.zzc(zzefVar3, false, false).zzb));
                    } else if (zzc != 6) {
                        zzyzVar.zzo(zzc2, false);
                    } else {
                        zzef zzefVar4 = new zzef(zzc2);
                        zzyzVar.zzn(zzefVar4.zzH(), 0, zzc2, false);
                        zzefVar4.zzG(4);
                        zzzwVar = zzzwVar.zze(zzgau.zzp(zzacj.zzb(zzefVar4)));
                    }
                }
                int i2 = zzen.zza;
                this.zzi = zzzwVar;
            } while (!zzl);
            zzzwVar.getClass();
            this.zzj = Math.max(zzzwVar.zzc, 6);
            this.zzf.zzk(this.zzi.zzc(this.zzb, this.zzh));
            this.zzg = 4;
            return 0;
        } else if (i == 4) {
            zzzkVar.zzj();
            zzef zzefVar5 = new zzef(2);
            ((zzyz) zzzkVar).zzm(zzefVar5.zzH(), 0, 2, false);
            int zzo = zzefVar5.zzo();
            if ((zzo >> 2) != 16382) {
                zzzkVar.zzj();
                throw zzbu.zza("First frame does not start with sync code.", null);
            }
            zzzkVar.zzj();
            this.zzk = zzo;
            zzzm zzzmVar = this.zze;
            int i3 = zzen.zza;
            long zzf = zzzkVar.zzf();
            long zzd = zzzkVar.zzd();
            zzzw zzzwVar2 = this.zzi;
            zzzwVar2.getClass();
            if (zzzwVar2.zzk != null) {
                zzaalVar = new zzzu(zzzwVar2, zzf);
            } else if (zzd != -1 && zzzwVar2.zzj > 0) {
                zzabn zzabnVar = new zzabn(zzzwVar2, this.zzk, zzf, zzd);
                this.zzl = zzabnVar;
                zzaalVar = zzabnVar.zzb();
            } else {
                zzaalVar = new zzaal(zzzwVar2.zza(), 0L);
            }
            zzzmVar.zzN(zzaalVar);
            this.zzg = 5;
            return 0;
        } else {
            this.zzf.getClass();
            zzzw zzzwVar3 = this.zzi;
            zzzwVar3.getClass();
            zzabn zzabnVar2 = this.zzl;
            if (zzabnVar2 == null || !zzabnVar2.zze()) {
                if (this.zzn == -1) {
                    this.zzn = zzzs.zzb(zzzkVar, zzzwVar3);
                    return 0;
                }
                zzef zzefVar6 = this.zzc;
                int zzd2 = zzefVar6.zzd();
                if (zzd2 < 32768) {
                    int zza3 = zzzkVar.zza(zzefVar6.zzH(), zzd2, 32768 - zzd2);
                    z = zza3 == -1;
                    if (!z) {
                        this.zzc.zzE(zzd2 + zza3);
                    } else if (this.zzc.zza() == 0) {
                        zzf();
                        return -1;
                    }
                } else {
                    z = false;
                }
                zzef zzefVar7 = this.zzc;
                int zzc3 = zzefVar7.zzc();
                int i4 = this.zzm;
                int i5 = this.zzj;
                if (i4 < i5) {
                    zzefVar7.zzG(Math.min(i5 - i4, zzefVar7.zza()));
                }
                long zze2 = zze(this.zzc, z);
                zzef zzefVar8 = this.zzc;
                int zzc4 = zzefVar8.zzc() - zzc3;
                zzefVar8.zzF(zzc3);
                zzaao.zzb(this.zzf, this.zzc, zzc4);
                this.zzm += zzc4;
                if (zze2 != -1) {
                    zzf();
                    this.zzm = 0;
                    this.zzn = zze2;
                }
                zzef zzefVar9 = this.zzc;
                if (zzefVar9.zza() >= 16) {
                    return 0;
                }
                int zza4 = zzefVar9.zza();
                System.arraycopy(zzefVar9.zzH(), zzefVar9.zzc(), zzefVar9.zzH(), 0, zza4);
                this.zzc.zzF(0);
                this.zzc.zzE(zza4);
                return 0;
            }
            return zzabnVar2.zza(zzzkVar, zzaajVar);
        }
    }
}

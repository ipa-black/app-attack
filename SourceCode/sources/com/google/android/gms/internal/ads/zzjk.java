package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.util.Pair;
import com.google.android.exoplayer2.C;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzjk {
    private final zzck zza = new zzck();
    private final zzcm zzb = new zzcm();
    private final zzkm zzc;
    private final Handler zzd;
    private long zze;
    private int zzf;
    private boolean zzg;
    private zzjh zzh;
    private zzjh zzi;
    private zzjh zzj;
    private int zzk;
    private Object zzl;
    private long zzm;

    public zzjk(zzkm zzkmVar, Handler handler) {
        this.zzc = zzkmVar;
        this.zzd = handler;
    }

    private final boolean zzA(zzcn zzcnVar, zzsh zzshVar) {
        if (zzC(zzshVar)) {
            return zzcnVar.zze(zzcnVar.zzn(zzshVar.zza, this.zza).zzd, this.zzb, 0L).zzp == zzcnVar.zza(zzshVar.zza);
        }
        return false;
    }

    private final boolean zzB(zzcn zzcnVar) {
        zzjh zzjhVar = this.zzh;
        if (zzjhVar == null) {
            return true;
        }
        int zza = zzcnVar.zza(zzjhVar.zzb);
        while (true) {
            zza = zzcnVar.zzi(zza, this.zza, this.zzb, this.zzf, this.zzg);
            while (zzjhVar.zzg() != null && !zzjhVar.zzf.zzg) {
                zzjhVar = zzjhVar.zzg();
            }
            zzjh zzg = zzjhVar.zzg();
            if (zza == -1 || zzg == null || zzcnVar.zza(zzg.zzb) != zza) {
                break;
            }
            zzjhVar = zzg;
        }
        boolean zzm = zzm(zzjhVar);
        zzjhVar.zzf = zzg(zzcnVar, zzjhVar.zzf);
        return !zzm;
    }

    private static final boolean zzC(zzsh zzshVar) {
        return !zzshVar.zzb() && zzshVar.zze == -1;
    }

    private final long zzs(zzcn zzcnVar, Object obj, int i) {
        zzcnVar.zzn(obj, this.zza);
        this.zza.zzh(i);
        this.zza.zzj(i);
        return 0L;
    }

    private final zzji zzt(zzcn zzcnVar, zzjh zzjhVar, long j) {
        long j2;
        zzji zzjiVar = zzjhVar.zzf;
        long zze = (zzjhVar.zze() + zzjiVar.zze) - j;
        if (zzjiVar.zzg) {
            long j3 = 0;
            int zzi = zzcnVar.zzi(zzcnVar.zza(zzjiVar.zza.zza), this.zza, this.zzb, this.zzf, this.zzg);
            if (zzi == -1) {
                return null;
            }
            int i = zzcnVar.zzd(zzi, this.zza, true).zzd;
            Object obj = this.zza.zzc;
            obj.getClass();
            long j4 = zzjiVar.zza.zzd;
            if (zzcnVar.zze(i, this.zzb, 0L).zzo == zzi) {
                Pair zzm = zzcnVar.zzm(this.zzb, this.zza, i, C.TIME_UNSET, Math.max(0L, zze));
                if (zzm == null) {
                    return null;
                }
                obj = zzm.first;
                long longValue = ((Long) zzm.second).longValue();
                zzjh zzg = zzjhVar.zzg();
                if (zzg != null && zzg.zzb.equals(obj)) {
                    j4 = zzg.zzf.zza.zzd;
                } else {
                    j4 = this.zze;
                    this.zze = 1 + j4;
                }
                j2 = longValue;
                j3 = C.TIME_UNSET;
            } else {
                j2 = 0;
            }
            zzsh zzx = zzx(zzcnVar, obj, j2, j4, this.zzb, this.zza);
            if (j3 != C.TIME_UNSET && zzjiVar.zzc != C.TIME_UNSET) {
                zzcnVar.zzn(zzjiVar.zza.zza, this.zza).zzb();
            }
            return zzu(zzcnVar, zzx, j3, j2);
        }
        zzsh zzshVar = zzjiVar.zza;
        zzcnVar.zzn(zzshVar.zza, this.zza);
        if (zzshVar.zzb()) {
            int i2 = zzshVar.zzb;
            if (this.zza.zza(i2) == -1) {
                return null;
            }
            int zzf = this.zza.zzf(i2, zzshVar.zzc);
            if (zzf < 0) {
                return zzv(zzcnVar, zzshVar.zza, i2, zzf, zzjiVar.zzc, zzshVar.zzd);
            }
            long j5 = zzjiVar.zzc;
            if (j5 == C.TIME_UNSET) {
                zzcm zzcmVar = this.zzb;
                zzck zzckVar = this.zza;
                Pair zzm2 = zzcnVar.zzm(zzcmVar, zzckVar, zzckVar.zzd, C.TIME_UNSET, Math.max(0L, zze));
                if (zzm2 == null) {
                    return null;
                }
                j5 = ((Long) zzm2.second).longValue();
            }
            zzs(zzcnVar, zzshVar.zza, zzshVar.zzb);
            return zzw(zzcnVar, zzshVar.zza, Math.max(0L, j5), zzjiVar.zzc, zzshVar.zzd);
        }
        int zze2 = this.zza.zze(zzshVar.zze);
        this.zza.zzl(zzshVar.zze);
        if (zze2 == this.zza.zza(zzshVar.zze)) {
            zzs(zzcnVar, zzshVar.zza, zzshVar.zze);
            return zzw(zzcnVar, zzshVar.zza, 0L, zzjiVar.zze, zzshVar.zzd);
        }
        return zzv(zzcnVar, zzshVar.zza, zzshVar.zze, zze2, zzjiVar.zze, zzshVar.zzd);
    }

    private final zzji zzu(zzcn zzcnVar, zzsh zzshVar, long j, long j2) {
        zzcnVar.zzn(zzshVar.zza, this.zza);
        if (zzshVar.zzb()) {
            return zzv(zzcnVar, zzshVar.zza, zzshVar.zzb, zzshVar.zzc, j, zzshVar.zzd);
        }
        return zzw(zzcnVar, zzshVar.zza, j2, j, zzshVar.zzd);
    }

    private final zzji zzv(zzcn zzcnVar, Object obj, int i, int i2, long j, long j2) {
        zzsh zzshVar = new zzsh(obj, i, i2, j2);
        long zzg = zzcnVar.zzn(zzshVar.zza, this.zza).zzg(zzshVar.zzb, zzshVar.zzc);
        if (i2 == this.zza.zze(i)) {
            this.zza.zzi();
        }
        this.zza.zzl(zzshVar.zzb);
        return new zzji(zzshVar, (zzg == C.TIME_UNSET || zzg > 0) ? 0L : Math.max(0L, (-1) + zzg), j, C.TIME_UNSET, zzg, false, false, false, false);
    }

    private final zzji zzw(zzcn zzcnVar, Object obj, long j, long j2, long j3) {
        long j4;
        long j5;
        long j6;
        long j7 = j;
        zzcnVar.zzn(obj, this.zza);
        int zzc = this.zza.zzc(j7);
        if (zzc == -1) {
            this.zza.zzb();
        } else {
            this.zza.zzl(zzc);
        }
        zzsh zzshVar = new zzsh(obj, j3, zzc);
        boolean zzC = zzC(zzshVar);
        boolean zzA = zzA(zzcnVar, zzshVar);
        boolean zzz = zzz(zzcnVar, zzshVar, zzC);
        if (zzc != -1) {
            this.zza.zzl(zzc);
        }
        if (zzc != -1) {
            this.zza.zzh(zzc);
            j4 = 0;
        } else {
            j4 = -9223372036854775807L;
        }
        if (j4 != C.TIME_UNSET) {
            j6 = j4;
            j5 = j6;
        } else {
            j5 = this.zza.zze;
            j6 = -9223372036854775807L;
        }
        if (j5 != C.TIME_UNSET && j7 >= j5) {
            j7 = Math.max(0L, j5 - 1);
        }
        return new zzji(zzshVar, j7, j2, j6, j5, false, zzC, zzA, zzz);
    }

    private static zzsh zzx(zzcn zzcnVar, Object obj, long j, long j2, zzcm zzcmVar, zzck zzckVar) {
        zzcnVar.zzn(obj, zzckVar);
        zzcnVar.zze(zzckVar.zzd, zzcmVar, 0L);
        zzcnVar.zza(obj);
        if (zzckVar.zze == 0) {
            zzckVar.zzb();
        }
        zzcnVar.zzn(obj, zzckVar);
        int zzd = zzckVar.zzd(j);
        if (zzd == -1) {
            return new zzsh(obj, j2, zzckVar.zzc(j));
        }
        return new zzsh(obj, zzd, zzckVar.zze(zzd), j2);
    }

    private final void zzy() {
        final zzgar zzi = zzgau.zzi();
        for (zzjh zzjhVar = this.zzh; zzjhVar != null; zzjhVar = zzjhVar.zzg()) {
            zzi.zze(zzjhVar.zzf.zza);
        }
        zzjh zzjhVar2 = this.zzi;
        final zzsh zzshVar = zzjhVar2 == null ? null : zzjhVar2.zzf.zza;
        this.zzd.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzjj
            @Override // java.lang.Runnable
            public final void run() {
                zzjk.this.zzj(zzi, zzshVar);
            }
        });
    }

    private final boolean zzz(zzcn zzcnVar, zzsh zzshVar, boolean z) {
        int zza = zzcnVar.zza(zzshVar.zza);
        return !zzcnVar.zze(zzcnVar.zzd(zza, this.zza, false).zzd, this.zzb, 0L).zzi && zzcnVar.zzi(zza, this.zza, this.zzb, this.zzf, this.zzg) == -1 && z;
    }

    public final zzjh zza() {
        zzjh zzjhVar = this.zzh;
        if (zzjhVar == null) {
            return null;
        }
        if (zzjhVar == this.zzi) {
            this.zzi = zzjhVar.zzg();
        }
        zzjhVar.zzn();
        int i = this.zzk - 1;
        this.zzk = i;
        if (i == 0) {
            this.zzj = null;
            zzjh zzjhVar2 = this.zzh;
            this.zzl = zzjhVar2.zzb;
            this.zzm = zzjhVar2.zzf.zza.zzd;
        }
        this.zzh = this.zzh.zzg();
        zzy();
        return this.zzh;
    }

    public final zzjh zzb() {
        zzjh zzjhVar = this.zzi;
        boolean z = false;
        if (zzjhVar != null && zzjhVar.zzg() != null) {
            z = true;
        }
        zzdd.zzf(z);
        this.zzi = this.zzi.zzg();
        zzy();
        return this.zzi;
    }

    public final zzjh zzc() {
        return this.zzj;
    }

    public final zzjh zzd() {
        return this.zzh;
    }

    public final zzjh zze() {
        return this.zzi;
    }

    public final zzji zzf(long j, zzjs zzjsVar) {
        zzjh zzjhVar = this.zzj;
        return zzjhVar == null ? zzu(zzjsVar.zza, zzjsVar.zzb, zzjsVar.zzc, zzjsVar.zzr) : zzt(zzjsVar.zza, zzjhVar, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzji zzg(com.google.android.gms.internal.ads.zzcn r19, com.google.android.gms.internal.ads.zzji r20) {
        /*
            r18 = this;
            r0 = r18
            r1 = r19
            r2 = r20
            com.google.android.gms.internal.ads.zzsh r3 = r2.zza
            boolean r12 = zzC(r3)
            boolean r13 = r0.zzA(r1, r3)
            boolean r14 = r0.zzz(r1, r3, r12)
            com.google.android.gms.internal.ads.zzsh r4 = r2.zza
            java.lang.Object r4 = r4.zza
            com.google.android.gms.internal.ads.zzck r5 = r0.zza
            r1.zzn(r4, r5)
            boolean r1 = r3.zzb()
            r4 = -1
            r5 = 0
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r1 != 0) goto L37
            int r1 = r3.zze
            if (r1 != r4) goto L30
            goto L37
        L30:
            com.google.android.gms.internal.ads.zzck r9 = r0.zza
            r9.zzh(r1)
            r9 = r5
            goto L38
        L37:
            r9 = r7
        L38:
            boolean r1 = r3.zzb()
            if (r1 == 0) goto L4b
            com.google.android.gms.internal.ads.zzck r1 = r0.zza
            int r5 = r3.zzb
            int r6 = r3.zzc
            long r5 = r1.zzg(r5, r6)
        L48:
            r7 = r9
            r9 = r5
            goto L57
        L4b:
            int r1 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r1 == 0) goto L52
            r7 = r5
            r9 = r7
            goto L57
        L52:
            com.google.android.gms.internal.ads.zzck r1 = r0.zza
            long r5 = r1.zze
            goto L48
        L57:
            boolean r1 = r3.zzb()
            if (r1 == 0) goto L65
            com.google.android.gms.internal.ads.zzck r1 = r0.zza
            int r4 = r3.zzb
            r1.zzl(r4)
            goto L6e
        L65:
            int r1 = r3.zze
            if (r1 == r4) goto L6e
            com.google.android.gms.internal.ads.zzck r4 = r0.zza
            r4.zzl(r1)
        L6e:
            com.google.android.gms.internal.ads.zzji r15 = new com.google.android.gms.internal.ads.zzji
            long r4 = r2.zzb
            long r1 = r2.zzc
            r11 = 0
            r16 = r1
            r1 = r15
            r2 = r3
            r3 = r4
            r5 = r16
            r1.<init>(r2, r3, r5, r7, r9, r11, r12, r13, r14)
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjk.zzg(com.google.android.gms.internal.ads.zzcn, com.google.android.gms.internal.ads.zzji):com.google.android.gms.internal.ads.zzji");
    }

    public final zzsh zzh(zzcn zzcnVar, Object obj, long j) {
        long j2;
        int zza;
        int i = zzcnVar.zzn(obj, this.zza).zzd;
        Object obj2 = this.zzl;
        if (obj2 == null || (zza = zzcnVar.zza(obj2)) == -1 || zzcnVar.zzd(zza, this.zza, false).zzd != i) {
            zzjh zzjhVar = this.zzh;
            while (true) {
                if (zzjhVar == null) {
                    zzjh zzjhVar2 = this.zzh;
                    while (true) {
                        if (zzjhVar2 != null) {
                            int zza2 = zzcnVar.zza(zzjhVar2.zzb);
                            if (zza2 != -1 && zzcnVar.zzd(zza2, this.zza, false).zzd == i) {
                                j2 = zzjhVar2.zzf.zza.zzd;
                                break;
                            }
                            zzjhVar2 = zzjhVar2.zzg();
                        } else {
                            j2 = this.zze;
                            this.zze = 1 + j2;
                            if (this.zzh == null) {
                                this.zzl = obj;
                                this.zzm = j2;
                            }
                        }
                    }
                } else if (zzjhVar.zzb.equals(obj)) {
                    j2 = zzjhVar.zzf.zza.zzd;
                    break;
                } else {
                    zzjhVar = zzjhVar.zzg();
                }
            }
        } else {
            j2 = this.zzm;
        }
        long j3 = j2;
        zzcnVar.zzn(obj, this.zza);
        zzcnVar.zze(this.zza.zzd, this.zzb, 0L);
        int zza3 = zzcnVar.zza(obj);
        Object obj3 = obj;
        while (true) {
            zzcm zzcmVar = this.zzb;
            if (zza3 >= zzcmVar.zzo) {
                zzcnVar.zzd(zza3, this.zza, true);
                this.zza.zzb();
                zzck zzckVar = this.zza;
                if (zzckVar.zzd(zzckVar.zze) != -1) {
                    obj3 = this.zza.zzc;
                    obj3.getClass();
                }
                zza3--;
            } else {
                return zzx(zzcnVar, obj3, j, j3, zzcmVar, this.zza);
            }
        }
    }

    public final void zzi() {
        if (this.zzk == 0) {
            return;
        }
        zzjh zzjhVar = this.zzh;
        zzdd.zzb(zzjhVar);
        this.zzl = zzjhVar.zzb;
        this.zzm = zzjhVar.zzf.zza.zzd;
        while (zzjhVar != null) {
            zzjhVar.zzn();
            zzjhVar = zzjhVar.zzg();
        }
        this.zzh = null;
        this.zzj = null;
        this.zzi = null;
        this.zzk = 0;
        zzy();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzj(zzgar zzgarVar, zzsh zzshVar) {
        this.zzc.zzT(zzgarVar.zzg(), zzshVar);
    }

    public final void zzk(long j) {
        zzjh zzjhVar = this.zzj;
        if (zzjhVar != null) {
            zzjhVar.zzm(j);
        }
    }

    public final boolean zzl(zzsf zzsfVar) {
        zzjh zzjhVar = this.zzj;
        return zzjhVar != null && zzjhVar.zza == zzsfVar;
    }

    public final boolean zzm(zzjh zzjhVar) {
        boolean z = false;
        zzdd.zzf(zzjhVar != null);
        if (zzjhVar.equals(this.zzj)) {
            return false;
        }
        this.zzj = zzjhVar;
        while (zzjhVar.zzg() != null) {
            zzjhVar = zzjhVar.zzg();
            if (zzjhVar == this.zzi) {
                this.zzi = this.zzh;
                z = true;
            }
            zzjhVar.zzn();
            this.zzk--;
        }
        this.zzj.zzo(null);
        zzy();
        return z;
    }

    public final boolean zzn() {
        zzjh zzjhVar = this.zzj;
        if (zzjhVar != null) {
            if (zzjhVar.zzf.zzi || !zzjhVar.zzr() || this.zzj.zzf.zze == C.TIME_UNSET) {
                return false;
            }
            return this.zzk < 100;
        }
        return true;
    }

    public final boolean zzo(zzcn zzcnVar, long j, long j2) {
        zzji zzjiVar;
        boolean z;
        zzjh zzjhVar = null;
        for (zzjh zzjhVar2 = this.zzh; zzjhVar2 != null; zzjhVar2 = zzjhVar2.zzg()) {
            zzji zzjiVar2 = zzjhVar2.zzf;
            if (zzjhVar == null) {
                zzjiVar = zzg(zzcnVar, zzjiVar2);
            } else {
                zzji zzt = zzt(zzcnVar, zzjhVar, j);
                if (zzt == null) {
                    return !zzm(zzjhVar);
                } else if (zzjiVar2.zzb != zzt.zzb || !zzjiVar2.zza.equals(zzt.zza)) {
                    return !zzm(zzjhVar);
                } else {
                    zzjiVar = zzt;
                }
            }
            zzjhVar2.zzf = zzjiVar.zza(zzjiVar2.zzc);
            long j3 = zzjiVar2.zze;
            long j4 = zzjiVar.zze;
            if (j3 == C.TIME_UNSET || j3 == j4) {
                zzjhVar = zzjhVar2;
            } else {
                zzjhVar2.zzq();
                long j5 = zzjiVar.zze;
                long zze = j5 == C.TIME_UNSET ? Long.MAX_VALUE : j5 + zzjhVar2.zze();
                if (zzjhVar2 == this.zzi) {
                    boolean z2 = zzjhVar2.zzf.zzf;
                    if (j2 == Long.MIN_VALUE || j2 >= zze) {
                        z = true;
                        return zzm(zzjhVar2) && !z;
                    }
                }
                z = false;
                if (zzm(zzjhVar2)) {
                }
            }
        }
        return true;
    }

    public final boolean zzp(zzcn zzcnVar, int i) {
        this.zzf = i;
        return zzB(zzcnVar);
    }

    public final boolean zzq(zzcn zzcnVar, boolean z) {
        this.zzg = z;
        return zzB(zzcnVar);
    }

    public final zzjh zzr(zzjz[] zzjzVarArr, zzvz zzvzVar, zzwi zzwiVar, zzjr zzjrVar, zzji zzjiVar, zzwa zzwaVar) {
        zzjh zzjhVar = this.zzj;
        zzjh zzjhVar2 = new zzjh(zzjzVarArr, zzjhVar == null ? 1000000000000L : (zzjhVar.zze() + zzjhVar.zzf.zze) - zzjiVar.zzb, zzvzVar, zzwiVar, zzjrVar, zzjiVar, zzwaVar, null);
        zzjh zzjhVar3 = this.zzj;
        if (zzjhVar3 != null) {
            zzjhVar3.zzo(zzjhVar2);
        } else {
            this.zzh = zzjhVar2;
            this.zzi = zzjhVar2;
        }
        this.zzl = null;
        this.zzj = zzjhVar2;
        this.zzk++;
        zzy();
        return zzjhVar2;
    }
}

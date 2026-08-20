package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.MediaPeriodQueue;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzjc implements Handler.Callback, zzse, zzvy, zzjq, zzgx, zzjt {
    private boolean zzA;
    private boolean zzD;
    private boolean zzE;
    private boolean zzF;
    private int zzG;
    private zzjb zzH;
    private long zzI;
    private int zzJ;
    private boolean zzK;
    private zzha zzL;
    private final zzif zzN;
    private final zzgv zzO;
    private final zzjy[] zza;
    private final Set zzb;
    private final zzjz[] zzc;
    private final zzvz zzd;
    private final zzwa zze;
    private final zzjf zzf;
    private final zzwh zzg;
    private final zzdn zzh;
    private final HandlerThread zzi;
    private final Looper zzj;
    private final zzcm zzk;
    private final zzck zzl;
    private final long zzm;
    private final zzgy zzn;
    private final ArrayList zzo;
    private final zzde zzp;
    private final zzjk zzq;
    private final zzjr zzr;
    private final long zzs;
    private zzkb zzt;
    private zzjs zzu;
    private zzja zzv;
    private boolean zzw;
    private boolean zzy;
    private boolean zzz;
    private int zzB = 0;
    private boolean zzC = false;
    private boolean zzx = false;
    private long zzM = C.TIME_UNSET;

    public zzjc(zzjy[] zzjyVarArr, zzvz zzvzVar, zzwa zzwaVar, zzjf zzjfVar, zzwh zzwhVar, int i, boolean z, zzkm zzkmVar, zzkb zzkbVar, zzgv zzgvVar, long j, boolean z2, Looper looper, zzde zzdeVar, zzif zzifVar, zzmz zzmzVar, byte[] bArr) {
        this.zzN = zzifVar;
        this.zza = zzjyVarArr;
        this.zzd = zzvzVar;
        this.zze = zzwaVar;
        this.zzf = zzjfVar;
        this.zzg = zzwhVar;
        int i2 = 0;
        this.zzt = zzkbVar;
        this.zzO = zzgvVar;
        this.zzs = j;
        this.zzp = zzdeVar;
        this.zzm = zzjfVar.zza();
        zzjfVar.zzf();
        this.zzu = zzjs.zzg(zzwaVar);
        this.zzv = new zzja(this.zzu);
        int length = zzjyVarArr.length;
        this.zzc = new zzjz[2];
        while (true) {
            int length2 = zzjyVarArr.length;
            if (i2 < 2) {
                zzjyVarArr[i2].zzq(i2, zzmzVar);
                this.zzc[i2] = zzjyVarArr[i2].zzj();
                i2++;
            } else {
                this.zzn = new zzgy(this, zzdeVar);
                this.zzo = new ArrayList();
                this.zzb = Collections.newSetFromMap(new IdentityHashMap());
                this.zzk = new zzcm();
                this.zzl = new zzck();
                zzvzVar.zzq(this, zzwhVar);
                this.zzK = true;
                Handler handler = new Handler(looper);
                this.zzq = new zzjk(zzkmVar, handler);
                this.zzr = new zzjr(this, zzkmVar, handler, zzmzVar);
                HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
                this.zzi = handlerThread;
                handlerThread.start();
                Looper looper2 = handlerThread.getLooper();
                this.zzj = looper2;
                this.zzh = zzdeVar.zzb(looper2, this);
                return;
            }
        }
    }

    private final void zzA(zzjy zzjyVar) throws zzha {
        if (zzac(zzjyVar)) {
            this.zzn.zzd(zzjyVar);
            zzaj(zzjyVar);
            zzjyVar.zzn();
            this.zzG--;
        }
    }

    private final void zzB() throws zzha {
        int length = this.zza.length;
        zzC(new boolean[2]);
    }

    private final void zzC(boolean[] zArr) throws zzha {
        zzjh zze = this.zzq.zze();
        zzwa zzi = zze.zzi();
        int i = 0;
        while (true) {
            int length = this.zza.length;
            if (i >= 2) {
                break;
            }
            if (!zzi.zzb(i) && this.zzb.remove(this.zza[i])) {
                this.zza[i].zzA();
            }
            i++;
        }
        int i2 = 0;
        while (true) {
            int length2 = this.zza.length;
            if (i2 < 2) {
                if (zzi.zzb(i2)) {
                    boolean z = zArr[i2];
                    zzjy zzjyVar = this.zza[i2];
                    if (!zzac(zzjyVar)) {
                        zzjh zze2 = this.zzq.zze();
                        boolean z2 = zze2 == this.zzq.zzd();
                        zzwa zzi2 = zze2.zzi();
                        zzka zzkaVar = zzi2.zzb[i2];
                        zzaf[] zzah = zzah(zzi2.zzc[i2]);
                        boolean z3 = zzaf() && this.zzu.zze == 3;
                        boolean z4 = !z && z3;
                        this.zzG++;
                        this.zzb.add(zzjyVar);
                        zzjyVar.zzo(zzkaVar, zzah, zze2.zzc[i2], this.zzI, z4, z2, zze2.zzf(), zze2.zze());
                        zzjyVar.zzp(11, new zziv(this));
                        this.zzn.zze(zzjyVar);
                        if (z3) {
                            zzjyVar.zzE();
                        }
                    }
                }
                i2++;
            } else {
                zze.zzg = true;
                return;
            }
        }
    }

    private final void zzD(IOException iOException, int i) {
        zzha zzc = zzha.zzc(iOException, i);
        zzjh zzd = this.zzq.zzd();
        if (zzd != null) {
            zzc = zzc.zza(zzd.zzf.zza);
        }
        zzdw.zzc("ExoPlayerImplInternal", "Playback error", zzc);
        zzU(false, false);
        this.zzu = this.zzu.zzd(zzc);
    }

    private final void zzE(boolean z) {
        long zzc;
        zzjh zzc2 = this.zzq.zzc();
        zzsh zzshVar = zzc2 == null ? this.zzu.zzb : zzc2.zzf.zza;
        boolean z2 = !this.zzu.zzk.equals(zzshVar);
        if (z2) {
            this.zzu = this.zzu.zza(zzshVar);
        }
        zzjs zzjsVar = this.zzu;
        if (zzc2 == null) {
            zzc = zzjsVar.zzr;
        } else {
            zzc = zzc2.zzc();
        }
        zzjsVar.zzp = zzc;
        this.zzu.zzq = zzt();
        if ((z2 || z) && zzc2 != null && zzc2.zzd) {
            zzX(zzc2.zzh(), zzc2.zzi());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:194:0x034f  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0352  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x035d  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x036f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:211:0x038e  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0391  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x03ba  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01bd  */
    /* JADX WARN: Type inference failed for: r13v18 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6, types: [boolean] */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r14v0, types: [com.google.android.gms.internal.ads.zzck] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2, types: [com.google.android.gms.internal.ads.zzjb] */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r1v7, types: [com.google.android.gms.internal.ads.zzcn] */
    /* JADX WARN: Type inference failed for: r31v0, types: [com.google.android.gms.internal.ads.zzcn] */
    /* JADX WARN: Type inference failed for: r9v28 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzF(com.google.android.gms.internal.ads.zzcn r31, boolean r32) throws com.google.android.gms.internal.ads.zzha {
        /*
            Method dump skipped, instructions count: 960
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjc.zzF(com.google.android.gms.internal.ads.zzcn, boolean):void");
    }

    private final void zzG(zzby zzbyVar, boolean z) throws zzha {
        zzH(zzbyVar, zzbyVar.zzc, true, z);
    }

    private final void zzH(zzby zzbyVar, float f2, boolean z, boolean z2) throws zzha {
        int i;
        zzjc zzjcVar = this;
        if (z) {
            if (z2) {
                zzjcVar.zzv.zza(1);
            }
            zzjs zzjsVar = zzjcVar.zzu;
            zzjcVar = this;
            zzjcVar.zzu = new zzjs(zzjsVar.zza, zzjsVar.zzb, zzjsVar.zzc, zzjsVar.zzd, zzjsVar.zze, zzjsVar.zzf, zzjsVar.zzg, zzjsVar.zzh, zzjsVar.zzi, zzjsVar.zzj, zzjsVar.zzk, zzjsVar.zzl, zzjsVar.zzm, zzbyVar, zzjsVar.zzp, zzjsVar.zzq, zzjsVar.zzr, zzjsVar.zzo);
        }
        float f3 = zzbyVar.zzc;
        zzjh zzd = zzjcVar.zzq.zzd();
        while (true) {
            i = 0;
            if (zzd == null) {
                break;
            }
            zzvt[] zzvtVarArr = zzd.zzi().zzc;
            int length = zzvtVarArr.length;
            while (i < length) {
                zzvt zzvtVar = zzvtVarArr[i];
                i++;
            }
            zzd = zzd.zzg();
        }
        zzjy[] zzjyVarArr = zzjcVar.zza;
        int length2 = zzjyVarArr.length;
        while (i < 2) {
            zzjy zzjyVar = zzjyVarArr[i];
            if (zzjyVar != null) {
                zzjyVar.zzD(f2, zzbyVar.zzc);
            }
            i++;
        }
    }

    private final void zzI() {
        long zze;
        long j;
        boolean z = false;
        if (zzab()) {
            zzjh zzc = this.zzq.zzc();
            long zzu = zzu(zzc.zzd());
            if (zzc == this.zzq.zzd()) {
                zze = this.zzI;
                j = zzc.zze();
            } else {
                zze = this.zzI - zzc.zze();
                j = zzc.zzf.zzb;
            }
            long j2 = zze - j;
            boolean zzg = this.zzf.zzg(j2, zzu, this.zzn.zzc().zzc);
            if (zzg || zzu >= 500000 || this.zzm <= 0) {
                z = zzg;
            } else {
                this.zzq.zzd().zza.zzj(this.zzu.zzr, false);
                z = this.zzf.zzg(j2, zzu, this.zzn.zzc().zzc);
            }
        }
        this.zzA = z;
        if (z) {
            this.zzq.zzc().zzk(this.zzI);
        }
        zzW();
    }

    private final void zzJ() {
        boolean z;
        this.zzv.zzc(this.zzu);
        z = this.zzv.zzg;
        if (z) {
            zzif zzifVar = this.zzN;
            zzifVar.zza.zzT(this.zzv);
            this.zzv = new zzja(this.zzu);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:66:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzK(boolean r30, boolean r31, boolean r32, boolean r33) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjc.zzK(boolean, boolean, boolean, boolean):void");
    }

    private final void zzL() {
        zzjh zzd = this.zzq.zzd();
        boolean z = false;
        if (zzd != null && zzd.zzf.zzh && this.zzx) {
            z = true;
        }
        this.zzy = z;
    }

    private final void zzM(long j) throws zzha {
        zzvt[] zzvtVarArr;
        zzjh zzd = this.zzq.zzd();
        long zze = j + (zzd == null ? MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US : zzd.zze());
        this.zzI = zze;
        this.zzn.zzf(zze);
        zzjy[] zzjyVarArr = this.zza;
        int length = zzjyVarArr.length;
        for (int i = 0; i < 2; i++) {
            zzjy zzjyVar = zzjyVarArr[i];
            if (zzac(zzjyVar)) {
                zzjyVar.zzB(this.zzI);
            }
        }
        for (zzjh zzd2 = this.zzq.zzd(); zzd2 != null; zzd2 = zzd2.zzg()) {
            for (zzvt zzvtVar : zzd2.zzi().zzc) {
            }
        }
    }

    private final void zzN(zzcn zzcnVar, zzcn zzcnVar2) {
        if (zzcnVar.zzo() && zzcnVar2.zzo()) {
            return;
        }
        int size = this.zzo.size() - 1;
        if (size >= 0) {
            zziz zzizVar = (zziz) this.zzo.get(size);
            Object obj = zzizVar.zzb;
            zzjv zzjvVar = zzizVar.zza;
            int i = zzen.zza;
            zzjv zzjvVar2 = zzizVar.zza;
            throw null;
        }
        Collections.sort(this.zzo);
    }

    private final void zzO(long j, long j2) {
        this.zzh.zzi(2, j + j2);
    }

    private final void zzP(boolean z) throws zzha {
        zzsh zzshVar = this.zzq.zzd().zzf.zza;
        long zzw = zzw(zzshVar, this.zzu.zzr, true, false);
        if (zzw != this.zzu.zzr) {
            zzjs zzjsVar = this.zzu;
            this.zzu = zzz(zzshVar, zzw, zzjsVar.zzc, zzjsVar.zzd, z, 5);
        }
    }

    private final void zzQ(zzjv zzjvVar) throws zzha {
        if (zzjvVar.zzb() == this.zzj) {
            zzai(zzjvVar);
            int i = this.zzu.zze;
            if (i == 3 || i == 2) {
                this.zzh.zzh(2);
                return;
            }
            return;
        }
        this.zzh.zzb(15, zzjvVar).zza();
    }

    private final void zzR(boolean z, int i, boolean z2, int i2) throws zzha {
        zzvt[] zzvtVarArr;
        this.zzv.zza(z2 ? 1 : 0);
        this.zzv.zzb(i2);
        this.zzu = this.zzu.zzc(z, i);
        this.zzz = false;
        for (zzjh zzd = this.zzq.zzd(); zzd != null; zzd = zzd.zzg()) {
            for (zzvt zzvtVar : zzd.zzi().zzc) {
            }
        }
        if (!zzaf()) {
            zzV();
            zzY();
            return;
        }
        int i3 = this.zzu.zze;
        if (i3 == 3) {
            zzT();
            this.zzh.zzh(2);
        } else if (i3 == 2) {
            this.zzh.zzh(2);
        }
    }

    private final void zzS(int i) {
        zzjs zzjsVar = this.zzu;
        if (zzjsVar.zze != i) {
            if (i != 2) {
                this.zzM = C.TIME_UNSET;
            }
            this.zzu = zzjsVar.zze(i);
        }
    }

    private final void zzT() throws zzha {
        this.zzz = false;
        this.zzn.zzh();
        zzjy[] zzjyVarArr = this.zza;
        int length = zzjyVarArr.length;
        for (int i = 0; i < 2; i++) {
            zzjy zzjyVar = zzjyVarArr[i];
            if (zzac(zzjyVar)) {
                zzjyVar.zzE();
            }
        }
    }

    private final void zzU(boolean z, boolean z2) {
        zzK(z || !this.zzD, false, true, false);
        this.zzv.zza(z2 ? 1 : 0);
        this.zzf.zzd();
        zzS(1);
    }

    private final void zzV() throws zzha {
        this.zzn.zzi();
        zzjy[] zzjyVarArr = this.zza;
        int length = zzjyVarArr.length;
        for (int i = 0; i < 2; i++) {
            zzjy zzjyVar = zzjyVarArr[i];
            if (zzac(zzjyVar)) {
                zzaj(zzjyVar);
            }
        }
    }

    private final void zzW() {
        zzjh zzc = this.zzq.zzc();
        boolean z = this.zzA || (zzc != null && zzc.zza.zzp());
        zzjs zzjsVar = this.zzu;
        if (z != zzjsVar.zzg) {
            this.zzu = new zzjs(zzjsVar.zza, zzjsVar.zzb, zzjsVar.zzc, zzjsVar.zzd, zzjsVar.zze, zzjsVar.zzf, z, zzjsVar.zzh, zzjsVar.zzi, zzjsVar.zzj, zzjsVar.zzk, zzjsVar.zzl, zzjsVar.zzm, zzjsVar.zzn, zzjsVar.zzp, zzjsVar.zzq, zzjsVar.zzr, zzjsVar.zzo);
        }
    }

    private final void zzX(zzug zzugVar, zzwa zzwaVar) {
        this.zzf.zze(this.zza, zzugVar, zzwaVar.zzc);
    }

    private final void zzY() throws zzha {
        zzjh zzd = this.zzq.zzd();
        if (zzd == null) {
            return;
        }
        long zzd2 = zzd.zzd ? zzd.zza.zzd() : -9223372036854775807L;
        if (zzd2 != C.TIME_UNSET) {
            zzM(zzd2);
            if (zzd2 != this.zzu.zzr) {
                zzjs zzjsVar = this.zzu;
                this.zzu = zzz(zzjsVar.zzb, zzd2, zzjsVar.zzc, zzd2, true, 5);
            }
        } else {
            long zzb = this.zzn.zzb(zzd != this.zzq.zze());
            this.zzI = zzb;
            long zze = zzb - zzd.zze();
            long j = this.zzu.zzr;
            if (!this.zzo.isEmpty() && !this.zzu.zzb.zzb()) {
                if (this.zzK) {
                    j--;
                    this.zzK = false;
                }
                zzjs zzjsVar2 = this.zzu;
                int zza = zzjsVar2.zza.zza(zzjsVar2.zzb.zza);
                int min = Math.min(this.zzJ, this.zzo.size());
                zziz zzizVar = min > 0 ? (zziz) this.zzo.get(min - 1) : null;
                while (zzizVar != null && (zza < 0 || (zza == 0 && j < 0))) {
                    int i = min - 1;
                    zzizVar = i > 0 ? (zziz) this.zzo.get(min - 2) : null;
                    min = i;
                }
                if (min < this.zzo.size()) {
                    zziz zzizVar2 = (zziz) this.zzo.get(min);
                }
                this.zzJ = min;
            }
            this.zzu.zzr = zze;
        }
        this.zzu.zzp = this.zzq.zzc().zzc();
        this.zzu.zzq = zzt();
        zzjs zzjsVar3 = this.zzu;
        if (zzjsVar3.zzl && zzjsVar3.zze == 3 && zzag(zzjsVar3.zza, zzjsVar3.zzb)) {
            zzjs zzjsVar4 = this.zzu;
            if (zzjsVar4.zzn.zzc == 1.0f) {
                float zza2 = this.zzO.zza(zzs(zzjsVar4.zza, zzjsVar4.zzb.zza, zzjsVar4.zzr), zzt());
                if (this.zzn.zzc().zzc != zza2) {
                    this.zzn.zzg(new zzby(zza2, this.zzu.zzn.zzd));
                    zzH(this.zzu.zzn, this.zzn.zzc().zzc, false, false);
                }
            }
        }
    }

    private final void zzZ(zzcn zzcnVar, zzsh zzshVar, zzcn zzcnVar2, zzsh zzshVar2, long j) {
        if (!zzag(zzcnVar, zzshVar)) {
            zzby zzbyVar = zzshVar.zzb() ? zzby.zza : this.zzu.zzn;
            if (this.zzn.zzc().equals(zzbyVar)) {
                return;
            }
            this.zzn.zzg(zzbyVar);
            return;
        }
        zzcnVar.zze(zzcnVar.zzn(zzshVar.zza, this.zzl).zzd, this.zzk, 0L);
        zzgv zzgvVar = this.zzO;
        zzaw zzawVar = this.zzk.zzk;
        int i = zzen.zza;
        zzgvVar.zzd(zzawVar);
        if (j != C.TIME_UNSET) {
            this.zzO.zze(zzs(zzcnVar, zzshVar.zza, j));
            return;
        }
        if (zzen.zzT(!zzcnVar2.zzo() ? zzcnVar2.zze(zzcnVar2.zzn(zzshVar2.zza, this.zzl).zzd, this.zzk, 0L).zzc : null, this.zzk.zzc)) {
            return;
        }
        this.zzO.zze(C.TIME_UNSET);
    }

    private final synchronized void zzaa(zzfyu zzfyuVar, long j) {
        long elapsedRealtime = SystemClock.elapsedRealtime() + j;
        boolean z = false;
        while (!Boolean.valueOf(((zzit) zzfyuVar).zza.zzw).booleanValue() && j > 0) {
            try {
                wait(j);
            } catch (InterruptedException unused) {
                z = true;
            }
            j = elapsedRealtime - SystemClock.elapsedRealtime();
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    private final boolean zzab() {
        zzjh zzc = this.zzq.zzc();
        return (zzc == null || zzc.zzd() == Long.MIN_VALUE) ? false : true;
    }

    private static boolean zzac(zzjy zzjyVar) {
        return zzjyVar.zzbe() != 0;
    }

    private final boolean zzad() {
        zzjh zzd = this.zzq.zzd();
        long j = zzd.zzf.zze;
        if (zzd.zzd) {
            if (j == C.TIME_UNSET || this.zzu.zzr < j) {
                return true;
            }
            return !zzaf();
        }
        return false;
    }

    private static boolean zzae(zzjs zzjsVar, zzck zzckVar) {
        zzsh zzshVar = zzjsVar.zzb;
        zzcn zzcnVar = zzjsVar.zza;
        return zzcnVar.zzo() || zzcnVar.zzn(zzshVar.zza, zzckVar).zzg;
    }

    private final boolean zzaf() {
        zzjs zzjsVar = this.zzu;
        return zzjsVar.zzl && zzjsVar.zzm == 0;
    }

    private final boolean zzag(zzcn zzcnVar, zzsh zzshVar) {
        if (!zzshVar.zzb() && !zzcnVar.zzo()) {
            zzcnVar.zze(zzcnVar.zzn(zzshVar.zza, this.zzl).zzd, this.zzk, 0L);
            if (this.zzk.zzb()) {
                zzcm zzcmVar = this.zzk;
                if (zzcmVar.zzi && zzcmVar.zzf != C.TIME_UNSET) {
                    return true;
                }
            }
        }
        return false;
    }

    private static zzaf[] zzah(zzvt zzvtVar) {
        int zzc = zzvtVar != null ? zzvtVar.zzc() : 0;
        zzaf[] zzafVarArr = new zzaf[zzc];
        for (int i = 0; i < zzc; i++) {
            zzafVarArr[i] = zzvtVar.zzd(i);
        }
        return zzafVarArr;
    }

    private static final void zzai(zzjv zzjvVar) throws zzha {
        zzjvVar.zzj();
        try {
            zzjvVar.zzc().zzp(zzjvVar.zza(), zzjvVar.zzg());
        } finally {
            zzjvVar.zzh(true);
        }
    }

    private static final void zzaj(zzjy zzjyVar) throws zzha {
        if (zzjyVar.zzbe() == 2) {
            zzjyVar.zzF();
        }
    }

    private static final void zzak(zzjy zzjyVar, long j) {
        zzjyVar.zzC();
        if (zzjyVar instanceof zzuk) {
            zzuk zzukVar = (zzuk) zzjyVar;
            throw null;
        }
    }

    static Object zze(zzcm zzcmVar, zzck zzckVar, int i, boolean z, Object obj, zzcn zzcnVar, zzcn zzcnVar2) {
        int zza = zzcnVar.zza(obj);
        int zzb = zzcnVar.zzb();
        int i2 = 0;
        int i3 = zza;
        int i4 = -1;
        while (true) {
            if (i2 >= zzb || i4 != -1) {
                break;
            }
            i3 = zzcnVar.zzi(i3, zzckVar, zzcmVar, i, z);
            if (i3 == -1) {
                i4 = -1;
                break;
            }
            i4 = zzcnVar2.zza(zzcnVar.zzf(i3));
            i2++;
        }
        if (i4 == -1) {
            return null;
        }
        return zzcnVar2.zzf(i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void zzr(zzjv zzjvVar) {
        try {
            zzai(zzjvVar);
        } catch (zzha e2) {
            zzdw.zzc("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e2);
            throw new RuntimeException(e2);
        }
    }

    private final long zzs(zzcn zzcnVar, Object obj, long j) {
        zzcnVar.zze(zzcnVar.zzn(obj, this.zzl).zzd, this.zzk, 0L);
        zzcm zzcmVar = this.zzk;
        if (zzcmVar.zzf != C.TIME_UNSET && zzcmVar.zzb()) {
            zzcm zzcmVar2 = this.zzk;
            if (zzcmVar2.zzi) {
                return zzen.zzv(zzen.zzt(zzcmVar2.zzg) - this.zzk.zzf) - j;
            }
        }
        return C.TIME_UNSET;
    }

    private final long zzt() {
        return zzu(this.zzu.zzp);
    }

    private final long zzu(long j) {
        zzjh zzc = this.zzq.zzc();
        if (zzc == null) {
            return 0L;
        }
        return Math.max(0L, j - (this.zzI - zzc.zze()));
    }

    private final long zzv(zzsh zzshVar, long j, boolean z) throws zzha {
        return zzw(zzshVar, j, this.zzq.zzd() != this.zzq.zze(), z);
    }

    private final long zzw(zzsh zzshVar, long j, boolean z, boolean z2) throws zzha {
        zzV();
        this.zzz = false;
        if (z2 || this.zzu.zze == 3) {
            zzS(2);
        }
        zzjh zzd = this.zzq.zzd();
        zzjh zzjhVar = zzd;
        while (zzjhVar != null && !zzshVar.equals(zzjhVar.zzf.zza)) {
            zzjhVar = zzjhVar.zzg();
        }
        if (z || zzd != zzjhVar || (zzjhVar != null && zzjhVar.zze() + j < 0)) {
            zzjy[] zzjyVarArr = this.zza;
            int length = zzjyVarArr.length;
            for (int i = 0; i < 2; i++) {
                zzA(zzjyVarArr[i]);
            }
            if (zzjhVar != null) {
                while (this.zzq.zzd() != zzjhVar) {
                    this.zzq.zza();
                }
                this.zzq.zzm(zzjhVar);
                zzjhVar.zzp(MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US);
                zzB();
            }
        }
        if (zzjhVar != null) {
            this.zzq.zzm(zzjhVar);
            if (!zzjhVar.zzd) {
                zzjhVar.zzf = zzjhVar.zzf.zzb(j);
            } else if (zzjhVar.zze) {
                j = zzjhVar.zza.zze(j);
                zzjhVar.zza.zzj(j - this.zzm, false);
            }
            zzM(j);
            zzI();
        } else {
            this.zzq.zzi();
            zzM(j);
        }
        zzE(false);
        this.zzh.zzh(2);
        return j;
    }

    private final Pair zzx(zzcn zzcnVar) {
        long j = 0;
        if (zzcnVar.zzo()) {
            return Pair.create(zzjs.zzh(), 0L);
        }
        Pair zzl = zzcnVar.zzl(this.zzk, this.zzl, zzcnVar.zzg(this.zzC), C.TIME_UNSET);
        zzsh zzh = this.zzq.zzh(zzcnVar, zzl.first, 0L);
        long longValue = ((Long) zzl.second).longValue();
        if (zzh.zzb()) {
            zzcnVar.zzn(zzh.zza, this.zzl);
            if (zzh.zzc == this.zzl.zze(zzh.zzb)) {
                this.zzl.zzi();
            }
        } else {
            j = longValue;
        }
        return Pair.create(zzh, Long.valueOf(j));
    }

    private static Pair zzy(zzcn zzcnVar, zzjb zzjbVar, boolean z, int i, boolean z2, zzcm zzcmVar, zzck zzckVar) {
        Pair zzl;
        zzcn zzcnVar2 = zzjbVar.zza;
        if (zzcnVar.zzo()) {
            return null;
        }
        zzcn zzcnVar3 = true == zzcnVar2.zzo() ? zzcnVar : zzcnVar2;
        try {
            zzl = zzcnVar3.zzl(zzcmVar, zzckVar, zzjbVar.zzb, zzjbVar.zzc);
        } catch (IndexOutOfBoundsException unused) {
        }
        if (zzcnVar.equals(zzcnVar3)) {
            return zzl;
        }
        if (zzcnVar.zza(zzl.first) != -1) {
            return (zzcnVar3.zzn(zzl.first, zzckVar).zzg && zzcnVar3.zze(zzckVar.zzd, zzcmVar, 0L).zzo == zzcnVar3.zza(zzl.first)) ? zzcnVar.zzl(zzcmVar, zzckVar, zzcnVar.zzn(zzl.first, zzckVar).zzd, zzjbVar.zzc) : zzl;
        }
        Object zze = zze(zzcmVar, zzckVar, i, z2, zzl.first, zzcnVar3, zzcnVar);
        if (zze != null) {
            return zzcnVar.zzl(zzcmVar, zzckVar, zzcnVar.zzn(zze, zzckVar).zzd, C.TIME_UNSET);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.android.gms.internal.ads.zzjs zzz(com.google.android.gms.internal.ads.zzsh r17, long r18, long r20, long r22, boolean r24, int r25) {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjc.zzz(com.google.android.gms.internal.ads.zzsh, long, long, long, boolean, int):com.google.android.gms.internal.ads.zzjs");
    }

    /* JADX WARN: Code restructure failed: missing block: B:465:0x0916, code lost:
        if (r53.zzf.zzh(zzt(), r53.zzn.zzc().zzc, r53.zzz, r31) == false) goto L505;
     */
    /* JADX WARN: Code restructure failed: missing block: B:476:0x0939, code lost:
        if (r2 == false) goto L512;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:327:0x06dc A[Catch: RuntimeException -> 0x0acd, IOException -> 0x0af7, zzrj -> 0x0aff, zzey -> 0x0b07, zzbu -> 0x0b0f, zzpg -> 0x0b26, zzha -> 0x0b2f, TryCatch #9 {zzbu -> 0x0b0f, zzey -> 0x0b07, zzha -> 0x0b2f, zzpg -> 0x0b26, zzrj -> 0x0aff, IOException -> 0x0af7, RuntimeException -> 0x0acd, blocks: (B:3:0x0006, B:4:0x0011, B:7:0x0016, B:9:0x001c, B:13:0x0023, B:15:0x0027, B:17:0x002b, B:19:0x0031, B:20:0x0037, B:24:0x003e, B:26:0x0047, B:28:0x0055, B:29:0x005c, B:30:0x0066, B:31:0x0079, B:32:0x0090, B:33:0x00ac, B:35:0x00bb, B:36:0x00bf, B:37:0x00d0, B:39:0x00df, B:40:0x00fb, B:41:0x010e, B:42:0x0117, B:44:0x0129, B:45:0x0135, B:46:0x0145, B:47:0x014e, B:51:0x0155, B:53:0x015d, B:55:0x0161, B:57:0x0167, B:59:0x016f, B:61:0x0177, B:62:0x017a, B:64:0x017f, B:71:0x018c, B:72:0x018d, B:76:0x0194, B:78:0x01a2, B:79:0x01a5, B:80:0x01aa, B:82:0x01ba, B:83:0x01bd, B:84:0x01c2, B:86:0x01d9, B:88:0x01dd, B:90:0x01eb, B:94:0x01f5, B:96:0x01fa, B:98:0x0200, B:102:0x0208, B:104:0x0210, B:106:0x0236, B:110:0x023f, B:112:0x0261, B:113:0x0264, B:114:0x026a, B:116:0x026f, B:118:0x027f, B:120:0x0285, B:121:0x0289, B:123:0x028d, B:124:0x0292, B:125:0x0297, B:129:0x02b8, B:131:0x02c3, B:126:0x029b, B:128:0x02a5, B:132:0x02d0, B:134:0x02dc, B:135:0x02e8, B:137:0x02f4, B:139:0x031c, B:140:0x033c, B:141:0x0341, B:142:0x0353, B:149:0x035e, B:150:0x035f, B:151:0x0366, B:152:0x036e, B:153:0x0383, B:155:0x03af, B:220:0x04d1, B:205:0x049d, B:204:0x0499, B:229:0x04e8, B:230:0x04f8, B:156:0x03d2, B:160:0x03e5, B:162:0x03f5, B:164:0x040c, B:166:0x0416, B:231:0x04f9, B:233:0x050e, B:236:0x0518, B:238:0x0527, B:240:0x0533, B:242:0x0562, B:243:0x0567, B:244:0x056b, B:246:0x056f, B:248:0x057c, B:317:0x06b5, B:319:0x06bd, B:321:0x06c5, B:324:0x06ca, B:325:0x06d6, B:327:0x06dc, B:329:0x06e4, B:333:0x06f5, B:335:0x06fb, B:336:0x0715, B:338:0x071b, B:340:0x0720, B:342:0x0725, B:344:0x0729, B:346:0x072f, B:348:0x0733, B:350:0x073b, B:352:0x0741, B:354:0x074b, B:357:0x0751, B:358:0x0754, B:360:0x075d, B:362:0x076f, B:364:0x0777, B:366:0x077f, B:370:0x0788, B:373:0x07b4, B:378:0x07c0, B:380:0x07ca, B:381:0x07d1, B:383:0x07e3, B:384:0x07f8, B:386:0x07fe, B:419:0x084f, B:389:0x0807, B:391:0x080e, B:395:0x0817, B:400:0x0826, B:406:0x0833, B:408:0x0839, B:418:0x084c, B:421:0x085e, B:423:0x0864, B:427:0x0871, B:429:0x0879, B:431:0x087d, B:432:0x0888, B:434:0x088e, B:487:0x096d, B:490:0x0975, B:492:0x097a, B:494:0x0982, B:496:0x0990, B:497:0x0997, B:498:0x099b, B:500:0x09a1, B:502:0x09aa, B:504:0x09b0, B:506:0x09bb, B:513:0x09df, B:515:0x09e5, B:519:0x09ee, B:521:0x09f2, B:526:0x09fb, B:528:0x0a01, B:530:0x0a5d, B:532:0x0a62, B:541:0x0a73, B:543:0x0a77, B:544:0x0a7f, B:545:0x0a86, B:507:0x09c2, B:510:0x09d0, B:511:0x09d7, B:512:0x09d8, B:435:0x0897, B:437:0x089e, B:439:0x08a2, B:466:0x0918, B:468:0x0924, B:444:0x08ae, B:446:0x08b2, B:448:0x08c4, B:450:0x08d2, B:452:0x08de, B:456:0x08e7, B:458:0x08f1, B:464:0x08fc, B:469:0x0928, B:471:0x092e, B:473:0x0932, B:477:0x093b, B:479:0x0949, B:481:0x0951, B:483:0x095b, B:484:0x0960, B:485:0x0965, B:486:0x096a, B:420:0x0857, B:251:0x0589, B:253:0x058f, B:256:0x0595, B:259:0x05a0, B:261:0x05a6, B:264:0x05b4, B:266:0x05ba, B:267:0x05c2, B:268:0x05c5, B:270:0x05cd, B:272:0x05db, B:274:0x060e, B:276:0x0618, B:279:0x0623, B:281:0x062b, B:282:0x062e, B:284:0x0632, B:286:0x0638, B:288:0x0642, B:290:0x064c, B:292:0x065d, B:294:0x0663, B:295:0x066e, B:296:0x0671, B:298:0x067a, B:301:0x067f, B:303:0x0685, B:305:0x068d, B:307:0x0693, B:309:0x0699, B:313:0x06a7, B:315:0x06af, B:316:0x06b2, B:247:0x0579, B:547:0x0a8e, B:551:0x0a95, B:552:0x0a9d, B:556:0x0abb), top: B:617:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:357:0x0751 A[Catch: RuntimeException -> 0x0acd, IOException -> 0x0af7, zzrj -> 0x0aff, zzey -> 0x0b07, zzbu -> 0x0b0f, zzpg -> 0x0b26, zzha -> 0x0b2f, TryCatch #9 {zzbu -> 0x0b0f, zzey -> 0x0b07, zzha -> 0x0b2f, zzpg -> 0x0b26, zzrj -> 0x0aff, IOException -> 0x0af7, RuntimeException -> 0x0acd, blocks: (B:3:0x0006, B:4:0x0011, B:7:0x0016, B:9:0x001c, B:13:0x0023, B:15:0x0027, B:17:0x002b, B:19:0x0031, B:20:0x0037, B:24:0x003e, B:26:0x0047, B:28:0x0055, B:29:0x005c, B:30:0x0066, B:31:0x0079, B:32:0x0090, B:33:0x00ac, B:35:0x00bb, B:36:0x00bf, B:37:0x00d0, B:39:0x00df, B:40:0x00fb, B:41:0x010e, B:42:0x0117, B:44:0x0129, B:45:0x0135, B:46:0x0145, B:47:0x014e, B:51:0x0155, B:53:0x015d, B:55:0x0161, B:57:0x0167, B:59:0x016f, B:61:0x0177, B:62:0x017a, B:64:0x017f, B:71:0x018c, B:72:0x018d, B:76:0x0194, B:78:0x01a2, B:79:0x01a5, B:80:0x01aa, B:82:0x01ba, B:83:0x01bd, B:84:0x01c2, B:86:0x01d9, B:88:0x01dd, B:90:0x01eb, B:94:0x01f5, B:96:0x01fa, B:98:0x0200, B:102:0x0208, B:104:0x0210, B:106:0x0236, B:110:0x023f, B:112:0x0261, B:113:0x0264, B:114:0x026a, B:116:0x026f, B:118:0x027f, B:120:0x0285, B:121:0x0289, B:123:0x028d, B:124:0x0292, B:125:0x0297, B:129:0x02b8, B:131:0x02c3, B:126:0x029b, B:128:0x02a5, B:132:0x02d0, B:134:0x02dc, B:135:0x02e8, B:137:0x02f4, B:139:0x031c, B:140:0x033c, B:141:0x0341, B:142:0x0353, B:149:0x035e, B:150:0x035f, B:151:0x0366, B:152:0x036e, B:153:0x0383, B:155:0x03af, B:220:0x04d1, B:205:0x049d, B:204:0x0499, B:229:0x04e8, B:230:0x04f8, B:156:0x03d2, B:160:0x03e5, B:162:0x03f5, B:164:0x040c, B:166:0x0416, B:231:0x04f9, B:233:0x050e, B:236:0x0518, B:238:0x0527, B:240:0x0533, B:242:0x0562, B:243:0x0567, B:244:0x056b, B:246:0x056f, B:248:0x057c, B:317:0x06b5, B:319:0x06bd, B:321:0x06c5, B:324:0x06ca, B:325:0x06d6, B:327:0x06dc, B:329:0x06e4, B:333:0x06f5, B:335:0x06fb, B:336:0x0715, B:338:0x071b, B:340:0x0720, B:342:0x0725, B:344:0x0729, B:346:0x072f, B:348:0x0733, B:350:0x073b, B:352:0x0741, B:354:0x074b, B:357:0x0751, B:358:0x0754, B:360:0x075d, B:362:0x076f, B:364:0x0777, B:366:0x077f, B:370:0x0788, B:373:0x07b4, B:378:0x07c0, B:380:0x07ca, B:381:0x07d1, B:383:0x07e3, B:384:0x07f8, B:386:0x07fe, B:419:0x084f, B:389:0x0807, B:391:0x080e, B:395:0x0817, B:400:0x0826, B:406:0x0833, B:408:0x0839, B:418:0x084c, B:421:0x085e, B:423:0x0864, B:427:0x0871, B:429:0x0879, B:431:0x087d, B:432:0x0888, B:434:0x088e, B:487:0x096d, B:490:0x0975, B:492:0x097a, B:494:0x0982, B:496:0x0990, B:497:0x0997, B:498:0x099b, B:500:0x09a1, B:502:0x09aa, B:504:0x09b0, B:506:0x09bb, B:513:0x09df, B:515:0x09e5, B:519:0x09ee, B:521:0x09f2, B:526:0x09fb, B:528:0x0a01, B:530:0x0a5d, B:532:0x0a62, B:541:0x0a73, B:543:0x0a77, B:544:0x0a7f, B:545:0x0a86, B:507:0x09c2, B:510:0x09d0, B:511:0x09d7, B:512:0x09d8, B:435:0x0897, B:437:0x089e, B:439:0x08a2, B:466:0x0918, B:468:0x0924, B:444:0x08ae, B:446:0x08b2, B:448:0x08c4, B:450:0x08d2, B:452:0x08de, B:456:0x08e7, B:458:0x08f1, B:464:0x08fc, B:469:0x0928, B:471:0x092e, B:473:0x0932, B:477:0x093b, B:479:0x0949, B:481:0x0951, B:483:0x095b, B:484:0x0960, B:485:0x0965, B:486:0x096a, B:420:0x0857, B:251:0x0589, B:253:0x058f, B:256:0x0595, B:259:0x05a0, B:261:0x05a6, B:264:0x05b4, B:266:0x05ba, B:267:0x05c2, B:268:0x05c5, B:270:0x05cd, B:272:0x05db, B:274:0x060e, B:276:0x0618, B:279:0x0623, B:281:0x062b, B:282:0x062e, B:284:0x0632, B:286:0x0638, B:288:0x0642, B:290:0x064c, B:292:0x065d, B:294:0x0663, B:295:0x066e, B:296:0x0671, B:298:0x067a, B:301:0x067f, B:303:0x0685, B:305:0x068d, B:307:0x0693, B:309:0x0699, B:313:0x06a7, B:315:0x06af, B:316:0x06b2, B:247:0x0579, B:547:0x0a8e, B:551:0x0a95, B:552:0x0a9d, B:556:0x0abb), top: B:617:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:362:0x076f A[Catch: RuntimeException -> 0x0acd, IOException -> 0x0af7, zzrj -> 0x0aff, zzey -> 0x0b07, zzbu -> 0x0b0f, zzpg -> 0x0b26, zzha -> 0x0b2f, TryCatch #9 {zzbu -> 0x0b0f, zzey -> 0x0b07, zzha -> 0x0b2f, zzpg -> 0x0b26, zzrj -> 0x0aff, IOException -> 0x0af7, RuntimeException -> 0x0acd, blocks: (B:3:0x0006, B:4:0x0011, B:7:0x0016, B:9:0x001c, B:13:0x0023, B:15:0x0027, B:17:0x002b, B:19:0x0031, B:20:0x0037, B:24:0x003e, B:26:0x0047, B:28:0x0055, B:29:0x005c, B:30:0x0066, B:31:0x0079, B:32:0x0090, B:33:0x00ac, B:35:0x00bb, B:36:0x00bf, B:37:0x00d0, B:39:0x00df, B:40:0x00fb, B:41:0x010e, B:42:0x0117, B:44:0x0129, B:45:0x0135, B:46:0x0145, B:47:0x014e, B:51:0x0155, B:53:0x015d, B:55:0x0161, B:57:0x0167, B:59:0x016f, B:61:0x0177, B:62:0x017a, B:64:0x017f, B:71:0x018c, B:72:0x018d, B:76:0x0194, B:78:0x01a2, B:79:0x01a5, B:80:0x01aa, B:82:0x01ba, B:83:0x01bd, B:84:0x01c2, B:86:0x01d9, B:88:0x01dd, B:90:0x01eb, B:94:0x01f5, B:96:0x01fa, B:98:0x0200, B:102:0x0208, B:104:0x0210, B:106:0x0236, B:110:0x023f, B:112:0x0261, B:113:0x0264, B:114:0x026a, B:116:0x026f, B:118:0x027f, B:120:0x0285, B:121:0x0289, B:123:0x028d, B:124:0x0292, B:125:0x0297, B:129:0x02b8, B:131:0x02c3, B:126:0x029b, B:128:0x02a5, B:132:0x02d0, B:134:0x02dc, B:135:0x02e8, B:137:0x02f4, B:139:0x031c, B:140:0x033c, B:141:0x0341, B:142:0x0353, B:149:0x035e, B:150:0x035f, B:151:0x0366, B:152:0x036e, B:153:0x0383, B:155:0x03af, B:220:0x04d1, B:205:0x049d, B:204:0x0499, B:229:0x04e8, B:230:0x04f8, B:156:0x03d2, B:160:0x03e5, B:162:0x03f5, B:164:0x040c, B:166:0x0416, B:231:0x04f9, B:233:0x050e, B:236:0x0518, B:238:0x0527, B:240:0x0533, B:242:0x0562, B:243:0x0567, B:244:0x056b, B:246:0x056f, B:248:0x057c, B:317:0x06b5, B:319:0x06bd, B:321:0x06c5, B:324:0x06ca, B:325:0x06d6, B:327:0x06dc, B:329:0x06e4, B:333:0x06f5, B:335:0x06fb, B:336:0x0715, B:338:0x071b, B:340:0x0720, B:342:0x0725, B:344:0x0729, B:346:0x072f, B:348:0x0733, B:350:0x073b, B:352:0x0741, B:354:0x074b, B:357:0x0751, B:358:0x0754, B:360:0x075d, B:362:0x076f, B:364:0x0777, B:366:0x077f, B:370:0x0788, B:373:0x07b4, B:378:0x07c0, B:380:0x07ca, B:381:0x07d1, B:383:0x07e3, B:384:0x07f8, B:386:0x07fe, B:419:0x084f, B:389:0x0807, B:391:0x080e, B:395:0x0817, B:400:0x0826, B:406:0x0833, B:408:0x0839, B:418:0x084c, B:421:0x085e, B:423:0x0864, B:427:0x0871, B:429:0x0879, B:431:0x087d, B:432:0x0888, B:434:0x088e, B:487:0x096d, B:490:0x0975, B:492:0x097a, B:494:0x0982, B:496:0x0990, B:497:0x0997, B:498:0x099b, B:500:0x09a1, B:502:0x09aa, B:504:0x09b0, B:506:0x09bb, B:513:0x09df, B:515:0x09e5, B:519:0x09ee, B:521:0x09f2, B:526:0x09fb, B:528:0x0a01, B:530:0x0a5d, B:532:0x0a62, B:541:0x0a73, B:543:0x0a77, B:544:0x0a7f, B:545:0x0a86, B:507:0x09c2, B:510:0x09d0, B:511:0x09d7, B:512:0x09d8, B:435:0x0897, B:437:0x089e, B:439:0x08a2, B:466:0x0918, B:468:0x0924, B:444:0x08ae, B:446:0x08b2, B:448:0x08c4, B:450:0x08d2, B:452:0x08de, B:456:0x08e7, B:458:0x08f1, B:464:0x08fc, B:469:0x0928, B:471:0x092e, B:473:0x0932, B:477:0x093b, B:479:0x0949, B:481:0x0951, B:483:0x095b, B:484:0x0960, B:485:0x0965, B:486:0x096a, B:420:0x0857, B:251:0x0589, B:253:0x058f, B:256:0x0595, B:259:0x05a0, B:261:0x05a6, B:264:0x05b4, B:266:0x05ba, B:267:0x05c2, B:268:0x05c5, B:270:0x05cd, B:272:0x05db, B:274:0x060e, B:276:0x0618, B:279:0x0623, B:281:0x062b, B:282:0x062e, B:284:0x0632, B:286:0x0638, B:288:0x0642, B:290:0x064c, B:292:0x065d, B:294:0x0663, B:295:0x066e, B:296:0x0671, B:298:0x067a, B:301:0x067f, B:303:0x0685, B:305:0x068d, B:307:0x0693, B:309:0x0699, B:313:0x06a7, B:315:0x06af, B:316:0x06b2, B:247:0x0579, B:547:0x0a8e, B:551:0x0a95, B:552:0x0a9d, B:556:0x0abb), top: B:617:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:375:0x07bb  */
    /* JADX WARN: Removed duplicated region for block: B:418:0x084c A[Catch: RuntimeException -> 0x0acd, IOException -> 0x0af7, zzrj -> 0x0aff, zzey -> 0x0b07, zzbu -> 0x0b0f, zzpg -> 0x0b26, zzha -> 0x0b2f, TryCatch #9 {zzbu -> 0x0b0f, zzey -> 0x0b07, zzha -> 0x0b2f, zzpg -> 0x0b26, zzrj -> 0x0aff, IOException -> 0x0af7, RuntimeException -> 0x0acd, blocks: (B:3:0x0006, B:4:0x0011, B:7:0x0016, B:9:0x001c, B:13:0x0023, B:15:0x0027, B:17:0x002b, B:19:0x0031, B:20:0x0037, B:24:0x003e, B:26:0x0047, B:28:0x0055, B:29:0x005c, B:30:0x0066, B:31:0x0079, B:32:0x0090, B:33:0x00ac, B:35:0x00bb, B:36:0x00bf, B:37:0x00d0, B:39:0x00df, B:40:0x00fb, B:41:0x010e, B:42:0x0117, B:44:0x0129, B:45:0x0135, B:46:0x0145, B:47:0x014e, B:51:0x0155, B:53:0x015d, B:55:0x0161, B:57:0x0167, B:59:0x016f, B:61:0x0177, B:62:0x017a, B:64:0x017f, B:71:0x018c, B:72:0x018d, B:76:0x0194, B:78:0x01a2, B:79:0x01a5, B:80:0x01aa, B:82:0x01ba, B:83:0x01bd, B:84:0x01c2, B:86:0x01d9, B:88:0x01dd, B:90:0x01eb, B:94:0x01f5, B:96:0x01fa, B:98:0x0200, B:102:0x0208, B:104:0x0210, B:106:0x0236, B:110:0x023f, B:112:0x0261, B:113:0x0264, B:114:0x026a, B:116:0x026f, B:118:0x027f, B:120:0x0285, B:121:0x0289, B:123:0x028d, B:124:0x0292, B:125:0x0297, B:129:0x02b8, B:131:0x02c3, B:126:0x029b, B:128:0x02a5, B:132:0x02d0, B:134:0x02dc, B:135:0x02e8, B:137:0x02f4, B:139:0x031c, B:140:0x033c, B:141:0x0341, B:142:0x0353, B:149:0x035e, B:150:0x035f, B:151:0x0366, B:152:0x036e, B:153:0x0383, B:155:0x03af, B:220:0x04d1, B:205:0x049d, B:204:0x0499, B:229:0x04e8, B:230:0x04f8, B:156:0x03d2, B:160:0x03e5, B:162:0x03f5, B:164:0x040c, B:166:0x0416, B:231:0x04f9, B:233:0x050e, B:236:0x0518, B:238:0x0527, B:240:0x0533, B:242:0x0562, B:243:0x0567, B:244:0x056b, B:246:0x056f, B:248:0x057c, B:317:0x06b5, B:319:0x06bd, B:321:0x06c5, B:324:0x06ca, B:325:0x06d6, B:327:0x06dc, B:329:0x06e4, B:333:0x06f5, B:335:0x06fb, B:336:0x0715, B:338:0x071b, B:340:0x0720, B:342:0x0725, B:344:0x0729, B:346:0x072f, B:348:0x0733, B:350:0x073b, B:352:0x0741, B:354:0x074b, B:357:0x0751, B:358:0x0754, B:360:0x075d, B:362:0x076f, B:364:0x0777, B:366:0x077f, B:370:0x0788, B:373:0x07b4, B:378:0x07c0, B:380:0x07ca, B:381:0x07d1, B:383:0x07e3, B:384:0x07f8, B:386:0x07fe, B:419:0x084f, B:389:0x0807, B:391:0x080e, B:395:0x0817, B:400:0x0826, B:406:0x0833, B:408:0x0839, B:418:0x084c, B:421:0x085e, B:423:0x0864, B:427:0x0871, B:429:0x0879, B:431:0x087d, B:432:0x0888, B:434:0x088e, B:487:0x096d, B:490:0x0975, B:492:0x097a, B:494:0x0982, B:496:0x0990, B:497:0x0997, B:498:0x099b, B:500:0x09a1, B:502:0x09aa, B:504:0x09b0, B:506:0x09bb, B:513:0x09df, B:515:0x09e5, B:519:0x09ee, B:521:0x09f2, B:526:0x09fb, B:528:0x0a01, B:530:0x0a5d, B:532:0x0a62, B:541:0x0a73, B:543:0x0a77, B:544:0x0a7f, B:545:0x0a86, B:507:0x09c2, B:510:0x09d0, B:511:0x09d7, B:512:0x09d8, B:435:0x0897, B:437:0x089e, B:439:0x08a2, B:466:0x0918, B:468:0x0924, B:444:0x08ae, B:446:0x08b2, B:448:0x08c4, B:450:0x08d2, B:452:0x08de, B:456:0x08e7, B:458:0x08f1, B:464:0x08fc, B:469:0x0928, B:471:0x092e, B:473:0x0932, B:477:0x093b, B:479:0x0949, B:481:0x0951, B:483:0x095b, B:484:0x0960, B:485:0x0965, B:486:0x096a, B:420:0x0857, B:251:0x0589, B:253:0x058f, B:256:0x0595, B:259:0x05a0, B:261:0x05a6, B:264:0x05b4, B:266:0x05ba, B:267:0x05c2, B:268:0x05c5, B:270:0x05cd, B:272:0x05db, B:274:0x060e, B:276:0x0618, B:279:0x0623, B:281:0x062b, B:282:0x062e, B:284:0x0632, B:286:0x0638, B:288:0x0642, B:290:0x064c, B:292:0x065d, B:294:0x0663, B:295:0x066e, B:296:0x0671, B:298:0x067a, B:301:0x067f, B:303:0x0685, B:305:0x068d, B:307:0x0693, B:309:0x0699, B:313:0x06a7, B:315:0x06af, B:316:0x06b2, B:247:0x0579, B:547:0x0a8e, B:551:0x0a95, B:552:0x0a9d, B:556:0x0abb), top: B:617:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:468:0x0924 A[Catch: RuntimeException -> 0x0acd, IOException -> 0x0af7, zzrj -> 0x0aff, zzey -> 0x0b07, zzbu -> 0x0b0f, zzpg -> 0x0b26, zzha -> 0x0b2f, TryCatch #9 {zzbu -> 0x0b0f, zzey -> 0x0b07, zzha -> 0x0b2f, zzpg -> 0x0b26, zzrj -> 0x0aff, IOException -> 0x0af7, RuntimeException -> 0x0acd, blocks: (B:3:0x0006, B:4:0x0011, B:7:0x0016, B:9:0x001c, B:13:0x0023, B:15:0x0027, B:17:0x002b, B:19:0x0031, B:20:0x0037, B:24:0x003e, B:26:0x0047, B:28:0x0055, B:29:0x005c, B:30:0x0066, B:31:0x0079, B:32:0x0090, B:33:0x00ac, B:35:0x00bb, B:36:0x00bf, B:37:0x00d0, B:39:0x00df, B:40:0x00fb, B:41:0x010e, B:42:0x0117, B:44:0x0129, B:45:0x0135, B:46:0x0145, B:47:0x014e, B:51:0x0155, B:53:0x015d, B:55:0x0161, B:57:0x0167, B:59:0x016f, B:61:0x0177, B:62:0x017a, B:64:0x017f, B:71:0x018c, B:72:0x018d, B:76:0x0194, B:78:0x01a2, B:79:0x01a5, B:80:0x01aa, B:82:0x01ba, B:83:0x01bd, B:84:0x01c2, B:86:0x01d9, B:88:0x01dd, B:90:0x01eb, B:94:0x01f5, B:96:0x01fa, B:98:0x0200, B:102:0x0208, B:104:0x0210, B:106:0x0236, B:110:0x023f, B:112:0x0261, B:113:0x0264, B:114:0x026a, B:116:0x026f, B:118:0x027f, B:120:0x0285, B:121:0x0289, B:123:0x028d, B:124:0x0292, B:125:0x0297, B:129:0x02b8, B:131:0x02c3, B:126:0x029b, B:128:0x02a5, B:132:0x02d0, B:134:0x02dc, B:135:0x02e8, B:137:0x02f4, B:139:0x031c, B:140:0x033c, B:141:0x0341, B:142:0x0353, B:149:0x035e, B:150:0x035f, B:151:0x0366, B:152:0x036e, B:153:0x0383, B:155:0x03af, B:220:0x04d1, B:205:0x049d, B:204:0x0499, B:229:0x04e8, B:230:0x04f8, B:156:0x03d2, B:160:0x03e5, B:162:0x03f5, B:164:0x040c, B:166:0x0416, B:231:0x04f9, B:233:0x050e, B:236:0x0518, B:238:0x0527, B:240:0x0533, B:242:0x0562, B:243:0x0567, B:244:0x056b, B:246:0x056f, B:248:0x057c, B:317:0x06b5, B:319:0x06bd, B:321:0x06c5, B:324:0x06ca, B:325:0x06d6, B:327:0x06dc, B:329:0x06e4, B:333:0x06f5, B:335:0x06fb, B:336:0x0715, B:338:0x071b, B:340:0x0720, B:342:0x0725, B:344:0x0729, B:346:0x072f, B:348:0x0733, B:350:0x073b, B:352:0x0741, B:354:0x074b, B:357:0x0751, B:358:0x0754, B:360:0x075d, B:362:0x076f, B:364:0x0777, B:366:0x077f, B:370:0x0788, B:373:0x07b4, B:378:0x07c0, B:380:0x07ca, B:381:0x07d1, B:383:0x07e3, B:384:0x07f8, B:386:0x07fe, B:419:0x084f, B:389:0x0807, B:391:0x080e, B:395:0x0817, B:400:0x0826, B:406:0x0833, B:408:0x0839, B:418:0x084c, B:421:0x085e, B:423:0x0864, B:427:0x0871, B:429:0x0879, B:431:0x087d, B:432:0x0888, B:434:0x088e, B:487:0x096d, B:490:0x0975, B:492:0x097a, B:494:0x0982, B:496:0x0990, B:497:0x0997, B:498:0x099b, B:500:0x09a1, B:502:0x09aa, B:504:0x09b0, B:506:0x09bb, B:513:0x09df, B:515:0x09e5, B:519:0x09ee, B:521:0x09f2, B:526:0x09fb, B:528:0x0a01, B:530:0x0a5d, B:532:0x0a62, B:541:0x0a73, B:543:0x0a77, B:544:0x0a7f, B:545:0x0a86, B:507:0x09c2, B:510:0x09d0, B:511:0x09d7, B:512:0x09d8, B:435:0x0897, B:437:0x089e, B:439:0x08a2, B:466:0x0918, B:468:0x0924, B:444:0x08ae, B:446:0x08b2, B:448:0x08c4, B:450:0x08d2, B:452:0x08de, B:456:0x08e7, B:458:0x08f1, B:464:0x08fc, B:469:0x0928, B:471:0x092e, B:473:0x0932, B:477:0x093b, B:479:0x0949, B:481:0x0951, B:483:0x095b, B:484:0x0960, B:485:0x0965, B:486:0x096a, B:420:0x0857, B:251:0x0589, B:253:0x058f, B:256:0x0595, B:259:0x05a0, B:261:0x05a6, B:264:0x05b4, B:266:0x05ba, B:267:0x05c2, B:268:0x05c5, B:270:0x05cd, B:272:0x05db, B:274:0x060e, B:276:0x0618, B:279:0x0623, B:281:0x062b, B:282:0x062e, B:284:0x0632, B:286:0x0638, B:288:0x0642, B:290:0x064c, B:292:0x065d, B:294:0x0663, B:295:0x066e, B:296:0x0671, B:298:0x067a, B:301:0x067f, B:303:0x0685, B:305:0x068d, B:307:0x0693, B:309:0x0699, B:313:0x06a7, B:315:0x06af, B:316:0x06b2, B:247:0x0579, B:547:0x0a8e, B:551:0x0a95, B:552:0x0a9d, B:556:0x0abb), top: B:617:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:489:0x0974  */
    /* JADX WARN: Removed duplicated region for block: B:515:0x09e5 A[Catch: RuntimeException -> 0x0acd, IOException -> 0x0af7, zzrj -> 0x0aff, zzey -> 0x0b07, zzbu -> 0x0b0f, zzpg -> 0x0b26, zzha -> 0x0b2f, TryCatch #9 {zzbu -> 0x0b0f, zzey -> 0x0b07, zzha -> 0x0b2f, zzpg -> 0x0b26, zzrj -> 0x0aff, IOException -> 0x0af7, RuntimeException -> 0x0acd, blocks: (B:3:0x0006, B:4:0x0011, B:7:0x0016, B:9:0x001c, B:13:0x0023, B:15:0x0027, B:17:0x002b, B:19:0x0031, B:20:0x0037, B:24:0x003e, B:26:0x0047, B:28:0x0055, B:29:0x005c, B:30:0x0066, B:31:0x0079, B:32:0x0090, B:33:0x00ac, B:35:0x00bb, B:36:0x00bf, B:37:0x00d0, B:39:0x00df, B:40:0x00fb, B:41:0x010e, B:42:0x0117, B:44:0x0129, B:45:0x0135, B:46:0x0145, B:47:0x014e, B:51:0x0155, B:53:0x015d, B:55:0x0161, B:57:0x0167, B:59:0x016f, B:61:0x0177, B:62:0x017a, B:64:0x017f, B:71:0x018c, B:72:0x018d, B:76:0x0194, B:78:0x01a2, B:79:0x01a5, B:80:0x01aa, B:82:0x01ba, B:83:0x01bd, B:84:0x01c2, B:86:0x01d9, B:88:0x01dd, B:90:0x01eb, B:94:0x01f5, B:96:0x01fa, B:98:0x0200, B:102:0x0208, B:104:0x0210, B:106:0x0236, B:110:0x023f, B:112:0x0261, B:113:0x0264, B:114:0x026a, B:116:0x026f, B:118:0x027f, B:120:0x0285, B:121:0x0289, B:123:0x028d, B:124:0x0292, B:125:0x0297, B:129:0x02b8, B:131:0x02c3, B:126:0x029b, B:128:0x02a5, B:132:0x02d0, B:134:0x02dc, B:135:0x02e8, B:137:0x02f4, B:139:0x031c, B:140:0x033c, B:141:0x0341, B:142:0x0353, B:149:0x035e, B:150:0x035f, B:151:0x0366, B:152:0x036e, B:153:0x0383, B:155:0x03af, B:220:0x04d1, B:205:0x049d, B:204:0x0499, B:229:0x04e8, B:230:0x04f8, B:156:0x03d2, B:160:0x03e5, B:162:0x03f5, B:164:0x040c, B:166:0x0416, B:231:0x04f9, B:233:0x050e, B:236:0x0518, B:238:0x0527, B:240:0x0533, B:242:0x0562, B:243:0x0567, B:244:0x056b, B:246:0x056f, B:248:0x057c, B:317:0x06b5, B:319:0x06bd, B:321:0x06c5, B:324:0x06ca, B:325:0x06d6, B:327:0x06dc, B:329:0x06e4, B:333:0x06f5, B:335:0x06fb, B:336:0x0715, B:338:0x071b, B:340:0x0720, B:342:0x0725, B:344:0x0729, B:346:0x072f, B:348:0x0733, B:350:0x073b, B:352:0x0741, B:354:0x074b, B:357:0x0751, B:358:0x0754, B:360:0x075d, B:362:0x076f, B:364:0x0777, B:366:0x077f, B:370:0x0788, B:373:0x07b4, B:378:0x07c0, B:380:0x07ca, B:381:0x07d1, B:383:0x07e3, B:384:0x07f8, B:386:0x07fe, B:419:0x084f, B:389:0x0807, B:391:0x080e, B:395:0x0817, B:400:0x0826, B:406:0x0833, B:408:0x0839, B:418:0x084c, B:421:0x085e, B:423:0x0864, B:427:0x0871, B:429:0x0879, B:431:0x087d, B:432:0x0888, B:434:0x088e, B:487:0x096d, B:490:0x0975, B:492:0x097a, B:494:0x0982, B:496:0x0990, B:497:0x0997, B:498:0x099b, B:500:0x09a1, B:502:0x09aa, B:504:0x09b0, B:506:0x09bb, B:513:0x09df, B:515:0x09e5, B:519:0x09ee, B:521:0x09f2, B:526:0x09fb, B:528:0x0a01, B:530:0x0a5d, B:532:0x0a62, B:541:0x0a73, B:543:0x0a77, B:544:0x0a7f, B:545:0x0a86, B:507:0x09c2, B:510:0x09d0, B:511:0x09d7, B:512:0x09d8, B:435:0x0897, B:437:0x089e, B:439:0x08a2, B:466:0x0918, B:468:0x0924, B:444:0x08ae, B:446:0x08b2, B:448:0x08c4, B:450:0x08d2, B:452:0x08de, B:456:0x08e7, B:458:0x08f1, B:464:0x08fc, B:469:0x0928, B:471:0x092e, B:473:0x0932, B:477:0x093b, B:479:0x0949, B:481:0x0951, B:483:0x095b, B:484:0x0960, B:485:0x0965, B:486:0x096a, B:420:0x0857, B:251:0x0589, B:253:0x058f, B:256:0x0595, B:259:0x05a0, B:261:0x05a6, B:264:0x05b4, B:266:0x05ba, B:267:0x05c2, B:268:0x05c5, B:270:0x05cd, B:272:0x05db, B:274:0x060e, B:276:0x0618, B:279:0x0623, B:281:0x062b, B:282:0x062e, B:284:0x0632, B:286:0x0638, B:288:0x0642, B:290:0x064c, B:292:0x065d, B:294:0x0663, B:295:0x066e, B:296:0x0671, B:298:0x067a, B:301:0x067f, B:303:0x0685, B:305:0x068d, B:307:0x0693, B:309:0x0699, B:313:0x06a7, B:315:0x06af, B:316:0x06b2, B:247:0x0579, B:547:0x0a8e, B:551:0x0a95, B:552:0x0a9d, B:556:0x0abb), top: B:617:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:521:0x09f2 A[Catch: RuntimeException -> 0x0acd, IOException -> 0x0af7, zzrj -> 0x0aff, zzey -> 0x0b07, zzbu -> 0x0b0f, zzpg -> 0x0b26, zzha -> 0x0b2f, TryCatch #9 {zzbu -> 0x0b0f, zzey -> 0x0b07, zzha -> 0x0b2f, zzpg -> 0x0b26, zzrj -> 0x0aff, IOException -> 0x0af7, RuntimeException -> 0x0acd, blocks: (B:3:0x0006, B:4:0x0011, B:7:0x0016, B:9:0x001c, B:13:0x0023, B:15:0x0027, B:17:0x002b, B:19:0x0031, B:20:0x0037, B:24:0x003e, B:26:0x0047, B:28:0x0055, B:29:0x005c, B:30:0x0066, B:31:0x0079, B:32:0x0090, B:33:0x00ac, B:35:0x00bb, B:36:0x00bf, B:37:0x00d0, B:39:0x00df, B:40:0x00fb, B:41:0x010e, B:42:0x0117, B:44:0x0129, B:45:0x0135, B:46:0x0145, B:47:0x014e, B:51:0x0155, B:53:0x015d, B:55:0x0161, B:57:0x0167, B:59:0x016f, B:61:0x0177, B:62:0x017a, B:64:0x017f, B:71:0x018c, B:72:0x018d, B:76:0x0194, B:78:0x01a2, B:79:0x01a5, B:80:0x01aa, B:82:0x01ba, B:83:0x01bd, B:84:0x01c2, B:86:0x01d9, B:88:0x01dd, B:90:0x01eb, B:94:0x01f5, B:96:0x01fa, B:98:0x0200, B:102:0x0208, B:104:0x0210, B:106:0x0236, B:110:0x023f, B:112:0x0261, B:113:0x0264, B:114:0x026a, B:116:0x026f, B:118:0x027f, B:120:0x0285, B:121:0x0289, B:123:0x028d, B:124:0x0292, B:125:0x0297, B:129:0x02b8, B:131:0x02c3, B:126:0x029b, B:128:0x02a5, B:132:0x02d0, B:134:0x02dc, B:135:0x02e8, B:137:0x02f4, B:139:0x031c, B:140:0x033c, B:141:0x0341, B:142:0x0353, B:149:0x035e, B:150:0x035f, B:151:0x0366, B:152:0x036e, B:153:0x0383, B:155:0x03af, B:220:0x04d1, B:205:0x049d, B:204:0x0499, B:229:0x04e8, B:230:0x04f8, B:156:0x03d2, B:160:0x03e5, B:162:0x03f5, B:164:0x040c, B:166:0x0416, B:231:0x04f9, B:233:0x050e, B:236:0x0518, B:238:0x0527, B:240:0x0533, B:242:0x0562, B:243:0x0567, B:244:0x056b, B:246:0x056f, B:248:0x057c, B:317:0x06b5, B:319:0x06bd, B:321:0x06c5, B:324:0x06ca, B:325:0x06d6, B:327:0x06dc, B:329:0x06e4, B:333:0x06f5, B:335:0x06fb, B:336:0x0715, B:338:0x071b, B:340:0x0720, B:342:0x0725, B:344:0x0729, B:346:0x072f, B:348:0x0733, B:350:0x073b, B:352:0x0741, B:354:0x074b, B:357:0x0751, B:358:0x0754, B:360:0x075d, B:362:0x076f, B:364:0x0777, B:366:0x077f, B:370:0x0788, B:373:0x07b4, B:378:0x07c0, B:380:0x07ca, B:381:0x07d1, B:383:0x07e3, B:384:0x07f8, B:386:0x07fe, B:419:0x084f, B:389:0x0807, B:391:0x080e, B:395:0x0817, B:400:0x0826, B:406:0x0833, B:408:0x0839, B:418:0x084c, B:421:0x085e, B:423:0x0864, B:427:0x0871, B:429:0x0879, B:431:0x087d, B:432:0x0888, B:434:0x088e, B:487:0x096d, B:490:0x0975, B:492:0x097a, B:494:0x0982, B:496:0x0990, B:497:0x0997, B:498:0x099b, B:500:0x09a1, B:502:0x09aa, B:504:0x09b0, B:506:0x09bb, B:513:0x09df, B:515:0x09e5, B:519:0x09ee, B:521:0x09f2, B:526:0x09fb, B:528:0x0a01, B:530:0x0a5d, B:532:0x0a62, B:541:0x0a73, B:543:0x0a77, B:544:0x0a7f, B:545:0x0a86, B:507:0x09c2, B:510:0x09d0, B:511:0x09d7, B:512:0x09d8, B:435:0x0897, B:437:0x089e, B:439:0x08a2, B:466:0x0918, B:468:0x0924, B:444:0x08ae, B:446:0x08b2, B:448:0x08c4, B:450:0x08d2, B:452:0x08de, B:456:0x08e7, B:458:0x08f1, B:464:0x08fc, B:469:0x0928, B:471:0x092e, B:473:0x0932, B:477:0x093b, B:479:0x0949, B:481:0x0951, B:483:0x095b, B:484:0x0960, B:485:0x0965, B:486:0x096a, B:420:0x0857, B:251:0x0589, B:253:0x058f, B:256:0x0595, B:259:0x05a0, B:261:0x05a6, B:264:0x05b4, B:266:0x05ba, B:267:0x05c2, B:268:0x05c5, B:270:0x05cd, B:272:0x05db, B:274:0x060e, B:276:0x0618, B:279:0x0623, B:281:0x062b, B:282:0x062e, B:284:0x0632, B:286:0x0638, B:288:0x0642, B:290:0x064c, B:292:0x065d, B:294:0x0663, B:295:0x066e, B:296:0x0671, B:298:0x067a, B:301:0x067f, B:303:0x0685, B:305:0x068d, B:307:0x0693, B:309:0x0699, B:313:0x06a7, B:315:0x06af, B:316:0x06b2, B:247:0x0579, B:547:0x0a8e, B:551:0x0a95, B:552:0x0a9d, B:556:0x0abb), top: B:617:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:528:0x0a01 A[Catch: RuntimeException -> 0x0acd, IOException -> 0x0af7, zzrj -> 0x0aff, zzey -> 0x0b07, zzbu -> 0x0b0f, zzpg -> 0x0b26, zzha -> 0x0b2f, TryCatch #9 {zzbu -> 0x0b0f, zzey -> 0x0b07, zzha -> 0x0b2f, zzpg -> 0x0b26, zzrj -> 0x0aff, IOException -> 0x0af7, RuntimeException -> 0x0acd, blocks: (B:3:0x0006, B:4:0x0011, B:7:0x0016, B:9:0x001c, B:13:0x0023, B:15:0x0027, B:17:0x002b, B:19:0x0031, B:20:0x0037, B:24:0x003e, B:26:0x0047, B:28:0x0055, B:29:0x005c, B:30:0x0066, B:31:0x0079, B:32:0x0090, B:33:0x00ac, B:35:0x00bb, B:36:0x00bf, B:37:0x00d0, B:39:0x00df, B:40:0x00fb, B:41:0x010e, B:42:0x0117, B:44:0x0129, B:45:0x0135, B:46:0x0145, B:47:0x014e, B:51:0x0155, B:53:0x015d, B:55:0x0161, B:57:0x0167, B:59:0x016f, B:61:0x0177, B:62:0x017a, B:64:0x017f, B:71:0x018c, B:72:0x018d, B:76:0x0194, B:78:0x01a2, B:79:0x01a5, B:80:0x01aa, B:82:0x01ba, B:83:0x01bd, B:84:0x01c2, B:86:0x01d9, B:88:0x01dd, B:90:0x01eb, B:94:0x01f5, B:96:0x01fa, B:98:0x0200, B:102:0x0208, B:104:0x0210, B:106:0x0236, B:110:0x023f, B:112:0x0261, B:113:0x0264, B:114:0x026a, B:116:0x026f, B:118:0x027f, B:120:0x0285, B:121:0x0289, B:123:0x028d, B:124:0x0292, B:125:0x0297, B:129:0x02b8, B:131:0x02c3, B:126:0x029b, B:128:0x02a5, B:132:0x02d0, B:134:0x02dc, B:135:0x02e8, B:137:0x02f4, B:139:0x031c, B:140:0x033c, B:141:0x0341, B:142:0x0353, B:149:0x035e, B:150:0x035f, B:151:0x0366, B:152:0x036e, B:153:0x0383, B:155:0x03af, B:220:0x04d1, B:205:0x049d, B:204:0x0499, B:229:0x04e8, B:230:0x04f8, B:156:0x03d2, B:160:0x03e5, B:162:0x03f5, B:164:0x040c, B:166:0x0416, B:231:0x04f9, B:233:0x050e, B:236:0x0518, B:238:0x0527, B:240:0x0533, B:242:0x0562, B:243:0x0567, B:244:0x056b, B:246:0x056f, B:248:0x057c, B:317:0x06b5, B:319:0x06bd, B:321:0x06c5, B:324:0x06ca, B:325:0x06d6, B:327:0x06dc, B:329:0x06e4, B:333:0x06f5, B:335:0x06fb, B:336:0x0715, B:338:0x071b, B:340:0x0720, B:342:0x0725, B:344:0x0729, B:346:0x072f, B:348:0x0733, B:350:0x073b, B:352:0x0741, B:354:0x074b, B:357:0x0751, B:358:0x0754, B:360:0x075d, B:362:0x076f, B:364:0x0777, B:366:0x077f, B:370:0x0788, B:373:0x07b4, B:378:0x07c0, B:380:0x07ca, B:381:0x07d1, B:383:0x07e3, B:384:0x07f8, B:386:0x07fe, B:419:0x084f, B:389:0x0807, B:391:0x080e, B:395:0x0817, B:400:0x0826, B:406:0x0833, B:408:0x0839, B:418:0x084c, B:421:0x085e, B:423:0x0864, B:427:0x0871, B:429:0x0879, B:431:0x087d, B:432:0x0888, B:434:0x088e, B:487:0x096d, B:490:0x0975, B:492:0x097a, B:494:0x0982, B:496:0x0990, B:497:0x0997, B:498:0x099b, B:500:0x09a1, B:502:0x09aa, B:504:0x09b0, B:506:0x09bb, B:513:0x09df, B:515:0x09e5, B:519:0x09ee, B:521:0x09f2, B:526:0x09fb, B:528:0x0a01, B:530:0x0a5d, B:532:0x0a62, B:541:0x0a73, B:543:0x0a77, B:544:0x0a7f, B:545:0x0a86, B:507:0x09c2, B:510:0x09d0, B:511:0x09d7, B:512:0x09d8, B:435:0x0897, B:437:0x089e, B:439:0x08a2, B:466:0x0918, B:468:0x0924, B:444:0x08ae, B:446:0x08b2, B:448:0x08c4, B:450:0x08d2, B:452:0x08de, B:456:0x08e7, B:458:0x08f1, B:464:0x08fc, B:469:0x0928, B:471:0x092e, B:473:0x0932, B:477:0x093b, B:479:0x0949, B:481:0x0951, B:483:0x095b, B:484:0x0960, B:485:0x0965, B:486:0x096a, B:420:0x0857, B:251:0x0589, B:253:0x058f, B:256:0x0595, B:259:0x05a0, B:261:0x05a6, B:264:0x05b4, B:266:0x05ba, B:267:0x05c2, B:268:0x05c5, B:270:0x05cd, B:272:0x05db, B:274:0x060e, B:276:0x0618, B:279:0x0623, B:281:0x062b, B:282:0x062e, B:284:0x0632, B:286:0x0638, B:288:0x0642, B:290:0x064c, B:292:0x065d, B:294:0x0663, B:295:0x066e, B:296:0x0671, B:298:0x067a, B:301:0x067f, B:303:0x0685, B:305:0x068d, B:307:0x0693, B:309:0x0699, B:313:0x06a7, B:315:0x06af, B:316:0x06b2, B:247:0x0579, B:547:0x0a8e, B:551:0x0a95, B:552:0x0a9d, B:556:0x0abb), top: B:617:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:529:0x0a57  */
    /* JADX WARN: Removed duplicated region for block: B:532:0x0a62 A[Catch: RuntimeException -> 0x0acd, IOException -> 0x0af7, zzrj -> 0x0aff, zzey -> 0x0b07, zzbu -> 0x0b0f, zzpg -> 0x0b26, zzha -> 0x0b2f, TryCatch #9 {zzbu -> 0x0b0f, zzey -> 0x0b07, zzha -> 0x0b2f, zzpg -> 0x0b26, zzrj -> 0x0aff, IOException -> 0x0af7, RuntimeException -> 0x0acd, blocks: (B:3:0x0006, B:4:0x0011, B:7:0x0016, B:9:0x001c, B:13:0x0023, B:15:0x0027, B:17:0x002b, B:19:0x0031, B:20:0x0037, B:24:0x003e, B:26:0x0047, B:28:0x0055, B:29:0x005c, B:30:0x0066, B:31:0x0079, B:32:0x0090, B:33:0x00ac, B:35:0x00bb, B:36:0x00bf, B:37:0x00d0, B:39:0x00df, B:40:0x00fb, B:41:0x010e, B:42:0x0117, B:44:0x0129, B:45:0x0135, B:46:0x0145, B:47:0x014e, B:51:0x0155, B:53:0x015d, B:55:0x0161, B:57:0x0167, B:59:0x016f, B:61:0x0177, B:62:0x017a, B:64:0x017f, B:71:0x018c, B:72:0x018d, B:76:0x0194, B:78:0x01a2, B:79:0x01a5, B:80:0x01aa, B:82:0x01ba, B:83:0x01bd, B:84:0x01c2, B:86:0x01d9, B:88:0x01dd, B:90:0x01eb, B:94:0x01f5, B:96:0x01fa, B:98:0x0200, B:102:0x0208, B:104:0x0210, B:106:0x0236, B:110:0x023f, B:112:0x0261, B:113:0x0264, B:114:0x026a, B:116:0x026f, B:118:0x027f, B:120:0x0285, B:121:0x0289, B:123:0x028d, B:124:0x0292, B:125:0x0297, B:129:0x02b8, B:131:0x02c3, B:126:0x029b, B:128:0x02a5, B:132:0x02d0, B:134:0x02dc, B:135:0x02e8, B:137:0x02f4, B:139:0x031c, B:140:0x033c, B:141:0x0341, B:142:0x0353, B:149:0x035e, B:150:0x035f, B:151:0x0366, B:152:0x036e, B:153:0x0383, B:155:0x03af, B:220:0x04d1, B:205:0x049d, B:204:0x0499, B:229:0x04e8, B:230:0x04f8, B:156:0x03d2, B:160:0x03e5, B:162:0x03f5, B:164:0x040c, B:166:0x0416, B:231:0x04f9, B:233:0x050e, B:236:0x0518, B:238:0x0527, B:240:0x0533, B:242:0x0562, B:243:0x0567, B:244:0x056b, B:246:0x056f, B:248:0x057c, B:317:0x06b5, B:319:0x06bd, B:321:0x06c5, B:324:0x06ca, B:325:0x06d6, B:327:0x06dc, B:329:0x06e4, B:333:0x06f5, B:335:0x06fb, B:336:0x0715, B:338:0x071b, B:340:0x0720, B:342:0x0725, B:344:0x0729, B:346:0x072f, B:348:0x0733, B:350:0x073b, B:352:0x0741, B:354:0x074b, B:357:0x0751, B:358:0x0754, B:360:0x075d, B:362:0x076f, B:364:0x0777, B:366:0x077f, B:370:0x0788, B:373:0x07b4, B:378:0x07c0, B:380:0x07ca, B:381:0x07d1, B:383:0x07e3, B:384:0x07f8, B:386:0x07fe, B:419:0x084f, B:389:0x0807, B:391:0x080e, B:395:0x0817, B:400:0x0826, B:406:0x0833, B:408:0x0839, B:418:0x084c, B:421:0x085e, B:423:0x0864, B:427:0x0871, B:429:0x0879, B:431:0x087d, B:432:0x0888, B:434:0x088e, B:487:0x096d, B:490:0x0975, B:492:0x097a, B:494:0x0982, B:496:0x0990, B:497:0x0997, B:498:0x099b, B:500:0x09a1, B:502:0x09aa, B:504:0x09b0, B:506:0x09bb, B:513:0x09df, B:515:0x09e5, B:519:0x09ee, B:521:0x09f2, B:526:0x09fb, B:528:0x0a01, B:530:0x0a5d, B:532:0x0a62, B:541:0x0a73, B:543:0x0a77, B:544:0x0a7f, B:545:0x0a86, B:507:0x09c2, B:510:0x09d0, B:511:0x09d7, B:512:0x09d8, B:435:0x0897, B:437:0x089e, B:439:0x08a2, B:466:0x0918, B:468:0x0924, B:444:0x08ae, B:446:0x08b2, B:448:0x08c4, B:450:0x08d2, B:452:0x08de, B:456:0x08e7, B:458:0x08f1, B:464:0x08fc, B:469:0x0928, B:471:0x092e, B:473:0x0932, B:477:0x093b, B:479:0x0949, B:481:0x0951, B:483:0x095b, B:484:0x0960, B:485:0x0965, B:486:0x096a, B:420:0x0857, B:251:0x0589, B:253:0x058f, B:256:0x0595, B:259:0x05a0, B:261:0x05a6, B:264:0x05b4, B:266:0x05ba, B:267:0x05c2, B:268:0x05c5, B:270:0x05cd, B:272:0x05db, B:274:0x060e, B:276:0x0618, B:279:0x0623, B:281:0x062b, B:282:0x062e, B:284:0x0632, B:286:0x0638, B:288:0x0642, B:290:0x064c, B:292:0x065d, B:294:0x0663, B:295:0x066e, B:296:0x0671, B:298:0x067a, B:301:0x067f, B:303:0x0685, B:305:0x068d, B:307:0x0693, B:309:0x0699, B:313:0x06a7, B:315:0x06af, B:316:0x06b2, B:247:0x0579, B:547:0x0a8e, B:551:0x0a95, B:552:0x0a9d, B:556:0x0abb), top: B:617:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:546:0x0a8b  */
    /* JADX WARN: Removed duplicated region for block: B:635:0x0723 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:652:0x084f A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v26, types: [com.google.android.gms.internal.ads.zzfz, com.google.android.gms.internal.ads.zzwh] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handleMessage(android.os.Message r54) {
        /*
            Method dump skipped, instructions count: 3024
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjc.handleMessage(android.os.Message):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzgx
    public final void zza(zzby zzbyVar) {
        this.zzh.zzb(16, zzbyVar).zza();
    }

    public final Looper zzb() {
        return this.zzj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Boolean zzd() {
        return Boolean.valueOf(this.zzw);
    }

    @Override // com.google.android.gms.internal.ads.zztz
    public final /* bridge */ /* synthetic */ void zzg(zzua zzuaVar) {
        this.zzh.zzb(9, (zzsf) zzuaVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzjq
    public final void zzh() {
        this.zzh.zzh(22);
    }

    @Override // com.google.android.gms.internal.ads.zzse
    public final void zzi(zzsf zzsfVar) {
        this.zzh.zzb(8, zzsfVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzvy
    public final void zzj() {
        this.zzh.zzh(10);
    }

    public final void zzk() {
        this.zzh.zza(0).zza();
    }

    public final void zzl(zzcn zzcnVar, int i, long j) {
        this.zzh.zzb(3, new zzjb(zzcnVar, i, j)).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzjt
    public final synchronized void zzm(zzjv zzjvVar) {
        if (!this.zzw && this.zzi.isAlive()) {
            this.zzh.zzb(14, zzjvVar).zza();
            return;
        }
        zzdw.zze("ExoPlayerImplInternal", "Ignoring messages sent after release.");
        zzjvVar.zzh(false);
    }

    public final void zzn(boolean z, int i) {
        this.zzh.zzc(1, z ? 1 : 0, i).zza();
    }

    public final void zzo() {
        this.zzh.zza(6).zza();
    }

    public final synchronized boolean zzp() {
        if (!this.zzw && this.zzi.isAlive()) {
            this.zzh.zzh(7);
            zzaa(new zzit(this), this.zzs);
            return this.zzw;
        }
        return true;
    }

    public final void zzq(List list, int i, long j, zzub zzubVar) {
        this.zzh.zzb(17, new zzix(list, zzubVar, i, j, null, null)).zza();
    }
}

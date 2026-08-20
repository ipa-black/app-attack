package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.util.SparseArray;
import com.google.android.exoplayer2.C;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzayf implements zzayj, zzavh, zzbad, zzayt {
    private long zzB;
    private int zzD;
    private boolean zzE;
    private boolean zzF;
    private final zzazw zzG;
    private final Uri zza;
    private final zzazt zzb;
    private final int zzc;
    private final Handler zzd;
    private final zzayg zze;
    private final zzayk zzf;
    private final long zzg;
    private final zzayd zzi;
    private zzayi zzo;
    private zzavn zzp;
    private boolean zzq;
    private boolean zzr;
    private boolean zzs;
    private boolean zzt;
    private int zzu;
    private zzaza zzv;
    private long zzw;
    private boolean[] zzx;
    private boolean[] zzy;
    private boolean zzz;
    private final zzbah zzh = new zzbah("Loader:ExtractorMediaPeriod");
    private final zzbal zzj = new zzbal();
    private final Runnable zzk = new zzaxy(this);
    private final Runnable zzl = new zzaxz(this);
    private final Handler zzm = new Handler();
    private long zzC = C.TIME_UNSET;
    private final SparseArray zzn = new SparseArray();
    private long zzA = -1;

    public zzayf(Uri uri, zzazt zzaztVar, zzavg[] zzavgVarArr, int i, Handler handler, zzayg zzaygVar, zzayk zzaykVar, zzazw zzazwVar, String str, int i2, byte[] bArr) {
        this.zza = uri;
        this.zzb = zzaztVar;
        this.zzc = i;
        this.zzd = handler;
        this.zze = zzaygVar;
        this.zzf = zzaykVar;
        this.zzG = zzazwVar;
        this.zzg = i2;
        this.zzi = new zzayd(zzavgVarArr, this);
    }

    private final int zzC() {
        int size = this.zzn.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += ((zzayu) this.zzn.valueAt(i2)).zze();
        }
        return i;
    }

    private final long zzD() {
        int size = this.zzn.size();
        long j = Long.MIN_VALUE;
        for (int i = 0; i < size; i++) {
            j = Math.max(j, ((zzayu) this.zzn.valueAt(i)).zzg());
        }
        return j;
    }

    private final void zzE(zzayc zzaycVar) {
        long j;
        if (this.zzA == -1) {
            j = zzaycVar.zzj;
            this.zzA = j;
        }
    }

    private final void zzF() {
        zzavn zzavnVar;
        zzayc zzaycVar = new zzayc(this, this.zza, this.zzb, this.zzi, this.zzj);
        if (this.zzr) {
            zzbaj.zze(zzG());
            long j = this.zzw;
            if (j == C.TIME_UNSET || this.zzC < j) {
                zzaycVar.zzd(this.zzp.zzb(this.zzC), this.zzC);
                this.zzC = C.TIME_UNSET;
            } else {
                this.zzE = true;
                this.zzC = C.TIME_UNSET;
                return;
            }
        }
        this.zzD = zzC();
        int i = this.zzc;
        if (i == -1) {
            i = (this.zzr && this.zzA == -1 && ((zzavnVar = this.zzp) == null || zzavnVar.zza() == C.TIME_UNSET)) ? 6 : 3;
        }
        this.zzh.zza(zzaycVar, this, i);
    }

    private final boolean zzG() {
        return this.zzC != C.TIME_UNSET;
    }

    public static /* bridge */ /* synthetic */ void zzp(zzayf zzayfVar) {
        if (zzayfVar.zzF || zzayfVar.zzr || zzayfVar.zzp == null || !zzayfVar.zzq) {
            return;
        }
        int size = zzayfVar.zzn.size();
        for (int i = 0; i < size; i++) {
            if (((zzayu) zzayfVar.zzn.valueAt(i)).zzh() == null) {
                return;
            }
        }
        zzayfVar.zzj.zzb();
        zzayz[] zzayzVarArr = new zzayz[size];
        zzayfVar.zzy = new boolean[size];
        zzayfVar.zzx = new boolean[size];
        zzayfVar.zzw = zzayfVar.zzp.zza();
        int i2 = 0;
        while (true) {
            boolean z = true;
            if (i2 < size) {
                zzatd zzh = ((zzayu) zzayfVar.zzn.valueAt(i2)).zzh();
                zzayzVarArr[i2] = new zzayz(zzh);
                String str = zzh.zzf;
                if (!zzbao.zzb(str) && !zzbao.zza(str)) {
                    z = false;
                }
                zzayfVar.zzy[i2] = z;
                zzayfVar.zzz = z | zzayfVar.zzz;
                i2++;
            } else {
                zzayfVar.zzv = new zzaza(zzayzVarArr);
                zzayfVar.zzr = true;
                zzayfVar.zzf.zzg(new zzayy(zzayfVar.zzw, zzayfVar.zzp.zzc()), null);
                zzayfVar.zzo.zzf(zzayfVar);
                return;
            }
        }
    }

    public final boolean zzA(int i) {
        if (this.zzE) {
            return true;
        }
        return !zzG() && ((zzayu) this.zzn.valueAt(i)).zzm();
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x00ba, code lost:
        if (r1 != false) goto L55;
     */
    @Override // com.google.android.gms.internal.ads.zzayj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzB(com.google.android.gms.internal.ads.zzaze[] r5, boolean[] r6, com.google.android.gms.internal.ads.zzayv[] r7, boolean[] r8, long r9) {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzayf.zzB(com.google.android.gms.internal.ads.zzaze[], boolean[], com.google.android.gms.internal.ads.zzayv[], boolean[], long):long");
    }

    @Override // com.google.android.gms.internal.ads.zzayj, com.google.android.gms.internal.ads.zzayx
    public final long zza() {
        if (this.zzu == 0) {
            return Long.MIN_VALUE;
        }
        return zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzavh
    public final void zzb() {
        this.zzq = true;
        this.zzm.post(this.zzk);
    }

    @Override // com.google.android.gms.internal.ads.zzavh
    public final zzavp zzbi(int i, int i2) {
        zzayu zzayuVar = (zzayu) this.zzn.get(i);
        if (zzayuVar == null) {
            zzayu zzayuVar2 = new zzayu(this.zzG, null);
            zzayuVar2.zzk(this);
            this.zzn.put(i, zzayuVar2);
            return zzayuVar2;
        }
        return zzayuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzayj, com.google.android.gms.internal.ads.zzayx
    public final boolean zzbj(long j) {
        if (this.zzE) {
            return false;
        }
        if (this.zzr && this.zzu == 0) {
            return false;
        }
        boolean zzc = this.zzj.zzc();
        if (this.zzh.zzi()) {
            return zzc;
        }
        zzF();
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzavh
    public final void zzc(zzavn zzavnVar) {
        this.zzp = zzavnVar;
        this.zzm.post(this.zzk);
    }

    @Override // com.google.android.gms.internal.ads.zzbad
    public final /* bridge */ /* synthetic */ int zzd(zzbaf zzbafVar, long j, long j2, IOException iOException) {
        zzavn zzavnVar;
        zzayc zzaycVar = (zzayc) zzbafVar;
        zzE(zzaycVar);
        Handler handler = this.zzd;
        if (handler != null) {
            handler.post(new zzayb(this, iOException));
        }
        if (iOException instanceof zzazb) {
            return 3;
        }
        int zzC = zzC();
        int i = this.zzD;
        if (this.zzA == -1 && ((zzavnVar = this.zzp) == null || zzavnVar.zza() == C.TIME_UNSET)) {
            this.zzB = 0L;
            this.zzt = this.zzr;
            int size = this.zzn.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((zzayu) this.zzn.valueAt(i2)).zzj(!this.zzr || this.zzx[i2]);
            }
            zzaycVar.zzd(0L, 0L);
        }
        this.zzD = zzC();
        return zzC <= i ? 0 : 1;
    }

    public final int zze(int i, zzate zzateVar, zzauy zzauyVar, boolean z) {
        if (this.zzt || zzG()) {
            return -3;
        }
        return ((zzayu) this.zzn.valueAt(i)).zzf(zzateVar, zzauyVar, z, this.zzE, this.zzB);
    }

    @Override // com.google.android.gms.internal.ads.zzayj
    public final long zzg() {
        long zzD;
        if (this.zzE) {
            return Long.MIN_VALUE;
        }
        if (zzG()) {
            return this.zzC;
        }
        if (this.zzz) {
            int size = this.zzn.size();
            zzD = Long.MAX_VALUE;
            for (int i = 0; i < size; i++) {
                if (this.zzy[i]) {
                    zzD = Math.min(zzD, ((zzayu) this.zzn.valueAt(i)).zzg());
                }
            }
        } else {
            zzD = zzD();
        }
        return zzD == Long.MIN_VALUE ? this.zzB : zzD;
    }

    @Override // com.google.android.gms.internal.ads.zzayj
    public final long zzh() {
        if (this.zzt) {
            this.zzt = false;
            return this.zzB;
        }
        return C.TIME_UNSET;
    }

    @Override // com.google.android.gms.internal.ads.zzayj
    public final long zzi(long j) {
        if (true != this.zzp.zzc()) {
            j = 0;
        }
        this.zzB = j;
        int size = this.zzn.size();
        boolean zzG = true ^ zzG();
        int i = 0;
        while (true) {
            if (!zzG) {
                this.zzC = j;
                this.zzE = false;
                zzbah zzbahVar = this.zzh;
                if (zzbahVar.zzi()) {
                    zzbahVar.zzf();
                } else {
                    for (int i2 = 0; i2 < size; i2++) {
                        ((zzayu) this.zzn.valueAt(i2)).zzj(this.zzx[i2]);
                    }
                }
            } else if (i >= size) {
                break;
            } else {
                if (this.zzx[i]) {
                    zzG = ((zzayu) this.zzn.valueAt(i)).zzn(j, false);
                }
                i++;
            }
        }
        this.zzt = false;
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzayj
    public final zzaza zzn() {
        return this.zzv;
    }

    @Override // com.google.android.gms.internal.ads.zzayj
    public final void zzq(long j) {
    }

    public final void zzr() throws IOException {
        this.zzh.zzg(Integer.MIN_VALUE);
    }

    @Override // com.google.android.gms.internal.ads.zzayj
    public final void zzs() throws IOException {
        this.zzh.zzg(Integer.MIN_VALUE);
    }

    @Override // com.google.android.gms.internal.ads.zzbad
    public final /* bridge */ /* synthetic */ void zzt(zzbaf zzbafVar, long j, long j2, boolean z) {
        zzE((zzayc) zzbafVar);
        if (z || this.zzu <= 0) {
            return;
        }
        int size = this.zzn.size();
        for (int i = 0; i < size; i++) {
            ((zzayu) this.zzn.valueAt(i)).zzj(this.zzx[i]);
        }
        this.zzo.zze(this);
    }

    @Override // com.google.android.gms.internal.ads.zzbad
    public final /* bridge */ /* synthetic */ void zzu(zzbaf zzbafVar, long j, long j2) {
        zzE((zzayc) zzbafVar);
        this.zzE = true;
        if (this.zzw == C.TIME_UNSET) {
            long zzD = zzD();
            long j3 = zzD == Long.MIN_VALUE ? 0L : zzD + 10000;
            this.zzw = j3;
            this.zzf.zzg(new zzayy(j3, this.zzp.zzc()), null);
        }
        this.zzo.zze(this);
    }

    @Override // com.google.android.gms.internal.ads.zzayt
    public final void zzv(zzatd zzatdVar) {
        this.zzm.post(this.zzk);
    }

    @Override // com.google.android.gms.internal.ads.zzayj
    public final void zzw(zzayi zzayiVar, long j) {
        this.zzo = zzayiVar;
        this.zzj.zzc();
        zzF();
    }

    public final void zzx() {
        this.zzh.zzh(new zzaya(this, this.zzi));
        this.zzm.removeCallbacksAndMessages(null);
        this.zzF = true;
    }

    public final void zzy(int i, long j) {
        zzayu zzayuVar = (zzayu) this.zzn.valueAt(i);
        if (!this.zzE || j <= zzayuVar.zzg()) {
            zzayuVar.zzn(j, true);
        } else {
            zzayuVar.zzl();
        }
    }
}

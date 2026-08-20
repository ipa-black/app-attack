package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zztk implements zzsf, zzzm, zzwo, zzwt, zztw {
    private static final Map zzb;
    private static final zzaf zzc;
    private boolean zzA;
    private boolean zzC;
    private boolean zzD;
    private int zzE;
    private boolean zzF;
    private long zzG;
    private boolean zzI;
    private int zzJ;
    private boolean zzK;
    private boolean zzL;
    private final zzwm zzM;
    private final zzwi zzN;
    private final Uri zzd;
    private final zzex zze;
    private final zzpo zzf;
    private final zzsq zzg;
    private final zzpi zzh;
    private final zztg zzi;
    private final long zzj;
    private final zzta zzl;
    private zzse zzq;
    private zzacn zzr;
    private boolean zzu;
    private boolean zzv;
    private boolean zzw;
    private zztj zzx;
    private zzaam zzy;
    private final zzww zzk = new zzww("ProgressiveMediaPeriod");
    private final zzdg zzm = new zzdg(zzde.zza);
    private final Runnable zzn = new Runnable() { // from class: com.google.android.gms.internal.ads.zztb
        @Override // java.lang.Runnable
        public final void run() {
            zztk.this.zzT();
        }
    };
    private final Runnable zzo = new Runnable() { // from class: com.google.android.gms.internal.ads.zztc
        @Override // java.lang.Runnable
        public final void run() {
            zztk.this.zzD();
        }
    };
    private final Handler zzp = zzen.zzD(null);
    private zzti[] zzt = new zzti[0];
    private zztx[] zzs = new zztx[0];
    private long zzH = C.TIME_UNSET;
    private long zzz = C.TIME_UNSET;
    private int zzB = 1;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_NAME, IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
        zzb = Collections.unmodifiableMap(hashMap);
        zzad zzadVar = new zzad();
        zzadVar.zzH("icy");
        zzadVar.zzS(MimeTypes.APPLICATION_ICY);
        zzc = zzadVar.zzY();
    }

    public zztk(Uri uri, zzex zzexVar, zzta zztaVar, zzpo zzpoVar, zzpi zzpiVar, zzwm zzwmVar, zzsq zzsqVar, zztg zztgVar, zzwi zzwiVar, String str, int i, byte[] bArr) {
        this.zzd = uri;
        this.zze = zzexVar;
        this.zzf = zzpoVar;
        this.zzh = zzpiVar;
        this.zzM = zzwmVar;
        this.zzg = zzsqVar;
        this.zzi = zztgVar;
        this.zzN = zzwiVar;
        this.zzj = i;
        this.zzl = zztaVar;
    }

    private final int zzP() {
        int i = 0;
        for (zztx zztxVar : this.zzs) {
            i += zztxVar.zzc();
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long zzQ(boolean z) {
        int i;
        long j = Long.MIN_VALUE;
        while (true) {
            zztx[] zztxVarArr = this.zzs;
            if (i >= zztxVarArr.length) {
                return j;
            }
            if (!z) {
                zztj zztjVar = this.zzx;
                zztjVar.getClass();
                i = zztjVar.zzc[i] ? 0 : i + 1;
            }
            j = Math.max(j, zztxVarArr[i].zzg());
        }
    }

    private final zzaaq zzR(zzti zztiVar) {
        int length = this.zzs.length;
        for (int i = 0; i < length; i++) {
            if (zztiVar.equals(this.zzt[i])) {
                return this.zzs[i];
            }
        }
        zzwi zzwiVar = this.zzN;
        zzpo zzpoVar = this.zzf;
        zzpi zzpiVar = this.zzh;
        zzpoVar.getClass();
        zztx zztxVar = new zztx(zzwiVar, zzpoVar, zzpiVar, null);
        zztxVar.zzu(this);
        int i2 = length + 1;
        zzti[] zztiVarArr = (zzti[]) Arrays.copyOf(this.zzt, i2);
        zztiVarArr[length] = zztiVar;
        this.zzt = (zzti[]) zzen.zzac(zztiVarArr);
        zztx[] zztxVarArr = (zztx[]) Arrays.copyOf(this.zzs, i2);
        zztxVarArr[length] = zztxVar;
        this.zzs = (zztx[]) zzen.zzac(zztxVarArr);
        return zztxVar;
    }

    @EnsuresNonNull({"trackState", "seekMap"})
    private final void zzS() {
        zzdd.zzf(this.zzv);
        this.zzx.getClass();
        this.zzy.getClass();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzT() {
        zzbq zzc2;
        int i;
        if (this.zzL || this.zzv || !this.zzu || this.zzy == null) {
            return;
        }
        for (zztx zztxVar : this.zzs) {
            if (zztxVar.zzh() == null) {
                return;
            }
        }
        this.zzm.zzc();
        int length = this.zzs.length;
        zzcp[] zzcpVarArr = new zzcp[length];
        boolean[] zArr = new boolean[length];
        for (int i2 = 0; i2 < length; i2++) {
            zzaf zzh = this.zzs[i2].zzh();
            zzh.getClass();
            String str = zzh.zzm;
            boolean zzg = zzbt.zzg(str);
            boolean z = zzg || zzbt.zzh(str);
            zArr[i2] = z;
            this.zzw = z | this.zzw;
            zzacn zzacnVar = this.zzr;
            if (zzacnVar != null) {
                if (zzg || this.zzt[i2].zzb) {
                    zzbq zzbqVar = zzh.zzk;
                    if (zzbqVar == null) {
                        zzc2 = new zzbq(C.TIME_UNSET, zzacnVar);
                    } else {
                        zzc2 = zzbqVar.zzc(zzacnVar);
                    }
                    zzad zzb2 = zzh.zzb();
                    zzb2.zzM(zzc2);
                    zzh = zzb2.zzY();
                }
                if (zzg && zzh.zzg == -1 && zzh.zzh == -1 && (i = zzacnVar.zza) != -1) {
                    zzad zzb3 = zzh.zzb();
                    zzb3.zzv(i);
                    zzh = zzb3.zzY();
                }
            }
            zzcpVarArr[i2] = new zzcp(Integer.toString(i2), zzh.zzc(this.zzf.zza(zzh)));
        }
        this.zzx = new zztj(new zzug(zzcpVarArr), zArr);
        this.zzv = true;
        zzse zzseVar = this.zzq;
        zzseVar.getClass();
        zzseVar.zzi(this);
    }

    private final void zzU(int i) {
        zzS();
        zztj zztjVar = this.zzx;
        boolean[] zArr = zztjVar.zzd;
        if (zArr[i]) {
            return;
        }
        zzaf zzb2 = zztjVar.zza.zzb(i).zzb(0);
        this.zzg.zzd(zzbt.zzb(zzb2.zzm), zzb2, 0, null, this.zzG);
        zArr[i] = true;
    }

    private final void zzV(int i) {
        zzS();
        boolean[] zArr = this.zzx.zzb;
        if (this.zzI && zArr[i] && !this.zzs[i].zzx(false)) {
            this.zzH = 0L;
            this.zzI = false;
            this.zzD = true;
            this.zzG = 0L;
            this.zzJ = 0;
            for (zztx zztxVar : this.zzs) {
                zztxVar.zzp(false);
            }
            zzse zzseVar = this.zzq;
            zzseVar.getClass();
            zzseVar.zzg(this);
        }
    }

    private final void zzW() {
        zztf zztfVar = new zztf(this, this.zzd, this.zze, this.zzl, this, this.zzm);
        if (this.zzv) {
            zzdd.zzf(zzX());
            long j = this.zzz;
            if (j == C.TIME_UNSET || this.zzH <= j) {
                zzaam zzaamVar = this.zzy;
                zzaamVar.getClass();
                zztf.zzf(zztfVar, zzaamVar.zzg(this.zzH).zza.zzc, this.zzH);
                for (zztx zztxVar : this.zzs) {
                    zztxVar.zzt(this.zzH);
                }
                this.zzH = C.TIME_UNSET;
            } else {
                this.zzK = true;
                this.zzH = C.TIME_UNSET;
                return;
            }
        }
        this.zzJ = zzP();
        long zza = this.zzk.zza(zztfVar, this, zzwm.zza(this.zzB));
        zzfc zzd = zztf.zzd(zztfVar);
        this.zzg.zzl(new zzry(zztf.zzb(zztfVar), zzd, zzd.zza, Collections.emptyMap(), zza, 0L, 0L), 1, -1, null, 0, null, zztf.zzc(zztfVar), this.zzz);
    }

    private final boolean zzX() {
        return this.zzH != C.TIME_UNSET;
    }

    private final boolean zzY() {
        return this.zzD || zzX();
    }

    @Override // com.google.android.gms.internal.ads.zzzm
    public final void zzC() {
        this.zzu = true;
        this.zzp.post(this.zzn);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzE() {
        this.zzF = true;
    }

    final void zzG() throws IOException {
        this.zzk.zzi(zzwm.zza(this.zzB));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzH(int i) throws IOException {
        this.zzs[i].zzm();
        zzG();
    }

    @Override // com.google.android.gms.internal.ads.zzwo
    public final /* bridge */ /* synthetic */ void zzI(zzws zzwsVar, long j, long j2, boolean z) {
        zztf zztfVar = (zztf) zzwsVar;
        zzfy zze = zztf.zze(zztfVar);
        zzry zzryVar = new zzry(zztf.zzb(zztfVar), zztf.zzd(zztfVar), zze.zzh(), zze.zzi(), j, j2, zze.zzg());
        zztf.zzb(zztfVar);
        this.zzg.zzf(zzryVar, 1, -1, null, 0, null, zztf.zzc(zztfVar), this.zzz);
        if (z) {
            return;
        }
        for (zztx zztxVar : this.zzs) {
            zztxVar.zzp(false);
        }
        if (this.zzE > 0) {
            zzse zzseVar = this.zzq;
            zzseVar.getClass();
            zzseVar.zzg(this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwo
    public final /* bridge */ /* synthetic */ void zzJ(zzws zzwsVar, long j, long j2) {
        zzaam zzaamVar;
        if (this.zzz == C.TIME_UNSET && (zzaamVar = this.zzy) != null) {
            boolean zzh = zzaamVar.zzh();
            long zzQ = zzQ(true);
            long j3 = zzQ == Long.MIN_VALUE ? 0L : zzQ + 10000;
            this.zzz = j3;
            this.zzi.zza(j3, zzh, this.zzA);
        }
        zztf zztfVar = (zztf) zzwsVar;
        zzfy zze = zztf.zze(zztfVar);
        zzry zzryVar = new zzry(zztf.zzb(zztfVar), zztf.zzd(zztfVar), zze.zzh(), zze.zzi(), j, j2, zze.zzg());
        zztf.zzb(zztfVar);
        this.zzg.zzh(zzryVar, 1, -1, null, 0, null, zztf.zzc(zztfVar), this.zzz);
        this.zzK = true;
        zzse zzseVar = this.zzq;
        zzseVar.getClass();
        zzseVar.zzg(this);
    }

    @Override // com.google.android.gms.internal.ads.zzwt
    public final void zzK() {
        for (zztx zztxVar : this.zzs) {
            zztxVar.zzo();
        }
        this.zzl.zze();
    }

    @Override // com.google.android.gms.internal.ads.zztw
    public final void zzL(zzaf zzafVar) {
        this.zzp.post(this.zzn);
    }

    public final void zzM() {
        if (this.zzv) {
            for (zztx zztxVar : this.zzs) {
                zztxVar.zzn();
            }
        }
        this.zzk.zzj(this);
        this.zzp.removeCallbacksAndMessages(null);
        this.zzq = null;
        this.zzL = true;
    }

    @Override // com.google.android.gms.internal.ads.zzzm
    public final void zzN(final zzaam zzaamVar) {
        this.zzp.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzte
            @Override // java.lang.Runnable
            public final void run() {
                zztk.this.zzF(zzaamVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzO(int i) {
        return !zzY() && this.zzs[i].zzx(this.zzK);
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final long zza(long j, zzkb zzkbVar) {
        long j2;
        zzS();
        if (this.zzy.zzh()) {
            zzaak zzg = this.zzy.zzg(j);
            long j3 = zzg.zza.zzb;
            long j4 = zzg.zzb.zzb;
            long j5 = zzkbVar.zzf;
            if (j5 != 0) {
                j2 = j5;
            } else if (zzkbVar.zzg == 0) {
                return j;
            } else {
                j2 = 0;
            }
            long zzx = zzen.zzx(j, j2, Long.MIN_VALUE);
            long zzq = zzen.zzq(j, zzkbVar.zzg, Long.MAX_VALUE);
            boolean z = true;
            boolean z2 = zzx <= j3 && j3 <= zzq;
            if (zzx > j4 || j4 > zzq) {
                z = false;
            }
            if (z2 && z) {
                if (Math.abs(j3 - j) > Math.abs(j4 - j)) {
                    return j4;
                }
            } else if (!z2) {
                return z ? j4 : zzx;
            }
            return j3;
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzsf, com.google.android.gms.internal.ads.zzua
    public final long zzb() {
        long j;
        zzS();
        if (this.zzK || this.zzE == 0) {
            return Long.MIN_VALUE;
        }
        if (zzX()) {
            return this.zzH;
        }
        if (this.zzw) {
            int length = this.zzs.length;
            j = Long.MAX_VALUE;
            for (int i = 0; i < length; i++) {
                zztj zztjVar = this.zzx;
                if (zztjVar.zzb[i] && zztjVar.zzc[i] && !this.zzs[i].zzw()) {
                    j = Math.min(j, this.zzs[i].zzg());
                }
            }
        } else {
            j = Long.MAX_VALUE;
        }
        if (j == Long.MAX_VALUE) {
            j = zzQ(false);
        }
        return j == Long.MIN_VALUE ? this.zzG : j;
    }

    @Override // com.google.android.gms.internal.ads.zzsf, com.google.android.gms.internal.ads.zzua
    public final long zzc() {
        return zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final long zzd() {
        if (this.zzD) {
            if (this.zzK || zzP() > this.zzJ) {
                this.zzD = false;
                return this.zzG;
            }
            return C.TIME_UNSET;
        }
        return C.TIME_UNSET;
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final long zze(long j) {
        int i;
        zzS();
        boolean[] zArr = this.zzx.zzb;
        if (true != this.zzy.zzh()) {
            j = 0;
        }
        this.zzD = false;
        this.zzG = j;
        if (zzX()) {
            this.zzH = j;
            return j;
        }
        if (this.zzB != 7) {
            int length = this.zzs.length;
            for (i = 0; i < length; i = i + 1) {
                i = (this.zzs[i].zzy(j, false) || (!zArr[i] && this.zzw)) ? i + 1 : 0;
            }
            return j;
        }
        this.zzI = false;
        this.zzH = j;
        this.zzK = false;
        zzww zzwwVar = this.zzk;
        if (zzwwVar.zzl()) {
            for (zztx zztxVar : this.zzs) {
                zztxVar.zzj();
            }
            this.zzk.zzg();
        } else {
            zzwwVar.zzh();
            for (zztx zztxVar2 : this.zzs) {
                zztxVar2.zzp(false);
            }
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final long zzf(zzvt[] zzvtVarArr, boolean[] zArr, zzty[] zztyVarArr, boolean[] zArr2, long j) {
        boolean z;
        zzvt zzvtVar;
        int i;
        zzS();
        zztj zztjVar = this.zzx;
        zzug zzugVar = zztjVar.zza;
        boolean[] zArr3 = zztjVar.zzc;
        int i2 = this.zzE;
        int i3 = 0;
        for (int i4 = 0; i4 < zzvtVarArr.length; i4++) {
            zzty zztyVar = zztyVarArr[i4];
            if (zztyVar != null && (zzvtVarArr[i4] == null || !zArr[i4])) {
                i = ((zzth) zztyVar).zzb;
                zzdd.zzf(zArr3[i]);
                this.zzE--;
                zArr3[i] = false;
                zztyVarArr[i4] = null;
            }
        }
        if (this.zzC) {
            if (i2 != 0) {
                z = false;
            }
            z = true;
        } else {
            if (j == 0) {
                z = false;
                j = 0;
            }
            z = true;
        }
        for (int i5 = 0; i5 < zzvtVarArr.length; i5++) {
            if (zztyVarArr[i5] == null && (zzvtVar = zzvtVarArr[i5]) != null) {
                zzdd.zzf(zzvtVar.zzc() == 1);
                zzdd.zzf(zzvtVar.zza(0) == 0);
                int zza = zzugVar.zza(zzvtVar.zze());
                zzdd.zzf(!zArr3[zza]);
                this.zzE++;
                zArr3[zza] = true;
                zztyVarArr[i5] = new zzth(this, zza);
                zArr2[i5] = true;
                if (!z) {
                    zztx zztxVar = this.zzs[zza];
                    z = (zztxVar.zzy(j, true) || zztxVar.zza() == 0) ? false : true;
                }
            }
        }
        if (this.zzE == 0) {
            this.zzI = false;
            this.zzD = false;
            if (this.zzk.zzl()) {
                zztx[] zztxVarArr = this.zzs;
                int length = zztxVarArr.length;
                while (i3 < length) {
                    zztxVarArr[i3].zzj();
                    i3++;
                }
                this.zzk.zzg();
            } else {
                for (zztx zztxVar2 : this.zzs) {
                    zztxVar2.zzp(false);
                }
            }
        } else if (z) {
            j = zze(j);
            while (i3 < zztyVarArr.length) {
                if (zztyVarArr[i3] != null) {
                    zArr2[i3] = true;
                }
                i3++;
            }
        }
        this.zzC = true;
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zzg(int i, zzje zzjeVar, zzgi zzgiVar, int i2) {
        if (zzY()) {
            return -3;
        }
        zzU(i);
        int zzd = this.zzs[i].zzd(zzjeVar, zzgiVar, i2, this.zzK);
        if (zzd == -3) {
            zzV(i);
        }
        return zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final zzug zzh() {
        zzS();
        return this.zzx.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zzi(int i, long j) {
        if (zzY()) {
            return 0;
        }
        zzU(i);
        zztx zztxVar = this.zzs[i];
        int zzb2 = zztxVar.zzb(j, this.zzK);
        zztxVar.zzv(zzb2);
        if (zzb2 == 0) {
            zzV(i);
            return 0;
        }
        return zzb2;
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final void zzj(long j, boolean z) {
        zzS();
        if (zzX()) {
            return;
        }
        boolean[] zArr = this.zzx.zzc;
        int length = this.zzs.length;
        for (int i = 0; i < length; i++) {
            this.zzs[i].zzi(j, false, zArr[i]);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final void zzk() throws IOException {
        zzG();
        if (this.zzK && !this.zzv) {
            throw zzbu.zza("Loading finished before preparation is complete.", null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final void zzl(zzse zzseVar, long j) {
        this.zzq = zzseVar;
        this.zzm.zze();
        zzW();
    }

    @Override // com.google.android.gms.internal.ads.zzsf, com.google.android.gms.internal.ads.zzua
    public final void zzm(long j) {
    }

    @Override // com.google.android.gms.internal.ads.zzsf, com.google.android.gms.internal.ads.zzua
    public final boolean zzo(long j) {
        if (this.zzK || this.zzk.zzk() || this.zzI) {
            return false;
        }
        if (this.zzv && this.zzE == 0) {
            return false;
        }
        boolean zze = this.zzm.zze();
        if (this.zzk.zzl()) {
            return zze;
        }
        zzW();
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzsf, com.google.android.gms.internal.ads.zzua
    public final boolean zzp() {
        return this.zzk.zzl() && this.zzm.zzd();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00fc  */
    @Override // com.google.android.gms.internal.ads.zzwo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* bridge */ /* synthetic */ com.google.android.gms.internal.ads.zzwq zzt(com.google.android.gms.internal.ads.zzws r27, long r28, long r30, java.io.IOException r32, int r33) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zztk.zzt(com.google.android.gms.internal.ads.zzws, long, long, java.io.IOException, int):com.google.android.gms.internal.ads.zzwq");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzaaq zzu() {
        return zzR(new zzti(0, true));
    }

    @Override // com.google.android.gms.internal.ads.zzzm
    public final zzaaq zzv(int i, int i2) {
        return zzR(new zzti(i, false));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzD() {
        if (this.zzL) {
            return;
        }
        zzse zzseVar = this.zzq;
        zzseVar.getClass();
        zzseVar.zzg(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzF(zzaam zzaamVar) {
        this.zzy = this.zzr == null ? zzaamVar : new zzaal(C.TIME_UNSET, 0L);
        this.zzz = zzaamVar.zze();
        boolean z = false;
        if (!this.zzF && zzaamVar.zze() == C.TIME_UNSET) {
            z = true;
        }
        this.zzA = z;
        this.zzB = true == z ? 7 : 1;
        this.zzi.zza(this.zzz, zzaamVar.zzh(), this.zzA);
        if (this.zzv) {
            return;
        }
        zzT();
    }
}

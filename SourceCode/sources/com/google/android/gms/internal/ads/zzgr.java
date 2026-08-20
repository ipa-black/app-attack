package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzgr implements zzjy, zzjz {
    private final int zza;
    private zzka zzc;
    private int zzd;
    private zzmz zze;
    private int zzf;
    private zzty zzg;
    private zzaf[] zzh;
    private long zzi;
    private boolean zzk;
    private boolean zzl;
    private final zzje zzb = new zzje();
    private long zzj = Long.MIN_VALUE;

    public zzgr(int i) {
        this.zza = i;
    }

    private final void zzP(long j, boolean z) throws zzha {
        this.zzk = false;
        this.zzj = j;
        zzu(j, z);
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    public final void zzA() {
        zzdd.zzf(this.zzf == 0);
        zzje zzjeVar = this.zzb;
        zzjeVar.zzb = null;
        zzjeVar.zza = null;
        zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    public final void zzB(long j) throws zzha {
        zzP(j, false);
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    public final void zzC() {
        this.zzk = true;
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    public /* synthetic */ void zzD(float f2, float f3) {
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    public final void zzE() throws zzha {
        zzdd.zzf(this.zzf == 1);
        this.zzf = 2;
        zzw();
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    public final void zzF() {
        zzdd.zzf(this.zzf == 2);
        this.zzf = 1;
        zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    public final boolean zzG() {
        return this.zzj == Long.MIN_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    public final boolean zzH() {
        return this.zzk;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzaf[] zzJ() {
        zzaf[] zzafVarArr = this.zzh;
        zzafVarArr.getClass();
        return zzafVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzjy, com.google.android.gms.internal.ads.zzjz
    public final int zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    public final int zzbe() {
        return this.zzf;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int zzbf(zzje zzjeVar, zzgi zzgiVar, int i) {
        zzty zztyVar = this.zzg;
        zztyVar.getClass();
        int zza = zztyVar.zza(zzjeVar, zzgiVar, i);
        if (zza == -4) {
            if (zzgiVar.zzg()) {
                this.zzj = Long.MIN_VALUE;
                return this.zzk ? -4 : -3;
            }
            long j = zzgiVar.zzd + this.zzi;
            zzgiVar.zzd = j;
            this.zzj = Math.max(this.zzj, j);
        } else if (zza == -5) {
            zzaf zzafVar = zzjeVar.zza;
            zzafVar.getClass();
            long j2 = zzafVar.zzq;
            if (j2 != Long.MAX_VALUE) {
                zzad zzb = zzafVar.zzb();
                zzb.zzW(j2 + this.zzi);
                zzjeVar.zza = zzb.zzY();
                return -5;
            }
        }
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzha zzbg(Throwable th, zzaf zzafVar, boolean z, int i) {
        int i2 = 4;
        if (zzafVar != null && !this.zzl) {
            this.zzl = true;
            try {
                i2 = zzO(zzafVar) & 7;
            } catch (zzha unused) {
            } finally {
                this.zzl = false;
            }
        }
        return zzha.zzb(th, zzK(), this.zzd, zzafVar, i2, z, i);
    }

    @Override // com.google.android.gms.internal.ads.zzjz
    public int zze() throws zzha {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    public final long zzf() {
        return this.zzj;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzje zzh() {
        zzje zzjeVar = this.zzb;
        zzjeVar.zzb = null;
        zzjeVar.zza = null;
        return zzjeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    public zzjg zzi() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    public final zzjz zzj() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzka zzk() {
        zzka zzkaVar = this.zzc;
        zzkaVar.getClass();
        return zzkaVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzmz zzl() {
        zzmz zzmzVar = this.zze;
        zzmzVar.getClass();
        return zzmzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    public final zzty zzm() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    public final void zzn() {
        zzdd.zzf(this.zzf == 1);
        zzje zzjeVar = this.zzb;
        zzjeVar.zzb = null;
        zzjeVar.zza = null;
        this.zzf = 0;
        this.zzg = null;
        this.zzh = null;
        this.zzk = false;
        zzs();
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    public final void zzo(zzka zzkaVar, zzaf[] zzafVarArr, zzty zztyVar, long j, boolean z, boolean z2, long j2, long j3) throws zzha {
        zzdd.zzf(this.zzf == 0);
        this.zzc = zzkaVar;
        this.zzf = 1;
        zzt(z, z2);
        zzz(zzafVarArr, zztyVar, j2, j3);
        zzP(j, z);
    }

    @Override // com.google.android.gms.internal.ads.zzju
    public void zzp(int i, Object obj) throws zzha {
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    public final void zzq(int i, zzmz zzmzVar) {
        this.zzd = i;
        this.zze = zzmzVar;
    }

    protected void zzs() {
        throw null;
    }

    protected void zzt(boolean z, boolean z2) throws zzha {
    }

    protected void zzu(long j, boolean z) throws zzha {
        throw null;
    }

    protected void zzv() {
    }

    protected void zzw() throws zzha {
    }

    protected void zzx() {
    }

    protected void zzy(zzaf[] zzafVarArr, long j, long j2) throws zzha {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    public final void zzz(zzaf[] zzafVarArr, zzty zztyVar, long j, long j2) throws zzha {
        zzdd.zzf(!this.zzk);
        this.zzg = zztyVar;
        if (this.zzj == Long.MIN_VALUE) {
            this.zzj = j;
        }
        this.zzh = zzafVarArr;
        this.zzi = j2;
        zzy(zzafVarArr, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean zzI() {
        if (zzG()) {
            return this.zzk;
        }
        zzty zztyVar = this.zzg;
        zztyVar.getClass();
        return zztyVar.zze();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int zzd(long j) {
        zzty zztyVar = this.zzg;
        zztyVar.getClass();
        return zztyVar.zzb(j - this.zzi);
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    public final void zzr() throws IOException {
        zzty zztyVar = this.zzg;
        zztyVar.getClass();
        zztyVar.zzd();
    }
}

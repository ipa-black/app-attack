package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzasn implements zzati, zzatj {
    private final int zza;
    private zzatk zzb;
    private int zzc;
    private int zzd;
    private zzayv zze;
    private long zzf;
    private boolean zzg = true;
    private boolean zzh;

    public zzasn(int i) {
        this.zza = i;
    }

    @Override // com.google.android.gms.internal.ads.zzati
    public final boolean zzA() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzati
    public final boolean zzB() {
        return this.zzh;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean zzC() {
        return this.zzg ? this.zzh : this.zze.zze();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzati
    public final int zzb() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzati, com.google.android.gms.internal.ads.zzatj
    public final int zzc() {
        return this.zza;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int zzd(zzate zzateVar, zzauy zzauyVar, boolean z) {
        int zzb = this.zze.zzb(zzateVar, zzauyVar, z);
        if (zzb == -4) {
            if (zzauyVar.zzf()) {
                this.zzg = true;
                return this.zzh ? -4 : -3;
            }
            zzauyVar.zzc += this.zzf;
        } else if (zzb == -5) {
            zzatd zzatdVar = zzateVar.zza;
            long j = zzatdVar.zzw;
            if (j != Long.MAX_VALUE) {
                zzateVar.zza = new zzatd(zzatdVar.zza, zzatdVar.zze, zzatdVar.zzf, zzatdVar.zzc, zzatdVar.zzb, zzatdVar.zzg, zzatdVar.zzj, zzatdVar.zzk, zzatdVar.zzl, zzatdVar.zzm, zzatdVar.zzn, zzatdVar.zzp, zzatdVar.zzo, zzatdVar.zzq, zzatdVar.zzr, zzatdVar.zzs, zzatdVar.zzt, zzatdVar.zzu, zzatdVar.zzv, zzatdVar.zzx, zzatdVar.zzy, zzatdVar.zzz, j + this.zzf, zzatdVar.zzh, zzatdVar.zzi, zzatdVar.zzd);
                return -5;
            }
        }
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzatj
    public int zze() throws zzasp {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzati
    public final zzatj zzf() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzatk zzg() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzati
    public final zzayv zzh() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzati
    public zzban zzi() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzati
    public final void zzj() {
        zzbaj.zze(this.zzd == 1);
        this.zzd = 0;
        this.zze = null;
        this.zzh = false;
        zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzati
    public final void zzk(zzatk zzatkVar, zzatd[] zzatdVarArr, zzayv zzayvVar, long j, boolean z, long j2) throws zzasp {
        zzbaj.zze(this.zzd == 0);
        this.zzb = zzatkVar;
        this.zzd = 1;
        zzo(z);
        zzt(zzatdVarArr, zzayvVar, j2);
        zzp(j, z);
    }

    @Override // com.google.android.gms.internal.ads.zzasr
    public void zzl(int i, Object obj) throws zzasp {
    }

    @Override // com.google.android.gms.internal.ads.zzati
    public final void zzm() throws IOException {
        this.zze.zzc();
    }

    protected void zzn() {
        throw null;
    }

    protected void zzo(boolean z) throws zzasp {
    }

    protected void zzp(long j, boolean z) throws zzasp {
        throw null;
    }

    protected void zzq() throws zzasp {
    }

    protected void zzr() throws zzasp {
    }

    protected void zzs(zzatd[] zzatdVarArr, long j) throws zzasp {
    }

    @Override // com.google.android.gms.internal.ads.zzati
    public final void zzt(zzatd[] zzatdVarArr, zzayv zzayvVar, long j) throws zzasp {
        zzbaj.zze(!this.zzh);
        this.zze = zzayvVar;
        this.zzg = false;
        this.zzf = j;
        zzs(zzatdVarArr, j);
    }

    @Override // com.google.android.gms.internal.ads.zzati
    public final void zzu(long j) throws zzasp {
        this.zzh = false;
        this.zzg = false;
        zzp(j, false);
    }

    @Override // com.google.android.gms.internal.ads.zzati
    public final void zzv() {
        this.zzh = true;
    }

    @Override // com.google.android.gms.internal.ads.zzati
    public final void zzw(int i) {
        this.zzc = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzx(long j) {
        this.zze.zzd(j - this.zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzati
    public final void zzy() throws zzasp {
        zzbaj.zze(this.zzd == 1);
        this.zzd = 2;
        zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzati
    public final void zzz() throws zzasp {
        zzbaj.zze(this.zzd == 2);
        this.zzd = 1;
        zzr();
    }
}

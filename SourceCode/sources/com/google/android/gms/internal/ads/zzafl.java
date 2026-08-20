package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzafl {
    public final zzaaq zza;
    public zzafz zzd;
    public zzafh zze;
    public int zzf;
    public int zzg;
    public int zzh;
    public int zzi;
    private boolean zzl;
    public final zzafy zzb = new zzafy();
    public final zzef zzc = new zzef();
    private final zzef zzj = new zzef(1);
    private final zzef zzk = new zzef();

    public zzafl(zzaaq zzaaqVar, zzafz zzafzVar, zzafh zzafhVar) {
        this.zza = zzaaqVar;
        this.zzd = zzafzVar;
        this.zze = zzafhVar;
        zzh(zzafzVar, zzafhVar);
    }

    public final int zza() {
        int i;
        if (this.zzl) {
            i = this.zzb.zzj[this.zzf] ? 1 : 0;
        } else {
            i = this.zzd.zzg[this.zzf];
        }
        return zzf() != null ? i | 1073741824 : i;
    }

    public final int zzb() {
        return !this.zzl ? this.zzd.zzd[this.zzf] : this.zzb.zzh[this.zzf];
    }

    public final int zzc(int i, int i2) {
        zzef zzefVar;
        zzafx zzf = zzf();
        if (zzf == null) {
            return 0;
        }
        int i3 = zzf.zzd;
        if (i3 != 0) {
            zzefVar = this.zzb.zzn;
        } else {
            byte[] bArr = (byte[]) zzen.zzH(zzf.zze);
            zzef zzefVar2 = this.zzk;
            int length = bArr.length;
            zzefVar2.zzD(bArr, length);
            zzefVar = this.zzk;
            i3 = length;
        }
        boolean zzb = this.zzb.zzb(this.zzf);
        boolean z = zzb || i2 != 0;
        zzef zzefVar3 = this.zzj;
        zzefVar3.zzH()[0] = (byte) ((true != z ? 0 : 128) | i3);
        zzefVar3.zzF(0);
        this.zza.zzr(this.zzj, 1, 1);
        this.zza.zzr(zzefVar, i3, 1);
        if (z) {
            if (!zzb) {
                this.zzc.zzC(8);
                zzef zzefVar4 = this.zzc;
                byte[] zzH = zzefVar4.zzH();
                zzH[0] = 0;
                zzH[1] = 1;
                zzH[2] = 0;
                zzH[3] = (byte) i2;
                zzH[4] = (byte) ((i >> 24) & 255);
                zzH[5] = (byte) ((i >> 16) & 255);
                zzH[6] = (byte) ((i >> 8) & 255);
                zzH[7] = (byte) (i & 255);
                this.zza.zzr(zzefVar4, 8, 1);
                return i3 + 9;
            }
            zzef zzefVar5 = this.zzb.zzn;
            int zzo = zzefVar5.zzo();
            zzefVar5.zzG(-2);
            int i4 = (zzo * 6) + 2;
            if (i2 != 0) {
                this.zzc.zzC(i4);
                byte[] zzH2 = this.zzc.zzH();
                zzefVar5.zzB(zzH2, 0, i4);
                int i5 = (((zzH2[2] & 255) << 8) | (zzH2[3] & 255)) + i2;
                zzH2[2] = (byte) ((i5 >> 8) & 255);
                zzH2[3] = (byte) (i5 & 255);
                zzefVar5 = this.zzc;
            }
            this.zza.zzr(zzefVar5, i4, 1);
            return i3 + 1 + i4;
        }
        return i3 + 1;
    }

    public final long zzd() {
        return !this.zzl ? this.zzd.zzc[this.zzf] : this.zzb.zzf[this.zzh];
    }

    public final long zze() {
        if (this.zzl) {
            zzafy zzafyVar = this.zzb;
            return zzafyVar.zzi[this.zzf];
        }
        return this.zzd.zzf[this.zzf];
    }

    public final zzafx zzf() {
        if (this.zzl) {
            zzafh zzafhVar = this.zzb.zza;
            int i = zzen.zza;
            int i2 = zzafhVar.zza;
            zzafx zzafxVar = this.zzb.zzm;
            if (zzafxVar == null) {
                zzafxVar = this.zzd.zza.zza(i2);
            }
            if (zzafxVar == null || !zzafxVar.zza) {
                return null;
            }
            return zzafxVar;
        }
        return null;
    }

    public final void zzh(zzafz zzafzVar, zzafh zzafhVar) {
        this.zzd = zzafzVar;
        this.zze = zzafhVar;
        this.zza.zzk(zzafzVar.zza.zzf);
        zzi();
    }

    public final void zzi() {
        zzafy zzafyVar = this.zzb;
        zzafyVar.zzd = 0;
        zzafyVar.zzp = 0L;
        zzafyVar.zzq = false;
        zzafyVar.zzk = false;
        zzafyVar.zzo = false;
        zzafyVar.zzm = null;
        this.zzf = 0;
        this.zzh = 0;
        this.zzg = 0;
        this.zzi = 0;
        this.zzl = false;
    }

    public final boolean zzk() {
        this.zzf++;
        if (this.zzl) {
            int i = this.zzg + 1;
            this.zzg = i;
            int[] iArr = this.zzb.zzg;
            int i2 = this.zzh;
            if (i == iArr[i2]) {
                this.zzh = i2 + 1;
                this.zzg = 0;
                return false;
            }
            return true;
        }
        return false;
    }
}

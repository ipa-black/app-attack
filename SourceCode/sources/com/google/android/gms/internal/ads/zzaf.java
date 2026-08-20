package com.google.android.gms.internal.ads;

import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzaf {
    private static final zzaf zzG = new zzaf(new zzad());
    public static final zzn zza = new zzn() { // from class: com.google.android.gms.internal.ads.zzab
    };
    public final int zzA;
    public final int zzB;
    public final int zzC;
    public final int zzD;
    public final int zzE;
    public final int zzF;
    private int zzH;
    public final String zzb;
    public final String zzc;
    public final String zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final int zzi;
    public final String zzj;
    public final zzbq zzk;
    public final String zzl;
    public final String zzm;
    public final int zzn;
    public final List zzo;
    public final zzx zzp;
    public final long zzq;
    public final int zzr;
    public final int zzs;
    public final float zzt;
    public final int zzu;
    public final float zzv;
    public final byte[] zzw;
    public final int zzx;
    public final zzq zzy;
    public final int zzz;

    private zzaf(zzad zzadVar) {
        this.zzb = zzad.zzac(zzadVar);
        this.zzc = zzad.zzad(zzadVar);
        this.zzd = zzen.zzP(zzad.zzae(zzadVar));
        this.zze = zzad.zzo(zzadVar);
        this.zzf = 0;
        int zzd = zzad.zzd(zzadVar);
        this.zzg = zzd;
        int zzl = zzad.zzl(zzadVar);
        this.zzh = zzl;
        this.zzi = zzl != -1 ? zzl : zzd;
        this.zzj = zzad.zzaa(zzadVar);
        this.zzk = zzad.zzZ(zzadVar);
        this.zzl = zzad.zzab(zzadVar);
        this.zzm = zzad.zzaf(zzadVar);
        this.zzn = zzad.zzj(zzadVar);
        this.zzo = zzad.zzag(zzadVar) == null ? Collections.emptyList() : zzad.zzag(zzadVar);
        zzx zzt = zzad.zzt(zzadVar);
        this.zzp = zzt;
        this.zzq = zzad.zzr(zzadVar);
        this.zzr = zzad.zzq(zzadVar);
        this.zzs = zzad.zzi(zzadVar);
        this.zzt = zzad.zza(zzadVar);
        this.zzu = zzad.zzm(zzadVar) == -1 ? 0 : zzad.zzm(zzadVar);
        this.zzv = zzad.zzb(zzadVar) == -1.0f ? 1.0f : zzad.zzb(zzadVar);
        this.zzw = zzad.zzah(zzadVar);
        this.zzx = zzad.zzp(zzadVar);
        this.zzy = zzad.zzs(zzadVar);
        this.zzz = zzad.zze(zzadVar);
        this.zzA = zzad.zzn(zzadVar);
        this.zzB = zzad.zzk(zzadVar);
        this.zzC = zzad.zzg(zzadVar) == -1 ? 0 : zzad.zzg(zzadVar);
        this.zzD = zzad.zzh(zzadVar) != -1 ? zzad.zzh(zzadVar) : 0;
        this.zzE = zzad.zzc(zzadVar);
        this.zzF = (zzad.zzf(zzadVar) != 0 || zzt == null) ? zzad.zzf(zzadVar) : 1;
    }

    public final boolean equals(Object obj) {
        int i;
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzaf zzafVar = (zzaf) obj;
            int i2 = this.zzH;
            if ((i2 == 0 || (i = zzafVar.zzH) == 0 || i2 == i) && this.zze == zzafVar.zze && this.zzg == zzafVar.zzg && this.zzh == zzafVar.zzh && this.zzn == zzafVar.zzn && this.zzq == zzafVar.zzq && this.zzr == zzafVar.zzr && this.zzs == zzafVar.zzs && this.zzu == zzafVar.zzu && this.zzx == zzafVar.zzx && this.zzz == zzafVar.zzz && this.zzA == zzafVar.zzA && this.zzB == zzafVar.zzB && this.zzC == zzafVar.zzC && this.zzD == zzafVar.zzD && this.zzE == zzafVar.zzE && this.zzF == zzafVar.zzF && Float.compare(this.zzt, zzafVar.zzt) == 0 && Float.compare(this.zzv, zzafVar.zzv) == 0 && zzen.zzT(this.zzb, zzafVar.zzb) && zzen.zzT(this.zzc, zzafVar.zzc) && zzen.zzT(this.zzj, zzafVar.zzj) && zzen.zzT(this.zzl, zzafVar.zzl) && zzen.zzT(this.zzm, zzafVar.zzm) && zzen.zzT(this.zzd, zzafVar.zzd) && Arrays.equals(this.zzw, zzafVar.zzw) && zzen.zzT(this.zzk, zzafVar.zzk) && zzen.zzT(this.zzy, zzafVar.zzy) && zzen.zzT(this.zzp, zzafVar.zzp) && zzd(zzafVar)) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        String str = this.zzb;
        String str2 = this.zzc;
        String str3 = this.zzl;
        String str4 = this.zzm;
        String str5 = this.zzj;
        int i = this.zzi;
        String str6 = this.zzd;
        int i2 = this.zzr;
        int i3 = this.zzs;
        float f2 = this.zzt;
        int i4 = this.zzz;
        int i5 = this.zzA;
        return "Format(" + str + ", " + str2 + ", " + str3 + ", " + str4 + ", " + str5 + ", " + i + ", " + str6 + ", [" + i2 + ", " + i3 + ", " + f2 + "], [" + i4 + ", " + i5 + "])";
    }

    public final int zza() {
        int i;
        int i2 = this.zzr;
        if (i2 == -1 || (i = this.zzs) == -1) {
            return -1;
        }
        return i2 * i;
    }

    public final zzad zzb() {
        return new zzad(this, null);
    }

    public final zzaf zzc(int i) {
        zzad zzadVar = new zzad(this, null);
        zzadVar.zzA(i);
        return new zzaf(zzadVar);
    }

    public final boolean zzd(zzaf zzafVar) {
        if (this.zzo.size() == zzafVar.zzo.size()) {
            for (int i = 0; i < this.zzo.size(); i++) {
                if (!Arrays.equals((byte[]) this.zzo.get(i), (byte[]) zzafVar.zzo.get(i))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzH;
        if (i == 0) {
            String str = this.zzb;
            int hashCode = ((str == null ? 0 : str.hashCode()) + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31;
            String str2 = this.zzc;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.zzd;
            int hashCode3 = (((((((hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.zze) * 961) + this.zzg) * 31) + this.zzh) * 31;
            String str4 = this.zzj;
            int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            zzbq zzbqVar = this.zzk;
            int hashCode5 = (hashCode4 + (zzbqVar == null ? 0 : zzbqVar.hashCode())) * 31;
            String str5 = this.zzl;
            int hashCode6 = (hashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.zzm;
            int hashCode7 = ((((((((((((((((((((((((((((((hashCode6 + (str6 != null ? str6.hashCode() : 0)) * 31) + this.zzn) * 31) + ((int) this.zzq)) * 31) + this.zzr) * 31) + this.zzs) * 31) + Float.floatToIntBits(this.zzt)) * 31) + this.zzu) * 31) + Float.floatToIntBits(this.zzv)) * 31) + this.zzx) * 31) + this.zzz) * 31) + this.zzA) * 31) + this.zzB) * 31) + this.zzC) * 31) + this.zzD) * 31) + this.zzE) * 31) + this.zzF;
            this.zzH = hashCode7;
            return hashCode7;
        }
        return i;
    }
}

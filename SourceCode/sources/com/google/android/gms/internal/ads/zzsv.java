package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzsv implements zzsf, zzse {
    private final zzsf zza;
    private final long zzb;
    private zzse zzc;

    public zzsv(zzsf zzsfVar, long j) {
        this.zza = zzsfVar;
        this.zzb = j;
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final long zza(long j, zzkb zzkbVar) {
        return this.zza.zza(j - this.zzb, zzkbVar) + this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzsf, com.google.android.gms.internal.ads.zzua
    public final long zzb() {
        long zzb = this.zza.zzb();
        if (zzb == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return zzb + this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzsf, com.google.android.gms.internal.ads.zzua
    public final long zzc() {
        long zzc = this.zza.zzc();
        if (zzc == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return zzc + this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final long zzd() {
        long zzd = this.zza.zzd();
        return zzd == C.TIME_UNSET ? C.TIME_UNSET : zzd + this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final long zze(long j) {
        return this.zza.zze(j - this.zzb) + this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final long zzf(zzvt[] zzvtVarArr, boolean[] zArr, zzty[] zztyVarArr, boolean[] zArr2, long j) {
        zzty[] zztyVarArr2 = new zzty[zztyVarArr.length];
        int i = 0;
        while (true) {
            zzty zztyVar = null;
            if (i >= zztyVarArr.length) {
                break;
            }
            zzsw zzswVar = (zzsw) zztyVarArr[i];
            if (zzswVar != null) {
                zztyVar = zzswVar.zzc();
            }
            zztyVarArr2[i] = zztyVar;
            i++;
        }
        long zzf = this.zza.zzf(zzvtVarArr, zArr, zztyVarArr2, zArr2, j - this.zzb);
        for (int i2 = 0; i2 < zztyVarArr.length; i2++) {
            zzty zztyVar2 = zztyVarArr2[i2];
            if (zztyVar2 == null) {
                zztyVarArr[i2] = null;
            } else {
                zzty zztyVar3 = zztyVarArr[i2];
                if (zztyVar3 == null || ((zzsw) zztyVar3).zzc() != zztyVar2) {
                    zztyVarArr[i2] = new zzsw(zztyVar2, this.zzb);
                }
            }
        }
        return zzf + this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zztz
    public final /* bridge */ /* synthetic */ void zzg(zzua zzuaVar) {
        zzsf zzsfVar = (zzsf) zzuaVar;
        zzse zzseVar = this.zzc;
        zzseVar.getClass();
        zzseVar.zzg(this);
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final zzug zzh() {
        return this.zza.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final void zzj(long j, boolean z) {
        this.zza.zzj(j - this.zzb, false);
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final void zzk() throws IOException {
        this.zza.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final void zzl(zzse zzseVar, long j) {
        this.zzc = zzseVar;
        this.zza.zzl(this, j - this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzsf, com.google.android.gms.internal.ads.zzua
    public final void zzm(long j) {
        this.zza.zzm(j - this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzsf, com.google.android.gms.internal.ads.zzua
    public final boolean zzo(long j) {
        return this.zza.zzo(j - this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzsf, com.google.android.gms.internal.ads.zzua
    public final boolean zzp() {
        return this.zza.zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzse
    public final void zzi(zzsf zzsfVar) {
        zzse zzseVar = this.zzc;
        zzseVar.getClass();
        zzseVar.zzi(this);
    }
}

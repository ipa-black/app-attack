package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzrz implements zzsf, zzse {
    public final zzsh zza;
    private final long zzb;
    private zzsj zzc;
    private zzsf zzd;
    private zzse zze;
    private long zzf = C.TIME_UNSET;
    private final zzwi zzg;

    public zzrz(zzsh zzshVar, zzwi zzwiVar, long j, byte[] bArr) {
        this.zza = zzshVar;
        this.zzg = zzwiVar;
        this.zzb = j;
    }

    private final long zzv(long j) {
        long j2 = this.zzf;
        return j2 != C.TIME_UNSET ? j2 : j;
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final long zza(long j, zzkb zzkbVar) {
        zzsf zzsfVar = this.zzd;
        int i = zzen.zza;
        return zzsfVar.zza(j, zzkbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzsf, com.google.android.gms.internal.ads.zzua
    public final long zzb() {
        zzsf zzsfVar = this.zzd;
        int i = zzen.zza;
        return zzsfVar.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzsf, com.google.android.gms.internal.ads.zzua
    public final long zzc() {
        zzsf zzsfVar = this.zzd;
        int i = zzen.zza;
        return zzsfVar.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final long zzd() {
        zzsf zzsfVar = this.zzd;
        int i = zzen.zza;
        return zzsfVar.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final long zze(long j) {
        zzsf zzsfVar = this.zzd;
        int i = zzen.zza;
        return zzsfVar.zze(j);
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final long zzf(zzvt[] zzvtVarArr, boolean[] zArr, zzty[] zztyVarArr, boolean[] zArr2, long j) {
        long j2;
        long j3 = this.zzf;
        if (j3 == C.TIME_UNSET || j != this.zzb) {
            j2 = j;
        } else {
            this.zzf = C.TIME_UNSET;
            j2 = j3;
        }
        zzsf zzsfVar = this.zzd;
        int i = zzen.zza;
        return zzsfVar.zzf(zzvtVarArr, zArr, zztyVarArr, zArr2, j2);
    }

    @Override // com.google.android.gms.internal.ads.zztz
    public final /* bridge */ /* synthetic */ void zzg(zzua zzuaVar) {
        zzsf zzsfVar = (zzsf) zzuaVar;
        zzse zzseVar = this.zze;
        int i = zzen.zza;
        zzseVar.zzg(this);
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final zzug zzh() {
        zzsf zzsfVar = this.zzd;
        int i = zzen.zza;
        return zzsfVar.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzse
    public final void zzi(zzsf zzsfVar) {
        zzse zzseVar = this.zze;
        int i = zzen.zza;
        zzseVar.zzi(this);
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final void zzj(long j, boolean z) {
        zzsf zzsfVar = this.zzd;
        int i = zzen.zza;
        zzsfVar.zzj(j, false);
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final void zzk() throws IOException {
        zzsf zzsfVar = this.zzd;
        if (zzsfVar != null) {
            zzsfVar.zzk();
            return;
        }
        zzsj zzsjVar = this.zzc;
        if (zzsjVar != null) {
            zzsjVar.zzy();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final void zzl(zzse zzseVar, long j) {
        this.zze = zzseVar;
        zzsf zzsfVar = this.zzd;
        if (zzsfVar != null) {
            zzsfVar.zzl(this, zzv(this.zzb));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsf, com.google.android.gms.internal.ads.zzua
    public final void zzm(long j) {
        zzsf zzsfVar = this.zzd;
        int i = zzen.zza;
        zzsfVar.zzm(j);
    }

    public final long zzn() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzsf, com.google.android.gms.internal.ads.zzua
    public final boolean zzo(long j) {
        zzsf zzsfVar = this.zzd;
        return zzsfVar != null && zzsfVar.zzo(j);
    }

    @Override // com.google.android.gms.internal.ads.zzsf, com.google.android.gms.internal.ads.zzua
    public final boolean zzp() {
        zzsf zzsfVar = this.zzd;
        return zzsfVar != null && zzsfVar.zzp();
    }

    public final long zzq() {
        return this.zzb;
    }

    public final void zzr(zzsh zzshVar) {
        long zzv = zzv(this.zzb);
        zzsj zzsjVar = this.zzc;
        zzsjVar.getClass();
        zzsf zzH = zzsjVar.zzH(zzshVar, this.zzg, zzv);
        this.zzd = zzH;
        if (this.zze != null) {
            zzH.zzl(this, zzv);
        }
    }

    public final void zzs(long j) {
        this.zzf = j;
    }

    public final void zzu(zzsj zzsjVar) {
        zzdd.zzf(this.zzc == null);
        this.zzc = zzsjVar;
    }

    public final void zzt() {
        zzsf zzsfVar = this.zzd;
        if (zzsfVar != null) {
            zzsj zzsjVar = this.zzc;
            zzsjVar.getClass();
            zzsjVar.zzF(zzsfVar);
        }
    }
}

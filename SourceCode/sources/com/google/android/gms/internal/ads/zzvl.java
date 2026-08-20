package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzvl extends zzvn implements Comparable {
    private final int zze;
    private final boolean zzf;
    private final boolean zzg;
    private final boolean zzh;
    private final int zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;
    private final boolean zzm;

    public zzvl(int i, zzcp zzcpVar, int i2, zzvf zzvfVar, int i3, String str) {
        super(i, zzcpVar, i2);
        zzgau zzgauVar;
        int i4;
        int i5 = 0;
        this.zzf = zzvr.zzm(i3, false);
        int i6 = this.zzd.zze;
        int i7 = zzvfVar.zzx;
        this.zzg = 1 == (i6 & 1);
        this.zzh = (i6 & 2) != 0;
        if (zzvfVar.zzv.isEmpty()) {
            zzgauVar = zzgau.zzp("");
        } else {
            zzgauVar = zzvfVar.zzv;
        }
        int i8 = 0;
        while (true) {
            if (i8 >= zzgauVar.size()) {
                i8 = Integer.MAX_VALUE;
                i4 = 0;
                break;
            }
            boolean z = zzvfVar.zzy;
            i4 = zzvr.zza(this.zzd, (String) zzgauVar.get(i8), false);
            if (i4 > 0) {
                break;
            }
            i8++;
        }
        this.zzi = i8;
        this.zzj = i4;
        int i9 = this.zzd.zzf;
        int i10 = zzvfVar.zzw;
        int bitCount = Integer.bitCount(0);
        this.zzk = bitCount;
        int i11 = this.zzd.zzf;
        this.zzm = false;
        int zza = zzvr.zza(this.zzd, str, zzvr.zzf(str) == null);
        this.zzl = zza;
        boolean z2 = i4 > 0 || (zzvfVar.zzv.isEmpty() && bitCount > 0) || this.zzg || (this.zzh && zza > 0);
        if (zzvr.zzm(i3, zzvfVar.zzQ) && z2) {
            i5 = 1;
        }
        this.zze = i5;
    }

    @Override // java.lang.Comparable
    /* renamed from: zza */
    public final int compareTo(zzvl zzvlVar) {
        zzgaj zzb = zzgaj.zzj().zzd(this.zzf, zzvlVar.zzf).zzc(Integer.valueOf(this.zzi), Integer.valueOf(zzvlVar.zzi), zzgcc.zzc().zza()).zzb(this.zzj, zzvlVar.zzj).zzb(this.zzk, zzvlVar.zzk).zzd(this.zzg, zzvlVar.zzg).zzc(Boolean.valueOf(this.zzh), Boolean.valueOf(zzvlVar.zzh), this.zzj == 0 ? zzgcc.zzc() : zzgcc.zzc().zza()).zzb(this.zzl, zzvlVar.zzl);
        if (this.zzk == 0) {
            boolean z = zzvlVar.zzm;
            zzb = zzb.zze(false, false);
        }
        return zzb.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final int zzb() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final /* bridge */ /* synthetic */ boolean zzc(zzvn zzvnVar) {
        zzvl zzvlVar = (zzvl) zzvnVar;
        return false;
    }
}

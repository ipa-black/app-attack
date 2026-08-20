package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzrl implements zzty {
    public final zzty zza;
    final /* synthetic */ zzrm zzb;
    private boolean zzc;

    public zzrl(zzrm zzrmVar, zzty zztyVar) {
        this.zzb = zzrmVar;
        this.zza = zztyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzty
    public final int zza(zzje zzjeVar, zzgi zzgiVar, int i) {
        if (this.zzb.zzq()) {
            return -3;
        }
        if (this.zzc) {
            zzgiVar.zzc(4);
            return -4;
        }
        int zza = this.zza.zza(zzjeVar, zzgiVar, i);
        if (zza == -5) {
            zzaf zzafVar = zzjeVar.zza;
            zzafVar.getClass();
            int i2 = zzafVar.zzC;
            if (i2 == 0) {
                if (zzafVar.zzD != 0) {
                    i2 = 0;
                }
                return -5;
            }
            int i3 = this.zzb.zzb == Long.MIN_VALUE ? zzafVar.zzD : 0;
            zzad zzb = zzafVar.zzb();
            zzb.zzC(i2);
            zzb.zzD(i3);
            zzjeVar.zza = zzb.zzY();
            return -5;
        }
        zzrm zzrmVar = this.zzb;
        long j = zzrmVar.zzb;
        if (j == Long.MIN_VALUE || ((zza != -4 || zzgiVar.zzd < j) && !(zza == -3 && zzrmVar.zzb() == Long.MIN_VALUE && !zzgiVar.zzc))) {
            return zza;
        }
        zzgiVar.zzb();
        zzgiVar.zzc(4);
        this.zzc = true;
        return -4;
    }

    @Override // com.google.android.gms.internal.ads.zzty
    public final int zzb(long j) {
        if (this.zzb.zzq()) {
            return -3;
        }
        return this.zza.zzb(j);
    }

    public final void zzc() {
        this.zzc = false;
    }

    @Override // com.google.android.gms.internal.ads.zzty
    public final void zzd() throws IOException {
        this.zza.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzty
    public final boolean zze() {
        return !this.zzb.zzq() && this.zza.zze();
    }
}

package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzaba implements zzaam {
    final /* synthetic */ zzabd zza;
    private final long zzb;

    public zzaba(zzabd zzabdVar, long j) {
        this.zza = zzabdVar;
        this.zzb = j;
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final long zze() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final zzaak zzg(long j) {
        zzabg[] zzabgVarArr;
        zzabg[] zzabgVarArr2;
        zzabg[] zzabgVarArr3;
        zzabgVarArr = this.zza.zzg;
        zzaak zza = zzabgVarArr[0].zza(j);
        int i = 1;
        while (true) {
            zzabd zzabdVar = this.zza;
            zzabgVarArr2 = zzabdVar.zzg;
            if (i >= zzabgVarArr2.length) {
                return zza;
            }
            zzabgVarArr3 = zzabdVar.zzg;
            zzaak zza2 = zzabgVarArr3[i].zza(j);
            if (zza2.zza.zzc < zza.zza.zzc) {
                zza = zza2;
            }
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final boolean zzh() {
        return true;
    }
}

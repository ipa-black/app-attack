package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgze implements zzgzl {
    private final zzgzl[] zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgze(zzgzl... zzgzlVarArr) {
        this.zza = zzgzlVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzgzl
    public final zzgzk zzb(Class cls) {
        zzgzl[] zzgzlVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            zzgzl zzgzlVar = zzgzlVarArr[i];
            if (zzgzlVar.zzc(cls)) {
                return zzgzlVar.zzb(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(String.valueOf(cls.getName())));
    }

    @Override // com.google.android.gms.internal.ads.zzgzl
    public final boolean zzc(Class cls) {
        zzgzl[] zzgzlVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            if (zzgzlVarArr[i].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}

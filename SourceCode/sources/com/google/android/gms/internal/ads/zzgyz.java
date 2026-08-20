package com.google.android.gms.internal.ads;

import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgyz extends zzgzb {
    private zzgyz() {
        super(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgyz(zzgyy zzgyyVar) {
        super(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgzb
    public final List zza(Object obj, long j) {
        zzgym zzgymVar = (zzgym) zzhbh.zzh(obj, j);
        if (zzgymVar.zzc()) {
            return zzgymVar;
        }
        int size = zzgymVar.size();
        zzgym zzd = zzgymVar.zzd(size == 0 ? 10 : size + size);
        zzhbh.zzv(obj, j, zzd);
        return zzd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgzb
    public final void zzb(Object obj, long j) {
        ((zzgym) zzhbh.zzh(obj, j)).zzb();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgzb
    public final void zzc(Object obj, Object obj2, long j) {
        zzgym zzgymVar = (zzgym) zzhbh.zzh(obj, j);
        zzgym zzgymVar2 = (zzgym) zzhbh.zzh(obj2, j);
        int size = zzgymVar.size();
        int size2 = zzgymVar2.size();
        if (size > 0 && size2 > 0) {
            if (!zzgymVar.zzc()) {
                zzgymVar = zzgymVar.zzd(size2 + size);
            }
            zzgymVar.addAll(zzgymVar2);
        }
        if (size > 0) {
            zzgymVar2 = zzgymVar;
        }
        zzhbh.zzv(obj, j, zzgymVar2);
    }
}

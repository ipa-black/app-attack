package com.google.android.gms.internal.ads;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.AbstractMap;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgce extends zzgau {
    final /* synthetic */ zzgcf zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgce(zzgcf zzgcfVar) {
        this.zza = zzgcfVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        int i2;
        Object[] objArr;
        Object[] objArr2;
        i2 = this.zza.zzc;
        zzfye.zza(i, i2, FirebaseAnalytics.Param.INDEX);
        zzgcf zzgcfVar = this.zza;
        int i3 = i + i;
        objArr = zzgcfVar.zzb;
        Object obj = objArr[i3];
        obj.getClass();
        objArr2 = zzgcfVar.zzb;
        Object obj2 = objArr2[i3 + 1];
        obj2.getClass();
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        int i;
        i = this.zza.zzc;
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzgap
    public final boolean zzf() {
        return true;
    }
}

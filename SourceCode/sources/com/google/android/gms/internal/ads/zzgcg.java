package com.google.android.gms.internal.ads;

import java.util.Iterator;
import javax.annotation.CheckForNull;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgcg extends zzgaz {
    private final transient zzgax zza;
    private final transient zzgau zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgcg(zzgax zzgaxVar, zzgau zzgauVar) {
        this.zza = zzgaxVar;
        this.zzb = zzgauVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgap, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        return this.zza.get(obj) != null;
    }

    @Override // com.google.android.gms.internal.ads.zzgaz, com.google.android.gms.internal.ads.zzgap, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return this.zzb.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgap
    public final int zza(Object[] objArr, int i) {
        return this.zzb.zza(objArr, i);
    }

    @Override // com.google.android.gms.internal.ads.zzgaz, com.google.android.gms.internal.ads.zzgap
    public final zzgau zzd() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgaz, com.google.android.gms.internal.ads.zzgap
    public final zzgct zze() {
        return this.zzb.listIterator(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgap
    public final boolean zzf() {
        throw null;
    }
}

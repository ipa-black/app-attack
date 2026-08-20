package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgyk extends AbstractList {
    private final List zza;
    private final zzgyj zzb;

    public zzgyk(List list, zzgyj zzgyjVar) {
        this.zza = list;
        this.zzb = zzgyjVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        zzbfu zzb = zzbfu.zzb(((Integer) this.zza.get(i)).intValue());
        return zzb == null ? zzbfu.AD_FORMAT_TYPE_UNSPECIFIED : zzb;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.size();
    }
}

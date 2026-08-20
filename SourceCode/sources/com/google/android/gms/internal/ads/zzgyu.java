package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgyu extends zzgwf implements RandomAccess, zzgyv {
    public static final zzgyv zza;
    private static final zzgyu zzb;
    private final List zzc;

    static {
        zzgyu zzgyuVar = new zzgyu(10);
        zzb = zzgyuVar;
        zzgyuVar.zzb();
        zza = zzgyuVar;
    }

    public zzgyu() {
        this(10);
    }

    private static String zzj(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzgwv) {
            return ((zzgwv) obj).zzA(zzgyn.zzb);
        }
        return zzgyn.zzg((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgwf, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        zzbO();
        this.zzc.add(i, (String) obj);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzgwf, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        zzbO();
        if (collection instanceof zzgyv) {
            collection = ((zzgyv) collection).zzh();
        }
        boolean addAll = this.zzc.addAll(i, collection);
        this.modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.ads.zzgwf, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        zzbO();
        this.zzc.clear();
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzgwf, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        zzbO();
        Object remove = this.zzc.remove(i);
        this.modCount++;
        return zzj(remove);
    }

    @Override // com.google.android.gms.internal.ads.zzgwf, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        zzbO();
        return zzj(this.zzc.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc.size();
    }

    @Override // com.google.android.gms.internal.ads.zzgym
    public final /* bridge */ /* synthetic */ zzgym zzd(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.zzc);
        return new zzgyu(arrayList);
    }

    @Override // com.google.android.gms.internal.ads.zzgyv
    public final zzgyv zze() {
        return zzc() ? new zzhbc(this) : this;
    }

    @Override // com.google.android.gms.internal.ads.zzgyv
    public final Object zzf(int i) {
        return this.zzc.get(i);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: zzg */
    public final String get(int i) {
        Object obj = this.zzc.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzgwv) {
            zzgwv zzgwvVar = (zzgwv) obj;
            String zzA = zzgwvVar.zzA(zzgyn.zzb);
            if (zzgwvVar.zzp()) {
                this.zzc.set(i, zzA);
            }
            return zzA;
        }
        byte[] bArr = (byte[]) obj;
        String zzg = zzgyn.zzg(bArr);
        if (zzgyn.zzh(bArr)) {
            this.zzc.set(i, zzg);
        }
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzgyv
    public final List zzh() {
        return Collections.unmodifiableList(this.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzgyv
    public final void zzi(zzgwv zzgwvVar) {
        zzbO();
        this.zzc.add(zzgwvVar);
        this.modCount++;
    }

    public zzgyu(int i) {
        this.zzc = new ArrayList(i);
    }

    private zzgyu(ArrayList arrayList) {
        this.zzc = arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzgwf, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }
}

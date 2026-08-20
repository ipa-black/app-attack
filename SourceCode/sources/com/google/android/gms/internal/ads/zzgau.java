package com.google.android.gms.internal.ads;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import javax.annotation.CheckForNull;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzgau extends zzgap implements List, RandomAccess {
    private static final zzgcu zza = new zzgas(zzgcd.zza, 0);

    public static zzgar zzi() {
        return new zzgar(4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzgau zzj(Object[] objArr) {
        return zzk(objArr, objArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzgau zzk(Object[] objArr, int i) {
        if (i == 0) {
            return zzgcd.zza;
        }
        return new zzgcd(objArr, i);
    }

    public static zzgau zzm(Collection collection) {
        if (collection instanceof zzgap) {
            zzgau zzd = ((zzgap) collection).zzd();
            if (zzd.zzf()) {
                Object[] array = zzd.toArray();
                return zzk(array, array.length);
            }
            return zzd;
        }
        Object[] array2 = collection.toArray();
        int length = array2.length;
        zzgcb.zzb(array2, length);
        return zzk(array2, length);
    }

    public static zzgau zzn(Object[] objArr) {
        if (objArr.length == 0) {
            return zzgcd.zza;
        }
        Object[] objArr2 = (Object[]) objArr.clone();
        int length = objArr2.length;
        zzgcb.zzb(objArr2, length);
        return zzk(objArr2, length);
    }

    public static zzgau zzo() {
        return zzgcd.zza;
    }

    public static zzgau zzp(Object obj) {
        Object[] objArr = {obj};
        zzgcb.zzb(objArr, 1);
        return zzk(objArr, 1);
    }

    public static zzgau zzq(Object obj, Object obj2) {
        Object[] objArr = {obj, obj2};
        zzgcb.zzb(objArr, 2);
        return zzk(objArr, 2);
    }

    public static zzgau zzr(Object obj, Object obj2, Object obj3) {
        Object[] objArr = {"2011", "1009", "3010"};
        zzgcb.zzb(objArr, 3);
        return zzk(objArr, 3);
    }

    public static zzgau zzs(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        Object[] objArr = {obj, obj2, obj3, obj4, obj5};
        zzgcb.zzb(objArr, 5);
        return zzk(objArr, 5);
    }

    public static zzgau zzt(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        Object[] objArr = {"3010", "3008", "1005", "1009", "2011", "2007"};
        zzgcb.zzb(objArr, 6);
        return zzk(objArr, 6);
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzgap, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i = 0; i < size; i++) {
                        if (zzfxz.zza(get(i), list.get(i))) {
                        }
                    }
                    return true;
                }
                Iterator it = iterator();
                Iterator it2 = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (it2.hasNext()) {
                            if (!zzfxz.zza(it.next(), it2.next())) {
                                break;
                            }
                        } else {
                            break;
                        }
                    } else if (!it2.hasNext()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = (i * 31) + get(i2).hashCode();
        }
        return i;
    }

    @Override // java.util.List
    public final int indexOf(@CheckForNull Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (obj.equals(get(i))) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzgap, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final int lastIndexOf(@CheckForNull Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public final /* synthetic */ ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    @Deprecated
    public final Object remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final Object set(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzgap
    int zza(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    @Override // com.google.android.gms.internal.ads.zzgap
    @Deprecated
    public final zzgau zzd() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzgap
    public final zzgct zze() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* renamed from: zzh */
    public zzgau subList(int i, int i2) {
        zzfye.zzg(i, i2, size());
        int i3 = i2 - i;
        if (i3 == size()) {
            return this;
        }
        if (i3 != 0) {
            return new zzgat(this, i, i3);
        }
        return zzgcd.zza;
    }

    @Override // java.util.List
    /* renamed from: zzu */
    public final zzgcu listIterator(int i) {
        zzfye.zzb(i, size(), FirebaseAnalytics.Param.INDEX);
        return isEmpty() ? zza : new zzgas(this, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static zzgau zzl(Iterable iterable) {
        iterable.getClass();
        return zzm(iterable);
    }
}

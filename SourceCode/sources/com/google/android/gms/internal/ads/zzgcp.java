package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;
import javax.annotation.CheckForNull;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgcp {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(Set set) {
        Iterator it = set.iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i += next != null ? next.hashCode() : 0;
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.Collection, java.util.Set] */
    public static Set zzb(Set set, zzfyf zzfyfVar) {
        if (set instanceof SortedSet) {
            SortedSet sortedSet = (SortedSet) set;
            if (sortedSet instanceof zzgcm) {
                zzgcm zzgcmVar = (zzgcm) sortedSet;
                return new zzgcn((SortedSet) zzgcmVar.zza, zzfyi.zza(zzgcmVar.zzb, zzfyfVar));
            }
            sortedSet.getClass();
            zzfyfVar.getClass();
            return new zzgcn(sortedSet, zzfyfVar);
        } else if (set instanceof zzgcm) {
            zzgcm zzgcmVar2 = (zzgcm) set;
            return new zzgcm(zzgcmVar2.zza, zzfyi.zza(zzgcmVar2.zzb, zzfyfVar));
        } else {
            set.getClass();
            zzfyfVar.getClass();
            return new zzgcm(set, zzfyfVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzc(Set set, @CheckForNull Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zze(Set set, Iterator it) {
        boolean z = false;
        while (it.hasNext()) {
            z |= set.remove(it.next());
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzd(Set set, Collection collection) {
        collection.getClass();
        if (collection instanceof zzgbz) {
            collection = ((zzgbz) collection).zza();
        }
        if (!(collection instanceof Set) || collection.size() <= set.size()) {
            return zze(set, collection.iterator());
        }
        Iterator it = set.iterator();
        collection.getClass();
        boolean z = false;
        while (it.hasNext()) {
            if (collection.contains(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }
}

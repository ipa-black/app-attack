package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgyx extends zzgzb {
    private static final Class zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzgyx() {
        super(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgyx(zzgyw zzgywVar) {
        super(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static List zzf(Object obj, long j, int i) {
        zzgyu zzgyuVar;
        List arrayList;
        List list = (List) zzhbh.zzh(obj, j);
        if (list.isEmpty()) {
            if (list instanceof zzgyv) {
                arrayList = new zzgyu(i);
            } else if (!(list instanceof zzgzu) || !(list instanceof zzgym)) {
                arrayList = new ArrayList(i);
            } else {
                arrayList = ((zzgym) list).zzd(i);
            }
            zzhbh.zzv(obj, j, arrayList);
            return arrayList;
        }
        if (zza.isAssignableFrom(list.getClass())) {
            ArrayList arrayList2 = new ArrayList(list.size() + i);
            arrayList2.addAll(list);
            zzhbh.zzv(obj, j, arrayList2);
            zzgyuVar = arrayList2;
        } else if (list instanceof zzhbc) {
            zzgyu zzgyuVar2 = new zzgyu(list.size() + i);
            zzgyuVar2.addAll(zzgyuVar2.size(), (zzhbc) list);
            zzhbh.zzv(obj, j, zzgyuVar2);
            zzgyuVar = zzgyuVar2;
        } else if ((list instanceof zzgzu) && (list instanceof zzgym)) {
            zzgym zzgymVar = (zzgym) list;
            if (zzgymVar.zzc()) {
                return list;
            }
            zzgym zzd = zzgymVar.zzd(list.size() + i);
            zzhbh.zzv(obj, j, zzd);
            return zzd;
        } else {
            return list;
        }
        return zzgyuVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgzb
    public final List zza(Object obj, long j) {
        return zzf(obj, j, 10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgzb
    public final void zzb(Object obj, long j) {
        Object unmodifiableList;
        List list = (List) zzhbh.zzh(obj, j);
        if (list instanceof zzgyv) {
            unmodifiableList = ((zzgyv) list).zze();
        } else if (zza.isAssignableFrom(list.getClass())) {
            return;
        } else {
            if (!(list instanceof zzgzu) || !(list instanceof zzgym)) {
                unmodifiableList = Collections.unmodifiableList(list);
            } else {
                zzgym zzgymVar = (zzgym) list;
                if (zzgymVar.zzc()) {
                    zzgymVar.zzb();
                    return;
                }
                return;
            }
        }
        zzhbh.zzv(obj, j, unmodifiableList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgzb
    public final void zzc(Object obj, Object obj2, long j) {
        List list = (List) zzhbh.zzh(obj2, j);
        List zzf = zzf(obj, j, list.size());
        int size = zzf.size();
        int size2 = list.size();
        if (size > 0 && size2 > 0) {
            zzf.addAll(list);
        }
        if (size > 0) {
            list = zzf;
        }
        zzhbh.zzv(obj, j, list);
    }
}

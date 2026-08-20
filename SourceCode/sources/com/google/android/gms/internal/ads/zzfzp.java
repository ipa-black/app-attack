package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import javax.annotation.CheckForNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzfzp extends zzfzs implements Serializable {
    private final transient Map zza;
    private transient int zzb;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzfzp(Map map) {
        zzfye.zze(map.isEmpty());
        this.zza = map;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int zzd(zzfzp zzfzpVar) {
        int i = zzfzpVar.zzb;
        zzfzpVar.zzb = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int zze(zzfzp zzfzpVar) {
        int i = zzfzpVar.zzb;
        zzfzpVar.zzb = i - 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int zzf(zzfzp zzfzpVar, int i) {
        int i2 = zzfzpVar.zzb + i;
        zzfzpVar.zzb = i2;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int zzg(zzfzp zzfzpVar, int i) {
        int i2 = zzfzpVar.zzb - i;
        zzfzpVar.zzb = i2;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzq(zzfzp zzfzpVar, Object obj) {
        Object obj2;
        try {
            obj2 = zzfzpVar.zza.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            obj2 = null;
        }
        Collection collection = (Collection) obj2;
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            zzfzpVar.zzb -= size;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Collection zza();

    /* JADX INFO: Access modifiers changed from: package-private */
    public Collection zzb(Collection collection) {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Collection zzc(Object obj, Collection collection) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgbq
    public final int zzh() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfzs
    final Collection zzi() {
        return new zzfzr(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzfzs
    public final Iterator zzj() {
        return new zzfyz(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List zzk(Object obj, List list, @CheckForNull zzfzm zzfzmVar) {
        if (list instanceof RandomAccess) {
            return new zzfzi(this, obj, list, zzfzmVar);
        }
        return new zzfzo(this, obj, list, zzfzmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfzs
    Map zzm() {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map zzn() {
        Map map = this.zza;
        if (map instanceof NavigableMap) {
            return new zzfzg(this, (NavigableMap) map);
        }
        if (map instanceof SortedMap) {
            return new zzfzj(this, (SortedMap) map);
        }
        return new zzfzc(this, map);
    }

    @Override // com.google.android.gms.internal.ads.zzfzs
    Set zzo() {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set zzp() {
        Map map = this.zza;
        if (map instanceof NavigableMap) {
            return new zzfzh(this, (NavigableMap) map);
        }
        if (map instanceof SortedMap) {
            return new zzfzk(this, (SortedMap) map);
        }
        return new zzfzf(this, map);
    }

    @Override // com.google.android.gms.internal.ads.zzgbq
    public final void zzr() {
        for (Collection collection : this.zza.values()) {
            collection.clear();
        }
        this.zza.clear();
        this.zzb = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzfzs, com.google.android.gms.internal.ads.zzgbq
    public final boolean zzs(Object obj, Object obj2) {
        Collection collection = (Collection) this.zza.get(obj);
        if (collection == null) {
            Collection zza = zza();
            if (zza.add(obj2)) {
                this.zzb++;
                this.zza.put(obj, zza);
                return true;
            }
            throw new AssertionError("New Collection violated the Collection spec");
        } else if (collection.add(obj2)) {
            this.zzb++;
            return true;
        } else {
            return false;
        }
    }
}

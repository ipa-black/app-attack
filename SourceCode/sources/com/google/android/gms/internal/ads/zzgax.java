package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;
import org.apache.commons.io.FileUtils;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzgax implements Map, Serializable {
    @CheckForNull
    private transient zzgaz zza;
    @CheckForNull
    private transient zzgaz zzb;
    @CheckForNull
    private transient zzgap zzc;

    public static zzgax zzc(Map map) {
        Set entrySet = map.entrySet();
        zzgaw zzgawVar = new zzgaw(entrySet instanceof Collection ? entrySet.size() : 4);
        zzgawVar.zzb(entrySet);
        return zzgawVar.zzc();
    }

    public static zzgax zzd() {
        return zzgci.zza;
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean containsKey(@CheckForNull Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public final boolean containsValue(@CheckForNull Object obj) {
        return values().contains(obj);
    }

    @Override // java.util.Map
    public final boolean equals(@CheckForNull Object obj) {
        return zzgbp.zzb(this, obj);
    }

    @Override // java.util.Map
    @CheckForNull
    public abstract Object get(@CheckForNull Object obj);

    @Override // java.util.Map
    @CheckForNull
    public final Object getOrDefault(@CheckForNull Object obj, @CheckForNull Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override // java.util.Map
    public final int hashCode() {
        return zzgcp.zza(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    @CheckForNull
    @Deprecated
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @CheckForNull
    @Deprecated
    public final Object remove(@CheckForNull Object obj) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        int size = size();
        zzfzt.zza(size, "size");
        StringBuilder sb = new StringBuilder((int) Math.min(size * 8, (long) FileUtils.ONE_GB));
        sb.append('{');
        boolean z = true;
        for (Map.Entry entry : entrySet()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
            z = false;
        }
        sb.append('}');
        return sb.toString();
    }

    abstract zzgap zza();

    @Override // java.util.Map
    /* renamed from: zzb */
    public final zzgap values() {
        zzgap zzgapVar = this.zzc;
        if (zzgapVar == null) {
            zzgap zza = zza();
            this.zzc = zza;
            return zza;
        }
        return zzgapVar;
    }

    abstract zzgaz zze();

    abstract zzgaz zzf();

    @Override // java.util.Map
    /* renamed from: zzg */
    public final zzgaz entrySet() {
        zzgaz zzgazVar = this.zza;
        if (zzgazVar == null) {
            zzgaz zze = zze();
            this.zza = zze;
            return zze;
        }
        return zzgazVar;
    }

    @Override // java.util.Map
    /* renamed from: zzh */
    public final zzgaz keySet() {
        zzgaz zzgazVar = this.zzb;
        if (zzgazVar == null) {
            zzgaz zzf = zzf();
            this.zzb = zzf;
            return zzf;
        }
        return zzgazVar;
    }
}

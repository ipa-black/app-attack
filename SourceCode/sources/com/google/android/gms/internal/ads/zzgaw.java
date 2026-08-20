package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgaw {
    Object[] zza;
    int zzb;
    zzgav zzc;

    public zzgaw() {
        this(4);
    }

    private final void zzd(int i) {
        int i2 = i + i;
        Object[] objArr = this.zza;
        int length = objArr.length;
        if (i2 > length) {
            this.zza = Arrays.copyOf(objArr, zzgao.zzd(length, i2));
        }
    }

    public final zzgaw zza(Object obj, Object obj2) {
        zzd(this.zzb + 1);
        zzfzt.zzb(obj, obj2);
        Object[] objArr = this.zza;
        int i = this.zzb;
        int i2 = i + i;
        objArr[i2] = obj;
        objArr[i2 + 1] = obj2;
        this.zzb = i + 1;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzgaw zzb(Iterable iterable) {
        if (iterable instanceof Collection) {
            zzd(this.zzb + iterable.size());
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            zza(entry.getKey(), entry.getValue());
        }
        return this;
    }

    public final zzgax zzc() {
        zzgav zzgavVar = this.zzc;
        if (zzgavVar == null) {
            zzgci zzi = zzgci.zzi(this.zzb, this.zza, this);
            zzgav zzgavVar2 = this.zzc;
            if (zzgavVar2 == null) {
                return zzi;
            }
            throw zzgavVar2.zza();
        }
        throw zzgavVar.zza();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgaw(int i) {
        this.zza = new Object[i + i];
        this.zzb = 0;
    }
}

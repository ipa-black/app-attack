package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzhad implements Iterator {
    private final ArrayDeque zza;
    private zzgwq zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzhad(zzgwv zzgwvVar, zzhac zzhacVar) {
        zzgwv zzgwvVar2;
        if (zzgwvVar instanceof zzhaf) {
            zzhaf zzhafVar = (zzhaf) zzgwvVar;
            ArrayDeque arrayDeque = new ArrayDeque(zzhafVar.zzf());
            this.zza = arrayDeque;
            arrayDeque.push(zzhafVar);
            zzgwvVar2 = zzhafVar.zzd;
            this.zzb = zzb(zzgwvVar2);
            return;
        }
        this.zza = null;
        this.zzb = (zzgwq) zzgwvVar;
    }

    private final zzgwq zzb(zzgwv zzgwvVar) {
        while (zzgwvVar instanceof zzhaf) {
            zzhaf zzhafVar = (zzhaf) zzgwvVar;
            this.zza.push(zzhafVar);
            zzgwvVar = zzhafVar.zzd;
        }
        return (zzgwq) zzgwvVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb != null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator
    /* renamed from: zza */
    public final zzgwq next() {
        zzgwq zzgwqVar;
        zzgwv zzgwvVar;
        zzgwq zzgwqVar2 = this.zzb;
        if (zzgwqVar2 == null) {
            throw new NoSuchElementException();
        }
        do {
            ArrayDeque arrayDeque = this.zza;
            zzgwqVar = null;
            if (arrayDeque == null || arrayDeque.isEmpty()) {
                break;
            }
            zzgwvVar = ((zzhaf) this.zza.pop()).zze;
            zzgwqVar = zzb(zzgwvVar);
        } while (zzgwqVar.zzD());
        this.zzb = zzgwqVar;
        return zzgwqVar2;
    }
}

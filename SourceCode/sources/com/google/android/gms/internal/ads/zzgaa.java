package com.google.android.gms.internal.ads;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
abstract class zzgaa implements Iterator {
    int zzb;
    int zzc;
    int zzd;
    final /* synthetic */ zzgae zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgaa(zzgae zzgaeVar, zzfzw zzfzwVar) {
        int i;
        this.zze = zzgaeVar;
        i = zzgaeVar.zzf;
        this.zzb = i;
        this.zzc = zzgaeVar.zze();
        this.zzd = -1;
    }

    private final void zzb() {
        int i;
        i = this.zze.zzf;
        if (i != this.zzb) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzc >= 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        zzb();
        if (hasNext()) {
            int i = this.zzc;
            this.zzd = i;
            Object zza = zza(i);
            this.zzc = this.zze.zzf(this.zzc);
            return zza;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        zzb();
        zzfye.zzi(this.zzd >= 0, "no calls to next() since the last call to remove()");
        this.zzb += 32;
        zzgae zzgaeVar = this.zze;
        zzgaeVar.remove(zzgae.zzg(zzgaeVar, this.zzd));
        this.zzc--;
        this.zzd = -1;
    }

    abstract Object zza(int i);
}

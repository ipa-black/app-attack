package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzhbb implements Iterator {
    final Iterator zza;
    final /* synthetic */ zzhbc zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhbb(zzhbc zzhbcVar) {
        zzgyv zzgyvVar;
        this.zzb = zzhbcVar;
        zzgyvVar = zzhbcVar.zza;
        this.zza = zzgyvVar.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return (String) this.zza.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}

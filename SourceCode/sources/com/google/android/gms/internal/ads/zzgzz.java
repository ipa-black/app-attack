package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgzz extends zzgwn {
    final zzhad zza;
    zzgwp zzb = zzb();
    final /* synthetic */ zzhaf zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgzz(zzhaf zzhafVar) {
        this.zzc = zzhafVar;
        this.zza = new zzhad(zzhafVar, null);
    }

    private final zzgwp zzb() {
        zzhad zzhadVar = this.zza;
        if (zzhadVar.hasNext()) {
            return zzhadVar.next().iterator();
        }
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb != null;
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final byte zza() {
        zzgwp zzgwpVar = this.zzb;
        if (zzgwpVar == null) {
            throw new NoSuchElementException();
        }
        byte zza = zzgwpVar.zza();
        if (!this.zzb.hasNext()) {
            this.zzb = zzb();
        }
        return zza;
    }
}

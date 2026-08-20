package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzggl implements zzggm {
    final /* synthetic */ zzgme zza;
    final /* synthetic */ zzgli zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzggl(zzgme zzgmeVar, zzgli zzgliVar) {
        this.zza = zzgmeVar;
        this.zzb = zzgliVar;
    }

    @Override // com.google.android.gms.internal.ads.zzggm
    public final zzggg zza(Class cls) throws GeneralSecurityException {
        try {
            return new zzghk(this.zza, this.zzb, cls);
        } catch (IllegalArgumentException e2) {
            throw new GeneralSecurityException("Primitive type not supported", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzggm
    public final zzggg zzb() {
        zzgme zzgmeVar = this.zza;
        return new zzghk(zzgmeVar, this.zzb, zzgmeVar.zzi());
    }

    @Override // com.google.android.gms.internal.ads.zzggm
    public final Class zzc() {
        return this.zza.getClass();
    }

    @Override // com.google.android.gms.internal.ads.zzggm
    public final Class zzd() {
        return this.zzb.getClass();
    }

    @Override // com.google.android.gms.internal.ads.zzggm
    public final Set zze() {
        return this.zza.zzl();
    }
}

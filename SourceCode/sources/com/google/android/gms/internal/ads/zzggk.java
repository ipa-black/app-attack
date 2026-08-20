package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzggk implements zzggm {
    final /* synthetic */ zzgli zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzggk(zzgli zzgliVar) {
        this.zza = zzgliVar;
    }

    @Override // com.google.android.gms.internal.ads.zzggm
    public final zzggg zza(Class cls) throws GeneralSecurityException {
        try {
            return new zzggi(this.zza, cls);
        } catch (IllegalArgumentException e2) {
            throw new GeneralSecurityException("Primitive type not supported", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzggm
    public final zzggg zzb() {
        zzgli zzgliVar = this.zza;
        return new zzggi(zzgliVar, zzgliVar.zzi());
    }

    @Override // com.google.android.gms.internal.ads.zzggm
    public final Class zzc() {
        return this.zza.getClass();
    }

    @Override // com.google.android.gms.internal.ads.zzggm
    public final Class zzd() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzggm
    public final Set zze() {
        return this.zza.zzl();
    }
}

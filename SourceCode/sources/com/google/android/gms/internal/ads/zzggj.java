package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzggj implements zzggm {
    final /* synthetic */ zzggg zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzggj(zzggg zzgggVar) {
        this.zza = zzgggVar;
    }

    @Override // com.google.android.gms.internal.ads.zzggm
    public final zzggg zza(Class cls) throws GeneralSecurityException {
        if (this.zza.zzc().equals(cls)) {
            return this.zza;
        }
        throw new InternalError("This should never be called, as we always first check supportedPrimitives.");
    }

    @Override // com.google.android.gms.internal.ads.zzggm
    public final zzggg zzb() {
        return this.zza;
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
        return Collections.singleton(this.zza.zzc());
    }
}

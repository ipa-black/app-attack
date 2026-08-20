package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzglm extends zzggf {
    private final zzgmf zza;

    public zzglm(zzgmf zzgmfVar, @Nullable zzghn zzghnVar) throws GeneralSecurityException {
        int i = zzglj.zzb[zzgmfVar.zzb().ordinal()];
        this.zza = zzgmfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzggf
    public final zzghb zza() {
        zzgmf zzgmfVar = this.zza;
        return new zzgll(zzgmfVar.zzg(), zzgmfVar.zzc(), null);
    }
}

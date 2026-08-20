package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgiq extends zzglh {
    final /* synthetic */ zzgir zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgiq(zzgir zzgirVar, Class cls) {
        super(cls);
        this.zza = zzgirVar;
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final /* bridge */ /* synthetic */ zzgzn zza(zzgzn zzgznVar) throws GeneralSecurityException {
        zzgtw zzc = zzgtx.zzc();
        zzc.zza((zzgua) zzgznVar);
        zzc.zzb(0);
        return (zzgtx) zzc.zzak();
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final /* synthetic */ zzgzn zzb(zzgwv zzgwvVar) throws zzgyp {
        return zzgua.zze(zzgwvVar, zzgxp.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final /* bridge */ /* synthetic */ void zzd(zzgzn zzgznVar) throws GeneralSecurityException {
        zzgua zzguaVar = (zzgua) zzgznVar;
        if (zzguaVar.zzf().isEmpty() || !zzguaVar.zzg()) {
            throw new GeneralSecurityException("invalid key format: missing KEK URI or DEK template");
        }
    }
}

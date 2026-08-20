package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgjk extends zzglh {
    final /* synthetic */ zzgjl zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgjk(zzgjl zzgjlVar, Class cls) {
        super(cls);
        this.zza = zzgjlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final /* bridge */ /* synthetic */ zzgzn zza(zzgzn zzgznVar) throws GeneralSecurityException {
        zzgqm zzc = zzgqn.zzc();
        zzc.zza(zzgwv.zzv(zzgvv.zza(((zzgqq) zzgznVar).zza())));
        zzc.zzb(0);
        return (zzgqn) zzc.zzak();
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final /* synthetic */ zzgzn zzb(zzgwv zzgwvVar) throws zzgyp {
        return zzgqq.zze(zzgwvVar, zzgxp.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final Map zzc() throws GeneralSecurityException {
        HashMap hashMap = new HashMap();
        zzgqp zzc = zzgqq.zzc();
        zzc.zza(64);
        hashMap.put("AES256_SIV", new zzglg((zzgqq) zzc.zzak(), 1));
        zzgqp zzc2 = zzgqq.zzc();
        zzc2.zza(64);
        hashMap.put("AES256_SIV_RAW", new zzglg((zzgqq) zzc2.zzak(), 3));
        return Collections.unmodifiableMap(hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final /* bridge */ /* synthetic */ void zzd(zzgzn zzgznVar) throws GeneralSecurityException {
        zzgqq zzgqqVar = (zzgqq) zzgznVar;
        if (zzgqqVar.zza() == 64) {
            return;
        }
        int zza = zzgqqVar.zza();
        throw new InvalidAlgorithmParameterException("invalid key size: " + zza + ". Valid keys must have 64 bytes.");
    }
}

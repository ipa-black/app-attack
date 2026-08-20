package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzghu extends zzglh {
    final /* synthetic */ zzghv zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzghu(zzghv zzghvVar, Class cls) {
        super(cls);
        this.zza = zzghvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final /* bridge */ /* synthetic */ zzgzn zza(zzgzn zzgznVar) throws GeneralSecurityException {
        zzgpg zzgpgVar = (zzgpg) zzgznVar;
        new zzghy();
        zzgpj zzf = zzghx.zzf(zzgpgVar.zze());
        zzgzn zza = new zzgno().zza().zza(zzgpgVar.zzf());
        zzgpc zzc = zzgpd.zzc();
        zzc.zza(zzf);
        zzc.zzb((zzgrx) zza);
        zzc.zzc(0);
        return (zzgpd) zzc.zzak();
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final /* synthetic */ zzgzn zzb(zzgwv zzgwvVar) throws zzgyp {
        return zzgpg.zzd(zzgwvVar, zzgxp.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final Map zzc() throws GeneralSecurityException {
        HashMap hashMap = new HashMap();
        hashMap.put("AES128_CTR_HMAC_SHA256", zzghv.zzg(16, 16, 32, 16, 5, 1));
        hashMap.put("AES128_CTR_HMAC_SHA256_RAW", zzghv.zzg(16, 16, 32, 16, 5, 3));
        hashMap.put("AES256_CTR_HMAC_SHA256", zzghv.zzg(32, 16, 32, 32, 5, 1));
        hashMap.put("AES256_CTR_HMAC_SHA256_RAW", zzghv.zzg(32, 16, 32, 32, 5, 3));
        return Collections.unmodifiableMap(hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final /* bridge */ /* synthetic */ void zzd(zzgzn zzgznVar) throws GeneralSecurityException {
        zzgpg zzgpgVar = (zzgpg) zzgznVar;
        ((zzghx) new zzghy().zza()).zzd(zzgpgVar.zze());
        new zzgno().zza().zzd(zzgpgVar.zzf());
        zzgvx.zza(zzgpgVar.zze().zza());
    }
}

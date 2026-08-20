package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgid extends zzglh {
    final /* synthetic */ zzgie zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgid(zzgie zzgieVar, Class cls) {
        super(cls);
        this.zza = zzgieVar;
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final /* bridge */ /* synthetic */ zzgzn zza(zzgzn zzgznVar) throws GeneralSecurityException {
        zzgqa zzc = zzgqb.zzc();
        zzc.zza(zzgwv.zzv(zzgvv.zza(((zzgqe) zzgznVar).zza())));
        zzc.zzb(0);
        return (zzgqb) zzc.zzak();
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final /* synthetic */ zzgzn zzb(zzgwv zzgwvVar) throws zzgyp {
        return zzgqe.zze(zzgwvVar, zzgxp.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final Map zzc() throws GeneralSecurityException {
        HashMap hashMap = new HashMap();
        hashMap.put("AES128_GCM", zzgie.zzg(16, 1));
        hashMap.put("AES128_GCM_RAW", zzgie.zzg(16, 3));
        hashMap.put("AES256_GCM", zzgie.zzg(32, 1));
        hashMap.put("AES256_GCM_RAW", zzgie.zzg(32, 3));
        return Collections.unmodifiableMap(hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final /* synthetic */ void zzd(zzgzn zzgznVar) throws GeneralSecurityException {
        zzgvx.zza(((zzgqe) zzgznVar).zza());
    }
}

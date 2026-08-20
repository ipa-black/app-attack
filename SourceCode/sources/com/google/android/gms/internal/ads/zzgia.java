package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgia extends zzglh {
    final /* synthetic */ zzgib zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgia(zzgib zzgibVar, Class cls) {
        super(cls);
        this.zza = zzgibVar;
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final /* bridge */ /* synthetic */ zzgzn zza(zzgzn zzgznVar) throws GeneralSecurityException {
        zzgpv zzgpvVar = (zzgpv) zzgznVar;
        zzgpr zzc = zzgps.zzc();
        zzc.zza(zzgwv.zzv(zzgvv.zza(zzgpvVar.zza())));
        zzc.zzb(zzgpvVar.zzf());
        zzc.zzc(0);
        return (zzgps) zzc.zzak();
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final /* synthetic */ zzgzn zzb(zzgwv zzgwvVar) throws zzgyp {
        return zzgpv.zze(zzgwvVar, zzgxp.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final Map zzc() throws GeneralSecurityException {
        HashMap hashMap = new HashMap();
        hashMap.put("AES128_EAX", zzgib.zzg(16, 16, 1));
        hashMap.put("AES128_EAX_RAW", zzgib.zzg(16, 16, 3));
        hashMap.put("AES256_EAX", zzgib.zzg(32, 16, 1));
        hashMap.put("AES256_EAX_RAW", zzgib.zzg(32, 16, 3));
        return Collections.unmodifiableMap(hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final /* bridge */ /* synthetic */ void zzd(zzgzn zzgznVar) throws GeneralSecurityException {
        zzgpv zzgpvVar = (zzgpv) zzgznVar;
        zzgvx.zza(zzgpvVar.zza());
        if (zzgpvVar.zzf().zza() != 12 && zzgpvVar.zzf().zza() != 16) {
            throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
        }
    }
}

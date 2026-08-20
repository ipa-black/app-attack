package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgmw extends zzglh {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgmw(zzgmx zzgmxVar, Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final /* bridge */ /* synthetic */ zzgzn zza(zzgzn zzgznVar) throws GeneralSecurityException {
        zzgox zzgoxVar = (zzgox) zzgznVar;
        zzgot zzc = zzgou.zzc();
        zzc.zzc(0);
        zzc.zza(zzgwv.zzv(zzgvv.zza(zzgoxVar.zza())));
        zzc.zzb(zzgoxVar.zzf());
        return (zzgou) zzc.zzak();
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final /* synthetic */ zzgzn zzb(zzgwv zzgwvVar) throws zzgyp {
        return zzgox.zze(zzgwvVar, zzgxp.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final Map zzc() throws GeneralSecurityException {
        HashMap hashMap = new HashMap();
        zzgow zzc = zzgox.zzc();
        zzc.zza(32);
        zzgoz zzc2 = zzgpa.zzc();
        zzc2.zza(16);
        zzc.zzb((zzgpa) zzc2.zzak());
        hashMap.put("AES_CMAC", new zzglg((zzgox) zzc.zzak(), 1));
        zzgow zzc3 = zzgox.zzc();
        zzc3.zza(32);
        zzgoz zzc4 = zzgpa.zzc();
        zzc4.zza(16);
        zzc3.zzb((zzgpa) zzc4.zzak());
        hashMap.put("AES256_CMAC", new zzglg((zzgox) zzc3.zzak(), 1));
        zzgow zzc5 = zzgox.zzc();
        zzc5.zza(32);
        zzgoz zzc6 = zzgpa.zzc();
        zzc6.zza(16);
        zzc5.zzb((zzgpa) zzc6.zzak());
        hashMap.put("AES256_CMAC_RAW", new zzglg((zzgox) zzc5.zzak(), 3));
        return Collections.unmodifiableMap(hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final /* bridge */ /* synthetic */ void zzd(zzgzn zzgznVar) throws GeneralSecurityException {
        zzgox zzgoxVar = (zzgox) zzgznVar;
        zzgmx.zzm(zzgoxVar.zzf());
        zzgmx.zzn(zzgoxVar.zza());
    }
}

package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECPoint;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgjq extends zzglh {
    final /* synthetic */ zzgjr zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgjq(zzgjr zzgjrVar, Class cls) {
        super(cls);
        this.zza = zzgjrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final /* bridge */ /* synthetic */ zzgzn zza(zzgzn zzgznVar) throws GeneralSecurityException {
        zzgre zzgreVar = (zzgre) zzgznVar;
        KeyPair zzc = zzgvc.zzc(zzgvc.zzk(zzgka.zzc(zzgreVar.zze().zzf().zzg())));
        ECPoint w = ((ECPublicKey) zzc.getPublic()).getW();
        zzgrm zzd = zzgrn.zzd();
        zzd.zzb(0);
        zzd.zza(zzgreVar.zze());
        zzd.zzc(zzgwv.zzv(w.getAffineX().toByteArray()));
        zzd.zzd(zzgwv.zzv(w.getAffineY().toByteArray()));
        zzgrj zzc2 = zzgrk.zzc();
        zzc2.zzc(0);
        zzc2.zzb((zzgrn) zzd.zzak());
        zzc2.zza(zzgwv.zzv(((ECPrivateKey) zzc.getPrivate()).getS().toByteArray()));
        return (zzgrk) zzc2.zzak();
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final /* synthetic */ zzgzn zzb(zzgwv zzgwvVar) throws zzgyp {
        return zzgre.zzd(zzgwvVar, zzgxp.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final Map zzc() throws GeneralSecurityException {
        byte[] bArr;
        byte[] bArr2;
        byte[] bArr3;
        byte[] bArr4;
        byte[] bArr5;
        byte[] bArr6;
        byte[] bArr7;
        byte[] bArr8;
        byte[] bArr9;
        HashMap hashMap = new HashMap();
        zzggp zza = zzggq.zza("AES128_GCM");
        bArr = zzgjr.zza;
        hashMap.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM", zzgjr.zzh(4, 5, 3, zza, bArr, 1));
        zzggp zza2 = zzggq.zza("AES128_GCM");
        bArr2 = zzgjr.zza;
        hashMap.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_RAW", zzgjr.zzh(4, 5, 3, zza2, bArr2, 3));
        zzggp zza3 = zzggq.zza("AES128_GCM");
        bArr3 = zzgjr.zza;
        hashMap.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM", zzgjr.zzh(4, 5, 4, zza3, bArr3, 1));
        zzggp zza4 = zzggq.zza("AES128_GCM");
        bArr4 = zzgjr.zza;
        hashMap.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM_RAW", zzgjr.zzh(4, 5, 4, zza4, bArr4, 3));
        zzggp zza5 = zzggq.zza("AES128_GCM");
        bArr5 = zzgjr.zza;
        hashMap.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_COMPRESSED_WITHOUT_PREFIX", zzgjr.zzh(4, 5, 4, zza5, bArr5, 3));
        zzggp zza6 = zzggq.zza("AES128_CTR_HMAC_SHA256");
        bArr6 = zzgjr.zza;
        hashMap.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256", zzgjr.zzh(4, 5, 3, zza6, bArr6, 1));
        zzggp zza7 = zzggq.zza("AES128_CTR_HMAC_SHA256");
        bArr7 = zzgjr.zza;
        hashMap.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW", zzgjr.zzh(4, 5, 3, zza7, bArr7, 3));
        zzggp zza8 = zzggq.zza("AES128_CTR_HMAC_SHA256");
        bArr8 = zzgjr.zza;
        hashMap.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256", zzgjr.zzh(4, 5, 4, zza8, bArr8, 1));
        zzggp zza9 = zzggq.zza("AES128_CTR_HMAC_SHA256");
        bArr9 = zzgjr.zza;
        hashMap.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW", zzgjr.zzh(4, 5, 4, zza9, bArr9, 3));
        return Collections.unmodifiableMap(hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final /* synthetic */ void zzd(zzgzn zzgznVar) throws GeneralSecurityException {
        zzgka.zza(((zzgre) zzgznVar).zze());
    }
}

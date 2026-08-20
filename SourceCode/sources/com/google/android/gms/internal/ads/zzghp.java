package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzghp {
    public static final String zza;
    public static final String zzb;
    @Deprecated
    public static final zzguf zzc;
    @Deprecated
    public static final zzguf zzd;
    @Deprecated
    public static final zzguf zze;

    static {
        new zzghv();
        zza = "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey";
        new zzgie();
        zzb = "type.googleapis.com/google.crypto.tink.AesGcmKey";
        new zzgih();
        new zzgib();
        new zzgin();
        new zzgir();
        new zzgik();
        new zzgiu();
        zzguf zzc2 = zzguf.zzc();
        zzc = zzc2;
        zzd = zzc2;
        zze = zzc2;
        try {
            zza();
        } catch (GeneralSecurityException e2) {
            throw new ExceptionInInitializerError(e2);
        }
    }

    public static void zza() throws GeneralSecurityException {
        zzghm.zzo(new zzghs());
        zzgoa.zza();
        zzghm.zzn(new zzghv(), true);
        zzghm.zzn(new zzgie(), true);
        if (zzgji.zzb()) {
            return;
        }
        zzghm.zzn(new zzgib(), true);
        zzgih.zzg(true);
        zzghm.zzn(new zzgik(), true);
        zzghm.zzn(new zzgin(), true);
        zzghm.zzn(new zzgir(), true);
        zzghm.zzn(new zzgiu(), true);
    }
}

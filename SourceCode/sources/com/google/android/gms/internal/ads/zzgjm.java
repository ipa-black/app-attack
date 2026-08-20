package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgjm {
    public static final String zza;
    @Deprecated
    public static final zzguf zzb;
    @Deprecated
    public static final zzguf zzc;

    static {
        new zzgjl();
        zza = "type.googleapis.com/google.crypto.tink.AesSivKey";
        zzb = zzguf.zzc();
        zzc = zzguf.zzc();
        try {
            zzghm.zzo(new zzgjo());
            if (zzgji.zzb()) {
                return;
            }
            zzghm.zzn(new zzgjl(), true);
        } catch (GeneralSecurityException e2) {
            throw new ExceptionInInitializerError(e2);
        }
    }
}

package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgju {
    @Deprecated
    public static final zzguf zza;
    @Deprecated
    public static final zzguf zzb;
    @Deprecated
    public static final zzguf zzc;

    static {
        new zzgjt();
        new zzgjr();
        zza = zzguf.zzc();
        zzb = zzguf.zzc();
        zzc = zzguf.zzc();
        try {
            zzghm.zzo(new zzgjw());
            zzghm.zzo(new zzgjz());
            zzghp.zza();
            if (zzgji.zzb()) {
                return;
            }
            zzghm.zzl(new zzgjr(), new zzgjt(), true);
            zzghm.zzl(new zzgkp(), new zzgkr(), true);
        } catch (GeneralSecurityException e2) {
            throw new ExceptionInInitializerError(e2);
        }
    }
}

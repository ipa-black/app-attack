package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzglb {
    private final zzgwa zza;
    private final Class zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzglb(zzgwa zzgwaVar, Class cls, zzgla zzglaVar) {
        this.zza = zzgwaVar;
        this.zzb = cls;
    }

    public static zzglb zzb(zzgkz zzgkzVar, zzgwa zzgwaVar, Class cls) {
        return new zzgky(zzgwaVar, cls, zzgkzVar);
    }

    public abstract zzggf zza(zzgmh zzgmhVar, @Nullable zzghn zzghnVar) throws GeneralSecurityException;

    public final zzgwa zzc() {
        return this.zza;
    }

    public final Class zzd() {
        return this.zzb;
    }
}

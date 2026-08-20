package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgmf implements zzgmh {
    private final String zza;
    private final zzgwa zzb;
    private final zzgwv zzc;
    private final zzgsv zzd;
    private final zzguc zze;
    @Nullable
    private final Integer zzf;

    private zzgmf(String str, zzgwv zzgwvVar, zzgsv zzgsvVar, zzguc zzgucVar, @Nullable Integer num) {
        this.zza = str;
        this.zzb = zzgmq.zza(str);
        this.zzc = zzgwvVar;
        this.zzd = zzgsvVar;
        this.zze = zzgucVar;
        this.zzf = num;
    }

    public static zzgmf zza(String str, zzgwv zzgwvVar, zzgsv zzgsvVar, zzguc zzgucVar, @Nullable Integer num) throws GeneralSecurityException {
        if (zzgucVar == zzguc.RAW) {
            if (num != null) {
                throw new GeneralSecurityException("Keys with output prefix type raw should not have an id requirement.");
            }
        } else if (num == null) {
            throw new GeneralSecurityException("Keys with output prefix type different from raw should have an id requirement.");
        }
        return new zzgmf(str, zzgwvVar, zzgsvVar, zzgucVar, num);
    }

    public final zzgsv zzb() {
        return this.zzd;
    }

    public final zzguc zzc() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgmh
    public final zzgwa zzd() {
        return this.zzb;
    }

    public final zzgwv zze() {
        return this.zzc;
    }

    @Nullable
    public final Integer zzf() {
        return this.zzf;
    }

    public final String zzg() {
        return this.zza;
    }
}

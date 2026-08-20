package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgln extends zzghb {
    private final zzgmg zza;

    public zzgln(zzgmg zzgmgVar) {
        this.zza = zzgmgVar;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzgln) {
            zzgmg zzgmgVar = ((zzgln) obj).zza;
            return this.zza.zzb().zze().equals(zzgmgVar.zzb().zze()) && this.zza.zzb().zzg().equals(zzgmgVar.zzb().zzg()) && this.zza.zzb().zzf().equals(zzgmgVar.zzb().zzf());
        }
        return false;
    }

    public final int hashCode() {
        zzgmg zzgmgVar = this.zza;
        return Arrays.hashCode(new Object[]{zzgmgVar.zzb(), zzgmgVar.zzd()});
    }

    public final String toString() {
        String str;
        String zzg = this.zza.zzb().zzg();
        zzguc zze = this.zza.zzb().zze();
        zzguc zzgucVar = zzguc.UNKNOWN_PREFIX;
        int ordinal = zze.ordinal();
        if (ordinal == 1) {
            str = "TINK";
        } else if (ordinal == 2) {
            str = "LEGACY";
        } else if (ordinal != 3) {
            str = ordinal != 4 ? "UNKNOWN" : "CRUNCHY";
        } else {
            str = "RAW";
        }
        return String.format("(typeUrl=%s, outputPrefixType=%s)", zzg, str);
    }

    public final zzgmg zza() {
        return this.zza;
    }
}

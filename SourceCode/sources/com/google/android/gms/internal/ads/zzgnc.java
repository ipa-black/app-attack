package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgnc extends zzgoc {
    private final int zza;
    private final int zzb;
    private final zzgna zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgnc(int i, int i2, zzgna zzgnaVar, zzgnb zzgnbVar) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = zzgnaVar;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzgnc) {
            zzgnc zzgncVar = (zzgnc) obj;
            return zzgncVar.zza == this.zza && zzgncVar.zzb() == zzb() && zzgncVar.zzc == this.zzc;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zzb), this.zzc});
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzc);
        int i = this.zzb;
        int i2 = this.zza;
        return "AES-CMAC Parameters (variant: " + valueOf + ", " + i + "-byte tags, and " + i2 + "-byte key)";
    }

    public final int zza() {
        return this.zza;
    }

    public final int zzb() {
        zzgna zzgnaVar = this.zzc;
        if (zzgnaVar == zzgna.zzd) {
            return this.zzb;
        }
        if (zzgnaVar == zzgna.zza || zzgnaVar == zzgna.zzb || zzgnaVar == zzgna.zzc) {
            return this.zzb + 5;
        }
        throw new IllegalStateException("Unknown variant");
    }

    public final zzgna zzc() {
        return this.zzc;
    }

    public final boolean zzd() {
        return this.zzc != zzgna.zzd;
    }
}

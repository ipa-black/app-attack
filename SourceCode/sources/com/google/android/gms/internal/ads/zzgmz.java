package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import javax.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgmz {
    @Nullable
    private Integer zza;
    @Nullable
    private Integer zzb;
    private zzgna zzc;

    private zzgmz() {
        this.zza = null;
        this.zzb = null;
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgmz(zzgmy zzgmyVar) {
        this.zza = null;
        this.zzb = null;
        this.zzc = zzgna.zzd;
    }

    public final zzgmz zzc(zzgna zzgnaVar) {
        this.zzc = zzgnaVar;
        return this;
    }

    public final zzgnc zzd() throws GeneralSecurityException {
        Integer num = this.zza;
        if (num == null || this.zzb == null) {
            throw new GeneralSecurityException("Key size and/or tag size not set");
        }
        return new zzgnc(num.intValue(), this.zzb.intValue(), this.zzc, null);
    }

    public final zzgmz zza(int i) throws GeneralSecurityException {
        if (i == 16 || i == 32) {
            this.zza = Integer.valueOf(i);
            return this;
        }
        throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 128-bit and 256-bit AES keys are supported", Integer.valueOf(i * 8)));
    }

    public final zzgmz zzb(int i) throws GeneralSecurityException {
        if (i < 10 || i > 16) {
            throw new GeneralSecurityException("Invalid tag size for AesCmacParameters: " + i);
        }
        this.zzb = Integer.valueOf(i);
        return this;
    }
}

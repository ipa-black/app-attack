package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import javax.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgnq {
    @Nullable
    private Integer zza;
    @Nullable
    private Integer zzb;
    private zzgnr zzc;
    private zzgns zzd;

    private zzgnq() {
        this.zza = null;
        this.zzb = null;
        this.zzc = null;
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgnq(zzgnp zzgnpVar) {
        this.zza = null;
        this.zzb = null;
        this.zzc = null;
        this.zzd = zzgns.zzd;
    }

    public final zzgnq zza(zzgnr zzgnrVar) {
        this.zzc = zzgnrVar;
        return this;
    }

    public final zzgnq zzb(int i) throws GeneralSecurityException {
        this.zza = Integer.valueOf(i);
        return this;
    }

    public final zzgnq zzc(int i) throws GeneralSecurityException {
        this.zzb = Integer.valueOf(i);
        return this;
    }

    public final zzgnq zzd(zzgns zzgnsVar) {
        this.zzd = zzgnsVar;
        return this;
    }

    public final zzgnu zze() throws GeneralSecurityException {
        Integer num = this.zza;
        if (num != null) {
            if (this.zzb != null) {
                if (this.zzc == null) {
                    throw new GeneralSecurityException("hash type is not set");
                }
                if (num.intValue() < 16) {
                    throw new InvalidAlgorithmParameterException(String.format("Invalid key size in bytes %d; must be at least 16 bytes", this.zza));
                }
                int intValue = this.zzb.intValue();
                zzgnr zzgnrVar = this.zzc;
                if (intValue < 10) {
                    throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; must be at least 10 bytes", Integer.valueOf(intValue)));
                }
                if (zzgnrVar == zzgnr.zza) {
                    if (intValue > 20) {
                        throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 20 bytes for SHA1", Integer.valueOf(intValue)));
                    }
                } else if (zzgnrVar == zzgnr.zzb) {
                    if (intValue > 28) {
                        throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 28 bytes for SHA224", Integer.valueOf(intValue)));
                    }
                } else if (zzgnrVar == zzgnr.zzc) {
                    if (intValue > 32) {
                        throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 32 bytes for SHA256", Integer.valueOf(intValue)));
                    }
                } else if (zzgnrVar == zzgnr.zzd) {
                    if (intValue > 48) {
                        throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 48 bytes for SHA384", Integer.valueOf(intValue)));
                    }
                } else if (zzgnrVar != zzgnr.zze) {
                    throw new GeneralSecurityException("unknown hash type; must be SHA256, SHA384 or SHA512");
                } else {
                    if (intValue > 64) {
                        throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 64 bytes for SHA512", Integer.valueOf(intValue)));
                    }
                }
                return new zzgnu(this.zza.intValue(), this.zzb.intValue(), this.zzd, this.zzc, null);
            }
            throw new GeneralSecurityException("tag size is not set");
        }
        throw new GeneralSecurityException("key size is not set");
    }
}

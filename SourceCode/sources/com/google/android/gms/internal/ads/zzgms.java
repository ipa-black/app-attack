package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgms {
    private zzgnc zza = null;
    private zzgwb zzb = null;
    @Nullable
    private Integer zzc = null;

    private zzgms() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgms(zzgmr zzgmrVar) {
    }

    public final zzgms zza(zzgwb zzgwbVar) throws GeneralSecurityException {
        this.zzb = zzgwbVar;
        return this;
    }

    public final zzgms zzb(@Nullable Integer num) {
        this.zzc = num;
        return this;
    }

    public final zzgms zzc(zzgnc zzgncVar) {
        this.zza = zzgncVar;
        return this;
    }

    public final zzgmu zzd() throws GeneralSecurityException {
        zzgwb zzgwbVar;
        zzgwa zzb;
        zzgnc zzgncVar = this.zza;
        if (zzgncVar == null || (zzgwbVar = this.zzb) == null) {
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }
        if (zzgncVar.zza() == zzgwbVar.zza()) {
            if (!zzgncVar.zzd() || this.zzc != null) {
                if (this.zza.zzd() || this.zzc == null) {
                    if (this.zza.zzc() == zzgna.zzd) {
                        zzb = zzgwa.zzb(new byte[0]);
                    } else if (this.zza.zzc() == zzgna.zzc || this.zza.zzc() == zzgna.zzb) {
                        zzb = zzgwa.zzb(ByteBuffer.allocate(5).put((byte) 0).putInt(this.zzc.intValue()).array());
                    } else if (this.zza.zzc() != zzgna.zza) {
                        throw new IllegalStateException("Unknown AesCmacParametersParameters.Variant: ".concat(String.valueOf(String.valueOf(this.zza.zzc()))));
                    } else {
                        zzb = zzgwa.zzb(ByteBuffer.allocate(5).put((byte) 1).putInt(this.zzc.intValue()).array());
                    }
                    return new zzgmu(this.zza, this.zzb, zzb, this.zzc, null);
                }
                throw new GeneralSecurityException("Cannot create key with ID requirement with format without ID requirement");
            }
            throw new GeneralSecurityException("Cannot create key without ID requirement with format with ID requirement");
        }
        throw new GeneralSecurityException("Key size mismatch");
    }
}

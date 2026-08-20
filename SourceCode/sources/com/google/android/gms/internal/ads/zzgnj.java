package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgnj {
    private zzgnu zza = null;
    private zzgwb zzb = null;
    @Nullable
    private Integer zzc = null;

    private zzgnj() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgnj(zzgni zzgniVar) {
    }

    public final zzgnj zza(@Nullable Integer num) {
        this.zzc = num;
        return this;
    }

    public final zzgnj zzb(zzgwb zzgwbVar) {
        this.zzb = zzgwbVar;
        return this;
    }

    public final zzgnj zzc(zzgnu zzgnuVar) {
        this.zza = zzgnuVar;
        return this;
    }

    public final zzgnl zzd() throws GeneralSecurityException {
        zzgwb zzgwbVar;
        zzgwa zzb;
        zzgnu zzgnuVar = this.zza;
        if (zzgnuVar == null || (zzgwbVar = this.zzb) == null) {
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }
        if (zzgnuVar.zza() == zzgwbVar.zza()) {
            if (!zzgnuVar.zzd() || this.zzc != null) {
                if (this.zza.zzd() || this.zzc == null) {
                    if (this.zza.zzc() == zzgns.zzd) {
                        zzb = zzgwa.zzb(new byte[0]);
                    } else if (this.zza.zzc() == zzgns.zzc || this.zza.zzc() == zzgns.zzb) {
                        zzb = zzgwa.zzb(ByteBuffer.allocate(5).put((byte) 0).putInt(this.zzc.intValue()).array());
                    } else if (this.zza.zzc() != zzgns.zza) {
                        throw new IllegalStateException("Unknown HmacParameters.Variant: ".concat(String.valueOf(String.valueOf(this.zza.zzc()))));
                    } else {
                        zzb = zzgwa.zzb(ByteBuffer.allocate(5).put((byte) 1).putInt(this.zzc.intValue()).array());
                    }
                    return new zzgnl(this.zza, this.zzb, zzb, this.zzc, null);
                }
                throw new GeneralSecurityException("Cannot create key with ID requirement with format without ID requirement");
            }
            throw new GeneralSecurityException("Cannot create key without ID requirement with format with ID requirement");
        }
        throw new GeneralSecurityException("Key size mismatch");
    }
}

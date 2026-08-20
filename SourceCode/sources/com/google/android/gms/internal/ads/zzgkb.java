package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgkb implements zzguw {
    private final String zza;
    private final int zzb;
    private zzgqb zzc;
    private zzgpd zzd;
    private int zze;
    private zzgqn zzf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgkb(zzgtb zzgtbVar) throws GeneralSecurityException {
        String zzg = zzgtbVar.zzg();
        this.zza = zzg;
        if (zzg.equals(zzghp.zzb)) {
            try {
                zzgqe zze = zzgqe.zze(zzgtbVar.zzf(), zzgxp.zza());
                this.zzc = (zzgqb) zzghm.zzd(zzgtbVar);
                this.zzb = zze.zza();
            } catch (zzgyp e2) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesGcmKeyFormat", e2);
            }
        } else if (zzg.equals(zzghp.zza)) {
            try {
                zzgpg zzd = zzgpg.zzd(zzgtbVar.zzf(), zzgxp.zza());
                this.zzd = (zzgpd) zzghm.zzd(zzgtbVar);
                this.zze = zzd.zze().zza();
                this.zzb = this.zze + zzd.zzf().zza();
            } catch (zzgyp e3) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat", e3);
            }
        } else if (zzg.equals(zzgjm.zza)) {
            try {
                zzgqq zze2 = zzgqq.zze(zzgtbVar.zzf(), zzgxp.zza());
                this.zzf = (zzgqn) zzghm.zzd(zzgtbVar);
                this.zzb = zze2.zza();
            } catch (zzgyp e4) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat", e4);
            }
        } else {
            throw new GeneralSecurityException("unsupported AEAD DEM key type: ".concat(String.valueOf(zzg)));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzguw
    public final int zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzguw
    public final zzgkx zzb(byte[] bArr) throws GeneralSecurityException {
        if (bArr.length != this.zzb) {
            throw new GeneralSecurityException("Symmetric key has incorrect length");
        }
        if (this.zza.equals(zzghp.zzb)) {
            zzgqa zzc = zzgqb.zzc();
            zzc.zzai(this.zzc);
            zzc.zza(zzgwv.zzw(bArr, 0, this.zzb));
            return new zzgkx((zzgfw) zzghm.zzh(this.zza, (zzgqb) zzc.zzak(), zzgfw.class));
        } else if (this.zza.equals(zzghp.zza)) {
            byte[] copyOfRange = Arrays.copyOfRange(bArr, 0, this.zze);
            byte[] copyOfRange2 = Arrays.copyOfRange(bArr, this.zze, this.zzb);
            zzgpi zzc2 = zzgpj.zzc();
            zzc2.zzai(this.zzd.zzf());
            zzc2.zza(zzgwv.zzv(copyOfRange));
            zzgrw zzc3 = zzgrx.zzc();
            zzc3.zzai(this.zzd.zzg());
            zzc3.zza(zzgwv.zzv(copyOfRange2));
            zzgpc zzc4 = zzgpd.zzc();
            zzc4.zzc(this.zzd.zza());
            zzc4.zza((zzgpj) zzc2.zzak());
            zzc4.zzb((zzgrx) zzc3.zzak());
            return new zzgkx((zzgfw) zzghm.zzh(this.zza, (zzgpd) zzc4.zzak(), zzgfw.class));
        } else if (this.zza.equals(zzgjm.zza)) {
            zzgqm zzc5 = zzgqn.zzc();
            zzc5.zzai(this.zzf);
            zzc5.zza(zzgwv.zzw(bArr, 0, this.zzb));
            return new zzgkx((zzggc) zzghm.zzh(this.zza, (zzgqn) zzc5.zzak(), zzggc.class));
        } else {
            throw new GeneralSecurityException("unknown DEM key type");
        }
    }
}

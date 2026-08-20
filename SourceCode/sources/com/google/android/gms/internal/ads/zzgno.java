package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgno extends zzgli {
    public zzgno() {
        super(zzgrx.class, new zzgnm(zzggz.class));
    }

    public static final void zzh(zzgrx zzgrxVar) throws GeneralSecurityException {
        zzgvx.zzb(zzgrxVar.zza(), 0);
        if (zzgrxVar.zzh().zzd() < 16) {
            throw new GeneralSecurityException("key too short");
        }
        zzn(zzgrxVar.zzg());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ zzglg zzm(int i, int i2, int i3, int i4) {
        zzgrz zzc = zzgsa.zzc();
        zzgsc zzc2 = zzgsd.zzc();
        zzc2.zzb(i3);
        zzc2.zza(i2);
        zzc.zzb((zzgsd) zzc2.zzak());
        zzc.zza(i);
        return new zzglg((zzgsa) zzc.zzak(), i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzn(zzgsd zzgsdVar) throws GeneralSecurityException {
        if (zzgsdVar.zza() < 10) {
            throw new GeneralSecurityException("tag size too small");
        }
        int zzg = zzgsdVar.zzg() - 2;
        if (zzg == 1) {
            if (zzgsdVar.zza() > 20) {
                throw new GeneralSecurityException("tag size too big");
            }
        } else if (zzg == 2) {
            if (zzgsdVar.zza() > 48) {
                throw new GeneralSecurityException("tag size too big");
            }
        } else if (zzg == 3) {
            if (zzgsdVar.zza() > 32) {
                throw new GeneralSecurityException("tag size too big");
            }
        } else if (zzg == 4) {
            if (zzgsdVar.zza() > 64) {
                throw new GeneralSecurityException("tag size too big");
            }
        } else if (zzg == 5) {
            if (zzgsdVar.zza() > 28) {
                throw new GeneralSecurityException("tag size too big");
            }
        } else {
            throw new GeneralSecurityException("unknown hash type");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final zzglh zza() {
        return new zzgnn(this, zzgsa.class);
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final zzgsv zzb() {
        return zzgsv.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final /* synthetic */ zzgzn zzc(zzgwv zzgwvVar) throws zzgyp {
        return zzgrx.zzf(zzgwvVar, zzgxp.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final String zzd() {
        return "type.googleapis.com/google.crypto.tink.HmacKey";
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final /* bridge */ /* synthetic */ void zze(zzgzn zzgznVar) throws GeneralSecurityException {
        zzh((zzgrx) zzgznVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final int zzf() {
        return 2;
    }
}

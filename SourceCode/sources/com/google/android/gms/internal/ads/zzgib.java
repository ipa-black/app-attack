package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgib extends zzgli {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgib() {
        super(zzgps.class, new zzghz(zzgfw.class));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ zzglg zzg(int i, int i2, int i3) {
        zzgpu zzc = zzgpv.zzc();
        zzc.zza(i);
        zzgpx zzc2 = zzgpy.zzc();
        zzc2.zza(16);
        zzc.zzb((zzgpy) zzc2.zzak());
        return new zzglg((zzgpv) zzc.zzak(), i3);
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final zzglh zza() {
        return new zzgia(this, zzgpv.class);
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final zzgsv zzb() {
        return zzgsv.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final /* synthetic */ zzgzn zzc(zzgwv zzgwvVar) throws zzgyp {
        return zzgps.zze(zzgwvVar, zzgxp.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final String zzd() {
        return "type.googleapis.com/google.crypto.tink.AesEaxKey";
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final /* bridge */ /* synthetic */ void zze(zzgzn zzgznVar) throws GeneralSecurityException {
        zzgps zzgpsVar = (zzgps) zzgznVar;
        zzgvx.zzb(zzgpsVar.zza(), 0);
        zzgvx.zza(zzgpsVar.zzg().zzd());
        if (zzgpsVar.zzf().zza() != 12 && zzgpsVar.zzf().zza() != 16) {
            throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
        }
    }
}

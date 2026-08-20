package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzghv extends zzgli {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzghv() {
        super(zzgpd.class, new zzght(zzgfw.class));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ zzglg zzg(int i, int i2, int i3, int i4, int i5, int i6) {
        zzgpl zzc = zzgpm.zzc();
        zzgpo zzc2 = zzgpp.zzc();
        zzc2.zza(16);
        zzc.zzb((zzgpp) zzc2.zzak());
        zzc.zza(i);
        zzgrz zzc3 = zzgsa.zzc();
        zzgsc zzc4 = zzgsd.zzc();
        zzc4.zzb(5);
        zzc4.zza(i4);
        zzc3.zzb((zzgsd) zzc4.zzak());
        zzc3.zza(32);
        zzgpf zza = zzgpg.zza();
        zza.zza((zzgpm) zzc.zzak());
        zza.zzb((zzgsa) zzc3.zzak());
        return new zzglg((zzgpg) zza.zzak(), i6);
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final zzglh zza() {
        return new zzghu(this, zzgpg.class);
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final zzgsv zzb() {
        return zzgsv.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final /* synthetic */ zzgzn zzc(zzgwv zzgwvVar) throws zzgyp {
        return zzgpd.zze(zzgwvVar, zzgxp.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final String zzd() {
        return "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey";
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final /* bridge */ /* synthetic */ void zze(zzgzn zzgznVar) throws GeneralSecurityException {
        zzgpd zzgpdVar = (zzgpd) zzgznVar;
        zzgvx.zzb(zzgpdVar.zza(), 0);
        new zzghy();
        zzghy.zzh(zzgpdVar.zzf());
        new zzgno();
        zzgno.zzh(zzgpdVar.zzg());
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final int zzf() {
        return 2;
    }
}

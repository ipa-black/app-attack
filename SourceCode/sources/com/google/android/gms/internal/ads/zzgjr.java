package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgjr extends zzgme {
    private static final byte[] zza = new byte[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgjr() {
        super(zzgrk.class, zzgrn.class, new zzgjp(zzggd.class));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ zzglg zzh(int i, int i2, int i3, zzggp zzggpVar, byte[] bArr, int i4) {
        zzguc zzgucVar;
        zzgrd zza2 = zzgre.zza();
        zzgrp zza3 = zzgrq.zza();
        zza3.zzb(4);
        zza3.zzc(5);
        zza3.zza(zzgwv.zzv(bArr));
        zzgrq zzgrqVar = (zzgrq) zza3.zzak();
        zzgta zza4 = zzgtb.zza();
        zza4.zzb(zzggpVar.zzb());
        zza4.zzc(zzgwv.zzv(zzggpVar.zzc()));
        int zzd = zzggpVar.zzd() - 1;
        if (zzd == 0) {
            zzgucVar = zzguc.TINK;
        } else if (zzd == 1) {
            zzgucVar = zzguc.LEGACY;
        } else if (zzd != 2) {
            zzgucVar = zzguc.CRUNCHY;
        } else {
            zzgucVar = zzguc.RAW;
        }
        zza4.zza(zzgucVar);
        zzgra zza5 = zzgrb.zza();
        zza5.zza((zzgtb) zza4.zzak());
        zzgrg zzc = zzgrh.zzc();
        zzc.zzb(zzgrqVar);
        zzc.zza((zzgrb) zza5.zzak());
        zzc.zzc(i3);
        zza2.zza((zzgrh) zzc.zzak());
        return new zzglg((zzgre) zza2.zzak(), i4);
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final zzglh zza() {
        return new zzgjq(this, zzgre.class);
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final zzgsv zzb() {
        return zzgsv.ASYMMETRIC_PRIVATE;
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final /* synthetic */ zzgzn zzc(zzgwv zzgwvVar) throws zzgyp {
        return zzgrk.zze(zzgwvVar, zzgxp.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final String zzd() {
        return "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey";
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final /* bridge */ /* synthetic */ void zze(zzgzn zzgznVar) throws GeneralSecurityException {
        zzgrk zzgrkVar = (zzgrk) zzgznVar;
        if (zzgrkVar.zzg().zzD()) {
            throw new GeneralSecurityException("invalid ECIES private key");
        }
        zzgvx.zzb(zzgrkVar.zza(), 0);
        zzgka.zza(zzgrkVar.zzf().zzc());
    }
}

package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgnh {
    public static final /* synthetic */ int zza = 0;
    private static final zzgwa zzb;
    private static final zzgmc zzc;
    private static final zzgly zzd;
    private static final zzglf zze;
    private static final zzglb zzf;

    static {
        zzgwa zza2 = zzgmq.zza("type.googleapis.com/google.crypto.tink.AesCmacKey");
        zzb = zza2;
        zzc = zzgmc.zza(new zzgma() { // from class: com.google.android.gms.internal.ads.zzgnd
        }, zzgnc.class, zzgmg.class);
        zzd = zzgly.zza(new zzglw() { // from class: com.google.android.gms.internal.ads.zzgne
        }, zza2, zzgmg.class);
        zze = zzglf.zza(new zzgld() { // from class: com.google.android.gms.internal.ads.zzgnf
        }, zzgmu.class, zzgmf.class);
        zzf = zzglb.zzb(new zzgkz() { // from class: com.google.android.gms.internal.ads.zzgng
            @Override // com.google.android.gms.internal.ads.zzgkz
            public final zzggf zza(zzgmh zzgmhVar, zzghn zzghnVar) {
                zzgna zzgnaVar;
                int i = zzgnh.zza;
                if (!((zzgmf) zzgmhVar).zzg().equals("type.googleapis.com/google.crypto.tink.AesCmacKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to AesCmacParameters.parseParameters");
                }
                try {
                    zzgou zze2 = zzgou.zze(((zzgmf) zzgmhVar).zze(), zzgxp.zza());
                    if (zze2.zza() == 0) {
                        zzgmz zzgmzVar = new zzgmz(null);
                        zzgmzVar.zza(zze2.zzg().zzd());
                        zzgmzVar.zzb(zze2.zzf().zza());
                        zzguc zzc2 = ((zzgmf) zzgmhVar).zzc();
                        zzguc zzgucVar = zzguc.UNKNOWN_PREFIX;
                        int ordinal = zzc2.ordinal();
                        if (ordinal == 1) {
                            zzgnaVar = zzgna.zza;
                        } else if (ordinal == 2) {
                            zzgnaVar = zzgna.zzc;
                        } else if (ordinal == 3) {
                            zzgnaVar = zzgna.zzd;
                        } else if (ordinal != 4) {
                            int zza3 = zzc2.zza();
                            throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zza3);
                        } else {
                            zzgnaVar = zzgna.zzb;
                        }
                        zzgmzVar.zzc(zzgnaVar);
                        zzgnc zzd2 = zzgmzVar.zzd();
                        zzgms zzgmsVar = new zzgms(null);
                        zzgmsVar.zzc(zzd2);
                        zzgmsVar.zza(zzgwb.zzb(zze2.zzg().zzE(), zzghnVar));
                        zzgmsVar.zzb(((zzgmf) zzgmhVar).zzf());
                        return zzgmsVar.zzd();
                    }
                    throw new GeneralSecurityException("Only version 0 keys are accepted");
                } catch (zzgyp | IllegalArgumentException unused) {
                    throw new GeneralSecurityException("Parsing AesCmacKey failed");
                }
            }
        }, zza2, zzgmf.class);
    }

    public static void zza() throws GeneralSecurityException {
        zzglu zzb2 = zzglu.zzb();
        zzb2.zzf(zzc);
        zzb2.zze(zzd);
        zzb2.zzd(zze);
        zzb2.zzc(zzf);
    }
}

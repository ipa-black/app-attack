package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgnz {
    public static final /* synthetic */ int zza = 0;
    private static final zzgwa zzb;
    private static final zzgmc zzc;
    private static final zzgly zzd;
    private static final zzglf zze;
    private static final zzglb zzf;

    static {
        zzgwa zza2 = zzgmq.zza("type.googleapis.com/google.crypto.tink.HmacKey");
        zzb = zza2;
        zzc = zzgmc.zza(new zzgma() { // from class: com.google.android.gms.internal.ads.zzgnv
        }, zzgnu.class, zzgmg.class);
        zzd = zzgly.zza(new zzglw() { // from class: com.google.android.gms.internal.ads.zzgnw
        }, zza2, zzgmg.class);
        zze = zzglf.zza(new zzgld() { // from class: com.google.android.gms.internal.ads.zzgnx
        }, zzgnl.class, zzgmf.class);
        zzf = zzglb.zzb(new zzgkz() { // from class: com.google.android.gms.internal.ads.zzgny
            @Override // com.google.android.gms.internal.ads.zzgkz
            public final zzggf zza(zzgmh zzgmhVar, zzghn zzghnVar) {
                zzgnr zzgnrVar;
                zzgns zzgnsVar;
                int i = zzgnz.zza;
                if (((zzgmf) zzgmhVar).zzg().equals("type.googleapis.com/google.crypto.tink.HmacKey")) {
                    try {
                        zzgrx zzf2 = zzgrx.zzf(((zzgmf) zzgmhVar).zze(), zzgxp.zza());
                        if (zzf2.zza() == 0) {
                            zzgnq zzgnqVar = new zzgnq(null);
                            zzgnqVar.zzb(zzf2.zzh().zzd());
                            zzgnqVar.zzc(zzf2.zzg().zza());
                            int zzg = zzf2.zzg().zzg();
                            zzguc zzgucVar = zzguc.UNKNOWN_PREFIX;
                            int i2 = zzg - 2;
                            if (i2 == 1) {
                                zzgnrVar = zzgnr.zza;
                            } else if (i2 == 2) {
                                zzgnrVar = zzgnr.zzd;
                            } else if (i2 == 3) {
                                zzgnrVar = zzgnr.zzc;
                            } else if (i2 == 4) {
                                zzgnrVar = zzgnr.zze;
                            } else if (i2 != 5) {
                                throw new GeneralSecurityException("Unable to parse HashType: " + zzgru.zza(zzg));
                            } else {
                                zzgnrVar = zzgnr.zzb;
                            }
                            zzgnqVar.zza(zzgnrVar);
                            zzguc zzc2 = ((zzgmf) zzgmhVar).zzc();
                            int ordinal = zzc2.ordinal();
                            if (ordinal == 1) {
                                zzgnsVar = zzgns.zza;
                            } else if (ordinal == 2) {
                                zzgnsVar = zzgns.zzc;
                            } else if (ordinal == 3) {
                                zzgnsVar = zzgns.zzd;
                            } else if (ordinal != 4) {
                                throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zzc2.zza());
                            } else {
                                zzgnsVar = zzgns.zzb;
                            }
                            zzgnqVar.zzd(zzgnsVar);
                            zzgnu zze2 = zzgnqVar.zze();
                            zzgnj zzgnjVar = new zzgnj(null);
                            zzgnjVar.zzc(zze2);
                            zzgnjVar.zzb(zzgwb.zzb(zzf2.zzh().zzE(), zzghnVar));
                            zzgnjVar.zza(((zzgmf) zzgmhVar).zzf());
                            return zzgnjVar.zzd();
                        }
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    } catch (zzgyp | IllegalArgumentException unused) {
                        throw new GeneralSecurityException("Parsing HmacKey failed");
                    }
                }
                throw new IllegalArgumentException("Wrong type URL in call to HmacParameters.parseParameters");
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

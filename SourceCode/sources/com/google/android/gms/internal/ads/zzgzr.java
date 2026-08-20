package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgzr implements zzhag {
    private final zzgzn zza;
    private final zzhax zzb;
    private final boolean zzc;
    private final zzgxq zzd;

    private zzgzr(zzhax zzhaxVar, zzgxq zzgxqVar, zzgzn zzgznVar) {
        this.zzb = zzhaxVar;
        this.zzc = zzgxqVar.zzh(zzgznVar);
        this.zzd = zzgxqVar;
        this.zza = zzgznVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzgzr zzc(zzhax zzhaxVar, zzgxq zzgxqVar, zzgzn zzgznVar) {
        return new zzgzr(zzhaxVar, zzgxqVar, zzgznVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhag
    public final int zza(Object obj) {
        zzhax zzhaxVar = this.zzb;
        int zzb = zzhaxVar.zzb(zzhaxVar.zzd(obj));
        if (this.zzc) {
            this.zzd.zza(obj);
            throw null;
        }
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzhag
    public final int zzb(Object obj) {
        int hashCode = this.zzb.zzd(obj).hashCode();
        if (this.zzc) {
            this.zzd.zza(obj);
            throw null;
        }
        return hashCode;
    }

    @Override // com.google.android.gms.internal.ads.zzhag
    public final Object zze() {
        zzgzn zzgznVar = this.zza;
        if (zzgznVar instanceof zzgyd) {
            return ((zzgyd) zzgznVar).zzaC();
        }
        return zzgznVar.zzaN().zzam();
    }

    @Override // com.google.android.gms.internal.ads.zzhag
    public final void zzf(Object obj) {
        this.zzb.zzm(obj);
        this.zzd.zze(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzhag
    public final void zzg(Object obj, Object obj2) {
        zzhai.zzF(this.zzb, obj, obj2);
        if (this.zzc) {
            zzhai.zzE(this.zzd, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhag
    public final void zzh(Object obj, zzgzy zzgzyVar, zzgxp zzgxpVar) throws IOException {
        boolean zzO;
        zzhax zzhaxVar = this.zzb;
        zzgxq zzgxqVar = this.zzd;
        Object zzc = zzhaxVar.zzc(obj);
        zzgxu zzb = zzgxqVar.zzb(obj);
        while (zzgzyVar.zzc() != Integer.MAX_VALUE) {
            try {
                int zzd = zzgzyVar.zzd();
                if (zzd != 11) {
                    if ((zzd & 7) == 2) {
                        Object zzc2 = zzgxqVar.zzc(zzgxpVar, this.zza, zzd >>> 3);
                        if (zzc2 != null) {
                            zzgxqVar.zzf(zzgzyVar, zzc2, zzgxpVar, zzb);
                        } else {
                            zzO = zzhaxVar.zzp(zzc, zzgzyVar);
                        }
                    } else {
                        zzO = zzgzyVar.zzO();
                    }
                    if (!zzO) {
                        return;
                    }
                } else {
                    Object obj2 = null;
                    int i = 0;
                    zzgwv zzgwvVar = null;
                    while (zzgzyVar.zzc() != Integer.MAX_VALUE) {
                        int zzd2 = zzgzyVar.zzd();
                        if (zzd2 == 16) {
                            i = zzgzyVar.zzj();
                            obj2 = zzgxqVar.zzc(zzgxpVar, this.zza, i);
                        } else if (zzd2 == 26) {
                            if (obj2 != null) {
                                zzgxqVar.zzf(zzgzyVar, obj2, zzgxpVar, zzb);
                            } else {
                                zzgwvVar = zzgzyVar.zzp();
                            }
                        } else if (!zzgzyVar.zzO()) {
                            break;
                        }
                    }
                    if (zzgzyVar.zzd() != 12) {
                        throw zzgyp.zzb();
                    } else if (zzgwvVar != null) {
                        if (obj2 != null) {
                            zzgxqVar.zzg(zzgwvVar, obj2, zzgxpVar, zzb);
                        } else {
                            zzhaxVar.zzk(zzc, i, zzgwvVar);
                        }
                    }
                }
            } finally {
                zzhaxVar.zzn(obj, zzc);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhag
    public final void zzi(Object obj, byte[] bArr, int i, int i2, zzgwh zzgwhVar) throws IOException {
        zzgyd zzgydVar = (zzgyd) obj;
        if (zzgydVar.zzc == zzhay.zzc()) {
            zzgydVar.zzc = zzhay.zzf();
        }
        zzgya zzgyaVar = (zzgya) obj;
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzhag
    public final boolean zzj(Object obj, Object obj2) {
        if (this.zzb.zzd(obj).equals(this.zzb.zzd(obj2))) {
            if (this.zzc) {
                this.zzd.zza(obj);
                this.zzd.zza(obj2);
                throw null;
            }
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzhag
    public final boolean zzk(Object obj) {
        this.zzd.zza(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzhag
    public final void zzn(Object obj, zzgxl zzgxlVar) throws IOException {
        this.zzd.zza(obj);
        throw null;
    }
}

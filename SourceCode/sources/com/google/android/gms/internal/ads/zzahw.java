package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzahw implements zzyu {
    private final zzel zza;
    private final zzef zzb = new zzef();

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzahw(zzel zzelVar, zzahv zzahvVar) {
        this.zza = zzelVar;
    }

    @Override // com.google.android.gms.internal.ads.zzyu
    public final zzyt zza(zzzk zzzkVar, long j) throws IOException {
        int zzh;
        long j2;
        long zzf = zzzkVar.zzf();
        int min = (int) Math.min(20000L, zzzkVar.zzd() - zzf);
        this.zzb.zzC(min);
        ((zzyz) zzzkVar).zzm(this.zzb.zzH(), 0, min, false);
        zzef zzefVar = this.zzb;
        int i = -1;
        int i2 = -1;
        long j3 = -9223372036854775807L;
        while (zzefVar.zza() >= 4) {
            if (zzahx.zzh(zzefVar.zzH(), zzefVar.zzc()) != 442) {
                zzefVar.zzG(1);
            } else {
                zzefVar.zzG(4);
                long zzc = zzahy.zzc(zzefVar);
                if (zzc != C.TIME_UNSET) {
                    long zzb = this.zza.zzb(zzc);
                    if (zzb > j) {
                        if (j3 == C.TIME_UNSET) {
                            return zzyt.zzd(zzb, zzf);
                        }
                        j2 = i2;
                    } else if (100000 + zzb > j) {
                        j2 = zzefVar.zzc();
                    } else {
                        i2 = zzefVar.zzc();
                        j3 = zzb;
                    }
                    return zzyt.zze(zzf + j2);
                }
                int zzd = zzefVar.zzd();
                if (zzefVar.zza() < 10) {
                    zzefVar.zzF(zzd);
                } else {
                    zzefVar.zzG(9);
                    int zzk = zzefVar.zzk() & 7;
                    if (zzefVar.zza() < zzk) {
                        zzefVar.zzF(zzd);
                    } else {
                        zzefVar.zzG(zzk);
                        if (zzefVar.zza() < 4) {
                            zzefVar.zzF(zzd);
                        } else {
                            if (zzahx.zzh(zzefVar.zzH(), zzefVar.zzc()) == 443) {
                                zzefVar.zzG(4);
                                int zzo = zzefVar.zzo();
                                if (zzefVar.zza() < zzo) {
                                    zzefVar.zzF(zzd);
                                } else {
                                    zzefVar.zzG(zzo);
                                }
                            }
                            while (true) {
                                if (zzefVar.zza() < 4 || (zzh = zzahx.zzh(zzefVar.zzH(), zzefVar.zzc())) == 442 || zzh == 441 || (zzh >>> 8) != 1) {
                                    break;
                                }
                                zzefVar.zzG(4);
                                if (zzefVar.zza() >= 2) {
                                    zzefVar.zzF(Math.min(zzefVar.zzd(), zzefVar.zzc() + zzefVar.zzo()));
                                } else {
                                    zzefVar.zzF(zzd);
                                    break;
                                }
                            }
                        }
                    }
                }
                i = zzefVar.zzc();
            }
        }
        return j3 != C.TIME_UNSET ? zzyt.zzf(j3, zzf + i) : zzyt.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzyu
    public final void zzb() {
        zzef zzefVar = this.zzb;
        byte[] bArr = zzen.zzf;
        int length = bArr.length;
        zzefVar.zzD(bArr, 0);
    }
}

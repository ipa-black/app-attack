package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.exoplayer2.C;
import java.io.IOException;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzagv implements zzzj {
    public static final zzzq zza = new zzzq() { // from class: com.google.android.gms.internal.ads.zzagu
        @Override // com.google.android.gms.internal.ads.zzzq
        public final zzzj[] zza() {
            zzzq zzzqVar = zzagv.zza;
            return new zzzj[]{new zzagv()};
        }

        @Override // com.google.android.gms.internal.ads.zzzq
        public final /* synthetic */ zzzj[] zzb(Uri uri, Map map) {
            return zzzp.zza(this, uri, map);
        }
    };
    private final zzagw zzb = new zzagw(null);
    private final zzef zzc = new zzef(16384);
    private boolean zzd;

    @Override // com.google.android.gms.internal.ads.zzzj
    public final int zza(zzzk zzzkVar, zzaaj zzaajVar) throws IOException {
        int zza2 = zzzkVar.zza(this.zzc.zzH(), 0, 16384);
        if (zza2 == -1) {
            return -1;
        }
        this.zzc.zzF(0);
        this.zzc.zzE(zza2);
        if (!this.zzd) {
            this.zzb.zzd(0L, 4);
            this.zzd = true;
        }
        this.zzb.zza(this.zzc);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final void zzb(zzzm zzzmVar) {
        this.zzb.zzb(zzzmVar, new zzaip(Integer.MIN_VALUE, 0, 1));
        zzzmVar.zzC();
        zzzmVar.zzN(new zzaal(C.TIME_UNSET, 0L));
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final void zzc(long j, long j2) {
        this.zzd = false;
        this.zzb.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final boolean zzd(zzzk zzzkVar) throws IOException {
        zzyz zzyzVar;
        int i;
        zzef zzefVar = new zzef(10);
        int i2 = 0;
        while (true) {
            zzyzVar = (zzyz) zzzkVar;
            zzyzVar.zzm(zzefVar.zzH(), 0, 10, false);
            zzefVar.zzF(0);
            if (zzefVar.zzm() != 4801587) {
                break;
            }
            zzefVar.zzG(3);
            int zzj = zzefVar.zzj();
            i2 += zzj + 10;
            zzyzVar.zzl(zzj, false);
        }
        zzzkVar.zzj();
        zzyzVar.zzl(i2, false);
        int i3 = 0;
        int i4 = i2;
        while (true) {
            int i5 = 7;
            zzyzVar.zzm(zzefVar.zzH(), 0, 7, false);
            zzefVar.zzF(0);
            int zzo = zzefVar.zzo();
            if (zzo == 44096 || zzo == 44097) {
                i3++;
                if (i3 >= 4) {
                    return true;
                }
                byte[] zzH = zzefVar.zzH();
                int i6 = zzyn.zza;
                if (zzH.length < 7) {
                    i = -1;
                } else {
                    int i7 = ((zzH[2] & 255) << 8) | (zzH[3] & 255);
                    if (i7 == 65535) {
                        i7 = ((zzH[4] & 255) << 16) | ((zzH[5] & 255) << 8) | (zzH[6] & 255);
                    } else {
                        i5 = 4;
                    }
                    if (zzo == 44097) {
                        i5 += 2;
                    }
                    i = i7 + i5;
                }
                if (i == -1) {
                    return false;
                }
                zzyzVar.zzl(i - 7, false);
            } else {
                zzzkVar.zzj();
                i4++;
                if (i4 - i2 >= 8192) {
                    return false;
                }
                zzyzVar.zzl(i4, false);
                i3 = 0;
            }
        }
    }
}

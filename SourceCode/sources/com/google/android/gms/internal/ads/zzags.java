package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.exoplayer2.C;
import java.io.IOException;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzags implements zzzj {
    public static final zzzq zza = new zzzq() { // from class: com.google.android.gms.internal.ads.zzagr
        @Override // com.google.android.gms.internal.ads.zzzq
        public final zzzj[] zza() {
            zzzq zzzqVar = zzags.zza;
            return new zzzj[]{new zzags()};
        }

        @Override // com.google.android.gms.internal.ads.zzzq
        public final /* synthetic */ zzzj[] zzb(Uri uri, Map map) {
            return zzzp.zza(this, uri, map);
        }
    };
    private final zzagt zzb = new zzagt(null);
    private final zzef zzc = new zzef(2786);
    private boolean zzd;

    @Override // com.google.android.gms.internal.ads.zzzj
    public final int zza(zzzk zzzkVar, zzaaj zzaajVar) throws IOException {
        int zza2 = zzzkVar.zza(this.zzc.zzH(), 0, 2786);
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
        zzef zzefVar = new zzef(10);
        int i = 0;
        while (true) {
            zzyzVar = (zzyz) zzzkVar;
            zzyzVar.zzm(zzefVar.zzH(), 0, 10, false);
            zzefVar.zzF(0);
            if (zzefVar.zzm() != 4801587) {
                break;
            }
            zzefVar.zzG(3);
            int zzj = zzefVar.zzj();
            i += zzj + 10;
            zzyzVar.zzl(zzj, false);
        }
        zzzkVar.zzj();
        zzyzVar.zzl(i, false);
        int i2 = 0;
        int i3 = i;
        while (true) {
            zzyzVar.zzm(zzefVar.zzH(), 0, 6, false);
            zzefVar.zzF(0);
            if (zzefVar.zzo() != 2935) {
                zzzkVar.zzj();
                i3++;
                if (i3 - i >= 8192) {
                    return false;
                }
                zzyzVar.zzl(i3, false);
                i2 = 0;
            } else {
                i2++;
                if (i2 >= 4) {
                    return true;
                }
                int zzb = zzyk.zzb(zzefVar.zzH());
                if (zzb == -1) {
                    return false;
                }
                zzyzVar.zzl(zzb - 6, false);
            }
        }
    }
}

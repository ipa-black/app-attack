package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.exoplayer2.C;
import java.io.IOException;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzagy implements zzzj {
    public static final zzzq zza = new zzzq() { // from class: com.google.android.gms.internal.ads.zzagx
        @Override // com.google.android.gms.internal.ads.zzzq
        public final zzzj[] zza() {
            zzzq zzzqVar = zzagy.zza;
            return new zzzj[]{new zzagy(0)};
        }

        @Override // com.google.android.gms.internal.ads.zzzq
        public final /* synthetic */ zzzj[] zzb(Uri uri, Map map) {
            return zzzp.zza(this, uri, map);
        }
    };
    private final zzagz zzb;
    private final zzef zzc;
    private final zzef zzd;
    private final zzee zze;
    private zzzm zzf;
    private long zzg;
    private long zzh;
    private boolean zzi;
    private boolean zzj;

    public zzagy() {
        this(0);
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final int zza(zzzk zzzkVar, zzaaj zzaajVar) throws IOException {
        zzdd.zzb(this.zzf);
        int zza2 = zzzkVar.zza(this.zzc.zzH(), 0, 2048);
        if (!this.zzj) {
            this.zzf.zzN(new zzaal(C.TIME_UNSET, 0L));
            this.zzj = true;
        }
        if (zza2 == -1) {
            return -1;
        }
        this.zzc.zzF(0);
        this.zzc.zzE(zza2);
        if (!this.zzi) {
            this.zzb.zzd(this.zzg, 4);
            this.zzi = true;
        }
        this.zzb.zza(this.zzc);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final void zzb(zzzm zzzmVar) {
        this.zzf = zzzmVar;
        this.zzb.zzb(zzzmVar, new zzaip(Integer.MIN_VALUE, 0, 1));
        zzzmVar.zzC();
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final void zzc(long j, long j2) {
        this.zzi = false;
        this.zzb.zze();
        this.zzg = j2;
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final boolean zzd(zzzk zzzkVar) throws IOException {
        zzyz zzyzVar;
        int i = 0;
        while (true) {
            zzyzVar = (zzyz) zzzkVar;
            zzyzVar.zzm(this.zzd.zzH(), 0, 10, false);
            this.zzd.zzF(0);
            if (this.zzd.zzm() != 4801587) {
                break;
            }
            this.zzd.zzG(3);
            int zzj = this.zzd.zzj();
            i += zzj + 10;
            zzyzVar.zzl(zzj, false);
        }
        zzzkVar.zzj();
        zzyzVar.zzl(i, false);
        if (this.zzh == -1) {
            this.zzh = i;
        }
        int i2 = 0;
        int i3 = 0;
        int i4 = i;
        do {
            zzyzVar.zzm(this.zzd.zzH(), 0, 2, false);
            this.zzd.zzF(0);
            if (zzagz.zzf(this.zzd.zzo())) {
                i2++;
                if (i2 >= 4 && i3 > 188) {
                    return true;
                }
                zzyzVar.zzm(this.zzd.zzH(), 0, 4, false);
                this.zze.zzh(14);
                int zzc = this.zze.zzc(13);
                if (zzc <= 6) {
                    i4++;
                    zzzkVar.zzj();
                    zzyzVar.zzl(i4, false);
                } else {
                    zzyzVar.zzl(zzc - 6, false);
                    i3 += zzc;
                }
            } else {
                i4++;
                zzzkVar.zzj();
                zzyzVar.zzl(i4, false);
            }
            i2 = 0;
            i3 = 0;
        } while (i4 - i < 8192);
        return false;
    }

    public zzagy(int i) {
        this.zzb = new zzagz(true, null);
        this.zzc = new zzef(2048);
        this.zzh = -1L;
        zzef zzefVar = new zzef(10);
        this.zzd = zzefVar;
        byte[] zzH = zzefVar.zzH();
        this.zze = new zzee(zzH, zzH.length);
    }
}

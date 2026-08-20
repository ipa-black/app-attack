package com.google.android.gms.internal.ads;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public class zzyv {
    protected final zzyp zza;
    protected final zzyu zzb;
    protected zzyr zzc;
    private final int zzd;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzyv(zzys zzysVar, zzyu zzyuVar, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.zzb = zzyuVar;
        this.zzd = i;
        this.zza = new zzyp(zzysVar, j, 0L, j3, j4, j5, j6);
    }

    protected static final int zzf(zzzk zzzkVar, long j, zzaaj zzaajVar) {
        if (j == zzzkVar.zzf()) {
            return 0;
        }
        zzaajVar.zza = j;
        return 1;
    }

    protected static final boolean zzg(zzzk zzzkVar, long j) throws IOException {
        long zzf = j - zzzkVar.zzf();
        if (zzf < 0 || zzf > PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            return false;
        }
        ((zzyz) zzzkVar).zzo((int) zzf, false);
        return true;
    }

    public final int zza(zzzk zzzkVar, zzaaj zzaajVar) throws IOException {
        long j;
        long j2;
        long j3;
        long j4;
        int i;
        long j5;
        long j6;
        long j7;
        long j8;
        long j9;
        long j10;
        long j11;
        while (true) {
            zzyr zzyrVar = this.zzc;
            zzdd.zzb(zzyrVar);
            j = zzyrVar.zzf;
            j2 = zzyrVar.zzg;
            j3 = zzyrVar.zzh;
            if (j2 - j > this.zzd) {
                if (zzg(zzzkVar, j3)) {
                    zzzkVar.zzj();
                    zzyu zzyuVar = this.zzb;
                    j4 = zzyrVar.zzb;
                    zzyt zza = zzyuVar.zza(zzzkVar, j4);
                    i = zza.zzb;
                    if (i == -3) {
                        zzc(false, j3);
                        return zzf(zzzkVar, j3, zzaajVar);
                    } else if (i == -2) {
                        j10 = zza.zzc;
                        j11 = zza.zzd;
                        zzyr.zzh(zzyrVar, j10, j11);
                    } else if (i == -1) {
                        j8 = zza.zzc;
                        j9 = zza.zzd;
                        zzyr.zzg(zzyrVar, j8, j9);
                    } else {
                        j5 = zza.zzd;
                        zzg(zzzkVar, j5);
                        j6 = zza.zzd;
                        zzc(true, j6);
                        j7 = zza.zzd;
                        return zzf(zzzkVar, j7, zzaajVar);
                    }
                } else {
                    return zzf(zzzkVar, j3, zzaajVar);
                }
            } else {
                zzc(false, j);
                return zzf(zzzkVar, j, zzaajVar);
            }
        }
    }

    public final zzaam zzb() {
        return this.zza;
    }

    protected final void zzc(boolean z, long j) {
        this.zzc = null;
        this.zzb.zzb();
    }

    public final void zzd(long j) {
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        zzyr zzyrVar = this.zzc;
        if (zzyrVar != null) {
            j6 = zzyrVar.zza;
            if (j6 == j) {
                return;
            }
        }
        long zzf = this.zza.zzf(j);
        zzyp zzypVar = this.zza;
        j2 = zzypVar.zzc;
        j3 = zzypVar.zzd;
        j4 = zzypVar.zze;
        j5 = zzypVar.zzf;
        this.zzc = new zzyr(j, zzf, 0L, j2, j3, j4, j5);
    }

    public final boolean zze() {
        return this.zzc != null;
    }
}

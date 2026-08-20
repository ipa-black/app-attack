package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.MimeTypes;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzabx implements zzzj {
    private zzzm zzb;
    private int zzc;
    private int zzd;
    private int zze;
    private zzadu zzg;
    private zzzk zzh;
    private zzaca zzi;
    private zzafr zzj;
    private final zzef zza = new zzef(6);
    private long zzf = -1;

    private final int zze(zzzk zzzkVar) throws IOException {
        this.zza.zzC(2);
        ((zzyz) zzzkVar).zzm(this.zza.zzH(), 0, 2, false);
        return this.zza.zzo();
    }

    private final void zzf() {
        zzg(new zzbp[0]);
        zzzm zzzmVar = this.zzb;
        zzzmVar.getClass();
        zzzmVar.zzC();
        this.zzb.zzN(new zzaal(C.TIME_UNSET, 0L));
        this.zzc = 6;
    }

    /* JADX WARN: Removed duplicated region for block: B:84:0x015c  */
    @Override // com.google.android.gms.internal.ads.zzzj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(com.google.android.gms.internal.ads.zzzk r24, com.google.android.gms.internal.ads.zzaaj r25) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 459
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzabx.zza(com.google.android.gms.internal.ads.zzzk, com.google.android.gms.internal.ads.zzaaj):int");
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final void zzb(zzzm zzzmVar) {
        this.zzb = zzzmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final boolean zzd(zzzk zzzkVar) throws IOException {
        if (zze(zzzkVar) != 65496) {
            return false;
        }
        int zze = zze(zzzkVar);
        this.zzd = zze;
        if (zze == 65504) {
            this.zza.zzC(2);
            zzyz zzyzVar = (zzyz) zzzkVar;
            zzyzVar.zzm(this.zza.zzH(), 0, 2, false);
            zzyzVar.zzl(this.zza.zzo() - 2, false);
            zze = zze(zzzkVar);
            this.zzd = zze;
        }
        if (zze == 65505) {
            zzyz zzyzVar2 = (zzyz) zzzkVar;
            zzyzVar2.zzl(2, false);
            this.zza.zzC(6);
            zzyzVar2.zzm(this.zza.zzH(), 0, 6, false);
            if (this.zza.zzs() == 1165519206 && this.zza.zzo() == 0) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final void zzc(long j, long j2) {
        if (j == 0) {
            this.zzc = 0;
            this.zzj = null;
        } else if (this.zzc == 5) {
            zzafr zzafrVar = this.zzj;
            zzafrVar.getClass();
            zzafrVar.zzc(j, j2);
        }
    }

    private final void zzg(zzbp... zzbpVarArr) {
        zzzm zzzmVar = this.zzb;
        zzzmVar.getClass();
        zzaaq zzv = zzzmVar.zzv(1024, 4);
        zzad zzadVar = new zzad();
        zzadVar.zzz(MimeTypes.IMAGE_JPEG);
        zzadVar.zzM(new zzbq(C.TIME_UNSET, zzbpVarArr));
        zzv.zzk(zzadVar.zzY());
    }
}

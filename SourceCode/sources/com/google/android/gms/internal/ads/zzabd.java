package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzabd implements zzzj {
    private int zzc;
    private zzabe zze;
    private long zzh;
    private zzabg zzi;
    private int zzm;
    private boolean zzn;
    private final zzef zza = new zzef(12);
    private final zzabc zzb = new zzabc(null);
    private zzzm zzd = new zzzh();
    private zzabg[] zzg = new zzabg[0];
    private long zzk = -1;
    private long zzl = -1;
    private int zzj = -1;
    private long zzf = C.TIME_UNSET;

    private final zzabg zzf(int i) {
        zzabg[] zzabgVarArr;
        for (zzabg zzabgVar : this.zzg) {
            if (zzabgVar.zzg(i)) {
                return zzabgVar;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final void zzb(zzzm zzzmVar) {
        this.zzc = 0;
        this.zzd = zzzmVar;
        this.zzh = -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final void zzc(long j, long j2) {
        int i;
        this.zzh = -1L;
        this.zzi = null;
        for (zzabg zzabgVar : this.zzg) {
            zzabgVar.zzf(j);
        }
        if (j != 0) {
            i = 6;
        } else if (this.zzg.length == 0) {
            this.zzc = 0;
            return;
        } else {
            i = 3;
        }
        this.zzc = i;
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final boolean zzd(zzzk zzzkVar) throws IOException {
        ((zzyz) zzzkVar).zzm(this.zza.zzH(), 0, 12, false);
        this.zza.zzF(0);
        if (this.zza.zzg() != 1179011410) {
            return false;
        }
        this.zza.zzG(4);
        return this.zza.zzg() == 541677121;
    }

    /* JADX WARN: Removed duplicated region for block: B:134:0x030a  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0033 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0034  */
    @Override // com.google.android.gms.internal.ads.zzzj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(com.google.android.gms.internal.ads.zzzk r23, com.google.android.gms.internal.ads.zzaaj r24) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 949
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzabd.zza(com.google.android.gms.internal.ads.zzzk, com.google.android.gms.internal.ads.zzaaj):int");
    }
}

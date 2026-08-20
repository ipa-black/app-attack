package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.MimeTypes;
import java.util.Collections;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzahc implements zzahd {
    private final List zza;
    private final zzaaq[] zzb;
    private boolean zzc;
    private int zzd;
    private int zze;
    private long zzf = C.TIME_UNSET;

    public zzahc(List list) {
        this.zza = list;
        this.zzb = new zzaaq[list.size()];
    }

    private final boolean zzf(zzef zzefVar, int i) {
        if (zzefVar.zza() == 0) {
            return false;
        }
        if (zzefVar.zzk() != i) {
            this.zzc = false;
        }
        this.zzd--;
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zza(zzef zzefVar) {
        zzaaq[] zzaaqVarArr;
        if (this.zzc) {
            if (this.zzd != 2 || zzf(zzefVar, 32)) {
                if (this.zzd != 1 || zzf(zzefVar, 0)) {
                    int zzc = zzefVar.zzc();
                    int zza = zzefVar.zza();
                    for (zzaaq zzaaqVar : this.zzb) {
                        zzefVar.zzF(zzc);
                        zzaaqVar.zzq(zzefVar, zza);
                    }
                    this.zze += zza;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zzb(zzzm zzzmVar, zzaip zzaipVar) {
        for (int i = 0; i < this.zzb.length; i++) {
            zzaim zzaimVar = (zzaim) this.zza.get(i);
            zzaipVar.zzc();
            zzaaq zzv = zzzmVar.zzv(zzaipVar.zza(), 3);
            zzad zzadVar = new zzad();
            zzadVar.zzH(zzaipVar.zzb());
            zzadVar.zzS(MimeTypes.APPLICATION_DVBSUBS);
            zzadVar.zzI(Collections.singletonList(zzaimVar.zzb));
            zzadVar.zzK(zzaimVar.zza);
            zzv.zzk(zzadVar.zzY());
            this.zzb[i] = zzv;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zzc() {
        if (this.zzc) {
            if (this.zzf != C.TIME_UNSET) {
                for (zzaaq zzaaqVar : this.zzb) {
                    zzaaqVar.zzs(this.zzf, 1, this.zze, 0, null);
                }
            }
            this.zzc = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zzd(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.zzc = true;
        if (j != C.TIME_UNSET) {
            this.zzf = j;
        }
        this.zze = 0;
        this.zzd = 2;
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zze() {
        this.zzc = false;
        this.zzf = C.TIME_UNSET;
    }
}

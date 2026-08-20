package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.MimeTypes;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzahp implements zzahd {
    private zzaaq zzb;
    private boolean zzc;
    private int zze;
    private int zzf;
    private final zzef zza = new zzef(10);
    private long zzd = C.TIME_UNSET;

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zza(zzef zzefVar) {
        zzdd.zzb(this.zzb);
        if (this.zzc) {
            int zza = zzefVar.zza();
            int i = this.zzf;
            if (i < 10) {
                int min = Math.min(zza, 10 - i);
                System.arraycopy(zzefVar.zzH(), zzefVar.zzc(), this.zza.zzH(), this.zzf, min);
                if (this.zzf + min == 10) {
                    this.zza.zzF(0);
                    if (this.zza.zzk() != 73 || this.zza.zzk() != 68 || this.zza.zzk() != 51) {
                        zzdw.zze("Id3Reader", "Discarding invalid ID3 tag");
                        this.zzc = false;
                        return;
                    }
                    this.zza.zzG(3);
                    this.zze = this.zza.zzj() + 10;
                }
            }
            int min2 = Math.min(zza, this.zze - this.zzf);
            this.zzb.zzq(zzefVar, min2);
            this.zzf += min2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zzb(zzzm zzzmVar, zzaip zzaipVar) {
        zzaipVar.zzc();
        zzaaq zzv = zzzmVar.zzv(zzaipVar.zza(), 5);
        this.zzb = zzv;
        zzad zzadVar = new zzad();
        zzadVar.zzH(zzaipVar.zzb());
        zzadVar.zzS(MimeTypes.APPLICATION_ID3);
        zzv.zzk(zzadVar.zzY());
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zzc() {
        int i;
        zzdd.zzb(this.zzb);
        if (this.zzc && (i = this.zze) != 0 && this.zzf == i) {
            long j = this.zzd;
            if (j != C.TIME_UNSET) {
                this.zzb.zzs(j, 1, i, 0, null);
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
            this.zzd = j;
        }
        this.zze = 0;
        this.zzf = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zze() {
        this.zzc = false;
        this.zzd = C.TIME_UNSET;
    }
}

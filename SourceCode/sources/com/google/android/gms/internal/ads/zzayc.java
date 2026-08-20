package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzayc implements zzbaf {
    final /* synthetic */ zzayf zza;
    private final Uri zzb;
    private final zzazt zzc;
    private final zzayd zzd;
    private final zzbal zze;
    private final zzavl zzf;
    private volatile boolean zzg;
    private boolean zzh;
    private long zzi;
    private long zzj;

    public zzayc(zzayf zzayfVar, Uri uri, zzazt zzaztVar, zzayd zzaydVar, zzbal zzbalVar) {
        this.zza = zzayfVar;
        uri.getClass();
        this.zzb = uri;
        zzaztVar.getClass();
        this.zzc = zzaztVar;
        zzaydVar.getClass();
        this.zzd = zzaydVar;
        this.zze = zzbalVar;
        this.zzf = new zzavl();
        this.zzh = true;
        this.zzj = -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzbaf
    public final void zzb() {
        this.zzg = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbaf
    public final void zzc() throws IOException, InterruptedException {
        zzavf zzavfVar;
        long j;
        while (!this.zzg) {
            int i = 0;
            try {
                long j2 = this.zzf.zza;
                long zzb = this.zzc.zzb(new zzazv(this.zzb, null, j2, j2, -1L, null, 0));
                this.zzj = zzb;
                if (zzb != -1) {
                    j = j2;
                    zzb += j;
                    this.zzj = zzb;
                } else {
                    j = j2;
                }
                zzavfVar = new zzavf(this.zzc, j, zzb);
                try {
                    zzavg zzb2 = this.zzd.zzb(zzavfVar, this.zzc.zzc());
                    if (this.zzh) {
                        zzb2.zze(j, this.zzi);
                        this.zzh = false;
                    }
                    int i2 = 0;
                    long j3 = j;
                    while (true) {
                        if (i2 != 0) {
                            break;
                        }
                        try {
                            if (this.zzg) {
                                i2 = 0;
                                break;
                            }
                            this.zze.zza();
                            i2 = zzb2.zzf(zzavfVar, this.zzf);
                            if (zzavfVar.zzd() > zzayf.zzf(this.zza) + j3) {
                                j3 = zzavfVar.zzd();
                                this.zze.zzb();
                                zzayf zzayfVar = this.zza;
                                zzayf.zzj(zzayfVar).post(zzayf.zzo(zzayfVar));
                            }
                        } catch (Throwable th) {
                            th = th;
                            i = i2;
                            if (i != 1 && zzavfVar != null) {
                                this.zzf.zza = zzavfVar.zzd();
                            }
                            zzbay.zzm(this.zzc);
                            throw th;
                        }
                    }
                    if (i2 != 1) {
                        this.zzf.zza = zzavfVar.zzd();
                        i = i2;
                    }
                    zzbay.zzm(this.zzc);
                    if (i != 0) {
                        return;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                zzavfVar = null;
            }
        }
    }

    public final void zzd(long j, long j2) {
        this.zzf.zza = j;
        this.zzi = j2;
        this.zzh = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbaf
    public final boolean zze() {
        return this.zzg;
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.Display;
import android.view.Surface;
import com.google.android.exoplayer2.C;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzxs {
    private final zzxd zza = new zzxd();
    private final zzxo zzb;
    private final zzxr zzc;
    private boolean zzd;
    private Surface zze;
    private float zzf;
    private float zzg;
    private float zzh;
    private float zzi;
    private int zzj;
    private long zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private long zzp;
    private long zzq;

    public zzxs(Context context) {
        zzxo zzxoVar;
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            int i = zzen.zza;
            zzxoVar = zzxq.zzc(applicationContext);
            if (zzxoVar == null) {
                zzxoVar = zzxp.zzc(applicationContext);
            }
        } else {
            zzxoVar = null;
        }
        this.zzb = zzxoVar;
        this.zzc = zzxoVar != null ? zzxr.zza() : null;
        this.zzk = C.TIME_UNSET;
        this.zzl = C.TIME_UNSET;
        this.zzf = -1.0f;
        this.zzi = 1.0f;
        this.zzj = 0;
    }

    public static /* synthetic */ void zzb(zzxs zzxsVar, Display display) {
        if (display != null) {
            long refreshRate = (long) (1.0E9d / display.getRefreshRate());
            zzxsVar.zzk = refreshRate;
            zzxsVar.zzl = (refreshRate * 80) / 100;
            return;
        }
        zzdw.zze("VideoFrameReleaseHelper", "Unable to query display refresh rate");
        zzxsVar.zzk = C.TIME_UNSET;
        zzxsVar.zzl = C.TIME_UNSET;
    }

    private final void zzk() {
        Surface surface;
        if (zzen.zza < 30 || (surface = this.zze) == null || this.zzj == Integer.MIN_VALUE || this.zzh == 0.0f) {
            return;
        }
        this.zzh = 0.0f;
        zzxn.zza(surface, 0.0f);
    }

    private final void zzl() {
        this.zzm = 0L;
        this.zzp = -1L;
        this.zzn = -1L;
    }

    private final void zzm() {
        if (zzen.zza < 30 || this.zze == null) {
            return;
        }
        float zza = this.zza.zzg() ? this.zza.zza() : this.zzf;
        float f2 = this.zzg;
        if (zza == f2) {
            return;
        }
        int i = (zza > (-1.0f) ? 1 : (zza == (-1.0f) ? 0 : -1));
        if (i != 0 && f2 != -1.0f) {
            float f3 = 1.0f;
            if (this.zza.zzg() && this.zza.zzd() >= 5000000000L) {
                f3 = 0.02f;
            }
            if (Math.abs(zza - this.zzg) < f3) {
                return;
            }
        } else if (i == 0 && this.zza.zzb() < 30) {
            return;
        }
        this.zzg = zza;
        zzn(false);
    }

    private final void zzn(boolean z) {
        Surface surface;
        if (zzen.zza < 30 || (surface = this.zze) == null || this.zzj == Integer.MIN_VALUE) {
            return;
        }
        float f2 = 0.0f;
        if (this.zzd) {
            float f3 = this.zzg;
            if (f3 != -1.0f) {
                f2 = this.zzi * f3;
            }
        }
        if (z || this.zzh != f2) {
            this.zzh = f2;
            zzxn.zza(surface, f2);
        }
    }

    public final long zza(long j) {
        long j2;
        if (this.zzp != -1 && this.zza.zzg()) {
            long zzc = this.zzq + (((float) (this.zza.zzc() * (this.zzm - this.zzp))) / this.zzi);
            if (Math.abs(j - zzc) <= 20000000) {
                j = zzc;
            } else {
                zzl();
            }
        }
        this.zzn = this.zzm;
        this.zzo = j;
        zzxr zzxrVar = this.zzc;
        if (zzxrVar == null || this.zzk == C.TIME_UNSET) {
            return j;
        }
        long j3 = zzxrVar.zza;
        if (j3 == C.TIME_UNSET) {
            return j;
        }
        long j4 = this.zzk;
        long j5 = j3 + (((j - j3) / j4) * j4);
        if (j <= j5) {
            j2 = j5 - j4;
        } else {
            j5 = j4 + j5;
            j2 = j5;
        }
        if (j5 - j >= j - j2) {
            j5 = j2;
        }
        return j5 - this.zzl;
    }

    public final void zzc(float f2) {
        this.zzf = f2;
        this.zza.zzf();
        zzm();
    }

    public final void zzd(long j) {
        long j2 = this.zzn;
        if (j2 != -1) {
            this.zzp = j2;
            this.zzq = this.zzo;
        }
        this.zzm++;
        this.zza.zze(j * 1000);
        zzm();
    }

    public final void zze(float f2) {
        this.zzi = f2;
        zzl();
        zzn(false);
    }

    public final void zzf() {
        zzl();
    }

    public final void zzg() {
        this.zzd = true;
        zzl();
        if (this.zzb != null) {
            zzxr zzxrVar = this.zzc;
            zzxrVar.getClass();
            zzxrVar.zzb();
            this.zzb.zzb(new zzxm(this));
        }
        zzn(false);
    }

    public final void zzh() {
        this.zzd = false;
        zzxo zzxoVar = this.zzb;
        if (zzxoVar != null) {
            zzxoVar.zza();
            zzxr zzxrVar = this.zzc;
            zzxrVar.getClass();
            zzxrVar.zzc();
        }
        zzk();
    }

    public final void zzi(Surface surface) {
        if (true == (surface instanceof zzxk)) {
            surface = null;
        }
        if (this.zze == surface) {
            return;
        }
        zzk();
        this.zze = surface;
        zzn(true);
    }

    public final void zzj(int i) {
        if (this.zzj == i) {
            return;
        }
        this.zzj = i;
        zzn(true);
    }
}

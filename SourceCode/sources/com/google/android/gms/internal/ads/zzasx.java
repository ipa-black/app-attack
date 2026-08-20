package com.google.android.gms.internal.ads;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzasx {
    public final zzayj zza;
    public final Object zzb;
    public final int zzc;
    public final zzayv[] zzd;
    public final boolean[] zze;
    public final long zzf;
    public int zzg;
    public long zzh;
    public boolean zzi;
    public boolean zzj;
    public boolean zzk;
    public zzasx zzl;
    public zzazp zzm;
    private final zzati[] zzn;
    private final zzatj[] zzo;
    private final zzazo zzp;
    private final zzayl zzq;
    private zzazp zzr;
    private final zzcku zzs;

    public final long zza(long j, boolean z) {
        return zzb(j, false, new boolean[2]);
    }

    public final long zzb(long j, boolean z, boolean[] zArr) {
        zzazm zzazmVar = this.zzm.zzb;
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= 2) {
                break;
            }
            boolean[] zArr2 = this.zze;
            if (z || !this.zzm.zza(this.zzr, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        long zzB = this.zza.zzB(zzazmVar.zzb(), this.zze, this.zzd, zArr, j);
        this.zzr = this.zzm;
        this.zzk = false;
        int i2 = 0;
        while (true) {
            zzayv[] zzayvVarArr = this.zzd;
            if (i2 >= 2) {
                this.zzs.zzd(this.zzn, this.zzm.zza, zzazmVar);
                return zzB;
            }
            if (zzayvVarArr[i2] != null) {
                zzbaj.zze(zzazmVar.zza(i2) != null);
                this.zzk = true;
            } else {
                zzbaj.zze(zzazmVar.zza(i2) == null);
            }
            i2++;
        }
    }

    public final void zzc() {
        try {
            this.zzq.zzc(this.zza);
        } catch (RuntimeException e2) {
            Log.e("ExoPlayerImplInternal", "Period release failed.", e2);
        }
    }

    public final boolean zzd() {
        if (this.zzj) {
            return !this.zzk || this.zza.zzg() == Long.MIN_VALUE;
        }
        return false;
    }

    public final boolean zze() throws zzasp {
        zzazp zzc = this.zzp.zzc(this.zzo, this.zza.zzn());
        zzazp zzazpVar = this.zzr;
        if (zzazpVar != null) {
            for (int i = 0; i < 2; i++) {
                if (zzc.zza(zzazpVar, i)) {
                }
            }
            return false;
        }
        this.zzm = zzc;
        return true;
    }

    public zzasx(zzati[] zzatiVarArr, zzatj[] zzatjVarArr, long j, zzazo zzazoVar, zzcku zzckuVar, zzayl zzaylVar, Object obj, int i, int i2, boolean z, long j2, byte[] bArr) {
        this.zzn = zzatiVarArr;
        this.zzo = zzatjVarArr;
        this.zzf = j;
        this.zzp = zzazoVar;
        this.zzs = zzckuVar;
        this.zzq = zzaylVar;
        obj.getClass();
        this.zzb = obj;
        this.zzc = i;
        this.zzg = i2;
        this.zzi = z;
        this.zzh = j2;
        this.zzd = new zzayv[2];
        this.zze = new boolean[2];
        this.zza = zzaylVar.zze(i2, zzckuVar.zzl());
    }
}

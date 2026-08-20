package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public class zzgyt {
    private static final zzgxp zzb = zzgxp.zza;
    protected volatile zzgzn zza;
    private volatile zzgwv zzc;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzgyt) {
            zzgyt zzgytVar = (zzgyt) obj;
            zzgzn zzgznVar = this.zza;
            zzgzn zzgznVar2 = zzgytVar.zza;
            if (zzgznVar == null && zzgznVar2 == null) {
                return zzb().equals(zzgytVar.zzb());
            }
            if (zzgznVar == null || zzgznVar2 == null) {
                if (zzgznVar != null) {
                    zzgytVar.zzc(zzgznVar.zzbh());
                    return zzgznVar.equals(zzgytVar.zza);
                }
                zzc(zzgznVar2.zzbh());
                return this.zza.equals(zzgznVar2);
            }
            return zzgznVar.equals(zzgznVar2);
        }
        return false;
    }

    public int hashCode() {
        return 1;
    }

    public final int zza() {
        if (this.zzc != null) {
            return ((zzgwr) this.zzc).zza.length;
        }
        if (this.zza != null) {
            return this.zza.zzay();
        }
        return 0;
    }

    public final zzgwv zzb() {
        if (this.zzc != null) {
            return this.zzc;
        }
        synchronized (this) {
            if (this.zzc != null) {
                return this.zzc;
            }
            if (this.zza == null) {
                this.zzc = zzgwv.zzb;
            } else {
                this.zzc = this.zza.zzat();
            }
            return this.zzc;
        }
    }

    protected final void zzc(zzgzn zzgznVar) {
        if (this.zza != null) {
            return;
        }
        synchronized (this) {
            if (this.zza == null) {
                try {
                    this.zza = zzgznVar;
                    this.zzc = zzgwv.zzb;
                } catch (zzgyp unused) {
                    this.zza = zzgznVar;
                    this.zzc = zzgwv.zzb;
                }
            }
        }
    }
}

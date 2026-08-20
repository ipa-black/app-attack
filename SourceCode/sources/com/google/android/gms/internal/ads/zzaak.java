package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzaak {
    public final zzaan zza;
    public final zzaan zzb;

    public zzaak(zzaan zzaanVar, zzaan zzaanVar2) {
        this.zza = zzaanVar;
        this.zzb = zzaanVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzaak zzaakVar = (zzaak) obj;
            if (this.zza.equals(zzaakVar.zza) && this.zzb.equals(zzaakVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.zza.hashCode() * 31) + this.zzb.hashCode();
    }

    public final String toString() {
        String obj = this.zza.toString();
        String concat = this.zza.equals(this.zzb) ? "" : ", ".concat(this.zzb.toString());
        return "[" + obj + concat + "]";
    }
}

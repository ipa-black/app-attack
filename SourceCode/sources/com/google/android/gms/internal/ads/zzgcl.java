package com.google.android.gms.internal.ads;

import java.io.Serializable;
import javax.annotation.CheckForNull;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgcl extends zzgcc implements Serializable {
    final zzgcc zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgcl(zzgcc zzgccVar) {
        this.zza = zzgccVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcc, java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.zza.compare(obj2, obj);
    }

    @Override // java.util.Comparator
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzgcl) {
            return this.zza.equals(((zzgcl) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return -this.zza.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        zzgcc zzgccVar = this.zza;
        sb.append(zzgccVar);
        return zzgccVar.toString().concat(".reverse()");
    }

    @Override // com.google.android.gms.internal.ads.zzgcc
    public final zzgcc zza() {
        return this.zza;
    }
}

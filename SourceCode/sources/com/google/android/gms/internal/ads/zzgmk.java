package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgmk {
    private final Class zza;
    private final zzgwa zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgmk(Class cls, zzgwa zzgwaVar, zzgmj zzgmjVar) {
        this.zza = cls;
        this.zzb = zzgwaVar;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzgmk) {
            zzgmk zzgmkVar = (zzgmk) obj;
            return zzgmkVar.zza.equals(this.zza) && zzgmkVar.zzb.equals(this.zzb);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zza, this.zzb});
    }

    public final String toString() {
        String simpleName = this.zza.getSimpleName();
        String valueOf = String.valueOf(this.zzb);
        return simpleName + ", object identifier: " + valueOf;
    }
}

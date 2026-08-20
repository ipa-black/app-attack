package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.List;
import javax.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgoq {
    private final zzgoj zza;
    private final List zzb;
    @Nullable
    private final Integer zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgoq(zzgoj zzgojVar, List list, Integer num, zzgop zzgopVar) {
        this.zza = zzgojVar;
        this.zzb = list;
        this.zzc = num;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzgoq) {
            zzgoq zzgoqVar = (zzgoq) obj;
            if (this.zza.equals(zzgoqVar.zza) && this.zzb.equals(zzgoqVar.zzb)) {
                Integer num = this.zzc;
                Integer num2 = zzgoqVar.zzc;
                if (num == num2) {
                    return true;
                }
                if (num != null && num.equals(num2)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zza, this.zzb});
    }

    public final String toString() {
        return String.format("(annotations=%s, entries=%s, primaryKeyId=%s)", this.zza, this.zzb, this.zzc);
    }
}

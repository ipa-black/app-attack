package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgoh {
    private HashMap zza = new HashMap();

    public final zzgoj zza() {
        if (this.zza == null) {
            throw new IllegalStateException("cannot call build() twice");
        }
        zzgoj zzgojVar = new zzgoj(Collections.unmodifiableMap(this.zza), null);
        this.zza = null;
        return zzgojVar;
    }
}

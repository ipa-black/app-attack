package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzflg {
    private final HashMap zza = new HashMap();

    public final zzflf zza(zzfkw zzfkwVar, Context context, zzfko zzfkoVar, zzflm zzflmVar) {
        zzflf zzflfVar = (zzflf) this.zza.get(zzfkwVar);
        if (zzflfVar == null) {
            zzfkt zzfktVar = new zzfkt(zzfkz.zza(zzfkwVar, context));
            zzflf zzflfVar2 = new zzflf(zzfktVar, new zzflo(zzfktVar, zzfkoVar, zzflmVar));
            this.zza.put(zzfkwVar, zzflfVar2);
            return zzflfVar2;
        }
        return zzflfVar;
    }
}

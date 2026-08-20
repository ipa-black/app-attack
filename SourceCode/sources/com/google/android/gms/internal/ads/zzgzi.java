package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgzi {
    public static final int zza(int i, Object obj, Object obj2) {
        zzgzh zzgzhVar = (zzgzh) obj;
        zzgzg zzgzgVar = (zzgzg) obj2;
        if (zzgzhVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzgzhVar.entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            entry.getKey();
            entry.getValue();
            throw null;
        }
        return 0;
    }

    public static final boolean zzb(Object obj) {
        return !((zzgzh) obj).zze();
    }

    public static final Object zzc(Object obj, Object obj2) {
        zzgzh zzgzhVar = (zzgzh) obj;
        zzgzh zzgzhVar2 = (zzgzh) obj2;
        if (!zzgzhVar2.isEmpty()) {
            if (!zzgzhVar.zze()) {
                zzgzhVar = zzgzhVar.zzb();
            }
            zzgzhVar.zzd(zzgzhVar2);
        }
        return zzgzhVar;
    }
}

package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeip implements zzfnk {
    private final Map zza = new HashMap();
    private final Map zzb = new HashMap();
    private final zzfns zzc;

    public zzeip(Set set, zzfns zzfnsVar) {
        zzfnd zzfndVar;
        String str;
        zzfnd zzfndVar2;
        String str2;
        this.zzc = zzfnsVar;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            zzeio zzeioVar = (zzeio) it.next();
            Map map = this.zza;
            zzfndVar = zzeioVar.zzb;
            str = zzeioVar.zza;
            map.put(zzfndVar, str);
            Map map2 = this.zzb;
            zzfndVar2 = zzeioVar.zzc;
            str2 = zzeioVar.zza;
            map2.put(zzfndVar2, str2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfnk
    public final void zzbH(zzfnd zzfndVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzfnk
    public final void zzbI(zzfnd zzfndVar, String str, Throwable th) {
        this.zzc.zze("task.".concat(String.valueOf(str)), "f.");
        if (this.zzb.containsKey(zzfndVar)) {
            this.zzc.zze("label.".concat(String.valueOf((String) this.zzb.get(zzfndVar))), "f.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfnk
    public final void zzc(zzfnd zzfndVar, String str) {
        this.zzc.zzd("task.".concat(String.valueOf(str)));
        if (this.zza.containsKey(zzfndVar)) {
            this.zzc.zzd("label.".concat(String.valueOf((String) this.zza.get(zzfndVar))));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfnk
    public final void zzd(zzfnd zzfndVar, String str) {
        this.zzc.zze("task.".concat(String.valueOf(str)), "s.");
        if (this.zzb.containsKey(zzfndVar)) {
            this.zzc.zze("label.".concat(String.valueOf((String) this.zzb.get(zzfndVar))), "s.");
        }
    }
}

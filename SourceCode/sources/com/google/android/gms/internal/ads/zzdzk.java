package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdzk implements zzfnk {
    private final zzdzc zzb;
    private final Clock zzc;
    private final Map zza = new HashMap();
    private final Map zzd = new HashMap();

    public zzdzk(zzdzc zzdzcVar, Set set, Clock clock) {
        zzfnd zzfndVar;
        this.zzb = zzdzcVar;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            zzdzj zzdzjVar = (zzdzj) it.next();
            Map map = this.zzd;
            zzfndVar = zzdzjVar.zzc;
            map.put(zzfndVar, zzdzjVar);
        }
        this.zzc = clock;
    }

    private final void zze(zzfnd zzfndVar, boolean z) {
        zzfnd zzfndVar2;
        String str;
        zzfndVar2 = ((zzdzj) this.zzd.get(zzfndVar)).zzb;
        String str2 = true != z ? "f." : "s.";
        if (this.zza.containsKey(zzfndVar2)) {
            long elapsedRealtime = this.zzc.elapsedRealtime();
            long longValue = ((Long) this.zza.get(zzfndVar2)).longValue();
            Map zza = this.zzb.zza();
            str = ((zzdzj) this.zzd.get(zzfndVar)).zza;
            zza.put("label.".concat(str), str2.concat(String.valueOf(Long.toString(elapsedRealtime - longValue))));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfnk
    public final void zzbH(zzfnd zzfndVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzfnk
    public final void zzbI(zzfnd zzfndVar, String str, Throwable th) {
        if (this.zza.containsKey(zzfndVar)) {
            this.zzb.zza().put("task.".concat(String.valueOf(str)), "f.".concat(String.valueOf(Long.toString(this.zzc.elapsedRealtime() - ((Long) this.zza.get(zzfndVar)).longValue()))));
        }
        if (this.zzd.containsKey(zzfndVar)) {
            zze(zzfndVar, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfnk
    public final void zzc(zzfnd zzfndVar, String str) {
        this.zza.put(zzfndVar, Long.valueOf(this.zzc.elapsedRealtime()));
    }

    @Override // com.google.android.gms.internal.ads.zzfnk
    public final void zzd(zzfnd zzfndVar, String str) {
        if (this.zza.containsKey(zzfndVar)) {
            this.zzb.zza().put("task.".concat(String.valueOf(str)), "s.".concat(String.valueOf(Long.toString(this.zzc.elapsedRealtime() - ((Long) this.zza.get(zzfndVar)).longValue()))));
        }
        if (this.zzd.containsKey(zzfndVar)) {
            zze(zzfndVar, true);
        }
    }
}

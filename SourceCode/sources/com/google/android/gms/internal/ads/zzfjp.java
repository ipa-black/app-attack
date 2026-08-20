package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfjp {
    private final zzfil zza;
    private final zzfio zzb;
    private final zzekc zzc;
    private final zzfpo zzd;
    private final zzfow zze;

    public zzfjp(zzekc zzekcVar, zzfpo zzfpoVar, zzfil zzfilVar, zzfio zzfioVar, zzfow zzfowVar) {
        this.zza = zzfilVar;
        this.zzb = zzfioVar;
        this.zzc = zzekcVar;
        this.zzd = zzfpoVar;
        this.zze = zzfowVar;
    }

    public final void zza(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzb((String) it.next(), 2);
        }
    }

    public final void zzb(String str, int i) {
        if (!this.zza.zzak) {
            this.zzd.zzc(str, this.zze);
            return;
        }
        this.zzc.zzd(new zzeke(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis(), this.zzb.zzb, str, i));
    }

    public final void zzc(List list, int i) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzb((String) it.next(), i);
        }
    }
}

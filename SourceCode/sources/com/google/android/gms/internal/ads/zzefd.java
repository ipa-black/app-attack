package com.google.android.gms.internal.ads;

import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzefd implements zzeff {
    private final Map zza;
    private final zzgfc zzb;
    private final zzdhg zzc;

    public zzefd(Map map, zzgfc zzgfcVar, zzdhg zzdhgVar) {
        this.zza = map;
        this.zzb = zzgfcVar;
        this.zzc = zzdhgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeff
    public final zzgfb zzb(final zzccb zzccbVar) {
        this.zzc.zzbG(zzccbVar);
        zzgfb zzh = zzger.zzh(new zzede(3));
        for (String str : ((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzht)).split(",")) {
            final zzhfc zzhfcVar = (zzhfc) this.zza.get(str.trim());
            if (zzhfcVar != null) {
                zzh = zzger.zzg(zzh, zzede.class, new zzgdy() { // from class: com.google.android.gms.internal.ads.zzefb
                    @Override // com.google.android.gms.internal.ads.zzgdy
                    public final zzgfb zza(Object obj) {
                        zzhfc zzhfcVar2 = zzhfc.this;
                        zzede zzedeVar = (zzede) obj;
                        return ((zzeff) zzhfcVar2.zzb()).zzb(zzccbVar);
                    }
                }, this.zzb);
            }
        }
        zzger.zzr(zzh, new zzefc(this), zzcib.zzf);
        return zzh;
    }
}

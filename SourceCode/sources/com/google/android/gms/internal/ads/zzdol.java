package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzdol implements zzdaq {
    private final Map zza;
    private final Map zzb;
    private final Map zzc;
    private final zzhfc zzd;
    private final zzdqr zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdol(Map map, Map map2, Map map3, zzhfc zzhfcVar, zzdqr zzdqrVar) {
        this.zza = map;
        this.zzb = map2;
        this.zzc = map3;
        this.zzd = zzhfcVar;
        this.zze = zzdqrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdaq
    public final zzekq zza(int i, String str) {
        zzekq zza;
        zzekq zzekqVar = (zzekq) this.zza.get(str);
        if (zzekqVar != null) {
            return zzekqVar;
        }
        if (i == 1) {
            if (this.zze.zze() == null || (zza = ((zzdaq) this.zzd.zzb()).zza(i, str)) == null) {
                return null;
            }
            return zzdau.zza(zza);
        } else if (i != 4) {
            return null;
        } else {
            zzenk zzenkVar = (zzenk) this.zzc.get(str);
            if (zzenkVar != null) {
                return new zzekr(zzenkVar, new zzfxt() { // from class: com.google.android.gms.internal.ads.zzdas
                    @Override // com.google.android.gms.internal.ads.zzfxt
                    public final Object apply(Object obj) {
                        return new zzdau((List) obj);
                    }
                });
            }
            zzekq zzekqVar2 = (zzekq) this.zzb.get(str);
            if (zzekqVar2 == null) {
                return null;
            }
            return zzdau.zza(zzekqVar2);
        }
    }
}

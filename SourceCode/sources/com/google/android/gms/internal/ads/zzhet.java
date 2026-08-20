package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzhet extends zzhel {
    private static final zzhfc zza = zzheq.zza(Collections.emptyMap());

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzhet(Map map, zzher zzherVar) {
        super(map);
    }

    public static zzhes zzc(int i) {
        return new zzhes(i, null);
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    /* renamed from: zzd */
    public final Map zzb() {
        LinkedHashMap zzb = zzhem.zzb(zza().size());
        for (Map.Entry entry : zza().entrySet()) {
            zzb.put(entry.getKey(), ((zzhfc) entry.getValue()).zzb());
        }
        return Collections.unmodifiableMap(zzb);
    }
}

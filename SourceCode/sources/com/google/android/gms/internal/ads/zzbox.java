package com.google.android.gms.internal.ads;

import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbox implements zzbqd {
    private final zzboy zza;

    public zzbox(zzboy zzboyVar) {
        this.zza = zzboyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqd
    public final void zza(Object obj, Map map) {
        String str = (String) map.get("name");
        if (str == null) {
            com.google.android.gms.ads.internal.util.zze.zzj("App event with no name parameter.");
        } else {
            this.zza.zzbF(str, (String) map.get("info"));
        }
    }
}

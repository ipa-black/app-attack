package com.google.android.gms.internal.ads;

import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdap implements zzdaq {
    private final Map zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdap(Map map) {
        this.zza = map;
    }

    @Override // com.google.android.gms.internal.ads.zzdaq
    public final zzekq zza(int i, String str) {
        return (zzekq) this.zza.get(str);
    }
}

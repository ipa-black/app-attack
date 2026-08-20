package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdau {
    public final List zza;

    public zzdau(zzdan zzdanVar) {
        this.zza = Collections.singletonList(zzger.zzi(zzdanVar));
    }

    public zzdau(List list) {
        this.zza = list;
    }

    public static zzekq zza(zzekq zzekqVar) {
        return new zzekr(zzekqVar, new zzfxt() { // from class: com.google.android.gms.internal.ads.zzdat
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj) {
                return new zzdau((zzdan) obj);
            }
        });
    }
}

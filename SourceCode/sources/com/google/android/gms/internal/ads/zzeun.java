package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeun implements zzezm {
    private final Executor zza;
    private final zzcgx zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeun(Executor executor, zzcgx zzcgxVar) {
        this.zza = executor;
        this.zzb = zzcgxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 10;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzco)).booleanValue()) {
            return zzger.zzi(null);
        }
        return zzger.zzm(this.zzb.zzj(), new zzfxt() { // from class: com.google.android.gms.internal.ads.zzeul
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj) {
                final ArrayList arrayList = (ArrayList) obj;
                if (arrayList.isEmpty()) {
                    return null;
                }
                return new zzezl() { // from class: com.google.android.gms.internal.ads.zzeum
                    @Override // com.google.android.gms.internal.ads.zzezl
                    public final void zzf(Object obj2) {
                        ((Bundle) obj2).putStringArrayList("android_permissions", arrayList);
                    }
                };
            }
        }, this.zza);
    }
}

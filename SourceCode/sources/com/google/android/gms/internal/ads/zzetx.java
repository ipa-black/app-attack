package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzetx implements zzezm {
    private final Set zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzetx(Set set) {
        this.zza = set;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 8;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        final ArrayList arrayList = new ArrayList();
        for (String str : this.zza) {
            arrayList.add(str);
        }
        return zzger.zzi(new zzezl() { // from class: com.google.android.gms.internal.ads.zzetw
            @Override // com.google.android.gms.internal.ads.zzezl
            public final void zzf(Object obj) {
                ((Bundle) obj).putStringArrayList("ad_types", arrayList);
            }
        });
    }
}

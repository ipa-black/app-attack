package com.google.android.gms.internal.ads;

import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdjh extends zzdjx implements zzboy {
    public zzdjh(Set set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzboy
    public final synchronized void zzbF(final String str, final String str2) {
        zzo(new zzdjw() { // from class: com.google.android.gms.internal.ads.zzdjg
            @Override // com.google.android.gms.internal.ads.zzdjw
            public final void zza(Object obj) {
                ((zzasm) obj).zzbv(str, str2);
            }
        });
    }
}

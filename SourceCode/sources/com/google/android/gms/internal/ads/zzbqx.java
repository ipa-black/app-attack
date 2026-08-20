package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.h5.OnH5AdsEventListener;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbqx extends zzbqz {
    private final OnH5AdsEventListener zza;

    public zzbqx(OnH5AdsEventListener onH5AdsEventListener) {
        this.zza = onH5AdsEventListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbra
    public final void zzb(String str) {
        this.zza.onH5AdsEvent(str);
    }
}

package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public interface zzzq {
    public static final zzzq zzb = new zzzq() { // from class: com.google.android.gms.internal.ads.zzzo
        @Override // com.google.android.gms.internal.ads.zzzq
        public final zzzj[] zza() {
            int i = zzzp.zza;
            return new zzzj[0];
        }

        @Override // com.google.android.gms.internal.ads.zzzq
        public final /* synthetic */ zzzj[] zzb(Uri uri, Map map) {
            return zzzp.zza(this, uri, map);
        }
    };

    zzzj[] zza();

    zzzj[] zzb(Uri uri, Map map);
}

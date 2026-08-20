package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbqe implements zzbqd {
    private final zzbqf zza;

    public zzbqe(zzbqf zzbqfVar, byte[] bArr) {
        this.zza = zzbqfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqd
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcno zzcnoVar = (zzcno) obj;
        boolean equals = IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE.equals(map.get("transparentBackground"));
        boolean equals2 = IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE.equals(map.get("blur"));
        float f2 = 0.0f;
        try {
            if (map.get("blurRadius") != null) {
                f2 = Float.parseFloat((String) map.get("blurRadius"));
            }
        } catch (NumberFormatException e2) {
            com.google.android.gms.ads.internal.util.zze.zzh("Fail to parse float", e2);
        }
        this.zza.zzc(equals);
        this.zza.zzb(equals2, f2);
        zzcnoVar.zzav(equals);
    }
}

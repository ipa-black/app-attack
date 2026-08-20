package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.CollectionUtils;
import com.onesignal.NotificationBundleProcessor;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbqj implements zzbqd {
    static final Map zza = CollectionUtils.mapOfKeyValueArrays(new String[]{"resize", "playVideo", "storePicture", "createCalendarEvent", "setOrientationProperties", "closeResizedAd", "unload"}, new Integer[]{1, 2, 3, 4, 5, 6, 7});
    private final com.google.android.gms.ads.internal.zzb zzb;
    private final zzbyn zzc;
    private final zzbyu zzd;

    public zzbqj(com.google.android.gms.ads.internal.zzb zzbVar, zzbyn zzbynVar, zzbyu zzbyuVar) {
        this.zzb = zzbVar;
        this.zzc = zzbynVar;
        this.zzd = zzbyuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqd
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcno zzcnoVar = (zzcno) obj;
        int intValue = ((Integer) zza.get((String) map.get(NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY))).intValue();
        int i = 6;
        if (intValue != 5) {
            if (intValue != 7) {
                if (!this.zzb.zzc()) {
                    this.zzb.zzb(null);
                    return;
                } else if (intValue == 1) {
                    this.zzc.zzb(map);
                    return;
                } else if (intValue == 3) {
                    new zzbyq(zzcnoVar, map).zzb();
                    return;
                } else if (intValue == 4) {
                    new zzbyl(zzcnoVar, map).zzc();
                    return;
                } else if (intValue != 5) {
                    if (intValue == 6) {
                        this.zzc.zza(true);
                        return;
                    } else if (intValue != 7) {
                        com.google.android.gms.ads.internal.util.zze.zzi("Unknown MRAID command called.");
                        return;
                    }
                }
            }
            this.zzd.zzc();
            return;
        }
        String str = (String) map.get("forceOrientation");
        boolean parseBoolean = map.containsKey("allowOrientationChange") ? Boolean.parseBoolean((String) map.get("allowOrientationChange")) : true;
        if (zzcnoVar == null) {
            com.google.android.gms.ads.internal.util.zze.zzj("AdWebView is null");
            return;
        }
        if ("portrait".equalsIgnoreCase(str)) {
            i = 7;
        } else if (!"landscape".equalsIgnoreCase(str)) {
            i = parseBoolean ? -1 : 14;
        }
        zzcnoVar.zzas(i);
    }
}

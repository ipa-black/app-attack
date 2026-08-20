package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.applovin.sdk.AppLovinEventParameters;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbqt implements zzbqd {
    private final zzbqs zza;

    public zzbqt(zzbqs zzbqsVar) {
        this.zza = zzbqsVar;
    }

    public static void zzb(zzcno zzcnoVar, zzbqs zzbqsVar) {
        zzcnoVar.zzaf("/reward", new zzbqt(zzbqsVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbqd
    public final void zza(Object obj, Map map) {
        String str = (String) map.get("action");
        if ("grant".equals(str)) {
            zzcdd zzcddVar = null;
            try {
                int parseInt = Integer.parseInt((String) map.get(AppLovinEventParameters.REVENUE_AMOUNT));
                String str2 = (String) map.get(SessionDescription.ATTR_TYPE);
                if (!TextUtils.isEmpty(str2)) {
                    zzcddVar = new zzcdd(str2, parseInt);
                }
            } catch (NumberFormatException e2) {
                com.google.android.gms.ads.internal.util.zze.zzk("Unable to parse reward amount.", e2);
            }
            this.zza.zza(zzcddVar);
        } else if ("video_start".equals(str)) {
            this.zza.zzc();
        } else if ("video_complete".equals(str)) {
            this.zza.zzb();
        }
    }
}

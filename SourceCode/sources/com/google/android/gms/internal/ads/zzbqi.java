package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbqi implements zzbqd {
    private final Context zza;

    public zzbqi(Context context) {
        this.zza = context;
    }

    @Override // com.google.android.gms.internal.ads.zzbqd
    public final void zza(Object obj, Map map) {
        char c2;
        if (com.google.android.gms.ads.internal.zzt.zzn().zzu(this.zza)) {
            String str = (String) map.get("eventName");
            String str2 = (String) map.get("eventId");
            int hashCode = str.hashCode();
            if (hashCode == 94399) {
                if (str.equals("_aa")) {
                    c2 = 2;
                }
                c2 = 65535;
            } else if (hashCode != 94401) {
                if (hashCode == 94407 && str.equals("_ai")) {
                    c2 = 1;
                }
                c2 = 65535;
            } else {
                if (str.equals("_ac")) {
                    c2 = 0;
                }
                c2 = 65535;
            }
            if (c2 == 0) {
                com.google.android.gms.ads.internal.zzt.zzn().zzm(this.zza, str2);
            } else if (c2 == 1) {
                com.google.android.gms.ads.internal.zzt.zzn().zzn(this.zza, str2);
            } else if (c2 == 2) {
                com.google.android.gms.ads.internal.zzt.zzn().zzk(this.zza, str2);
            } else {
                com.google.android.gms.ads.internal.util.zze.zzg("logScionEvent gmsg contained unsupported eventName");
            }
        }
    }
}

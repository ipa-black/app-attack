package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.appodeal.ads.modules.common.internal.Constants;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbqo implements zzbqd {
    private final zzecy zza;

    public zzbqo(zzecy zzecyVar) {
        this.zza = zzecyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqd
    public final void zza(Object obj, Map map) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzit)).booleanValue()) {
            String str = (String) map.get("action");
            String str2 = (String) map.get("adUnitId");
            String str3 = (String) map.get("redirectUrl");
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
                return;
            }
            String str4 = (String) map.get("format");
            if (!str.equals("load") || TextUtils.isEmpty(str4)) {
                if (str.equals(Constants.SHOW)) {
                    this.zza.zzi(str2, str3);
                    return;
                }
                return;
            }
            this.zza.zzh(str2, str4, str3);
        }
    }
}

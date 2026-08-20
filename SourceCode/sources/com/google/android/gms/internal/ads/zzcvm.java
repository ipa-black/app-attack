package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcvm implements zzcve {
    private final zzece zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcvm(zzece zzeceVar) {
        this.zza = zzeceVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcve
    public final void zza(Map map) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzin)).booleanValue()) {
            String str = (String) map.get("policy_violations");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.zza.zzl(str);
        }
    }
}

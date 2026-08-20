package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcvw implements zzcve {
    private final zzece zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcvw(zzece zzeceVar) {
        this.zza = zzeceVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcve
    public final void zza(Map map) {
        String str = (String) map.get("test_mode_enabled");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.zza.zzm(str.equals("true"));
    }
}

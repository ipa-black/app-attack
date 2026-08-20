package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcvk implements zzcve {
    private final zzece zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcvk(zzece zzeceVar) {
        this.zza = zzeceVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcve
    public final void zza(Map map) {
        char c2;
        String str = (String) map.get("gesture");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        int hashCode = str.hashCode();
        if (hashCode != 97520651) {
            if (hashCode == 109399814 && str.equals("shake")) {
                c2 = 0;
            }
            c2 = 65535;
        } else {
            if (str.equals("flick")) {
                c2 = 1;
            }
            c2 = 65535;
        }
        if (c2 == 0) {
            this.zza.zzk(zzeca.SHAKE);
        } else if (c2 == 1) {
            this.zza.zzk(zzeca.FLICK);
        } else {
            this.zza.zzk(zzeca.NONE);
        }
    }
}

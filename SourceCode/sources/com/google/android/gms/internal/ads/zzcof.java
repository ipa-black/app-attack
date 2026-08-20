package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import io.bidmachine.utils.IabUtils;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzcof implements zzbqd {
    final /* synthetic */ zzcoh zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcof(zzcoh zzcohVar) {
        this.zza = zzcohVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqd
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        int i;
        zzcno zzcnoVar = (zzcno) obj;
        if (map != null) {
            String str = (String) map.get(IabUtils.KEY_HEIGHT);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                int parseInt = Integer.parseInt(str);
                synchronized (this.zza) {
                    zzcoh zzcohVar = this.zza;
                    i = zzcohVar.zzG;
                    if (i != parseInt) {
                        zzcohVar.zzG = parseInt;
                        this.zza.requestLayout();
                    }
                }
            } catch (Exception e2) {
                com.google.android.gms.ads.internal.util.zze.zzk("Exception occurred while getting webview content height", e2);
            }
        }
    }
}

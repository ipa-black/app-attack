package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzbpr implements zzbqd {
    @Override // com.google.android.gms.internal.ads.zzbqd
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcno zzcnoVar = (zzcno) obj;
        try {
            zzfvf.zzj(zzcnoVar.getContext()).zzk();
            zzfvg.zzi(zzcnoVar.getContext()).zzj();
        } catch (IOException e2) {
            com.google.android.gms.ads.internal.zzt.zzo().zzu(e2, "DefaultGmsgHandlers.ResetPaid");
        }
    }
}

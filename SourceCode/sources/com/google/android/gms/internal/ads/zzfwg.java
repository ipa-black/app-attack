package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzfwg extends zzfws {
    final /* synthetic */ zzfwh zza;
    private final zzfwm zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfwg(zzfwh zzfwhVar, zzfwm zzfwmVar) {
        this.zza = zzfwhVar;
        this.zzb = zzfwmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwt
    public final void zzb(Bundle bundle) {
        int i = bundle.getInt("statusCode", 8150);
        String string = bundle.getString("sessionToken");
        zzfwk zzc = zzfwl.zzc();
        zzc.zzb(i);
        if (string != null) {
            zzc.zza(string);
        }
        this.zzb.zza(zzc.zzc());
        if (i == 8157) {
            this.zza.zzc();
        }
    }
}

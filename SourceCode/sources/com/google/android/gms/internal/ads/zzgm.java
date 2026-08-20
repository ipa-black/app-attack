package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgm {
    private final Context zza;
    private final zzgk zzb;

    public zzgm(Context context, Handler handler, zzgl zzglVar) {
        this.zza = context.getApplicationContext();
        this.zzb = new zzgk(this, handler, zzglVar);
    }
}

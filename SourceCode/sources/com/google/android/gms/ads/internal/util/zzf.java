package com.google.android.gms.ads.internal.util;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.internal.ads.zzfvb;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes3.dex */
public final class zzf extends zzfvb {
    public zzf(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        try {
            super.handleMessage(message);
        } catch (Exception e2) {
            com.google.android.gms.ads.internal.zzt.zzo().zzu(e2, "AdMobHandler.handleMessage");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzfvb
    public final void zza(Message message) {
        try {
            super.zza(message);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzt.zzp();
            zzs.zzI(com.google.android.gms.ads.internal.zzt.zzo().zzc(), th);
            throw th;
        }
    }
}

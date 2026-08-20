package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Message;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzei implements zzdm {
    private Message zza;
    private zzej zzb;

    private zzei() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzei(zzeh zzehVar) {
    }

    private final void zzd() {
        this.zza = null;
        this.zzb = null;
        zzej.zzk(this);
    }

    public final zzei zzb(Message message, zzej zzejVar) {
        this.zza = message;
        this.zzb = zzejVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdm
    public final void zza() {
        Message message = this.zza;
        message.getClass();
        message.sendToTarget();
        zzd();
    }

    public final boolean zzc(Handler handler) {
        Message message = this.zza;
        message.getClass();
        boolean sendMessageAtFrontOfQueue = handler.sendMessageAtFrontOfQueue(message);
        zzd();
        return sendMessageAtFrontOfQueue;
    }
}

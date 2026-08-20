package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzaqq extends BroadcastReceiver {
    final /* synthetic */ zzaqr zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaqq(zzaqr zzaqrVar) {
        this.zza = zzaqrVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.zza.zzf();
    }
}

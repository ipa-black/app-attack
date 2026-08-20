package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.internal.BaseGmsClient;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbrw implements BaseGmsClient.BaseConnectionCallbacks {
    final /* synthetic */ zzcig zza;
    final /* synthetic */ zzbry zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbrw(zzbry zzbryVar, zzcig zzcigVar) {
        this.zzb = zzbryVar;
        this.zza = zzcigVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzbrl zzbrlVar;
        try {
            zzcig zzcigVar = this.zza;
            zzbrlVar = this.zzb.zza;
            zzcigVar.zzd(zzbrlVar.zzp());
        } catch (DeadObjectException e2) {
            this.zza.zze(e2);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        zzcig zzcigVar = this.zza;
        zzcigVar.zze(new RuntimeException("onConnectionSuspended: " + i));
    }
}

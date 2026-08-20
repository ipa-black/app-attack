package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzber implements BaseGmsClient.BaseOnConnectionFailedListener {
    final /* synthetic */ zzcig zza;
    final /* synthetic */ zzbes zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzber(zzbes zzbesVar, zzcig zzcigVar) {
        this.zzb = zzbesVar;
        this.zza = zzcigVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        Object obj;
        obj = this.zzb.zzd;
        synchronized (obj) {
            this.zza.zze(new RuntimeException("Connection failed."));
        }
    }
}

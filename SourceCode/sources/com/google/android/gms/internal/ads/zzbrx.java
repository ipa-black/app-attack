package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbrx implements BaseGmsClient.BaseOnConnectionFailedListener {
    final /* synthetic */ zzcig zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbrx(zzbry zzbryVar, zzcig zzcigVar) {
        this.zza = zzcigVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.zza.zze(new RuntimeException("Connection failed."));
    }
}

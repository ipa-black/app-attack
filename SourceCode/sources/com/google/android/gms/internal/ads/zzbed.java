package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbed implements BaseGmsClient.BaseOnConnectionFailedListener {
    final /* synthetic */ zzbee zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbed(zzbee zzbeeVar) {
        this.zza = zzbeeVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        Object obj;
        zzbeh zzbehVar;
        Object obj2;
        obj = this.zza.zzc;
        synchronized (obj) {
            this.zza.zzf = null;
            zzbee zzbeeVar = this.zza;
            zzbehVar = zzbeeVar.zzd;
            if (zzbehVar != null) {
                zzbeeVar.zzd = null;
            }
            obj2 = this.zza.zzc;
            obj2.notifyAll();
        }
    }
}

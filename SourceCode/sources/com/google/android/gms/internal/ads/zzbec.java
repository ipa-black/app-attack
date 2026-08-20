package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.internal.BaseGmsClient;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbec implements BaseGmsClient.BaseConnectionCallbacks {
    final /* synthetic */ zzbee zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbec(zzbee zzbeeVar) {
        this.zza = zzbeeVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        Object obj;
        Object obj2;
        zzbeh zzbehVar;
        zzbeh zzbehVar2;
        obj = this.zza.zzc;
        synchronized (obj) {
            try {
                zzbee zzbeeVar = this.zza;
                zzbehVar = zzbeeVar.zzd;
                if (zzbehVar != null) {
                    zzbehVar2 = zzbeeVar.zzd;
                    zzbeeVar.zzf = zzbehVar2.zzq();
                }
            } catch (DeadObjectException e2) {
                com.google.android.gms.ads.internal.util.zze.zzh("Unable to obtain a cache service instance.", e2);
                zzbee.zzh(this.zza);
            }
            obj2 = this.zza.zzc;
            obj2.notifyAll();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        Object obj;
        Object obj2;
        obj = this.zza.zzc;
        synchronized (obj) {
            this.zza.zzf = null;
            obj2 = this.zza.zzc;
            obj2.notifyAll();
        }
    }
}

package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdvo extends VideoController.VideoLifecycleCallbacks {
    private final zzdqg zza;

    public zzdvo(zzdqg zzdqgVar) {
        this.zza = zzdqgVar;
    }

    private static com.google.android.gms.ads.internal.client.zzdt zza(zzdqg zzdqgVar) {
        com.google.android.gms.ads.internal.client.zzdq zzj = zzdqgVar.zzj();
        if (zzj == null) {
            return null;
        }
        try {
            return zzj.zzi();
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoEnd() {
        com.google.android.gms.ads.internal.client.zzdt zza = zza(this.zza);
        if (zza == null) {
            return;
        }
        try {
            zza.zze();
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.zze.zzk("Unable to call onVideoEnd()", e2);
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoPause() {
        com.google.android.gms.ads.internal.client.zzdt zza = zza(this.zza);
        if (zza == null) {
            return;
        }
        try {
            zza.zzg();
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.zze.zzk("Unable to call onVideoEnd()", e2);
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoStart() {
        com.google.android.gms.ads.internal.client.zzdt zza = zza(this.zza);
        if (zza == null) {
            return;
        }
        try {
            zza.zzi();
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.zze.zzk("Unable to call onVideoEnd()", e2);
        }
    }
}

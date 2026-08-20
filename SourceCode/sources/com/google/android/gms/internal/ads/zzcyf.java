package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcyf extends zzbdp {
    private final zzcye zza;
    private final com.google.android.gms.ads.internal.client.zzbu zzb;
    private final zzfeh zzc;
    private boolean zzd = false;

    public zzcyf(zzcye zzcyeVar, com.google.android.gms.ads.internal.client.zzbu zzbuVar, zzfeh zzfehVar) {
        this.zza = zzcyeVar;
        this.zzb = zzbuVar;
        this.zzc = zzfehVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbdq
    public final com.google.android.gms.ads.internal.client.zzbu zze() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbdq
    public final com.google.android.gms.ads.internal.client.zzdn zzf() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzgi)).booleanValue()) {
            return this.zza.zzl();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbdq
    public final void zzg(boolean z) {
        this.zzd = z;
    }

    @Override // com.google.android.gms.internal.ads.zzbdq
    public final void zzh(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        Preconditions.checkMainThread("setOnPaidEventListener must be called on the main UI thread.");
        zzfeh zzfehVar = this.zzc;
        if (zzfehVar != null) {
            zzfehVar.zzp(zzdgVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdq
    public final void zzi(IObjectWrapper iObjectWrapper, zzbdx zzbdxVar) {
        try {
            this.zzc.zzt(zzbdxVar);
            this.zza.zzd((Activity) ObjectWrapper.unwrap(iObjectWrapper), zzbdxVar, this.zzd);
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.zze.zzl("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdq
    public final void zzj(zzbdu zzbduVar) {
    }
}

package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.regex.Pattern;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfii extends zzcct {
    private final zzfhy zza;
    private final zzfho zzb;
    private final zzfiy zzc;
    private zzdvt zzd;
    private boolean zze = false;

    public zzfii(zzfhy zzfhyVar, zzfho zzfhoVar, zzfiy zzfiyVar) {
        this.zza = zzfhyVar;
        this.zzb = zzfhoVar;
        this.zzc = zzfiyVar;
    }

    private final synchronized boolean zzy() {
        zzdvt zzdvtVar = this.zzd;
        if (zzdvtVar != null) {
            if (!zzdvtVar.zze()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final Bundle zzb() {
        Preconditions.checkMainThread("getAdMetadata can only be called from the UI thread.");
        zzdvt zzdvtVar = this.zzd;
        return zzdvtVar != null ? zzdvtVar.zza() : new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final synchronized com.google.android.gms.ads.internal.client.zzdn zzc() throws RemoteException {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzgi)).booleanValue()) {
            zzdvt zzdvtVar = this.zzd;
            if (zzdvtVar != null) {
                return zzdvtVar.zzl();
            }
            return null;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final synchronized String zzd() throws RemoteException {
        zzdvt zzdvtVar = this.zzd;
        if (zzdvtVar == null || zzdvtVar.zzl() == null) {
            return null;
        }
        return zzdvtVar.zzl().zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final void zze() throws RemoteException {
        zzf(null);
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final synchronized void zzf(IObjectWrapper iObjectWrapper) {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        Context context = null;
        this.zzb.zzb(null);
        if (this.zzd != null) {
            if (iObjectWrapper != null) {
                context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
            }
            this.zzd.zzm().zza(context);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final synchronized void zzg(zzccy zzccyVar) throws RemoteException {
        Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
        String str = zzccyVar.zzb;
        String str2 = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzeQ);
        if (str2 != null && str != null) {
            try {
                if (Pattern.matches(str2, str)) {
                    return;
                }
            } catch (RuntimeException e2) {
                com.google.android.gms.ads.internal.zzt.zzo().zzu(e2, "NonagonUtil.isPatternMatched");
            }
        }
        if (zzy()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzeS)).booleanValue()) {
                return;
            }
        }
        zzfhq zzfhqVar = new zzfhq(null);
        this.zzd = null;
        this.zza.zzj(1);
        this.zza.zzb(zzccyVar.zza, zzccyVar.zzb, zzfhqVar, new zzfig(this));
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final void zzh() {
        zzi(null);
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final synchronized void zzi(IObjectWrapper iObjectWrapper) {
        Preconditions.checkMainThread("pause must be called on the main UI thread.");
        if (this.zzd != null) {
            this.zzd.zzm().zzb(iObjectWrapper == null ? null : (Context) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final void zzj() {
        zzk(null);
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final synchronized void zzk(IObjectWrapper iObjectWrapper) {
        Preconditions.checkMainThread("resume must be called on the main UI thread.");
        if (this.zzd != null) {
            this.zzd.zzm().zzc(iObjectWrapper == null ? null : (Context) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final void zzl(com.google.android.gms.ads.internal.client.zzby zzbyVar) {
        Preconditions.checkMainThread("setAdMetadataListener can only be called from the UI thread.");
        if (zzbyVar == null) {
            this.zzb.zzb(null);
        } else {
            this.zzb.zzb(new zzfih(this, zzbyVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final synchronized void zzm(String str) throws RemoteException {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.: setCustomData");
        this.zzc.zzb = str;
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final synchronized void zzn(boolean z) {
        Preconditions.checkMainThread("setImmersiveMode must be called on the main UI thread.");
        this.zze = z;
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final void zzo(zzccx zzccxVar) throws RemoteException {
        Preconditions.checkMainThread("setRewardedVideoAdListener can only be called from the UI thread.");
        this.zzb.zzf(zzccxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final synchronized void zzp(String str) throws RemoteException {
        Preconditions.checkMainThread("setUserId must be called on the main UI thread.");
        this.zzc.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final synchronized void zzq() throws RemoteException {
        zzr(null);
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final synchronized void zzr(IObjectWrapper iObjectWrapper) throws RemoteException {
        Preconditions.checkMainThread("showAd must be called on the main UI thread.");
        if (this.zzd != null) {
            Activity activity = null;
            if (iObjectWrapper != null) {
                Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
                if (unwrap instanceof Activity) {
                    activity = (Activity) unwrap;
                }
            }
            this.zzd.zzh(this.zze, activity);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final boolean zzs() throws RemoteException {
        Preconditions.checkMainThread("isLoaded must be called on the main UI thread.");
        return zzy();
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final boolean zzt() {
        zzdvt zzdvtVar = this.zzd;
        return zzdvtVar != null && zzdvtVar.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final void zzu(zzccs zzccsVar) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.: setRewardedAdSkuListener");
        this.zzb.zzh(zzccsVar);
    }
}

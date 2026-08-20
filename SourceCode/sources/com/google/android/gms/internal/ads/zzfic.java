package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfic extends zzcdj {
    private final zzfhy zza;
    private final zzfho zzb;
    private final String zzc;
    private final zzfiy zzd;
    private final Context zze;
    private final zzchu zzf;
    private zzdvt zzg;
    private boolean zzh = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzaA)).booleanValue();

    public zzfic(String str, zzfhy zzfhyVar, Context context, zzfho zzfhoVar, zzfiy zzfiyVar, zzchu zzchuVar) {
        this.zzc = str;
        this.zza = zzfhyVar;
        this.zzb = zzfhoVar;
        this.zzd = zzfiyVar;
        this.zze = context;
        this.zzf = zzchuVar;
    }

    private final synchronized void zzu(com.google.android.gms.ads.internal.client.zzl zzlVar, zzcdr zzcdrVar, int i) throws RemoteException {
        boolean z = false;
        if (((Boolean) zzbkx.zzl.zze()).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzjn)).booleanValue()) {
                z = true;
            }
        }
        if (this.zzf.zzc < ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzjo)).intValue() || !z) {
            Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        }
        this.zzb.zze(zzcdrVar);
        com.google.android.gms.ads.internal.zzt.zzp();
        if (com.google.android.gms.ads.internal.util.zzs.zzD(this.zze) && zzlVar.zzs == null) {
            com.google.android.gms.ads.internal.util.zze.zzg("Failed to load the ad because app ID is missing.");
            this.zzb.zza(zzfkg.zzd(4, null, null));
            return;
        }
        if (this.zzg != null) {
            return;
        }
        zzfhq zzfhqVar = new zzfhq(null);
        this.zza.zzj(i);
        this.zza.zzb(zzlVar, this.zzc, zzfhqVar, new zzfib(this));
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final Bundle zzb() {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzdvt zzdvtVar = this.zzg;
        return zzdvtVar != null ? zzdvtVar.zza() : new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final com.google.android.gms.ads.internal.client.zzdn zzc() {
        zzdvt zzdvtVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzgi)).booleanValue() && (zzdvtVar = this.zzg) != null) {
            return zzdvtVar.zzl();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final zzcdh zzd() {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzdvt zzdvtVar = this.zzg;
        if (zzdvtVar != null) {
            return zzdvtVar.zzc();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final synchronized String zze() throws RemoteException {
        zzdvt zzdvtVar = this.zzg;
        if (zzdvtVar == null || zzdvtVar.zzl() == null) {
            return null;
        }
        return zzdvtVar.zzl().zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final synchronized void zzf(com.google.android.gms.ads.internal.client.zzl zzlVar, zzcdr zzcdrVar) throws RemoteException {
        zzu(zzlVar, zzcdrVar, 2);
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final synchronized void zzg(com.google.android.gms.ads.internal.client.zzl zzlVar, zzcdr zzcdrVar) throws RemoteException {
        zzu(zzlVar, zzcdrVar, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final synchronized void zzh(boolean z) {
        Preconditions.checkMainThread("setImmersiveMode must be called on the main UI thread.");
        this.zzh = z;
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final void zzi(com.google.android.gms.ads.internal.client.zzdd zzddVar) {
        if (zzddVar == null) {
            this.zzb.zzb(null);
        } else {
            this.zzb.zzb(new zzfia(this, zzddVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final void zzj(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        Preconditions.checkMainThread("setOnPaidEventListener must be called on the main UI thread.");
        this.zzb.zzc(zzdgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final void zzk(zzcdn zzcdnVar) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        this.zzb.zzd(zzcdnVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final synchronized void zzl(zzcdy zzcdyVar) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzfiy zzfiyVar = this.zzd;
        zzfiyVar.zza = zzcdyVar.zza;
        zzfiyVar.zzb = zzcdyVar.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final synchronized void zzm(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzn(iObjectWrapper, this.zzh);
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final synchronized void zzn(IObjectWrapper iObjectWrapper, boolean z) throws RemoteException {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        if (this.zzg == null) {
            com.google.android.gms.ads.internal.util.zze.zzj("Rewarded can not be shown before loaded");
            this.zzb.zzk(zzfkg.zzd(9, null, null));
            return;
        }
        this.zzg.zzh(z, (Activity) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final boolean zzo() {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzdvt zzdvtVar = this.zzg;
        return (zzdvtVar == null || zzdvtVar.zzf()) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final void zzp(zzcds zzcdsVar) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        this.zzb.zzi(zzcdsVar);
    }
}

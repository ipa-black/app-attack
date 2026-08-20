package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdue extends zzbsn implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzblw {
    private View zza;
    private com.google.android.gms.ads.internal.client.zzdq zzb;
    private zzdqb zzc;
    private boolean zzd = false;
    private boolean zze = false;

    public zzdue(zzdqb zzdqbVar, zzdqg zzdqgVar) {
        this.zza = zzdqgVar.zzf();
        this.zzb = zzdqgVar.zzj();
        this.zzc = zzdqbVar;
        if (zzdqgVar.zzr() != null) {
            zzdqgVar.zzr().zzao(this);
        }
    }

    private final void zzg() {
        View view;
        zzdqb zzdqbVar = this.zzc;
        if (zzdqbVar == null || (view = this.zza) == null) {
            return;
        }
        zzdqbVar.zzx(view, Collections.emptyMap(), Collections.emptyMap(), zzdqb.zzT(this.zza));
    }

    private final void zzh() {
        View view = this.zza;
        if (view == null) {
            return;
        }
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.zza);
        }
    }

    private static final void zzi(zzbsr zzbsrVar, int i) {
        try {
            zzbsrVar.zze(i);
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.zze.zzl("#007 Could not call remote method.", e2);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        zzg();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzbso
    public final com.google.android.gms.ads.internal.client.zzdq zzb() throws RemoteException {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        if (this.zzd) {
            com.google.android.gms.ads.internal.util.zze.zzg("getVideoController: Instream ad should not be used after destroyed");
            return null;
        }
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbso
    public final zzbmi zzc() {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        if (this.zzd) {
            com.google.android.gms.ads.internal.util.zze.zzg("getVideoController: Instream ad should not be used after destroyed");
            return null;
        }
        zzdqb zzdqbVar = this.zzc;
        if (zzdqbVar == null || zzdqbVar.zzc() == null) {
            return null;
        }
        return zzdqbVar.zzc().zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbso
    public final void zzd() throws RemoteException {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzh();
        zzdqb zzdqbVar = this.zzc;
        if (zzdqbVar != null) {
            zzdqbVar.zzaa();
        }
        this.zzc = null;
        this.zza = null;
        this.zzb = null;
        this.zzd = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbso
    public final void zze(IObjectWrapper iObjectWrapper) throws RemoteException {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzf(iObjectWrapper, new zzdud(this));
    }

    @Override // com.google.android.gms.internal.ads.zzbso
    public final void zzf(IObjectWrapper iObjectWrapper, zzbsr zzbsrVar) throws RemoteException {
        String str;
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        if (this.zzd) {
            com.google.android.gms.ads.internal.util.zze.zzg("Instream ad can not be shown after destroy().");
            zzi(zzbsrVar, 2);
            return;
        }
        View view = this.zza;
        if (view == null || this.zzb == null) {
            if (view == null) {
                str = "can not get video view.";
            } else {
                str = "can not get video controller.";
            }
            com.google.android.gms.ads.internal.util.zze.zzg("Instream internal error: ".concat(str));
            zzi(zzbsrVar, 0);
        } else if (this.zze) {
            com.google.android.gms.ads.internal.util.zze.zzg("Instream ad should not be used again.");
            zzi(zzbsrVar, 1);
        } else {
            this.zze = true;
            zzh();
            ((ViewGroup) ObjectWrapper.unwrap(iObjectWrapper)).addView(this.zza, new ViewGroup.LayoutParams(-1, -1));
            com.google.android.gms.ads.internal.zzt.zzx();
            zzcio.zza(this.zza, this);
            com.google.android.gms.ads.internal.zzt.zzx();
            zzcio.zzb(this.zza, this);
            zzg();
            try {
                zzbsrVar.zzf();
            } catch (RemoteException e2) {
                com.google.android.gms.ads.internal.util.zze.zzl("#007 Could not call remote method.", e2);
            }
        }
    }
}

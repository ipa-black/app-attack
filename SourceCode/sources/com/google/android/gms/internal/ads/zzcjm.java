package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.Preconditions;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcjm {
    private final Context zza;
    private final zzcjx zzb;
    private final ViewGroup zzc;
    private zzcjl zzd;

    public zzcjm(Context context, ViewGroup viewGroup, zzcno zzcnoVar) {
        this.zza = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzc = viewGroup;
        this.zzb = zzcnoVar;
        this.zzd = null;
    }

    public final zzcjl zza() {
        return this.zzd;
    }

    public final void zzb(int i, int i2, int i3, int i4) {
        Preconditions.checkMainThread("The underlay may only be modified from the UI thread.");
        zzcjl zzcjlVar = this.zzd;
        if (zzcjlVar != null) {
            zzcjlVar.zzF(i, i2, i3, i4);
        }
    }

    public final void zzc(int i, int i2, int i3, int i4, int i5, boolean z, zzcjw zzcjwVar, Integer num) {
        if (this.zzd != null) {
            return;
        }
        zzbjq.zza(this.zzb.zzo().zza(), this.zzb.zzn(), "vpr2");
        Context context = this.zza;
        zzcjx zzcjxVar = this.zzb;
        zzcjl zzcjlVar = new zzcjl(context, zzcjxVar, i5, z, zzcjxVar.zzo().zza(), zzcjwVar, num);
        this.zzd = zzcjlVar;
        this.zzc.addView(zzcjlVar, 0, new ViewGroup.LayoutParams(-1, -1));
        this.zzd.zzF(i, i2, i3, i4);
        this.zzb.zzB(false);
    }

    public final void zzd() {
        Preconditions.checkMainThread("onDestroy must be called from the UI thread.");
        zzcjl zzcjlVar = this.zzd;
        if (zzcjlVar != null) {
            zzcjlVar.zzo();
            this.zzc.removeView(this.zzd);
            this.zzd = null;
        }
    }

    public final void zze() {
        Preconditions.checkMainThread("onPause must be called from the UI thread.");
        zzcjl zzcjlVar = this.zzd;
        if (zzcjlVar != null) {
            zzcjlVar.zzu();
        }
    }

    public final void zzf(int i) {
        zzcjl zzcjlVar = this.zzd;
        if (zzcjlVar != null) {
            zzcjlVar.zzC(i);
        }
    }
}

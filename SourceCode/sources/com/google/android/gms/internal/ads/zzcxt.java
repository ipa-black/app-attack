package com.google.android.gms.internal.ads;

import android.view.View;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcxt extends zzdan {
    private final View zzc;
    private final zzcno zzd;
    private final zzfim zze;
    private final int zzf;
    private final boolean zzg;
    private final boolean zzh;
    private final zzcxl zzi;
    private zzbdu zzj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcxt(zzdam zzdamVar, View view, zzcno zzcnoVar, zzfim zzfimVar, int i, boolean z, boolean z2, zzcxl zzcxlVar) {
        super(zzdamVar);
        this.zzc = view;
        this.zzd = zzcnoVar;
        this.zze = zzfimVar;
        this.zzf = i;
        this.zzg = z;
        this.zzh = z2;
        this.zzi = zzcxlVar;
    }

    public final int zza() {
        return this.zzf;
    }

    public final View zzb() {
        return this.zzc;
    }

    public final zzfim zzc() {
        return zzfjk.zzb(this.zzb.zzs, this.zze);
    }

    public final void zzd(zzbdk zzbdkVar) {
        this.zzd.zzaj(zzbdkVar);
    }

    public final boolean zze() {
        return this.zzg;
    }

    public final boolean zzf() {
        return this.zzh;
    }

    public final boolean zzg() {
        return this.zzd.zzay();
    }

    public final boolean zzh() {
        return this.zzd.zzP() != null && this.zzd.zzP().zzK();
    }

    public final void zzi(long j, int i) {
        this.zzi.zza(j, i);
    }

    public final zzbdu zzj() {
        return this.zzj;
    }

    public final void zzk(zzbdu zzbduVar) {
        this.zzj = zzbduVar;
    }
}

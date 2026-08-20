package com.google.android.gms.internal.ads;

import android.view.View;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzeqh implements com.google.android.gms.ads.internal.zzf {
    final /* synthetic */ zzcig zza;
    final /* synthetic */ zzfix zzb;
    final /* synthetic */ zzfil zzc;
    final /* synthetic */ zzeqn zzd;
    final /* synthetic */ zzeqi zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeqh(zzeqi zzeqiVar, zzcig zzcigVar, zzfix zzfixVar, zzfil zzfilVar, zzeqn zzeqnVar) {
        this.zze = zzeqiVar;
        this.zza = zzcigVar;
        this.zzb = zzfixVar;
        this.zzc = zzfilVar;
        this.zzd = zzeqnVar;
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zza(View view) {
        zzeqr zzeqrVar;
        zzcig zzcigVar = this.zza;
        zzeqrVar = this.zze.zzd;
        zzcigVar.zzd(zzeqrVar.zza(this.zzb, this.zzc, view, this.zzd));
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zzb() {
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zzc() {
    }
}

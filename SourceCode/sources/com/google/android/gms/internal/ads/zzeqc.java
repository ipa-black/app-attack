package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeqc implements com.google.android.gms.ads.internal.zzf {
    final AtomicBoolean zza = new AtomicBoolean(false);
    private final zzdel zzb;
    private final zzdff zzc;
    private final zzdme zzd;
    private final zzdlw zze;
    private final zzcws zzf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeqc(zzdel zzdelVar, zzdff zzdffVar, zzdme zzdmeVar, zzdlw zzdlwVar, zzcws zzcwsVar) {
        this.zzb = zzdelVar;
        this.zzc = zzdffVar;
        this.zzd = zzdmeVar;
        this.zze = zzdlwVar;
        this.zzf = zzcwsVar;
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final synchronized void zza(View view) {
        if (this.zza.compareAndSet(false, true)) {
            this.zzf.zzl();
            this.zze.zza(view);
        }
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zzb() {
        if (this.zza.get()) {
            this.zzb.onAdClicked();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zzc() {
        if (this.zza.get()) {
            this.zzc.zza();
            this.zzd.zza();
        }
    }
}

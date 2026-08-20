package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdvh implements com.google.android.gms.ads.internal.client.zza, zzbow, com.google.android.gms.ads.internal.overlay.zzo, zzboy, com.google.android.gms.ads.internal.overlay.zzz, zzdmc {
    private com.google.android.gms.ads.internal.client.zza zza;
    private zzbow zzb;
    private com.google.android.gms.ads.internal.overlay.zzo zzc;
    private zzboy zzd;
    private com.google.android.gms.ads.internal.overlay.zzz zze;
    private zzdmc zzf;

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzi(com.google.android.gms.ads.internal.client.zza zzaVar, zzbow zzbowVar, com.google.android.gms.ads.internal.overlay.zzo zzoVar, zzboy zzboyVar, com.google.android.gms.ads.internal.overlay.zzz zzzVar, zzdmc zzdmcVar) {
        this.zza = zzaVar;
        this.zzb = zzbowVar;
        this.zzc = zzoVar;
        this.zzd = zzboyVar;
        this.zze = zzzVar;
        this.zzf = zzdmcVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final synchronized void onAdClicked() {
        com.google.android.gms.ads.internal.client.zza zzaVar = this.zza;
        if (zzaVar != null) {
            zzaVar.onAdClicked();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbow
    public final synchronized void zza(String str, Bundle bundle) {
        zzbow zzbowVar = this.zzb;
        if (zzbowVar != null) {
            zzbowVar.zza(str, bundle);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void zzb() {
        com.google.android.gms.ads.internal.overlay.zzo zzoVar = this.zzc;
        if (zzoVar != null) {
            zzoVar.zzb();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void zzbE() {
        com.google.android.gms.ads.internal.overlay.zzo zzoVar = this.zzc;
        if (zzoVar != null) {
            zzoVar.zzbE();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzboy
    public final synchronized void zzbF(String str, String str2) {
        zzboy zzboyVar = this.zzd;
        if (zzboyVar != null) {
            zzboyVar.zzbF(str, str2);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void zzbM() {
        com.google.android.gms.ads.internal.overlay.zzo zzoVar = this.zzc;
        if (zzoVar != null) {
            zzoVar.zzbM();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void zzbs() {
        com.google.android.gms.ads.internal.overlay.zzo zzoVar = this.zzc;
        if (zzoVar != null) {
            zzoVar.zzbs();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void zze() {
        com.google.android.gms.ads.internal.overlay.zzo zzoVar = this.zzc;
        if (zzoVar != null) {
            zzoVar.zze();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void zzf(int i) {
        com.google.android.gms.ads.internal.overlay.zzo zzoVar = this.zzc;
        if (zzoVar != null) {
            zzoVar.zzf(i);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzz
    public final synchronized void zzg() {
        com.google.android.gms.ads.internal.overlay.zzz zzzVar = this.zze;
        if (zzzVar != null) {
            ((zzdvi) zzzVar).zza.zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdmc
    public final synchronized void zzq() {
        zzdmc zzdmcVar = this.zzf;
        if (zzdmcVar != null) {
            zzdmcVar.zzq();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdmc
    public final synchronized void zzr() {
        zzdmc zzdmcVar = this.zzf;
        if (zzdmcVar != null) {
            zzdmcVar.zzr();
        }
    }
}

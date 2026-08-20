package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcsg {
    private zzcpm zza;
    private zzctt zzb;
    private zzfnn zzc;
    private zzcug zzd;
    private zzfkh zze;

    private zzcsg() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzcsg(zzcsf zzcsfVar) {
    }

    public final zzcpj zza() {
        zzhex.zzc(this.zza, zzcpm.class);
        zzhex.zzc(this.zzb, zzctt.class);
        if (this.zzc == null) {
            this.zzc = new zzfnn();
        }
        if (this.zzd == null) {
            this.zzd = new zzcug();
        }
        if (this.zze == null) {
            this.zze = new zzfkh();
        }
        return new zzcre(this.zza, this.zzb, this.zzc, this.zzd, this.zze, null);
    }

    public final zzcsg zzb(zzcpm zzcpmVar) {
        this.zza = zzcpmVar;
        return this;
    }

    public final zzcsg zzc(zzctt zzcttVar) {
        this.zzb = zzcttVar;
        return this;
    }
}

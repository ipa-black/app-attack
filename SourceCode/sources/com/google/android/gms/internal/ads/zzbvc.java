package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbvc {
    private final zzbuf zza;
    private zzgfb zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbvc(zzbuf zzbufVar) {
        this.zza = zzbufVar;
    }

    private final void zzd() {
        if (this.zzb == null) {
            final zzcig zzcigVar = new zzcig();
            this.zzb = zzcigVar;
            this.zza.zzb(null).zzi(new zzcik() { // from class: com.google.android.gms.internal.ads.zzbva
                @Override // com.google.android.gms.internal.ads.zzcik
                public final void zza(Object obj) {
                    zzcig.this.zzd((zzbug) obj);
                }
            }, new zzcii() { // from class: com.google.android.gms.internal.ads.zzbvb
                @Override // com.google.android.gms.internal.ads.zzcii
                public final void zza() {
                    zzcig.this.zze(new zzbui("Cannot get Javascript Engine"));
                }
            });
        }
    }

    public final zzbvf zza(String str, zzbum zzbumVar, zzbul zzbulVar) {
        zzd();
        return new zzbvf(this.zzb, "google.afma.activeView.handleUpdate", zzbumVar, zzbulVar);
    }

    public final void zzb(final String str, final zzbqd zzbqdVar) {
        zzd();
        this.zzb = zzger.zzn(this.zzb, new zzgdy() { // from class: com.google.android.gms.internal.ads.zzbuy
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                zzbug zzbugVar = (zzbug) obj;
                zzbugVar.zzq(str, zzbqdVar);
                return zzger.zzi(zzbugVar);
            }
        }, zzcib.zzf);
    }

    public final void zzc(final String str, final zzbqd zzbqdVar) {
        this.zzb = zzger.zzm(this.zzb, new zzfxt() { // from class: com.google.android.gms.internal.ads.zzbuz
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj) {
                zzbug zzbugVar = (zzbug) obj;
                zzbugVar.zzr(str, zzbqdVar);
                return zzbugVar;
            }
        }, zzcib.zzf);
    }
}

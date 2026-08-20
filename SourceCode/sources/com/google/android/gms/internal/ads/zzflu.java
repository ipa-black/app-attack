package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzflu {
    private final zzfln zza;
    private final zzgfb zzb;
    private boolean zzc = false;
    private boolean zzd = false;

    public zzflu(final zzfks zzfksVar, final zzflm zzflmVar, final zzfln zzflnVar) {
        this.zza = zzflnVar;
        this.zzb = zzger.zzg(zzger.zzn(zzflmVar.zza(zzflnVar), new zzgdy() { // from class: com.google.android.gms.internal.ads.zzfls
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzflu.this.zzb(zzflmVar, zzfksVar, zzflnVar, (zzflb) obj);
            }
        }, zzflnVar.zzb()), Exception.class, new zzgdy() { // from class: com.google.android.gms.internal.ads.zzflt
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzflu.this.zzc(zzflmVar, (Exception) obj);
            }
        }, zzflnVar.zzb());
    }

    public final synchronized zzgfb zza(zzfln zzflnVar) {
        if (!this.zzd && !this.zzc) {
            if (this.zza.zza() != null && zzflnVar.zza() != null && this.zza.zza().equals(zzflnVar.zza())) {
                this.zzc = true;
                return this.zzb;
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzb(zzflm zzflmVar, zzfks zzfksVar, zzfln zzflnVar, zzflb zzflbVar) throws Exception {
        synchronized (this) {
            this.zzd = true;
            zzflmVar.zzb(zzflbVar);
            if (!this.zzc) {
                zzfksVar.zzd(zzflnVar.zza(), zzflbVar);
                return zzger.zzi(null);
            }
            return zzger.zzi(new zzfll(zzflbVar, zzflnVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzc(zzflm zzflmVar, Exception exc) throws Exception {
        synchronized (this) {
            this.zzd = true;
            throw exc;
        }
    }

    public final synchronized void zzd(zzgen zzgenVar) {
        zzger.zzr(zzger.zzn(this.zzb, new zzgdy() { // from class: com.google.android.gms.internal.ads.zzflr
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                zzfll zzfllVar = (zzfll) obj;
                return zzger.zzj();
            }
        }, this.zza.zzb()), zzgenVar, this.zza.zzb());
    }
}

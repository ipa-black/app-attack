package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzecx implements zzgen {
    final /* synthetic */ String zza;
    final /* synthetic */ zzecy zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzecx(zzecy zzecyVar, String str) {
        this.zzb = zzecyVar;
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final void zza(Throwable th) {
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzecm zzecmVar;
        ((zzebs) obj).zzf();
        zzecmVar = this.zzb.zzc;
        zzecmVar.zzk(this.zza);
    }
}

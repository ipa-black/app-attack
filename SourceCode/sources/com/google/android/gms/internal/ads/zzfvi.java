package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfvi extends zzgdf {
    Object zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfvi(Object obj) {
        this.zza = obj;
    }

    @Override // com.google.android.gms.internal.ads.zzgdf
    public final String zza() {
        Object obj = this.zza;
        return obj == null ? "" : obj.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgdf
    protected final void zzb() {
        this.zza = null;
    }

    @Override // com.google.android.gms.internal.ads.zzgdf
    public final boolean zzd(Object obj) {
        return super.zzd(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgdf
    public final boolean zze(Throwable th) {
        return super.zze(th);
    }
}

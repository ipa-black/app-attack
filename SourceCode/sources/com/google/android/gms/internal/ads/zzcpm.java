package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcpm {
    private final zzchu zza;
    private final Context zzb;
    private final WeakReference zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzcpm(zzcpk zzcpkVar, zzcpl zzcplVar) {
        zzchu zzchuVar;
        Context context;
        WeakReference weakReference;
        zzchuVar = zzcpkVar.zza;
        this.zza = zzchuVar;
        context = zzcpkVar.zzb;
        this.zzb = context;
        weakReference = zzcpkVar.zzc;
        this.zzc = weakReference;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Context zza() {
        return this.zzb;
    }

    public final zzapj zzb() {
        return new zzapj(new com.google.android.gms.ads.internal.zzi(this.zzb, this.zza));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzbls zzc() {
        return new zzbls(this.zzb);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzchu zzd() {
        return this.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zze() {
        return com.google.android.gms.ads.internal.zzt.zzp().zzc(this.zzb, this.zza.zza);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final WeakReference zzf() {
        return this.zzc;
    }
}

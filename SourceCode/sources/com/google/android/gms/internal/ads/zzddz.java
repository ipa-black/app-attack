package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzddz {
    private final Context zza;
    private final zzfjg zzb;
    private final Bundle zzc;
    private final zzfiy zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzddz(zzddx zzddxVar, zzddy zzddyVar) {
        this.zza = zzddx.zza(zzddxVar);
        this.zzb = zzddx.zzi(zzddxVar);
        this.zzc = zzddx.zzb(zzddxVar);
        this.zzd = zzddx.zzh(zzddxVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Context zza(Context context) {
        return this.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Bundle zzb() {
        return this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzddx zzc() {
        zzddx zzddxVar = new zzddx();
        zzddxVar.zzc(this.zza);
        zzddxVar.zzf(this.zzb);
        zzddxVar.zzd(this.zzc);
        return zzddxVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzfiy zzd() {
        return this.zzd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzfjg zze() {
        return this.zzb;
    }
}

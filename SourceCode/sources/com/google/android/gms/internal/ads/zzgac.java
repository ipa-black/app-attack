package com.google.android.gms.internal.ads;

import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgac extends zzfzq {
    final /* synthetic */ zzgae zza;
    private final Object zzb;
    private int zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgac(zzgae zzgaeVar, int i) {
        this.zza = zzgaeVar;
        this.zzb = zzgae.zzg(zzgaeVar, i);
        this.zzc = i;
    }

    private final void zza() {
        int zzv;
        int i = this.zzc;
        if (i == -1 || i >= this.zza.size() || !zzfxz.zza(this.zzb, zzgae.zzg(this.zza, this.zzc))) {
            zzv = this.zza.zzv(this.zzb);
            this.zzc = zzv;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfzq, java.util.Map.Entry
    public final Object getKey() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfzq, java.util.Map.Entry
    public final Object getValue() {
        Map zzl = this.zza.zzl();
        if (zzl != null) {
            return zzl.get(this.zzb);
        }
        zza();
        int i = this.zzc;
        if (i == -1) {
            return null;
        }
        return zzgae.zzj(this.zza, i);
    }

    @Override // com.google.android.gms.internal.ads.zzfzq, java.util.Map.Entry
    public final Object setValue(Object obj) {
        Map zzl = this.zza.zzl();
        if (zzl != null) {
            return zzl.put(this.zzb, obj);
        }
        zza();
        int i = this.zzc;
        if (i == -1) {
            this.zza.put(this.zzb, obj);
            return null;
        }
        Object zzj = zzgae.zzj(this.zza, i);
        zzgae.zzm(this.zza, this.zzc, obj);
        return zzj;
    }
}

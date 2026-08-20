package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzir implements zzjl {
    private final Object zza;
    private zzcn zzb;

    public zzir(Object obj, zzcn zzcnVar) {
        this.zza = obj;
        this.zzb = zzcnVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzc(zzir zzirVar, zzcn zzcnVar) {
        zzirVar.zzb = zzcnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzjl
    public final zzcn zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzjl
    public final Object zzb() {
        return this.zza;
    }
}

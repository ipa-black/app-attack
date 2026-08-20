package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbbo implements Runnable {
    final /* synthetic */ int zza;
    final /* synthetic */ int zzb;
    final /* synthetic */ int zzc;
    final /* synthetic */ float zzd;
    final /* synthetic */ zzbbr zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbbo(zzbbr zzbbrVar, int i, int i2, int i3, float f2) {
        this.zze = zzbbrVar;
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = f2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbbs zzbbsVar;
        zzbbsVar = this.zze.zzb;
        zzbbsVar.zzo(this.zza, this.zzb, this.zzc, this.zzd);
    }
}

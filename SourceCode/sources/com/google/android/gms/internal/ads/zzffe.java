package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzffe implements zzflm {
    private final zzfga zza;

    public zzffe(zzfga zzfgaVar) {
        this.zza = zzfgaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzflm
    public final zzgfb zza(zzfln zzflnVar) {
        zzfff zzfffVar = (zzfff) zzflnVar;
        return ((zzffb) this.zza).zzb(zzfffVar.zzb, zzfffVar.zza, null);
    }

    @Override // com.google.android.gms.internal.ads.zzflm
    public final void zzb(zzflb zzflbVar) {
        zzflbVar.zza = ((zzffb) this.zza).zza();
    }
}

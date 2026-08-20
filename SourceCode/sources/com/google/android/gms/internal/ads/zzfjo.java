package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzfjo implements zzgen {
    final /* synthetic */ zzcno zza;
    final /* synthetic */ zzfpo zzb;
    final /* synthetic */ zzekc zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfjo(zzcno zzcnoVar, zzfpo zzfpoVar, zzekc zzekcVar) {
        this.zza = zzcnoVar;
        this.zzb = zzfpoVar;
        this.zzc = zzekcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final void zza(Throwable th) {
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        String str = (String) obj;
        if (!this.zza.zzF().zzak) {
            this.zzb.zzc(str, null);
            return;
        }
        long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis();
        String str2 = this.zza.zzR().zzb;
        int i = 2;
        if (!com.google.android.gms.ads.internal.zzt.zzo().zzx(this.zza.getContext())) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzfJ)).booleanValue() || !this.zza.zzF().zzT) {
                i = 1;
            }
        }
        this.zzc.zzd(new zzeke(currentTimeMillis, str2, str, i));
    }
}

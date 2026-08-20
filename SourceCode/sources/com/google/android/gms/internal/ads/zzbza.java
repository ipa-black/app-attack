package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
final class zzbza extends zzbno {
    final /* synthetic */ zzbzd zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzbza(zzbzd zzbzdVar, zzbyz zzbyzVar) {
        this.zza = zzbzdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnp
    public final void zze(zzbnf zzbnfVar, String str) {
        zzbzd zzbzdVar = this.zza;
        if (zzbzd.zzc(zzbzdVar) == null) {
            return;
        }
        zzbzd.zzc(zzbzdVar).onCustomClick(zzbzd.zze(zzbzdVar, zzbnfVar), str);
    }
}

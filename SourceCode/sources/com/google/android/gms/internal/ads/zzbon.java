package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
final class zzbon extends zzbno {
    final /* synthetic */ zzboq zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzbon(zzboq zzboqVar, zzbom zzbomVar) {
        this.zza = zzboqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnp
    public final void zze(zzbnf zzbnfVar, String str) {
        zzboq zzboqVar = this.zza;
        if (zzboq.zza(zzboqVar) == null) {
            return;
        }
        zzboq.zza(zzboqVar).onCustomClick(zzboq.zzc(zzboqVar, zzbnfVar), str);
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzddk implements zzhep {
    private final zzhfc zza;
    private final zzhfc zzb;
    private final zzhfc zzc;

    public zzddk(zzhfc zzhfcVar, zzhfc zzhfcVar2, zzhfc zzhfcVar3) {
        this.zza = zzhfcVar;
        this.zzb = zzhfcVar2;
        this.zzc = zzhfcVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        final Context context = (Context) this.zza.zzb();
        final zzchu zza = ((zzcqa) this.zzb).zza();
        final zzfjg zza2 = ((zzdee) this.zzc).zza();
        return new zzfxt() { // from class: com.google.android.gms.internal.ads.zzddj
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj) {
                Context context2 = context;
                zzchu zzchuVar = zza;
                zzfjg zzfjgVar = zza2;
                zzfil zzfilVar = (zzfil) obj;
                com.google.android.gms.ads.internal.util.zzas zzasVar = new com.google.android.gms.ads.internal.util.zzas(context2);
                zzasVar.zzp(zzfilVar.zzC);
                zzasVar.zzq(zzfilVar.zzD.toString());
                zzasVar.zzo(zzchuVar.zza);
                zzasVar.zzn(zzfjgVar.zzf);
                return zzasVar;
            }
        };
    }
}

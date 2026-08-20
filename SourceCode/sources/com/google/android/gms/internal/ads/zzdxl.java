package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdxl implements zzhep {
    private final zzhfc zza;
    private final zzhfc zzb;
    private final zzhfc zzc;
    private final zzhfc zzd;
    private final zzhfc zze;

    public zzdxl(zzhfc zzhfcVar, zzhfc zzhfcVar2, zzhfc zzhfcVar3, zzhfc zzhfcVar4, zzhfc zzhfcVar5) {
        this.zza = zzhfcVar;
        this.zzb = zzhfcVar2;
        this.zzc = zzhfcVar3;
        this.zzd = zzhfcVar4;
        this.zze = zzhfcVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context zza = ((zzcpp) this.zza).zza();
        final String zzb = ((zzedw) this.zzb).zzb();
        zzchu zza2 = ((zzcqa) this.zzc).zza();
        final zzbfg zzbfgVar = (zzbfg) this.zzd.zzb();
        final String str = (String) this.zze.zzb();
        zzbew zzbewVar = new zzbew(new zzbfc(zza));
        zzbhv zza3 = zzbhw.zza();
        zza3.zza(zza2.zzb);
        zza3.zzc(zza2.zzc);
        zza3.zzb(true != zza2.zzd ? 2 : 0);
        final zzbhw zzbhwVar = (zzbhw) zza3.zzak();
        zzbewVar.zzb(new zzbev() { // from class: com.google.android.gms.internal.ads.zzdxk
            @Override // com.google.android.gms.internal.ads.zzbev
            public final void zza(zzbgl zzbglVar) {
                zzbfg zzbfgVar2 = zzbfg.this;
                String str2 = zzb;
                zzbhw zzbhwVar2 = zzbhwVar;
                String str3 = str;
                zzbfh zzbfhVar = (zzbfh) zzbglVar.zza().zzaA();
                zzbfhVar.zza(zzbfgVar2);
                zzbglVar.zze(zzbfhVar);
                zzbgd zzbgdVar = (zzbgd) zzbglVar.zzb().zzaA();
                zzbgdVar.zza(str2);
                zzbgdVar.zzb(zzbhwVar2);
                zzbglVar.zzg(zzbgdVar);
                zzbglVar.zzh(str3);
            }
        });
        return zzbewVar;
    }
}

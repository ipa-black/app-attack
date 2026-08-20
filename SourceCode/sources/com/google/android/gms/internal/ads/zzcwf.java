package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzcwf implements zzgen {
    final /* synthetic */ zzcwh zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcwf(zzcwh zzcwhVar) {
        this.zza = zzcwhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final void zza(Throwable th) {
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzfjp zzfjpVar;
        zzfpk zzfpkVar;
        zzfix zzfixVar;
        zzfil zzfilVar;
        zzfil zzfilVar2;
        Context context;
        String str = (String) obj;
        zzcwh zzcwhVar = this.zza;
        zzfjpVar = zzcwhVar.zzh;
        zzfpkVar = zzcwhVar.zzg;
        zzfixVar = zzcwhVar.zze;
        zzfilVar = zzcwhVar.zzf;
        zzfilVar2 = zzcwhVar.zzf;
        List zzd = zzfpkVar.zzd(zzfixVar, zzfilVar, false, "", str, zzfilVar2.zzc);
        zzcgx zzo = com.google.android.gms.ads.internal.zzt.zzo();
        context = this.zza.zza;
        zzfjpVar.zzc(zzd, true == zzo.zzx(context) ? 2 : 1);
    }
}

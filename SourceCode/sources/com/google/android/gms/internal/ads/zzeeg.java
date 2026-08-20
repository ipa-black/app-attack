package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzeeg implements zzgen {
    final /* synthetic */ zzeeh zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeeg(zzeeh zzeehVar) {
        this.zza = zzeehVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final void zza(Throwable th) {
        Pattern pattern;
        zzejc zzejcVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzfE)).booleanValue()) {
            pattern = zzeeh.zza;
            Matcher matcher = pattern.matcher(th.getMessage());
            if (matcher.matches()) {
                String group = matcher.group(1);
                zzejcVar = this.zza.zzf;
                zzejcVar.zzi(Integer.parseInt(group));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzejc zzejcVar;
        zzejc zzejcVar2;
        zzfix zzfixVar = (zzfix) obj;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzfE)).booleanValue()) {
            zzejcVar = this.zza.zzf;
            zzejcVar.zzi(zzfixVar.zzb.zzb.zze);
            zzejcVar2 = this.zza.zzf;
            zzejcVar2.zzj(zzfixVar.zzb.zzb.zzf);
        }
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfgf implements zzhep {
    private final zzhfc zza;
    private final zzhfc zzb;
    private final zzhfc zzc;

    public zzfgf(zzhfc zzhfcVar, zzhfc zzhfcVar2, zzhfc zzhfcVar3) {
        this.zza = zzhfcVar;
        this.zzb = zzhfcVar2;
        this.zzc = zzhfcVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    /* renamed from: zza */
    public final zzfga zzb() {
        zzcgr zzi;
        Context context = (Context) this.zza.zzb();
        zzfko zzfkoVar = (zzfko) this.zzb.zzb();
        zzflg zzflgVar = (zzflg) this.zzc.zzb();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzfM)).booleanValue()) {
            zzi = com.google.android.gms.ads.internal.zzt.zzo().zzh().zzh();
        } else {
            zzi = com.google.android.gms.ads.internal.zzt.zzo().zzh().zzi();
        }
        boolean z = false;
        if (zzi != null && zzi.zzh()) {
            z = true;
        }
        if (((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzfO)).intValue() > 0) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzfL)).booleanValue() || z) {
                zzflf zza = zzflgVar.zza(zzfkw.Rewarded, context, zzfkoVar, new zzffe(new zzffb()));
                return new zzffg(new zzffq(new zzffp()), new zzffm(zza.zza, zzcib.zza), zza.zzb, zza.zza.zza().zzf, zzcib.zza);
            }
        }
        return new zzffp();
    }
}

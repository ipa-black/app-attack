package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.util.MimeTypes;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzais {
    private final List zza;
    private final zzaaq[] zzb;

    public zzais(List list) {
        this.zza = list;
        this.zzb = new zzaaq[list.size()];
    }

    public final void zza(long j, zzef zzefVar) {
        if (zzefVar.zza() < 9) {
            return;
        }
        int zze = zzefVar.zze();
        int zze2 = zzefVar.zze();
        int zzk = zzefVar.zzk();
        if (zze == 434 && zze2 == 1195456820 && zzk == 3) {
            zzyw.zzb(j, zzefVar, this.zzb);
        }
    }

    public final void zzb(zzzm zzzmVar, zzaip zzaipVar) {
        for (int i = 0; i < this.zzb.length; i++) {
            zzaipVar.zzc();
            zzaaq zzv = zzzmVar.zzv(zzaipVar.zza(), 3);
            zzaf zzafVar = (zzaf) this.zza.get(i);
            String str = zzafVar.zzm;
            boolean z = true;
            if (!MimeTypes.APPLICATION_CEA608.equals(str) && !MimeTypes.APPLICATION_CEA708.equals(str)) {
                z = false;
            }
            zzdd.zze(z, "Invalid closed caption mime type provided: ".concat(String.valueOf(str)));
            zzad zzadVar = new zzad();
            zzadVar.zzH(zzaipVar.zzb());
            zzadVar.zzS(str);
            zzadVar.zzU(zzafVar.zze);
            zzadVar.zzK(zzafVar.zzd);
            zzadVar.zzu(zzafVar.zzE);
            zzadVar.zzI(zzafVar.zzo);
            zzv.zzk(zzadVar.zzY());
            this.zzb[i] = zzv;
        }
    }
}

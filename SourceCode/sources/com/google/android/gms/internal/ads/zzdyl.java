package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdyl implements zzhep {
    private final zzhfc zza;
    private final zzhfc zzb;
    private final zzhfc zzc;
    private final zzhfc zzd;

    public zzdyl(zzhfc zzhfcVar, zzhfc zzhfcVar2, zzhfc zzhfcVar3, zzhfc zzhfcVar4) {
        this.zza = zzhfcVar;
        this.zzb = zzhfcVar2;
        this.zzc = zzhfcVar3;
        this.zzd = zzhfcVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set emptySet;
        final String str = (String) this.zza.zzb();
        Context zza = ((zzcpp) this.zzb).zza();
        zzgfc zzgfcVar = zzcib.zza;
        zzhex.zzb(zzgfcVar);
        Map zzb = ((zzhet) this.zzd).zzb();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzes)).booleanValue()) {
            zzbew zzbewVar = new zzbew(new zzbfc(zza));
            zzbewVar.zzb(new zzbev() { // from class: com.google.android.gms.internal.ads.zzdym
                @Override // com.google.android.gms.internal.ads.zzbev
                public final void zza(zzbgl zzbglVar) {
                    zzbglVar.zzh(str);
                }
            });
            emptySet = Collections.singleton(new zzdlu(new zzdyo(zzbewVar, zzb), zzgfcVar));
        } else {
            emptySet = Collections.emptySet();
        }
        zzhex.zzb(emptySet);
        return emptySet;
    }
}

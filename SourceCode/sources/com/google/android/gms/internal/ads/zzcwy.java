package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcwy implements zzhep {
    private final zzhfc zza;
    private final zzhfc zzb;
    private final zzhfc zzc;

    public zzcwy(zzhfc zzhfcVar, zzhfc zzhfcVar2, zzhfc zzhfcVar3) {
        this.zza = zzhfcVar;
        this.zzb = zzhfcVar2;
        this.zzc = zzhfcVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set singleton;
        zzcws zzcwsVar = (zzcws) this.zza.zzb();
        zzgfc zzgfcVar = zzcib.zza;
        zzhex.zzb(zzgfcVar);
        if (((JSONObject) this.zzc.zzb()) == null) {
            singleton = Collections.emptySet();
        } else {
            singleton = Collections.singleton(new zzdlu(zzcwsVar, zzgfcVar));
        }
        zzhex.zzb(singleton);
        return singleton;
    }
}

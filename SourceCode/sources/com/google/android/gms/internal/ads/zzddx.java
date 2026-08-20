package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzddx {
    private Context zza;
    private zzfjg zzb;
    private Bundle zzc;
    private zzfiy zzd;

    public final zzddx zzc(Context context) {
        this.zza = context;
        return this;
    }

    public final zzddx zzd(Bundle bundle) {
        this.zzc = bundle;
        return this;
    }

    public final zzddx zze(zzfiy zzfiyVar) {
        this.zzd = zzfiyVar;
        return this;
    }

    public final zzddx zzf(zzfjg zzfjgVar) {
        this.zzb = zzfjgVar;
        return this;
    }

    public final zzddz zzg() {
        return new zzddz(this, null);
    }
}

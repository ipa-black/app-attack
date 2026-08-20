package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public class zzdmz {
    private final zzdoe zza;
    private final zzcno zzb;

    public zzdmz(zzdoe zzdoeVar, zzcno zzcnoVar) {
        this.zza = zzdoeVar;
        this.zzb = zzcnoVar;
    }

    public static final zzdlu zzh(zzfoi zzfoiVar) {
        return new zzdlu(zzfoiVar, zzcib.zzf);
    }

    public static final zzdlu zzi(zzdoj zzdojVar) {
        return new zzdlu(zzdojVar, zzcib.zzf);
    }

    public final View zza() {
        zzcno zzcnoVar = this.zzb;
        if (zzcnoVar == null) {
            return null;
        }
        return zzcnoVar.zzI();
    }

    public final View zzb() {
        zzcno zzcnoVar = this.zzb;
        if (zzcnoVar != null) {
            return zzcnoVar.zzI();
        }
        return null;
    }

    public final zzcno zzc() {
        return this.zzb;
    }

    public final zzdlu zzd(Executor executor) {
        final zzcno zzcnoVar = this.zzb;
        return new zzdlu(new zzdja() { // from class: com.google.android.gms.internal.ads.zzdmx
            @Override // com.google.android.gms.internal.ads.zzdja
            public final void zza() {
                zzcno zzcnoVar2 = zzcno.this;
                if (zzcnoVar2.zzN() != null) {
                    zzcnoVar2.zzN().zzb();
                }
            }
        }, executor);
    }

    public final zzdoe zze() {
        return this.zza;
    }

    public Set zzf(zzddn zzddnVar) {
        return Collections.singleton(new zzdlu(zzddnVar, zzcib.zzf));
    }

    public Set zzg(zzddn zzddnVar) {
        return Collections.singleton(new zzdlu(zzddnVar, zzcib.zzf));
    }
}

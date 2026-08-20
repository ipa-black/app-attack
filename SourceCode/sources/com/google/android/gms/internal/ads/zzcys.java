package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.Collections;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public class zzcys {
    private final zzdal zza;
    private final View zzb;
    private final zzfim zzc;
    private final zzcno zzd;

    public zzcys(View view, zzcno zzcnoVar, zzdal zzdalVar, zzfim zzfimVar) {
        this.zzb = view;
        this.zzd = zzcnoVar;
        this.zza = zzdalVar;
        this.zzc = zzfimVar;
    }

    public static final zzdlu zzf(final Context context, final zzchu zzchuVar, final zzfil zzfilVar, final zzfjg zzfjgVar) {
        return new zzdlu(new zzdgb() { // from class: com.google.android.gms.internal.ads.zzcyq
            @Override // com.google.android.gms.internal.ads.zzdgb
            public final void zzn() {
                com.google.android.gms.ads.internal.zzt.zzs().zzn(context, zzchuVar.zza, zzfilVar.zzD.toString(), zzfjgVar.zzf);
            }
        }, zzcib.zzf);
    }

    public static final Set zzg(zzdac zzdacVar) {
        return Collections.singleton(new zzdlu(zzdacVar, zzcib.zzf));
    }

    public static final zzdlu zzh(zzdaa zzdaaVar) {
        return new zzdlu(zzdaaVar, zzcib.zze);
    }

    public final View zza() {
        return this.zzb;
    }

    public final zzcno zzb() {
        return this.zzd;
    }

    public final zzdal zzc() {
        return this.zza;
    }

    public zzdfz zzd(Set set) {
        return new zzdfz(set);
    }

    public final zzfim zze() {
        return this.zzc;
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeph implements zzekq {
    private final Context zza;
    private final zzdwp zzb;
    private final zzdvy zzc;
    private final zzfjg zzd;
    private final Executor zze;
    private final zzchu zzf;
    private final zzbqf zzg;
    private final boolean zzh = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhW)).booleanValue();

    public zzeph(Context context, zzchu zzchuVar, zzfjg zzfjgVar, Executor executor, zzdvy zzdvyVar, zzdwp zzdwpVar, zzbqf zzbqfVar) {
        this.zza = context;
        this.zzd = zzfjgVar;
        this.zzc = zzdvyVar;
        this.zze = executor;
        this.zzf = zzchuVar;
        this.zzb = zzdwpVar;
        this.zzg = zzbqfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzekq
    public final zzgfb zza(final zzfix zzfixVar, final zzfil zzfilVar) {
        final zzdwt zzdwtVar = new zzdwt();
        zzgfb zzn = zzger.zzn(zzger.zzi(null), new zzgdy() { // from class: com.google.android.gms.internal.ads.zzepa
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzeph.this.zzc(zzfilVar, zzfixVar, zzdwtVar, obj);
            }
        }, this.zze);
        zzn.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzepb
            @Override // java.lang.Runnable
            public final void run() {
                zzdwt.this.zzb();
            }
        }, this.zze);
        return zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzekq
    public final boolean zzb(zzfix zzfixVar, zzfil zzfilVar) {
        zzfiq zzfiqVar = zzfilVar.zzt;
        return (zzfiqVar == null || zzfiqVar.zza == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzc(final zzfil zzfilVar, zzfix zzfixVar, zzdwt zzdwtVar, Object obj) throws Exception {
        final zzcno zza = this.zzb.zza(this.zzd.zze, zzfilVar, zzfixVar.zzb.zzb);
        zza.zzab(zzfilVar.zzX);
        zzdwtVar.zza(this.zza, (View) zza);
        zzcig zzcigVar = new zzcig();
        final zzdvu zze = this.zzc.zze(new zzdbc(zzfixVar, zzfilVar, null), new zzdvv(new zzepg(this.zza, this.zzb, this.zzd, this.zzf, zzfilVar, zzcigVar, zza, this.zzg, this.zzh), zza));
        zzcigVar.zzd(zze);
        zzbqt.zzb(zza, zze.zzg());
        zze.zzc().zzj(new zzdfh() { // from class: com.google.android.gms.internal.ads.zzepc
            @Override // com.google.android.gms.internal.ads.zzdfh
            public final void zzl() {
                zzcno zzcnoVar = zzcno.this;
                if (zzcnoVar.zzP() != null) {
                    zzcnoVar.zzP().zzp();
                }
            }
        }, zzcib.zzf);
        zze.zzl().zzi(zza, true, this.zzh ? this.zzg : null);
        zze.zzl();
        zzfiq zzfiqVar = zzfilVar.zzt;
        return zzger.zzm(zzdwo.zzj(zza, zzfiqVar.zzb, zzfiqVar.zza), new zzfxt() { // from class: com.google.android.gms.internal.ads.zzepd
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj2) {
                zzcno zzcnoVar = zza;
                zzfil zzfilVar2 = zzfilVar;
                zzdvu zzdvuVar = zze;
                if (zzfilVar2.zzN) {
                    zzcnoVar.zzag();
                }
                zzcnoVar.zzaa();
                zzcnoVar.onPause();
                return zzdvuVar.zzk();
            }
        }, this.zze);
    }
}

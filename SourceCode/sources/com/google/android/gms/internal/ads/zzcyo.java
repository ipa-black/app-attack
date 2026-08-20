package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcyo extends zzcyl {
    private final Context zzc;
    private final View zzd;
    private final zzcno zze;
    private final zzfim zzf;
    private final zzdal zzg;
    private final zzdqr zzh;
    private final zzdme zzi;
    private final zzhej zzj;
    private final Executor zzk;
    private com.google.android.gms.ads.internal.client.zzq zzl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcyo(zzdam zzdamVar, Context context, zzfim zzfimVar, View view, zzcno zzcnoVar, zzdal zzdalVar, zzdqr zzdqrVar, zzdme zzdmeVar, zzhej zzhejVar, Executor executor) {
        super(zzdamVar);
        this.zzc = context;
        this.zzd = view;
        this.zze = zzcnoVar;
        this.zzf = zzfimVar;
        this.zzg = zzdalVar;
        this.zzh = zzdqrVar;
        this.zzi = zzdmeVar;
        this.zzj = zzhejVar;
        this.zzk = executor;
    }

    public static /* synthetic */ void zzi(zzcyo zzcyoVar) {
        zzdqr zzdqrVar = zzcyoVar.zzh;
        if (zzdqrVar.zze() == null) {
            return;
        }
        try {
            zzdqrVar.zze().zze((com.google.android.gms.ads.internal.client.zzbu) zzcyoVar.zzj.zzb(), ObjectWrapper.wrap(zzcyoVar.zzc));
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.zze.zzh("RemoteException when notifyAdLoad is called", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcyl
    public final int zza() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzgZ)).booleanValue() && this.zzb.zzai) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzha)).booleanValue()) {
                return 0;
            }
        }
        return this.zza.zzb.zzb.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzdan
    public final void zzab() {
        this.zzk.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcyn
            @Override // java.lang.Runnable
            public final void run() {
                zzcyo.zzi(zzcyo.this);
            }
        });
        super.zzab();
    }

    @Override // com.google.android.gms.internal.ads.zzcyl
    public final View zzc() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzcyl
    public final com.google.android.gms.ads.internal.client.zzdq zzd() {
        try {
            return this.zzg.zza();
        } catch (zzfjl unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcyl
    public final zzfim zze() {
        com.google.android.gms.ads.internal.client.zzq zzqVar = this.zzl;
        if (zzqVar != null) {
            return zzfjk.zzc(zzqVar);
        }
        zzfil zzfilVar = this.zzb;
        if (zzfilVar.zzad) {
            for (String str : zzfilVar.zza) {
                if (str == null || !str.contains("FirstParty")) {
                }
            }
            return new zzfim(this.zzd.getWidth(), this.zzd.getHeight(), false);
        }
        return zzfjk.zzb(this.zzb.zzs, this.zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzcyl
    public final zzfim zzf() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzcyl
    public final void zzg() {
        this.zzi.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzcyl
    public final void zzh(ViewGroup viewGroup, com.google.android.gms.ads.internal.client.zzq zzqVar) {
        zzcno zzcnoVar;
        if (viewGroup == null || (zzcnoVar = this.zze) == null) {
            return;
        }
        zzcnoVar.zzai(zzcpd.zzc(zzqVar));
        viewGroup.setMinimumHeight(zzqVar.zzc);
        viewGroup.setMinimumWidth(zzqVar.zzf);
        this.zzl = zzqVar;
    }
}

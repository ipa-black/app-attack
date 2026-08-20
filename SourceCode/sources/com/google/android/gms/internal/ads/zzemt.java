package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzemt extends zzcdb implements zzdfx {
    private zzcdc zza;
    private zzdfw zzb;
    private zzdmn zzc;

    @Override // com.google.android.gms.internal.ads.zzdfx
    public final synchronized void zza(zzdfw zzdfwVar) {
        this.zzb = zzdfwVar;
    }

    public final synchronized void zzc(zzcdc zzcdcVar) {
        this.zza = zzcdcVar;
    }

    public final synchronized void zzd(zzdmn zzdmnVar) {
        this.zzc = zzdmnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final synchronized void zze(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzcdc zzcdcVar = this.zza;
        if (zzcdcVar != null) {
            ((zzepm) zzcdcVar).zzb.onAdClicked();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final synchronized void zzf(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzcdc zzcdcVar = this.zza;
        if (zzcdcVar != null) {
            zzcdcVar.zzf(iObjectWrapper);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final synchronized void zzg(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        zzdfw zzdfwVar = this.zzb;
        if (zzdfwVar != null) {
            zzdfwVar.zza(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final synchronized void zzh(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzcdc zzcdcVar = this.zza;
        if (zzcdcVar != null) {
            ((zzepm) zzcdcVar).zzc.zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final synchronized void zzi(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzdfw zzdfwVar = this.zzb;
        if (zzdfwVar != null) {
            zzdfwVar.zzd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final synchronized void zzj(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzcdc zzcdcVar = this.zza;
        if (zzcdcVar != null) {
            ((zzepm) zzcdcVar).zza.zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final synchronized void zzk(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        zzdmn zzdmnVar = this.zzc;
        if (zzdmnVar != null) {
            com.google.android.gms.ads.internal.util.zze.zzj("Fail to initialize adapter ".concat(String.valueOf(((zzepl) zzdmnVar).zzc.zza)));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final synchronized void zzl(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzdmn zzdmnVar = this.zzc;
        if (zzdmnVar != null) {
            Executor zzc = zzepn.zzc(((zzepl) zzdmnVar).zzd);
            final zzfix zzfixVar = ((zzepl) zzdmnVar).zza;
            final zzfil zzfilVar = ((zzepl) zzdmnVar).zzb;
            final zzekt zzektVar = ((zzepl) zzdmnVar).zzc;
            final zzepl zzeplVar = (zzepl) zzdmnVar;
            zzc.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzepk
                @Override // java.lang.Runnable
                public final void run() {
                    zzepl zzeplVar2 = zzepl.this;
                    zzfix zzfixVar2 = zzfixVar;
                    zzfil zzfilVar2 = zzfilVar;
                    zzekt zzektVar2 = zzektVar;
                    zzepn zzepnVar = zzeplVar2.zzd;
                    zzepn.zze(zzfixVar2, zzfilVar2, zzektVar2);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final synchronized void zzm(IObjectWrapper iObjectWrapper, zzcdd zzcddVar) throws RemoteException {
        zzcdc zzcdcVar = this.zza;
        if (zzcdcVar != null) {
            ((zzepm) zzcdcVar).zzd.zza(zzcddVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final synchronized void zzn(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzcdc zzcdcVar = this.zza;
        if (zzcdcVar != null) {
            ((zzepm) zzcdcVar).zzc.zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final synchronized void zzo(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzcdc zzcdcVar = this.zza;
        if (zzcdcVar != null) {
            ((zzepm) zzcdcVar).zzd.zzc();
        }
    }
}

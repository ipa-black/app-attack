package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.io.IOException;
import java.util.concurrent.Future;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbeq implements BaseGmsClient.BaseConnectionCallbacks {
    public static final /* synthetic */ int zzd = 0;
    final /* synthetic */ zzbei zza;
    final /* synthetic */ zzcig zzb;
    final /* synthetic */ zzbes zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbeq(zzbes zzbesVar, zzbei zzbeiVar, zzcig zzcigVar) {
        this.zzc = zzbesVar;
        this.zza = zzbeiVar;
        this.zzb = zzcigVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        Object obj;
        boolean z;
        final zzbeh zzbehVar;
        obj = this.zzc.zzd;
        synchronized (obj) {
            zzbes zzbesVar = this.zzc;
            z = zzbesVar.zzb;
            if (z) {
                return;
            }
            zzbesVar.zzb = true;
            zzbehVar = this.zzc.zza;
            if (zzbehVar == null) {
                return;
            }
            zzgfc zzgfcVar = zzcib.zza;
            final zzbei zzbeiVar = this.zza;
            final zzcig zzcigVar = this.zzb;
            final zzgfb zza = zzgfcVar.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzben
                @Override // java.lang.Runnable
                public final void run() {
                    zzbef zzf;
                    zzbeq zzbeqVar = zzbeq.this;
                    zzbeh zzbehVar2 = zzbehVar;
                    zzbei zzbeiVar2 = zzbeiVar;
                    zzcig zzcigVar2 = zzcigVar;
                    try {
                        zzbek zzq = zzbehVar2.zzq();
                        if (zzbehVar2.zzp()) {
                            zzf = zzq.zzg(zzbeiVar2);
                        } else {
                            zzf = zzq.zzf(zzbeiVar2);
                        }
                        if (!zzf.zze()) {
                            zzcigVar2.zze(new RuntimeException("No entry contents."));
                            zzbes.zze(zzbeqVar.zzc);
                            return;
                        }
                        zzbep zzbepVar = new zzbep(zzbeqVar, zzf.zzc(), 1);
                        int read = zzbepVar.read();
                        if (read == -1) {
                            throw new IOException("Unable to read from cache.");
                        }
                        zzbepVar.unread(read);
                        zzcigVar2.zzd(zzbeu.zzb(zzbepVar, zzf.zzd(), zzf.zzg(), zzf.zza(), zzf.zzf()));
                    } catch (RemoteException | IOException e2) {
                        com.google.android.gms.ads.internal.util.zze.zzh("Unable to obtain a cache service instance.", e2);
                        zzcigVar2.zze(e2);
                        zzbes.zze(zzbeqVar.zzc);
                    }
                }
            });
            final zzcig zzcigVar2 = this.zzb;
            zzcigVar2.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbeo
                @Override // java.lang.Runnable
                public final void run() {
                    zzcig zzcigVar3 = zzcig.this;
                    Future future = zza;
                    int i = zzbeq.zzd;
                    if (zzcigVar3.isCancelled()) {
                        future.cancel(true);
                    }
                }
            }, zzcib.zzf);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }
}

package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbfb {
    final /* synthetic */ zzbfc zza;
    private final byte[] zzb;
    private int zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzbfb(zzbfc zzbfcVar, byte[] bArr, zzbfa zzbfaVar) {
        this.zza = zzbfcVar;
        this.zzb = bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzd() {
        try {
            zzbfc zzbfcVar = this.zza;
            if (zzbfcVar.zzb) {
                zzbfcVar.zza.zzj(this.zzb);
                this.zza.zza.zzi(0);
                this.zza.zza.zzg(this.zzc);
                this.zza.zza.zzh(null);
                this.zza.zza.zzf();
            }
        } catch (RemoteException e2) {
            zzcho.zzf("Clearcut log failed", e2);
        }
    }

    public final zzbfb zza(int i) {
        this.zzc = i;
        return this;
    }

    public final synchronized void zzc() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzjh)).booleanValue()) {
            zzbfc.zza(this.zza).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbez
                @Override // java.lang.Runnable
                public final void run() {
                    zzbfb.this.zzd();
                }
            });
        } else {
            zzd();
        }
    }
}

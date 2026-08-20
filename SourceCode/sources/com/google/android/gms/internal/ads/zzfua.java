package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.util.Log;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfua {
    final /* synthetic */ zzfub zza;
    private final byte[] zzb;
    private int zzc;
    private int zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzfua(zzfub zzfubVar, byte[] bArr, zzftz zzftzVar) {
        this.zza = zzfubVar;
        this.zzb = bArr;
    }

    public final zzfua zza(int i) {
        this.zzd = i;
        return this;
    }

    public final zzfua zzb(int i) {
        this.zzc = i;
        return this;
    }

    public final synchronized void zzc() {
        try {
            zzfub zzfubVar = this.zza;
            if (zzfubVar.zzb) {
                zzfubVar.zza.zzj(this.zzb);
                this.zza.zza.zzi(this.zzc);
                this.zza.zza.zzg(this.zzd);
                this.zza.zza.zzh(null);
                this.zza.zza.zzf();
            }
        } catch (RemoteException e2) {
            Log.d("GASS", "Clearcut log failed", e2);
        }
    }
}

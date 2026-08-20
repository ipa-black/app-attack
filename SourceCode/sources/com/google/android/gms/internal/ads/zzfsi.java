package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import com.facebook.ads.AdError;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzfsi implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    protected final zzftg zza;
    private final String zzb;
    private final String zzc;
    private final LinkedBlockingQueue zzd;
    private final HandlerThread zze;
    private final zzfrz zzf;
    private final long zzg;
    private final int zzh;

    public zzfsi(Context context, int i, int i2, String str, String str2, String str3, zzfrz zzfrzVar) {
        this.zzb = str;
        this.zzh = i2;
        this.zzc = str2;
        this.zzf = zzfrzVar;
        HandlerThread handlerThread = new HandlerThread("GassDGClient");
        this.zze = handlerThread;
        handlerThread.start();
        this.zzg = System.currentTimeMillis();
        zzftg zzftgVar = new zzftg(context, handlerThread.getLooper(), this, this, 19621000);
        this.zza = zzftgVar;
        this.zzd = new LinkedBlockingQueue();
        zzftgVar.checkAvailabilityAndConnect();
    }

    static zzfts zza() {
        return new zzfts(null, 1);
    }

    private final void zze(int i, long j, Exception exc) {
        this.zzf.zzc(i, System.currentTimeMillis() - j, exc);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzftl zzd = zzd();
        if (zzd != null) {
            try {
                zzfts zzf = zzd.zzf(new zzftq(1, this.zzh, this.zzb, this.zzc));
                zze(IronSourceConstants.errorCode_internal, this.zzg, null);
                this.zzd.put(zzf);
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        try {
            zze(4012, this.zzg, null);
            this.zzd.put(zza());
        } catch (InterruptedException unused) {
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        try {
            zze(4011, this.zzg, null);
            this.zzd.put(zza());
        } catch (InterruptedException unused) {
        }
    }

    public final zzfts zzb(int i) {
        zzfts zzftsVar;
        try {
            zzftsVar = (zzfts) this.zzd.poll(50000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e2) {
            zze(AdError.INTERSTITIAL_AD_TIMEOUT, this.zzg, e2);
            zzftsVar = null;
        }
        zze(3004, this.zzg, null);
        if (zzftsVar != null) {
            if (zzftsVar.zzc == 7) {
                zzfrz.zzg(3);
            } else {
                zzfrz.zzg(2);
            }
        }
        return zzftsVar == null ? zza() : zzftsVar;
    }

    public final void zzc() {
        zzftg zzftgVar = this.zza;
        if (zzftgVar != null) {
            if (zzftgVar.isConnected() || this.zza.isConnecting()) {
                this.zza.disconnect();
            }
        }
    }

    protected final zzftl zzd() {
        try {
            return this.zza.zzp();
        } catch (DeadObjectException | IllegalStateException unused) {
            return null;
        }
    }
}

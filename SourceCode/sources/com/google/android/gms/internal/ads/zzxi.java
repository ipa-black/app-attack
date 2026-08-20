package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzxi extends HandlerThread implements Handler.Callback {
    private zzdj zza;
    private Handler zzb;
    private Error zzc;
    private RuntimeException zzd;
    private zzxk zze;

    public zzxi() {
        super("ExoPlayer:PlaceholderSurface");
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        try {
            if (i != 1) {
                if (i != 2) {
                    return true;
                }
                try {
                    zzdj zzdjVar = this.zza;
                    zzdjVar.getClass();
                    zzdjVar.zzc();
                } finally {
                    try {
                        return true;
                    } finally {
                    }
                }
                return true;
            }
            try {
                int i2 = message.arg1;
                zzdj zzdjVar2 = this.zza;
                zzdjVar2.getClass();
                zzdjVar2.zzb(i2);
                this.zze = new zzxk(this, this.zza.zza(), i2 != 0, null);
                synchronized (this) {
                    notify();
                }
            } catch (zzdk e2) {
                zzdw.zzc("PlaceholderSurface", "Failed to initialize placeholder surface", e2);
                this.zzd = new IllegalStateException(e2);
                synchronized (this) {
                    notify();
                }
            } catch (Error e3) {
                zzdw.zzc("PlaceholderSurface", "Failed to initialize placeholder surface", e3);
                this.zzc = e3;
                synchronized (this) {
                    notify();
                }
            } catch (RuntimeException e4) {
                zzdw.zzc("PlaceholderSurface", "Failed to initialize placeholder surface", e4);
                this.zzd = e4;
                synchronized (this) {
                    notify();
                }
            }
            return true;
        } catch (Throwable th) {
            synchronized (this) {
                notify();
                throw th;
            }
        }
    }

    public final zzxk zza(int i) {
        boolean z;
        start();
        this.zzb = new Handler(getLooper(), this);
        this.zza = new zzdj(this.zzb, null);
        synchronized (this) {
            z = false;
            this.zzb.obtainMessage(1, i, 0).sendToTarget();
            while (this.zze == null && this.zzd == null && this.zzc == null) {
                try {
                    wait();
                } catch (InterruptedException unused) {
                    z = true;
                }
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        RuntimeException runtimeException = this.zzd;
        if (runtimeException == null) {
            Error error = this.zzc;
            if (error == null) {
                zzxk zzxkVar = this.zze;
                zzxkVar.getClass();
                return zzxkVar;
            }
            throw error;
        }
        throw runtimeException;
    }

    public final void zzb() {
        Handler handler = this.zzb;
        handler.getClass();
        handler.sendEmptyMessage(2);
    }
}

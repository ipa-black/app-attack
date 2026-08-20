package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbtz extends zzcin {
    private final Object zza = new Object();
    private final zzbue zzb;
    private boolean zzc;

    public zzbtz(zzbue zzbueVar) {
        this.zzb = zzbueVar;
    }

    public final void zzb() {
        synchronized (this.zza) {
            if (this.zzc) {
                return;
            }
            this.zzc = true;
            zzi(new zzbtw(this), new zzcij());
            zzi(new zzbtx(this), new zzbty(this));
        }
    }
}

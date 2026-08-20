package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzapb implements Runnable {
    final /* synthetic */ zzapc zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzapb(zzapc zzapcVar) {
        this.zza = zzapcVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z;
        zzfrz zzfrzVar;
        Object obj2;
        obj = this.zza.zzn;
        synchronized (obj) {
            z = this.zza.zzo;
            if (z) {
                return;
            }
            this.zza.zzo = true;
            try {
                zzapc.zzj(this.zza);
            } catch (Exception e2) {
                zzfrzVar = this.zza.zzh;
                zzfrzVar.zzc(2023, -1L, e2);
            }
            obj2 = this.zza.zzn;
            synchronized (obj2) {
                this.zza.zzo = false;
            }
        }
    }
}

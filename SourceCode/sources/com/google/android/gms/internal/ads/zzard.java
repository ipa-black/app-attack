package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzard implements Callable {
    private final zzaqj zza;
    private final zzaml zzb;

    public zzard(zzaqj zzaqjVar, zzaml zzamlVar) {
        this.zza = zzaqjVar;
        this.zzb = zzamlVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        if (this.zza.zzl() != null) {
            this.zza.zzl().get();
        }
        zzanf zzc = this.zza.zzc();
        if (zzc != null) {
            try {
                synchronized (this.zzb) {
                    zzaml zzamlVar = this.zzb;
                    byte[] zzaw = zzc.zzaw();
                    zzamlVar.zzaj(zzaw, 0, zzaw.length, zzgxp.zza());
                }
                return null;
            } catch (zzgyp | NullPointerException unused) {
                return null;
            }
        }
        return null;
    }
}

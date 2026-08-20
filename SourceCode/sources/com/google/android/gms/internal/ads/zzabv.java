package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
abstract class zzabv {
    protected final zzaaq zza;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzabv(zzaaq zzaaqVar) {
        this.zza = zzaaqVar;
    }

    protected abstract boolean zza(zzef zzefVar) throws zzbu;

    protected abstract boolean zzb(zzef zzefVar, long j) throws zzbu;

    public final boolean zzf(zzef zzefVar, long j) throws zzbu {
        return zza(zzefVar) && zzb(zzefVar, j);
    }
}

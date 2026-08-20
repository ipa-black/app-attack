package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzffs implements zzfxt {
    final /* synthetic */ zzffw zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzffs(zzffw zzffwVar) {
        this.zza = zzffwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfxt
    @NullableDecl
    public final /* bridge */ /* synthetic */ Object apply(@NullableDecl Object obj) {
        zzflc zze;
        zzffv zzffvVar;
        zzcho.zzh("", (zzefg) obj);
        com.google.android.gms.ads.internal.util.zze.zza("Failed to get a cache key, reverting to legacy flow.");
        zzffw zzffwVar = this.zza;
        zze = zzffwVar.zze();
        zzffwVar.zzd = new zzffv(null, zze, null);
        zzffvVar = this.zza.zzd;
        return zzffvVar;
    }
}

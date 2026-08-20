package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdbt implements zzgen {
    final /* synthetic */ zzdbu zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdbt(zzdbu zzdbuVar) {
        this.zza = zzdbuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final void zza(Throwable th) {
        zzdjs zzdjsVar;
        zzdjsVar = this.zza.zzf;
        zzdjsVar.zzh(false);
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final /* bridge */ /* synthetic */ void zzb(@NullableDecl Object obj) {
        zzdjs zzdjsVar;
        Void r2 = (Void) obj;
        zzdjsVar = this.zza.zzf;
        zzdjsVar.zzh(true);
    }
}

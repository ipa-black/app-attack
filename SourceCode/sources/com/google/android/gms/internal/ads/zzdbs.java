package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdbs implements zzgen {
    final /* synthetic */ zzdbu zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdbs(zzdbu zzdbuVar) {
        this.zza = zzdbuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final void zza(Throwable th) {
        zzdjs zzdjsVar;
        zzdjsVar = this.zza.zzf;
        zzdjsVar.zzk(false);
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final /* bridge */ /* synthetic */ void zzb(@NullableDecl Object obj) {
        zzdjs zzdjsVar;
        zzccb zzccbVar = (zzccb) obj;
        zzdjsVar = this.zza.zzf;
        zzdjsVar.zzk(true);
    }
}

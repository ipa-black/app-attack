package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfft implements zzfxt {
    final /* synthetic */ zzffw zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfft(zzffw zzffwVar) {
        this.zza = zzffwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfxt
    @NullableDecl
    public final /* bridge */ /* synthetic */ Object apply(@NullableDecl Object obj) {
        zzffv zzffvVar;
        zzccb zzccbVar = (zzccb) obj;
        this.zza.zzd = new zzffv(zzccbVar, new zzfle(zzccbVar.zzj), null);
        zzffvVar = this.zza.zzd;
        return zzffvVar;
    }
}

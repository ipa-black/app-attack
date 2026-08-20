package com.google.android.gms.internal.ads;

import com.google.android.gms.tasks.TaskCompletionSource;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfwy extends zzfwv {
    final /* synthetic */ zzfwv zza;
    final /* synthetic */ zzfxf zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfwy(zzfxf zzfxfVar, TaskCompletionSource taskCompletionSource, zzfwv zzfwvVar) {
        super(taskCompletionSource);
        this.zzb = zzfxfVar;
        this.zza = zzfwvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwv
    public final void zza() {
        zzfxf.zzm(this.zzb, this.zza);
    }
}

package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgec extends zzged {
    final /* synthetic */ zzgee zza;
    private final Callable zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgec(zzgee zzgeeVar, Callable callable, Executor executor) {
        super(zzgeeVar, executor);
        this.zza = zzgeeVar;
        callable.getClass();
        this.zzc = callable;
    }

    @Override // com.google.android.gms.internal.ads.zzgfa
    final Object zza() throws Exception {
        return this.zzc.call();
    }

    @Override // com.google.android.gms.internal.ads.zzgfa
    final String zzb() {
        return this.zzc.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzged
    final void zzc(Object obj) {
        this.zza.zzd(obj);
    }
}

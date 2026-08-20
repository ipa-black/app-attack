package com.google.android.gms.ads.internal;

import android.content.Context;
import com.google.android.gms.internal.ads.zzapi;
import com.google.android.gms.internal.ads.zzapj;
import com.google.android.gms.internal.ads.zzchu;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes3.dex */
public final class zzo implements Callable {
    final /* synthetic */ zzs zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzo(zzs zzsVar) {
        this.zza = zzsVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        zzchu zzchuVar;
        Context context;
        zzs zzsVar = this.zza;
        zzchuVar = zzsVar.zza;
        String str = zzchuVar.zza;
        context = zzsVar.zzd;
        return new zzapj(zzapi.zzs(str, context, false));
    }
}

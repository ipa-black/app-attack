package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfwe extends zzfwv {
    final /* synthetic */ zzfvy zza;
    final /* synthetic */ zzfwm zzb;
    final /* synthetic */ TaskCompletionSource zzc;
    final /* synthetic */ zzfwh zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfwe(zzfwh zzfwhVar, TaskCompletionSource taskCompletionSource, zzfvy zzfvyVar, zzfwm zzfwmVar, TaskCompletionSource taskCompletionSource2) {
        super(taskCompletionSource);
        this.zzd = zzfwhVar;
        this.zza = zzfvyVar;
        this.zzb = zzfwmVar;
        this.zzc = taskCompletionSource2;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.internal.ads.zzfwr, android.os.IInterface] */
    @Override // com.google.android.gms.internal.ads.zzfwv
    protected final void zza() {
        zzfwu zzfwuVar;
        String str;
        String str2;
        try {
            ?? zze = this.zzd.zza.zze();
            zzfvy zzfvyVar = this.zza;
            str2 = this.zzd.zzd;
            Bundle bundle = new Bundle();
            bundle.putString("sessionToken", zzfvyVar.zzb());
            bundle.putString("callerPackage", str2);
            bundle.putString("appId", zzfvyVar.zza());
            zze.zze(bundle, new zzfwg(this.zzd, this.zzb));
        } catch (RemoteException e2) {
            zzfwuVar = zzfwh.zzb;
            str = this.zzd.zzd;
            zzfwuVar.zzc(e2, "dismiss overlay display from: %s", str);
            this.zzc.trySetException(new RuntimeException(e2));
        }
    }
}

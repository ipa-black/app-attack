package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfwf extends zzfwv {
    final /* synthetic */ zzfwo zza;
    final /* synthetic */ int zzb;
    final /* synthetic */ zzfwm zzc;
    final /* synthetic */ TaskCompletionSource zzd;
    final /* synthetic */ zzfwh zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfwf(zzfwh zzfwhVar, TaskCompletionSource taskCompletionSource, zzfwo zzfwoVar, int i, zzfwm zzfwmVar, TaskCompletionSource taskCompletionSource2) {
        super(taskCompletionSource);
        this.zze = zzfwhVar;
        this.zza = zzfwoVar;
        this.zzb = i;
        this.zzc = zzfwmVar;
        this.zzd = taskCompletionSource2;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.internal.ads.zzfwr, android.os.IInterface] */
    @Override // com.google.android.gms.internal.ads.zzfwv
    protected final void zza() {
        zzfwu zzfwuVar;
        String str;
        String str2;
        try {
            ?? zze = this.zze.zza.zze();
            zzfwo zzfwoVar = this.zza;
            str2 = this.zze.zzd;
            int i = this.zzb;
            Bundle bundle = new Bundle();
            bundle.putString("sessionToken", zzfwoVar.zzb());
            bundle.putInt("displayMode", i);
            bundle.putString("callerPackage", str2);
            bundle.putString("appId", zzfwoVar.zza());
            zze.zzg(bundle, new zzfwg(this.zze, this.zzc));
        } catch (RemoteException e2) {
            zzfwuVar = zzfwh.zzb;
            Integer valueOf = Integer.valueOf(this.zzb);
            str = this.zze.zzd;
            zzfwuVar.zzc(e2, "switchDisplayMode overlay display to %d from: %s", valueOf, str);
            this.zzd.trySetException(new RuntimeException(e2));
        }
    }
}

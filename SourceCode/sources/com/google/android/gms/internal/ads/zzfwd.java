package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfwd extends zzfwv {
    final /* synthetic */ zzfwj zza;
    final /* synthetic */ zzfwm zzb;
    final /* synthetic */ TaskCompletionSource zzc;
    final /* synthetic */ zzfwh zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfwd(zzfwh zzfwhVar, TaskCompletionSource taskCompletionSource, zzfwj zzfwjVar, zzfwm zzfwmVar, TaskCompletionSource taskCompletionSource2) {
        super(taskCompletionSource);
        this.zzd = zzfwhVar;
        this.zza = zzfwjVar;
        this.zzb = zzfwmVar;
        this.zzc = taskCompletionSource2;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.internal.ads.zzfwr, android.os.IInterface] */
    @Override // com.google.android.gms.internal.ads.zzfwv
    protected final void zza() {
        zzfwu zzfwuVar;
        String str;
        String str2;
        String str3;
        try {
            ?? zze = this.zzd.zza.zze();
            zzfwh zzfwhVar = this.zzd;
            str2 = zzfwhVar.zzd;
            zzfwj zzfwjVar = this.zza;
            str3 = zzfwhVar.zzd;
            Bundle bundle = new Bundle();
            bundle.putBinder("windowToken", zzfwjVar.zze());
            bundle.putString("adFieldEnifd", zzfwjVar.zzf());
            bundle.putInt("layoutGravity", zzfwjVar.zzc());
            bundle.putFloat("layoutVerticalMargin", zzfwjVar.zza());
            bundle.putInt("displayMode", 0);
            bundle.putInt("windowWidthPx", zzfwjVar.zzd());
            bundle.putBoolean("stableSessionToken", false);
            bundle.putString("callerPackage", str3);
            if (zzfwjVar.zzg() != null) {
                bundle.putString("appId", zzfwjVar.zzg());
            }
            zze.zzf(str2, bundle, new zzfwg(this.zzd, this.zzb));
        } catch (RemoteException e2) {
            zzfwuVar = zzfwh.zzb;
            str = this.zzd.zzd;
            zzfwuVar.zzc(e2, "show overlay display from: %s", str);
            this.zzc.trySetException(new RuntimeException(e2));
        }
    }
}

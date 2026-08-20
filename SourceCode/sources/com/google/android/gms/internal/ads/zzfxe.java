package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfxe implements ServiceConnection {
    final /* synthetic */ zzfxf zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzfxe(zzfxf zzfxfVar, zzfxd zzfxdVar) {
        this.zza = zzfxfVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzfxf.zzf(this.zza).zzd("ServiceConnectionImpl.onServiceConnected(%s)", componentName);
        zzfxf zzfxfVar = this.zza;
        zzfxfVar.zzc().post(new zzfxb(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zzfxf.zzf(this.zza).zzd("ServiceConnectionImpl.onServiceDisconnected(%s)", componentName);
        zzfxf zzfxfVar = this.zza;
        zzfxfVar.zzc().post(new zzfxc(this));
    }
}

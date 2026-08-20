package com.google.android.gms.internal.ads;

import android.os.IBinder;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzfxb extends zzfwv {
    final /* synthetic */ IBinder zza;
    final /* synthetic */ zzfxe zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfxb(zzfxe zzfxeVar, IBinder iBinder) {
        this.zzb = zzfxeVar;
        this.zza = iBinder;
    }

    @Override // com.google.android.gms.internal.ads.zzfwv
    public final void zza() {
        List<Runnable> list;
        List list2;
        this.zzb.zza.zzn = zzfwq.zzb(this.zza);
        zzfxf.zzn(this.zzb.zza);
        this.zzb.zza.zzh = false;
        list = this.zzb.zza.zze;
        for (Runnable runnable : list) {
            runnable.run();
        }
        list2 = this.zzb.zza.zze;
        list2.clear();
    }
}

package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzdhb implements Runnable {
    private final WeakReference zza;

    @Override // java.lang.Runnable
    public final void run() {
        zzdhc zzdhcVar = (zzdhc) this.zza.get();
        if (zzdhcVar != null) {
            zzdhcVar.zzo(new zzdjw() { // from class: com.google.android.gms.internal.ads.zzdgz
                @Override // com.google.android.gms.internal.ads.zzdjw
                public final void zza(Object obj) {
                    ((zzdhd) obj).zza();
                }
            });
        }
    }
}

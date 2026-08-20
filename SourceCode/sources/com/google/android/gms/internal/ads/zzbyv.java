package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.nativead.NativeAd;
import java.util.ArrayList;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbyv extends NativeAd.AdChoicesInfo {
    private final List zza = new ArrayList();
    private String zzb;

    public zzbyv(zzbmd zzbmdVar) {
        try {
            this.zzb = zzbmdVar.zzg();
        } catch (RemoteException e2) {
            zzcho.zzh("", e2);
            this.zzb = "";
        }
        try {
            for (Object obj : zzbmdVar.zzh()) {
                zzbml zzg = obj instanceof IBinder ? zzbmk.zzg((IBinder) obj) : null;
                if (zzg != null) {
                    this.zza.add(new zzbyx(zzg));
                }
            }
        } catch (RemoteException e3) {
            zzcho.zzh("", e3);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.AdChoicesInfo
    public final List<NativeAd.Image> getImages() {
        return this.zza;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.AdChoicesInfo
    public final CharSequence getText() {
        return this.zzb;
    }
}

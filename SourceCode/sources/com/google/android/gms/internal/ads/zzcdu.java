package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.RewardItem;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcdu implements RewardItem {
    private final zzcdh zza;

    public zzcdu(zzcdh zzcdhVar) {
        this.zza = zzcdhVar;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final int getAmount() {
        zzcdh zzcdhVar = this.zza;
        if (zzcdhVar != null) {
            try {
                return zzcdhVar.zze();
            } catch (RemoteException e2) {
                zzcho.zzk("Could not forward getAmount to RewardItem", e2);
            }
        }
        return 0;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final String getType() {
        zzcdh zzcdhVar = this.zza;
        if (zzcdhVar != null) {
            try {
                return zzcdhVar.zzf();
            } catch (RemoteException e2) {
                zzcho.zzk("Could not forward getType to RewardItem", e2);
            }
        }
        return null;
    }
}

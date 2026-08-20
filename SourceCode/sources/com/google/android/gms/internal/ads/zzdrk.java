package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.util.Clock;
import com.google.firebase.messaging.Constants;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdrk implements View.OnClickListener {
    String zza;
    Long zzb;
    WeakReference zzc;
    private final zzdve zzd;
    private final Clock zze;
    private zzbof zzf;
    private zzbqd zzg;

    public zzdrk(zzdve zzdveVar, Clock clock) {
        this.zzd = zzdveVar;
        this.zze = clock;
    }

    private final void zzd() {
        View view;
        this.zza = null;
        this.zzb = null;
        WeakReference weakReference = this.zzc;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        view.setClickable(false);
        view.setOnClickListener(null);
        this.zzc = null;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        WeakReference weakReference = this.zzc;
        if (weakReference == null || weakReference.get() != view) {
            return;
        }
        if (this.zza != null && this.zzb != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("id", this.zza);
            hashMap.put("time_interval", String.valueOf(this.zze.currentTimeMillis() - this.zzb.longValue()));
            hashMap.put(Constants.FirelogAnalytics.PARAM_MESSAGE_TYPE, "onePointFiveClick");
            this.zzd.zzg("sendMessageToNativeJs", hashMap);
        }
        zzd();
    }

    public final zzbof zza() {
        return this.zzf;
    }

    public final void zzb() {
        if (this.zzf == null || this.zzb == null) {
            return;
        }
        zzd();
        try {
            this.zzf.zze();
        } catch (RemoteException e2) {
            zzcho.zzl("#007 Could not call remote method.", e2);
        }
    }

    public final void zzc(final zzbof zzbofVar) {
        this.zzf = zzbofVar;
        zzbqd zzbqdVar = this.zzg;
        if (zzbqdVar != null) {
            this.zzd.zzk("/unconfirmedClick", zzbqdVar);
        }
        zzbqd zzbqdVar2 = new zzbqd() { // from class: com.google.android.gms.internal.ads.zzdrj
            @Override // com.google.android.gms.internal.ads.zzbqd
            public final void zza(Object obj, Map map) {
                zzdrk zzdrkVar = zzdrk.this;
                zzbof zzbofVar2 = zzbofVar;
                try {
                    zzdrkVar.zzb = Long.valueOf(Long.parseLong((String) map.get("timestamp")));
                } catch (NumberFormatException unused) {
                    com.google.android.gms.ads.internal.util.zze.zzg("Failed to call parse unconfirmedClickTimestamp.");
                }
                zzdrkVar.zza = (String) map.get("id");
                String str = (String) map.get("asset_id");
                if (zzbofVar2 == null) {
                    com.google.android.gms.ads.internal.util.zze.zze("Received unconfirmed click but UnconfirmedClickListener is null.");
                    return;
                }
                try {
                    zzbofVar2.zzf(str);
                } catch (RemoteException e2) {
                    zzcho.zzl("#007 Could not call remote method.", e2);
                }
            }
        };
        this.zzg = zzbqdVar2;
        this.zzd.zzi("/unconfirmedClick", zzbqdVar2);
    }
}

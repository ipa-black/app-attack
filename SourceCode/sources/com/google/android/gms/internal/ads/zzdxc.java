package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdxc {
    private final zzfjz zza;
    private final zzdwz zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdxc(zzfjz zzfjzVar, zzdwz zzdwzVar) {
        this.zza = zzfjzVar;
        this.zzb = zzdwzVar;
    }

    final zzbvt zza() throws RemoteException {
        zzbvt zzb = this.zza.zzb();
        if (zzb != null) {
            return zzb;
        }
        com.google.android.gms.ads.internal.util.zze.zzj("Unexpected call to adapter creator.");
        throw new RemoteException();
    }

    public final zzbxq zzb(String str) throws RemoteException {
        zzbxq zzc = zza().zzc(str);
        this.zzb.zze(str, zzc);
        return zzc;
    }

    public final zzfkb zzc(String str, JSONObject jSONObject) throws zzfjl {
        zzbvw zzb;
        try {
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
                zzb = new zzbwt(new AdMobAdapter());
            } else if (!"com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(str)) {
                zzbvt zza = zza();
                if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
                    try {
                        String string = jSONObject.getString("class_name");
                        if (zza.zze(string)) {
                            zzb = zza.zzb("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
                        } else if (zza.zzd(string)) {
                            zzb = zza.zzb(string);
                        } else {
                            zzb = zza.zzb("com.google.ads.mediation.customevent.CustomEventAdapter");
                        }
                    } catch (JSONException e2) {
                        com.google.android.gms.ads.internal.util.zze.zzh("Invalid custom event.", e2);
                    }
                }
                zzb = zza.zzb(str);
            } else {
                zzb = new zzbwt(new zzbyi());
            }
            zzfkb zzfkbVar = new zzfkb(zzb);
            this.zzb.zzd(str, zzfkbVar);
            return zzfkbVar;
        } catch (Throwable th) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzis)).booleanValue()) {
                this.zzb.zzd(str, null);
            }
            throw new zzfjl(th);
        }
    }

    public final boolean zzd() {
        return this.zza.zzb() != null;
    }
}

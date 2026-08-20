package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcmb implements zzbqd {
    private static final Integer zzb(Map map, String str) {
        if (map.containsKey(str)) {
            try {
                return Integer.valueOf(Integer.parseInt((String) map.get(str)));
            } catch (NumberFormatException unused) {
                com.google.android.gms.ads.internal.util.zze.zzj("Precache invalid numeric parameter '" + str + "': " + ((String) map.get(str)));
                return null;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbqd
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcma zzcmaVar;
        zzcls zza;
        zzcjx zzcjxVar = (zzcjx) obj;
        if (com.google.android.gms.ads.internal.util.zze.zzm(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            com.google.android.gms.ads.internal.util.zze.zze("Precache GMSG: ".concat(jSONObject.toString()));
        }
        zzclt zzy = com.google.android.gms.ads.internal.zzt.zzy();
        if (map.containsKey("abort")) {
            if (zzy.zzd(zzcjxVar)) {
                return;
            }
            com.google.android.gms.ads.internal.util.zze.zzj("Precache abort but no precache task running.");
            return;
        }
        String str = (String) map.get("src");
        Integer zzb = zzb(map, "periodicReportIntervalMs");
        Integer zzb2 = zzb(map, "exoPlayerRenderingIntervalMs");
        Integer zzb3 = zzb(map, "exoPlayerIdleIntervalMs");
        zzcjw zzcjwVar = new zzcjw((String) map.get("flags"));
        boolean z = zzcjwVar.zzn;
        if (str != null) {
            String[] strArr = {str};
            String str2 = (String) map.get("demuxed");
            if (str2 != null) {
                try {
                    JSONArray jSONArray = new JSONArray(str2);
                    String[] strArr2 = new String[jSONArray.length()];
                    for (int i = 0; i < jSONArray.length(); i++) {
                        strArr2[i] = jSONArray.getString(i);
                    }
                    strArr = strArr2;
                } catch (JSONException unused) {
                    com.google.android.gms.ads.internal.util.zze.zzj("Malformed demuxed URL list for precache: ".concat(str2));
                    strArr = null;
                }
            }
            if (strArr == null) {
                strArr = new String[]{str};
            }
            if (z) {
                Iterator it = zzy.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        zza = null;
                        break;
                    }
                    zzcls zzclsVar = (zzcls) it.next();
                    if (zzclsVar.zza == zzcjxVar && str.equals(zzclsVar.zze())) {
                        zza = zzclsVar;
                        break;
                    }
                }
            } else {
                zza = zzy.zza(zzcjxVar);
            }
            if (zza != null) {
                com.google.android.gms.ads.internal.util.zze.zzj("Precache task is already running.");
                return;
            } else if (zzcjxVar.zzm() == null) {
                com.google.android.gms.ads.internal.util.zze.zzj("Precache requires a dependency provider.");
                return;
            } else {
                Integer zzb4 = zzb(map, "player");
                if (zzb4 == null) {
                    zzb4 = 0;
                }
                if (zzb != null) {
                    zzcjxVar.zzC(zzb.intValue());
                }
                if (zzb2 != null) {
                    zzcjxVar.zzA(zzb2.intValue());
                }
                if (zzb3 != null) {
                    zzcjxVar.zzz(zzb3.intValue());
                }
                int intValue = zzb4.intValue();
                zzclm zzclmVar = zzcjxVar.zzm().zzb;
                if (intValue > 0) {
                    int zzu = zzcjo.zzu();
                    if (zzu < zzcjwVar.zzh) {
                        zzcmaVar = new zzcmj(zzcjxVar, zzcjwVar);
                    } else if (zzu < zzcjwVar.zzb) {
                        zzcmaVar = new zzcmg(zzcjxVar, zzcjwVar);
                    } else {
                        zzcmaVar = new zzcme(zzcjxVar);
                    }
                } else {
                    zzcmaVar = new zzcmd(zzcjxVar);
                }
                new zzcls(zzcjxVar, zzcmaVar, str, strArr).zzb();
            }
        } else {
            zzcls zza2 = zzy.zza(zzcjxVar);
            if (zza2 == null) {
                com.google.android.gms.ads.internal.util.zze.zzj("Precache must specify a source.");
                return;
            }
            zzcmaVar = zza2.zzb;
        }
        Integer zzb5 = zzb(map, "minBufferMs");
        if (zzb5 != null) {
            zzcmaVar.zzp(zzb5.intValue());
        }
        Integer zzb6 = zzb(map, "maxBufferMs");
        if (zzb6 != null) {
            zzcmaVar.zzo(zzb6.intValue());
        }
        Integer zzb7 = zzb(map, "bufferForPlaybackMs");
        if (zzb7 != null) {
            zzcmaVar.zzh(zzb7.intValue());
        }
        Integer zzb8 = zzb(map, "bufferForPlaybackAfterRebufferMs");
        if (zzb8 != null) {
            zzcmaVar.zzn(zzb8.intValue());
        }
    }
}

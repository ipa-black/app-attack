package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzcfu {
    static zzcfu zza;

    public static synchronized zzcfu zzd(Context context) {
        synchronized (zzcfu.class) {
            zzcfu zzcfuVar = zza;
            if (zzcfuVar != null) {
                return zzcfuVar;
            }
            Context applicationContext = context.getApplicationContext();
            zzbjj.zzc(applicationContext);
            com.google.android.gms.ads.internal.util.zzg zzh = com.google.android.gms.ads.internal.zzt.zzo().zzh();
            zzh.zzr(applicationContext);
            zzcey zzceyVar = new zzcey(null);
            zzceyVar.zzb(applicationContext);
            zzceyVar.zzc(com.google.android.gms.ads.internal.zzt.zzB());
            zzceyVar.zza(zzh);
            zzceyVar.zzd(com.google.android.gms.ads.internal.zzt.zzn());
            zzcfu zze = zzceyVar.zze();
            zza = zze;
            zze.zza().zza();
            zza.zzb().zzc();
            zzcfy zzc = zza.zzc();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzao)).booleanValue()) {
                HashMap hashMap = new HashMap();
                try {
                    JSONObject jSONObject = new JSONObject((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzaq));
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        HashSet hashSet = new HashSet();
                        JSONArray optJSONArray = jSONObject.optJSONArray(next);
                        if (optJSONArray != null) {
                            for (int i = 0; i < optJSONArray.length(); i++) {
                                String optString = optJSONArray.optString(i);
                                if (optString != null) {
                                    hashSet.add(optString);
                                }
                            }
                            hashMap.put(next, hashSet);
                        }
                    }
                    for (String str : hashMap.keySet()) {
                        zzc.zzc(str);
                    }
                    zzc.zzd(new zzcfw(zzc, hashMap));
                } catch (JSONException e2) {
                    com.google.android.gms.ads.internal.util.zze.zzf("Failed to parse listening list", e2);
                }
            }
            return zza;
        }
    }

    abstract zzcer zza();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract zzcev zzb();

    abstract zzcfy zzc();
}

package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzebz {
    private final zzebj zza;
    private final zzdwz zzb;
    private final Object zzc = new Object();
    private final List zzd = new ArrayList();
    private boolean zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzebz(zzebj zzebjVar, zzdwz zzdwzVar) {
        this.zza = zzebjVar;
        this.zzb = zzdwzVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzd(List list) {
        String str;
        boolean z;
        zzdwy zza;
        zzbye zzbyeVar;
        synchronized (this.zzc) {
            if (this.zze) {
                return;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                zzbrz zzbrzVar = (zzbrz) it.next();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzir)).booleanValue()) {
                    zzdwy zza2 = this.zzb.zza(zzbrzVar.zza);
                    if (zza2 != null && (zzbyeVar = zza2.zzc) != null) {
                        str = zzbyeVar.toString();
                    }
                    str = "";
                } else {
                    str = "";
                }
                String str2 = str;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzis)).booleanValue() && (zza = this.zzb.zza(zzbrzVar.zza)) != null && zza.zzd) {
                    z = true;
                    List list2 = this.zzd;
                    String str3 = zzbrzVar.zza;
                    list2.add(new zzeby(str3, str2, this.zzb.zzc(str3), zzbrzVar.zzb ? 1 : 0, zzbrzVar.zzd, zzbrzVar.zzc, z));
                }
                z = false;
                List list22 = this.zzd;
                String str32 = zzbrzVar.zza;
                list22.add(new zzeby(str32, str2, this.zzb.zzc(str32), zzbrzVar.zzb ? 1 : 0, zzbrzVar.zzd, zzbrzVar.zzc, z));
            }
            this.zze = true;
        }
    }

    public final JSONArray zza() throws JSONException {
        JSONArray jSONArray = new JSONArray();
        synchronized (this.zzc) {
            if (!this.zze) {
                if (this.zza.zzt()) {
                    zzd(this.zza.zzg());
                } else {
                    zzc();
                    return jSONArray;
                }
            }
            for (zzeby zzebyVar : this.zzd) {
                jSONArray.put(zzebyVar.zza());
            }
            return jSONArray;
        }
    }

    public final void zzc() {
        this.zza.zzs(new zzebx(this));
    }
}

package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbjc {
    private final Collection zza = new ArrayList();
    private final Collection zzb = new ArrayList();
    private final Collection zzc = new ArrayList();

    public final List zza() {
        ArrayList arrayList = new ArrayList();
        for (zzbjb zzbjbVar : this.zzb) {
            String str = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjbVar);
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(str);
            }
        }
        arrayList.addAll(zzbjk.zza());
        return arrayList;
    }

    public final List zzb() {
        List zza = zza();
        for (zzbjb zzbjbVar : this.zzc) {
            String str = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjbVar);
            if (!TextUtils.isEmpty(str)) {
                zza.add(str);
            }
        }
        zza.addAll(zzbjk.zzb());
        return zza;
    }

    public final void zzc(zzbjb zzbjbVar) {
        this.zzb.add(zzbjbVar);
    }

    public final void zzd(zzbjb zzbjbVar) {
        this.zza.add(zzbjbVar);
    }

    public final void zze(SharedPreferences.Editor editor, int i, JSONObject jSONObject) {
        for (zzbjb zzbjbVar : this.zza) {
            if (zzbjbVar.zze() == 1) {
                zzbjbVar.zzd(editor, zzbjbVar.zza(jSONObject));
            }
        }
        if (jSONObject != null) {
            editor.putString("flag_configuration", jSONObject.toString());
        } else {
            zzcho.zzg("Flag Json is null.");
        }
    }
}

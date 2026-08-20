package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.text.TextUtils;
import com.google.firebase.messaging.Constants;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.unity3d.services.core.request.metrics.AdOperationMetric;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzebs implements zzdeq, zzdhi, zzdgf {
    private final zzece zza;
    private final String zzb;
    private final String zzc;
    private int zzd = 0;
    private zzebr zze = zzebr.AD_REQUESTED;
    private zzdeg zzf;
    private com.google.android.gms.ads.internal.client.zze zzg;
    private String zzh;
    private String zzi;
    private boolean zzj;
    private boolean zzk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzebs(zzece zzeceVar, zzfjg zzfjgVar, String str) {
        this.zza = zzeceVar;
        this.zzc = str;
        this.zzb = zzfjgVar.zzf;
    }

    private static JSONObject zzh(com.google.android.gms.ads.internal.client.zze zzeVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("errorDomain", zzeVar.zzc);
        jSONObject.put(IronSourceConstants.EVENTS_ERROR_CODE, zzeVar.zza);
        jSONObject.put("errorDescription", zzeVar.zzb);
        com.google.android.gms.ads.internal.client.zze zzeVar2 = zzeVar.zzd;
        jSONObject.put("underlyingError", zzeVar2 == null ? null : zzh(zzeVar2));
        return jSONObject;
    }

    private final JSONObject zzi(zzdeg zzdegVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("winningAdapterClassName", zzdegVar.zzg());
        jSONObject.put("responseSecsSinceEpoch", zzdegVar.zzc());
        jSONObject.put("responseId", zzdegVar.zzi());
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzio)).booleanValue()) {
            String zzd = zzdegVar.zzd();
            if (!TextUtils.isEmpty(zzd)) {
                com.google.android.gms.ads.internal.util.zze.zze("Bidding data: ".concat(String.valueOf(zzd)));
                jSONObject.put("biddingData", new JSONObject(zzd));
            }
        }
        if (!TextUtils.isEmpty(this.zzh)) {
            jSONObject.put("adRequestUrl", this.zzh);
        }
        if (!TextUtils.isEmpty(this.zzi)) {
            jSONObject.put("postBody", this.zzi);
        }
        JSONArray jSONArray = new JSONArray();
        for (com.google.android.gms.ads.internal.client.zzu zzuVar : zzdegVar.zzj()) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("adapterClassName", zzuVar.zza);
            jSONObject2.put("latencyMillis", zzuVar.zzb);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzip)).booleanValue()) {
                jSONObject2.put("credentials", com.google.android.gms.ads.internal.client.zzay.zzb().zzi(zzuVar.zzd));
            }
            com.google.android.gms.ads.internal.client.zze zzeVar = zzuVar.zzc;
            jSONObject2.put(Constants.IPC_BUNDLE_KEY_SEND_ERROR, zzeVar == null ? null : zzh(zzeVar));
            jSONArray.put(jSONObject2);
        }
        jSONObject.put("adNetworks", jSONArray);
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzdeq
    public final void zza(com.google.android.gms.ads.internal.client.zze zzeVar) {
        this.zze = zzebr.AD_LOAD_FAILED;
        this.zzg = zzeVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzit)).booleanValue()) {
            this.zza.zzf(this.zzb, this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdhi
    public final void zzb(zzfix zzfixVar) {
        if (!zzfixVar.zzb.zza.isEmpty()) {
            this.zzd = ((zzfil) zzfixVar.zzb.zza.get(0)).zzb;
        }
        if (!TextUtils.isEmpty(zzfixVar.zzb.zzb.zzk)) {
            this.zzh = zzfixVar.zzb.zzb.zzk;
        }
        if (TextUtils.isEmpty(zzfixVar.zzb.zzb.zzl)) {
            return;
        }
        this.zzi = zzfixVar.zzb.zzb.zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzdhi
    public final void zzbG(zzccb zzccbVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzit)).booleanValue()) {
            return;
        }
        this.zza.zzf(this.zzb, this);
    }

    @Override // com.google.android.gms.internal.ads.zzdgf
    public final void zzbJ(zzdan zzdanVar) {
        this.zzf = zzdanVar.zzl();
        this.zze = zzebr.AD_LOADED;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzit)).booleanValue()) {
            this.zza.zzf(this.zzb, this);
        }
    }

    public final String zzc() {
        return this.zzc;
    }

    public final JSONObject zzd() throws JSONException {
        JSONObject jSONObject;
        IBinder iBinder;
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(AdOperationMetric.INIT_STATE, this.zze);
        jSONObject2.put("format", zzfil.zza(this.zzd));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzit)).booleanValue()) {
            jSONObject2.put("isOutOfContext", this.zzj);
            if (this.zzj) {
                jSONObject2.put("shown", this.zzk);
            }
        }
        zzdeg zzdegVar = this.zzf;
        if (zzdegVar != null) {
            jSONObject = zzi(zzdegVar);
        } else {
            com.google.android.gms.ads.internal.client.zze zzeVar = this.zzg;
            JSONObject jSONObject3 = null;
            if (zzeVar != null && (iBinder = zzeVar.zze) != null) {
                zzdeg zzdegVar2 = (zzdeg) iBinder;
                jSONObject3 = zzi(zzdegVar2);
                if (zzdegVar2.zzj().isEmpty()) {
                    JSONArray jSONArray = new JSONArray();
                    jSONArray.put(zzh(this.zzg));
                    jSONObject3.put("errors", jSONArray);
                }
            }
            jSONObject = jSONObject3;
        }
        jSONObject2.put("responseInfo", jSONObject);
        return jSONObject2;
    }

    public final void zze() {
        this.zzj = true;
    }

    public final void zzf() {
        this.zzk = true;
    }

    public final boolean zzg() {
        return this.zze != zzebr.AD_REQUESTED;
    }
}

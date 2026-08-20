package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.StringReader;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeem {
    private final zzcpj zza;
    private final Context zzb;
    private final zzchu zzc;
    private final zzfjg zzd;
    private final Executor zze;
    private final String zzf;
    private final zzfow zzg;
    private final zzfjs zzh;
    private final zzdzc zzi;

    public zzeem(zzcpj zzcpjVar, Context context, zzchu zzchuVar, zzfjg zzfjgVar, Executor executor, String str, zzfow zzfowVar, zzdzc zzdzcVar) {
        this.zza = zzcpjVar;
        this.zzb = context;
        this.zzc = zzchuVar;
        this.zzd = zzfjgVar;
        this.zze = executor;
        this.zzf = str;
        this.zzg = zzfowVar;
        this.zzh = zzcpjVar.zzw();
        this.zzi = zzdzcVar;
    }

    private final zzgfb zzc(final String str, final String str2) {
        zzfol zza = zzfok.zza(this.zzb, 11);
        zza.zzh();
        final zzbuj zza2 = com.google.android.gms.ads.internal.zzt.zzf().zza(this.zzb, this.zzc, this.zza.zzz()).zza("google.afma.response.normalize", zzbuq.zza, zzbuq.zza);
        zzgfb zzn = zzger.zzn(zzger.zzn(zzger.zzn(zzger.zzi(""), new zzgdy() { // from class: com.google.android.gms.internal.ads.zzeej
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                String str3 = str;
                String str4 = str2;
                String str5 = (String) obj;
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("headers", new JSONObject());
                    jSONObject3.put(TtmlNode.TAG_BODY, str3);
                    jSONObject2.put("base_url", "");
                    jSONObject2.put("signals", new JSONObject(str4));
                    jSONObject.put("request", jSONObject2);
                    jSONObject.put("response", jSONObject3);
                    jSONObject.put("flags", new JSONObject());
                    return zzger.zzi(jSONObject);
                } catch (JSONException e2) {
                    throw new JSONException("Preloaded loader: ".concat(String.valueOf(String.valueOf(e2.getCause()))));
                }
            }
        }, this.zze), new zzgdy() { // from class: com.google.android.gms.internal.ads.zzeek
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzbuj.this.zzb((JSONObject) obj);
            }
        }, this.zze), new zzgdy() { // from class: com.google.android.gms.internal.ads.zzeel
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzeem.this.zzb((JSONObject) obj);
            }
        }, this.zze);
        zzfov.zza(zzn, this.zzg, zza);
        return zzn;
    }

    private final String zzd(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONArray jSONArray = jSONObject.getJSONArray("ad_types");
            if (jSONArray != null && "unknown".equals(jSONArray.getString(0))) {
                jSONObject.put("ad_types", new JSONArray().put(this.zzf));
            }
            return jSONObject.toString();
        } catch (JSONException e2) {
            com.google.android.gms.ads.internal.util.zze.zzj("Failed to update the ad types for rendering. ".concat(e2.toString()));
            return str;
        }
    }

    private static final String zze(String str) {
        try {
            return new JSONObject(str).optString("request_id", "");
        } catch (JSONException unused) {
            return "";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzgfb zza() {
        /*
            Method dump skipped, instructions count: 393
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeem.zza():com.google.android.gms.internal.ads.zzgfb");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzb(JSONObject jSONObject) throws Exception {
        return zzger.zzi(new zzfix(new zzfiu(this.zzd), zzfiw.zza(new StringReader(jSONObject.toString()))));
    }
}

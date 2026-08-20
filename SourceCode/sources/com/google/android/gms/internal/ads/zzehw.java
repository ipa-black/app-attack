package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzehw extends zzcbq {
    private final Context zza;
    private final zzfau zzb;
    private final zzfas zzc;
    private final zzeie zzd;
    private final zzgfc zze;
    private final zzeib zzf;
    private final zzccn zzg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzehw(Context context, zzfau zzfauVar, zzfas zzfasVar, zzeib zzeibVar, zzeie zzeieVar, zzgfc zzgfcVar, zzccn zzccnVar, byte[] bArr) {
        this.zza = context;
        this.zzb = zzfauVar;
        this.zzc = zzfasVar;
        this.zzf = zzeibVar;
        this.zzd = zzeieVar;
        this.zze = zzgfcVar;
        this.zzg = zzccnVar;
    }

    private final void zzc(zzgfb zzgfbVar, zzcbu zzcbuVar) {
        zzger.zzr(zzger.zzn(zzgei.zzv(zzgfbVar), new zzgdy() { // from class: com.google.android.gms.internal.ads.zzeho
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzger.zzi(zzfkf.zza((InputStream) obj));
            }
        }, zzcib.zza), new zzehv(this, zzcbuVar), zzcib.zzf);
    }

    public final zzgfb zzb(zzcbj zzcbjVar, int i) {
        zzgfb zzi;
        String str = zzcbjVar.zza;
        int i2 = zzcbjVar.zzb;
        Bundle bundle = zzcbjVar.zzc;
        HashMap hashMap = new HashMap();
        if (bundle != null) {
            for (String str2 : bundle.keySet()) {
                String string = bundle.getString(str2);
                if (string != null) {
                    hashMap.put(str2, string);
                }
            }
        }
        final zzehy zzehyVar = new zzehy(str, i2, hashMap, zzcbjVar.zzd, "", zzcbjVar.zze);
        zzfas zzfasVar = this.zzc;
        zzfasVar.zza(new zzfbz(zzcbjVar));
        zzfat zzb = zzfasVar.zzb();
        if (zzehyVar.zzf) {
            String str3 = zzcbjVar.zza;
            String str4 = (String) zzblf.zzc.zze();
            if (!TextUtils.isEmpty(str4)) {
                String host = Uri.parse(str3).getHost();
                if (!TextUtils.isEmpty(host)) {
                    for (String str5 : zzfyr.zzc(zzfxq.zzc(';')).zzd(str4)) {
                        if (host.endsWith(str5)) {
                            zzi = zzger.zzm(zzb.zza().zza(new JSONObject()), new zzfxt() { // from class: com.google.android.gms.internal.ads.zzehu
                                @Override // com.google.android.gms.internal.ads.zzfxt
                                public final Object apply(Object obj) {
                                    zzehy zzehyVar2 = zzehy.this;
                                    zzeie.zza(zzehyVar2.zzc, (JSONObject) obj);
                                    return zzehyVar2;
                                }
                            }, this.zze);
                            break;
                        }
                    }
                }
            }
        }
        zzi = zzger.zzi(zzehyVar);
        zzfnj zzb2 = zzb.zzb();
        return zzger.zzn(zzb2.zzb(zzfnd.HTTP, zzi).zze(new zzeia(this.zza, "", this.zzg, i, null)).zza(), new zzgdy() { // from class: com.google.android.gms.internal.ads.zzehq
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                zzehz zzehzVar = (zzehz) obj;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("response", zzehzVar.zza);
                    JSONObject jSONObject2 = new JSONObject();
                    for (String str6 : zzehzVar.zzb.keySet()) {
                        if (str6 != null) {
                            JSONArray jSONArray = new JSONArray();
                            for (String str7 : (List) zzehzVar.zzb.get(str6)) {
                                if (str7 != null) {
                                    jSONArray.put(str7);
                                }
                            }
                            jSONObject2.put(str6, jSONArray);
                        }
                    }
                    jSONObject.put("headers", jSONObject2);
                    Object obj2 = zzehzVar.zzc;
                    if (obj2 != null) {
                        jSONObject.put(TtmlNode.TAG_BODY, obj2);
                    }
                    jSONObject.put("latency", zzehzVar.zzd);
                    return zzger.zzi(new ByteArrayInputStream(jSONObject.toString().getBytes(StandardCharsets.UTF_8)));
                } catch (JSONException e2) {
                    com.google.android.gms.ads.internal.util.zze.zzj("Error converting response to JSONObject: ".concat(String.valueOf(e2.getMessage())));
                    throw new JSONException("Parsing HTTP Response: ".concat(String.valueOf(String.valueOf(e2.getCause()))));
                }
            }
        }, this.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzcbr
    public final void zze(zzcbj zzcbjVar, zzcbu zzcbuVar) {
        zzc(zzb(zzcbjVar, Binder.getCallingUid()), zzcbuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcbr
    public final void zzf(zzcbf zzcbfVar, zzcbu zzcbuVar) {
        int callingUid = Binder.getCallingUid();
        zzfau zzfauVar = this.zzb;
        zzfauVar.zza(new zzfaj(zzcbfVar, callingUid));
        final zzfav zzb = zzfauVar.zzb();
        zzfnj zzb2 = zzb.zzb();
        zzfmo zza = zzb2.zzb(zzfnd.GMS_SIGNALS, zzger.zzj()).zzf(new zzgdy() { // from class: com.google.android.gms.internal.ads.zzeht
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                Void r2 = (Void) obj;
                return zzfav.this.zza().zza(new JSONObject());
            }
        }).zze(new zzfmm() { // from class: com.google.android.gms.internal.ads.zzehs
            @Override // com.google.android.gms.internal.ads.zzfmm
            public final Object zza(Object obj) {
                JSONObject jSONObject = (JSONObject) obj;
                com.google.android.gms.ads.internal.util.zze.zza("GMS AdRequest Signals: ");
                com.google.android.gms.ads.internal.util.zze.zza(jSONObject.toString(2));
                return jSONObject;
            }
        }).zzf(new zzgdy() { // from class: com.google.android.gms.internal.ads.zzehr
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzger.zzi(new ByteArrayInputStream(((JSONObject) obj).toString().getBytes(StandardCharsets.UTF_8)));
            }
        }).zza();
        zzc(zza, zzcbuVar);
        if (((Boolean) zzbkz.zzd.zze()).booleanValue()) {
            final zzeie zzeieVar = this.zzd;
            zzeieVar.getClass();
            zza.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzehp
                @Override // java.lang.Runnable
                public final void run() {
                    zzeie.this.zzb();
                }
            }, this.zze);
        }
    }
}

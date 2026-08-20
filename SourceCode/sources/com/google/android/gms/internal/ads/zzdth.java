package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import com.google.android.exoplayer2.C;
import com.google.android.gms.ads.AdSize;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.onesignal.OSInAppMessageContentKt;
import io.bidmachine.utils.IabUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdth {
    private final Context zza;
    private final zzdsq zzb;
    private final zzapj zzc;
    private final zzchu zzd;
    private final com.google.android.gms.ads.internal.zza zze;
    private final zzbew zzf;
    private final Executor zzg;
    private final zzblz zzh;
    private final zzdtz zzi;
    private final zzdwp zzj;
    private final ScheduledExecutorService zzk;
    private final zzdvk zzl;
    private final zzdzh zzm;
    private final zzfnt zzn;
    private final zzfpo zzo;
    private final zzekc zzp;

    public zzdth(Context context, zzdsq zzdsqVar, zzapj zzapjVar, zzchu zzchuVar, com.google.android.gms.ads.internal.zza zzaVar, zzbew zzbewVar, Executor executor, zzfjg zzfjgVar, zzdtz zzdtzVar, zzdwp zzdwpVar, ScheduledExecutorService scheduledExecutorService, zzdzh zzdzhVar, zzfnt zzfntVar, zzfpo zzfpoVar, zzekc zzekcVar, zzdvk zzdvkVar) {
        this.zza = context;
        this.zzb = zzdsqVar;
        this.zzc = zzapjVar;
        this.zzd = zzchuVar;
        this.zze = zzaVar;
        this.zzf = zzbewVar;
        this.zzg = executor;
        this.zzh = zzfjgVar.zzi;
        this.zzi = zzdtzVar;
        this.zzj = zzdwpVar;
        this.zzk = scheduledExecutorService;
        this.zzm = zzdzhVar;
        this.zzn = zzfntVar;
        this.zzo = zzfpoVar;
        this.zzp = zzekcVar;
        this.zzl = zzdvkVar;
    }

    public static final com.google.android.gms.ads.internal.client.zzel zzi(JSONObject jSONObject) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2 = jSONObject.optJSONObject("mute");
        if (optJSONObject2 == null || (optJSONObject = optJSONObject2.optJSONObject("default_reason")) == null) {
            return null;
        }
        return zzr(optJSONObject);
    }

    public static final List zzj(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("mute");
        if (optJSONObject == null) {
            return zzgau.zzo();
        }
        JSONArray optJSONArray = optJSONObject.optJSONArray("reasons");
        if (optJSONArray == null || optJSONArray.length() <= 0) {
            return zzgau.zzo();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < optJSONArray.length(); i++) {
            com.google.android.gms.ads.internal.client.zzel zzr = zzr(optJSONArray.optJSONObject(i));
            if (zzr != null) {
                arrayList.add(zzr);
            }
        }
        return zzgau.zzm(arrayList);
    }

    private static zzgfb zzl(zzgfb zzgfbVar, Object obj) {
        return zzger.zzg(zzgfbVar, Exception.class, new zzgdy(null) { // from class: com.google.android.gms.internal.ads.zzdte
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj2) {
                com.google.android.gms.ads.internal.util.zze.zzb("Error during loading assets.", (Exception) obj2);
                return zzger.zzi(null);
            }
        }, zzcib.zzf);
    }

    private static zzgfb zzm(boolean z, final zzgfb zzgfbVar, Object obj) {
        if (z) {
            return zzger.zzn(zzgfbVar, new zzgdy() { // from class: com.google.android.gms.internal.ads.zzdtc
                @Override // com.google.android.gms.internal.ads.zzgdy
                public final zzgfb zza(Object obj2) {
                    return obj2 != null ? zzgfb.this : zzger.zzh(new zzeom(1, "Retrieve required value in native ad response failed."));
                }
            }, zzcib.zzf);
        }
        return zzl(zzgfbVar, null);
    }

    private final zzgfb zzn(JSONObject jSONObject, boolean z) {
        if (jSONObject == null) {
            return zzger.zzi(null);
        }
        final String optString = jSONObject.optString("url");
        if (TextUtils.isEmpty(optString)) {
            return zzger.zzi(null);
        }
        final double optDouble = jSONObject.optDouble("scale", 1.0d);
        boolean optBoolean = jSONObject.optBoolean("is_transparent", true);
        final int optInt = jSONObject.optInt(IabUtils.KEY_WIDTH, -1);
        final int optInt2 = jSONObject.optInt(IabUtils.KEY_HEIGHT, -1);
        if (z) {
            return zzger.zzi(new zzblx(null, Uri.parse(optString), optDouble, optInt, optInt2));
        }
        return zzm(jSONObject.optBoolean("require"), zzger.zzm(this.zzb.zzb(optString, optDouble, optBoolean), new zzfxt() { // from class: com.google.android.gms.internal.ads.zzdtf
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj) {
                String str = optString;
                return new zzblx(new BitmapDrawable(Resources.getSystem(), (Bitmap) obj), Uri.parse(str), optDouble, optInt, optInt2);
            }
        }, this.zzg), null);
    }

    private final zzgfb zzo(JSONArray jSONArray, boolean z, boolean z2) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return zzger.zzi(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = z2 ? jSONArray.length() : 1;
        for (int i = 0; i < length; i++) {
            arrayList.add(zzn(jSONArray.optJSONObject(i), z));
        }
        return zzger.zzm(zzger.zze(arrayList), new zzfxt() { // from class: com.google.android.gms.internal.ads.zzdtd
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj) {
                ArrayList arrayList2 = new ArrayList();
                for (zzblx zzblxVar : (List) obj) {
                    if (zzblxVar != null) {
                        arrayList2.add(zzblxVar);
                    }
                }
                return arrayList2;
            }
        }, this.zzg);
    }

    private final zzgfb zzp(JSONObject jSONObject, zzfil zzfilVar, zzfio zzfioVar) {
        final zzgfb zzb = this.zzi.zzb(jSONObject.optString("base_url"), jSONObject.optString(OSInAppMessageContentKt.HTML), zzfilVar, zzfioVar, zzk(jSONObject.optInt(IabUtils.KEY_WIDTH, 0), jSONObject.optInt(IabUtils.KEY_HEIGHT, 0)));
        return zzger.zzn(zzb, new zzgdy() { // from class: com.google.android.gms.internal.ads.zzdtg
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                zzgfb zzgfbVar = zzgfb.this;
                zzcno zzcnoVar = (zzcno) obj;
                if (zzcnoVar == null || zzcnoVar.zzs() == null) {
                    throw new zzeom(1, "Retrieve video view in html5 ad response failed.");
                }
                return zzgfbVar;
            }
        }, zzcib.zzf);
    }

    private static Integer zzq(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt("g"), jSONObject2.getInt("b")));
        } catch (JSONException unused) {
            return null;
        }
    }

    private static final com.google.android.gms.ads.internal.client.zzel zzr(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString(IronSourceConstants.EVENTS_ERROR_REASON);
        String optString2 = jSONObject.optString("ping_url");
        if (TextUtils.isEmpty(optString) || TextUtils.isEmpty(optString2)) {
            return null;
        }
        return new com.google.android.gms.ads.internal.client.zzel(optString, optString2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzblu zza(JSONObject jSONObject, List list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        String optString = jSONObject.optString("text");
        Integer zzq = zzq(jSONObject, "bg_color");
        Integer zzq2 = zzq(jSONObject, "text_color");
        int optInt = jSONObject.optInt("text_size", -1);
        boolean optBoolean = jSONObject.optBoolean("allow_pub_rendering");
        int optInt2 = jSONObject.optInt("animation_ms", 1000);
        return new zzblu(optString, list, zzq, zzq2, optInt > 0 ? Integer.valueOf(optInt) : null, jSONObject.optInt("presentation_ms", 4000) + optInt2, this.zzh.zze, optBoolean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzb(com.google.android.gms.ads.internal.client.zzq zzqVar, zzfil zzfilVar, zzfio zzfioVar, String str, String str2, Object obj) throws Exception {
        zzcno zza = this.zzj.zza(zzqVar, zzfilVar, zzfioVar);
        final zzcif zza2 = zzcif.zza(zza);
        zzdvh zzb = this.zzl.zzb();
        zza.zzP().zzM(zzb, zzb, zzb, zzb, zzb, false, null, new com.google.android.gms.ads.internal.zzb(this.zza, null, null), null, null, this.zzp, this.zzo, this.zzm, this.zzn, null, zzb, null, null);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdk)).booleanValue()) {
            zza.zzaf("/getNativeAdViewSignals", zzbqc.zzs);
        }
        zza.zzaf("/getNativeClickMeta", zzbqc.zzt);
        zza.zzP().zzA(new zzcoz() { // from class: com.google.android.gms.internal.ads.zzdtb
            @Override // com.google.android.gms.internal.ads.zzcoz
            public final void zza(boolean z) {
                zzcif zzcifVar = zzcif.this;
                if (z) {
                    zzcifVar.zzb();
                } else {
                    zzcifVar.zze(new zzeom(1, "Image Web View failed to load."));
                }
            }
        });
        zza.zzad(str, str2, null);
        return zza2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzc(String str, Object obj) throws Exception {
        com.google.android.gms.ads.internal.zzt.zzz();
        zzcno zza = zzcoa.zza(this.zza, zzcpd.zza(), "native-omid", false, false, this.zzc, null, this.zzd, null, null, this.zze, this.zzf, null, null);
        final zzcif zza2 = zzcif.zza(zza);
        zza.zzP().zzA(new zzcoz() { // from class: com.google.android.gms.internal.ads.zzdsx
            @Override // com.google.android.gms.internal.ads.zzcoz
            public final void zza(boolean z) {
                zzcif.this.zzb();
            }
        });
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzeB)).booleanValue()) {
            zza.loadData(Base64.encodeToString(str.getBytes(), 1), "text/html", "base64");
        } else {
            zza.loadData(str, "text/html", C.UTF8_NAME);
        }
        return zza2;
    }

    public final zzgfb zzd(JSONObject jSONObject, String str) {
        final JSONObject optJSONObject = jSONObject.optJSONObject("attribution");
        if (optJSONObject == null) {
            return zzger.zzi(null);
        }
        JSONArray optJSONArray = optJSONObject.optJSONArray("images");
        JSONObject optJSONObject2 = optJSONObject.optJSONObject("image");
        if (optJSONArray == null && optJSONObject2 != null) {
            optJSONArray = new JSONArray();
            optJSONArray.put(optJSONObject2);
        }
        return zzm(optJSONObject.optBoolean("require"), zzger.zzm(zzo(optJSONArray, false, true), new zzfxt() { // from class: com.google.android.gms.internal.ads.zzdsy
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj) {
                return zzdth.this.zza(optJSONObject, (List) obj);
            }
        }, this.zzg), null);
    }

    public final zzgfb zze(JSONObject jSONObject, String str) {
        return zzn(jSONObject.optJSONObject(str), this.zzh.zzb);
    }

    public final zzgfb zzf(JSONObject jSONObject, String str) {
        JSONArray optJSONArray = jSONObject.optJSONArray("images");
        zzblz zzblzVar = this.zzh;
        return zzo(optJSONArray, zzblzVar.zzb, zzblzVar.zzd);
    }

    public final zzgfb zzg(JSONObject jSONObject, String str, final zzfil zzfilVar, final zzfio zzfioVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zziK)).booleanValue()) {
            return zzger.zzi(null);
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("images");
        if (optJSONArray == null || optJSONArray.length() <= 0) {
            return zzger.zzi(null);
        }
        JSONObject optJSONObject = optJSONArray.optJSONObject(0);
        if (optJSONObject == null) {
            return zzger.zzi(null);
        }
        final String optString = optJSONObject.optString("base_url");
        final String optString2 = optJSONObject.optString(OSInAppMessageContentKt.HTML);
        final com.google.android.gms.ads.internal.client.zzq zzk = zzk(optJSONObject.optInt(IabUtils.KEY_WIDTH, 0), optJSONObject.optInt(IabUtils.KEY_HEIGHT, 0));
        if (!TextUtils.isEmpty(optString2)) {
            final zzgfb zzn = zzger.zzn(zzger.zzi(null), new zzgdy() { // from class: com.google.android.gms.internal.ads.zzdsz
                @Override // com.google.android.gms.internal.ads.zzgdy
                public final zzgfb zza(Object obj) {
                    return zzdth.this.zzb(zzk, zzfilVar, zzfioVar, optString, optString2, obj);
                }
            }, zzcib.zze);
            return zzger.zzn(zzn, new zzgdy() { // from class: com.google.android.gms.internal.ads.zzdta
                @Override // com.google.android.gms.internal.ads.zzgdy
                public final zzgfb zza(Object obj) {
                    zzgfb zzgfbVar = zzgfb.this;
                    if (((zzcno) obj) != null) {
                        return zzgfbVar;
                    }
                    throw new zzeom(1, "Retrieve Web View from image ad response failed.");
                }
            }, zzcib.zzf);
        }
        return zzger.zzi(null);
    }

    public final zzgfb zzh(JSONObject jSONObject, zzfil zzfilVar, zzfio zzfioVar) {
        zzgfb zza;
        boolean z = false;
        JSONObject zzg = com.google.android.gms.ads.internal.util.zzbu.zzg(jSONObject, "html_containers", "instream");
        if (zzg == null) {
            JSONObject optJSONObject = jSONObject.optJSONObject("video");
            if (optJSONObject == null) {
                return zzger.zzi(null);
            }
            String optString = optJSONObject.optString("vast_xml");
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zziJ)).booleanValue() && optJSONObject.has(OSInAppMessageContentKt.HTML)) {
                z = true;
            }
            if (TextUtils.isEmpty(optString)) {
                if (!z) {
                    com.google.android.gms.ads.internal.util.zze.zzj("Required field 'vast_xml' or 'html' is missing");
                    return zzger.zzi(null);
                }
            } else if (!z) {
                zza = this.zzi.zza(optJSONObject);
                return zzl(zzger.zzo(zza, ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdl)).intValue(), TimeUnit.SECONDS, this.zzk), null);
            }
            zza = zzp(optJSONObject, zzfilVar, zzfioVar);
            return zzl(zzger.zzo(zza, ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdl)).intValue(), TimeUnit.SECONDS, this.zzk), null);
        }
        return zzp(zzg, zzfilVar, zzfioVar);
    }

    private final com.google.android.gms.ads.internal.client.zzq zzk(int i, int i2) {
        if (i == 0) {
            if (i2 == 0) {
                return com.google.android.gms.ads.internal.client.zzq.zzc();
            }
            i = 0;
        }
        return new com.google.android.gms.ads.internal.client.zzq(this.zza, new AdSize(i, i2));
    }
}

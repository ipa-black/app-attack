package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.media.AudioManager;
import android.os.PowerManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.List;
import org.apache.ldap.server.jndi.JavaLdapSupport;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcwo implements zzbum {
    private final Context zza;
    private final zzbbt zzb;
    private final PowerManager zzc;

    public zzcwo(Context context, zzbbt zzbbtVar) {
        this.zza = context;
        this.zzb = zzbbtVar;
        this.zzc = (PowerManager) context.getSystemService("power");
    }

    @Override // com.google.android.gms.internal.ads.zzbum
    /* renamed from: zza */
    public final JSONObject zzb(zzcwr zzcwrVar) throws JSONException {
        JSONObject jSONObject;
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        zzbbw zzbbwVar = zzcwrVar.zzf;
        if (zzbbwVar == null) {
            jSONObject = new JSONObject();
        } else if (this.zzb.zzd() != null) {
            boolean z = zzbbwVar.zza;
            JSONObject jSONObject3 = new JSONObject();
            JSONObject put = jSONObject3.put("afmaVersion", this.zzb.zzb()).put("activeViewJSON", this.zzb.zzd()).put("timestamp", zzcwrVar.zzd).put("adFormat", this.zzb.zza()).put("hashCode", this.zzb.zzc()).put("isMraid", false);
            boolean z2 = zzcwrVar.zzc;
            put.put("isStopped", false).put("isPaused", zzcwrVar.zzb).put("isNative", this.zzb.zze()).put("isScreenOn", this.zzc.isInteractive()).put("appMuted", com.google.android.gms.ads.internal.zzt.zzr().zze()).put("appVolume", com.google.android.gms.ads.internal.zzt.zzr().zza()).put("deviceVolume", com.google.android.gms.ads.internal.util.zzab.zzb(this.zza.getApplicationContext()));
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzff)).booleanValue()) {
                AudioManager audioManager = (AudioManager) this.zza.getApplicationContext().getSystemService("audio");
                Integer valueOf = audioManager == null ? null : Integer.valueOf(audioManager.getMode());
                if (valueOf != null) {
                    jSONObject3.put("audioMode", valueOf);
                }
            }
            Rect rect = new Rect();
            Display defaultDisplay = ((WindowManager) this.zza.getSystemService("window")).getDefaultDisplay();
            rect.right = defaultDisplay.getWidth();
            rect.bottom = defaultDisplay.getHeight();
            jSONObject3.put("windowVisibility", zzbbwVar.zzb).put("isAttachedToWindow", z).put("viewBox", new JSONObject().put(JavaLdapSupport.TOP_ATTR, zzbbwVar.zzc.top).put("bottom", zzbbwVar.zzc.bottom).put(TtmlNode.LEFT, zzbbwVar.zzc.left).put(TtmlNode.RIGHT, zzbbwVar.zzc.right)).put("adBox", new JSONObject().put(JavaLdapSupport.TOP_ATTR, zzbbwVar.zzd.top).put("bottom", zzbbwVar.zzd.bottom).put(TtmlNode.LEFT, zzbbwVar.zzd.left).put(TtmlNode.RIGHT, zzbbwVar.zzd.right)).put("globalVisibleBox", new JSONObject().put(JavaLdapSupport.TOP_ATTR, zzbbwVar.zze.top).put("bottom", zzbbwVar.zze.bottom).put(TtmlNode.LEFT, zzbbwVar.zze.left).put(TtmlNode.RIGHT, zzbbwVar.zze.right)).put("globalVisibleBoxVisible", zzbbwVar.zzf).put("localVisibleBox", new JSONObject().put(JavaLdapSupport.TOP_ATTR, zzbbwVar.zzg.top).put("bottom", zzbbwVar.zzg.bottom).put(TtmlNode.LEFT, zzbbwVar.zzg.left).put(TtmlNode.RIGHT, zzbbwVar.zzg.right)).put("localVisibleBoxVisible", zzbbwVar.zzh).put("hitBox", new JSONObject().put(JavaLdapSupport.TOP_ATTR, zzbbwVar.zzi.top).put("bottom", zzbbwVar.zzi.bottom).put(TtmlNode.LEFT, zzbbwVar.zzi.left).put(TtmlNode.RIGHT, zzbbwVar.zzi.right)).put("screenDensity", this.zza.getResources().getDisplayMetrics().density);
            jSONObject3.put("isVisible", zzcwrVar.zza);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbi)).booleanValue()) {
                JSONArray jSONArray2 = new JSONArray();
                List<Rect> list = zzbbwVar.zzk;
                if (list != null) {
                    for (Rect rect2 : list) {
                        jSONArray2.put(new JSONObject().put(JavaLdapSupport.TOP_ATTR, rect2.top).put("bottom", rect2.bottom).put(TtmlNode.LEFT, rect2.left).put(TtmlNode.RIGHT, rect2.right));
                    }
                }
                jSONObject3.put("scrollableContainerBoxes", jSONArray2);
            }
            if (!TextUtils.isEmpty(zzcwrVar.zze)) {
                jSONObject3.put("doneReasonCode", "u");
            }
            jSONObject = jSONObject3;
        } else {
            throw new JSONException("Active view Info cannot be null.");
        }
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }
}

package com.google.android.gms.internal.ads;

import androidx.constraintlayout.motion.widget.Key;
import com.unity3d.services.core.request.metrics.AdOperationMetric;
import io.bidmachine.utils.IabUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public class zzbyt {
    private final zzcno zza;
    private final String zzb;

    public zzbyt(zzcno zzcnoVar, String str) {
        this.zza = zzcnoVar;
        this.zzb = str;
    }

    public final void zzf(int i, int i2, int i3, int i4) {
        try {
            this.zza.zze("onDefaultPositionReceived", new JSONObject().put("x", i).put("y", i2).put(IabUtils.KEY_WIDTH, i3).put(IabUtils.KEY_HEIGHT, i4));
        } catch (JSONException e2) {
            com.google.android.gms.ads.internal.util.zze.zzh("Error occurred while dispatching default position.", e2);
        }
    }

    public final void zzg(String str) {
        try {
            JSONObject put = new JSONObject().put("message", str).put("action", this.zzb);
            zzcno zzcnoVar = this.zza;
            if (zzcnoVar != null) {
                zzcnoVar.zze("onError", put);
            }
        } catch (JSONException e2) {
            com.google.android.gms.ads.internal.util.zze.zzh("Error occurred while dispatching error event.", e2);
        }
    }

    public final void zzh(String str) {
        try {
            this.zza.zze("onReadyEventReceived", new JSONObject().put("js", str));
        } catch (JSONException e2) {
            com.google.android.gms.ads.internal.util.zze.zzh("Error occurred while dispatching ready Event.", e2);
        }
    }

    public final void zzi(int i, int i2, int i3, int i4, float f2, int i5) {
        try {
            this.zza.zze("onScreenInfoChanged", new JSONObject().put(IabUtils.KEY_WIDTH, i).put(IabUtils.KEY_HEIGHT, i2).put("maxSizeWidth", i3).put("maxSizeHeight", i4).put("density", f2).put(Key.ROTATION, i5));
        } catch (JSONException e2) {
            com.google.android.gms.ads.internal.util.zze.zzh("Error occurred while obtaining screen information.", e2);
        }
    }

    public final void zzj(int i, int i2, int i3, int i4) {
        try {
            this.zza.zze("onSizeChanged", new JSONObject().put("x", i).put("y", i2).put(IabUtils.KEY_WIDTH, i3).put(IabUtils.KEY_HEIGHT, i4));
        } catch (JSONException e2) {
            com.google.android.gms.ads.internal.util.zze.zzh("Error occurred while dispatching size change.", e2);
        }
    }

    public final void zzk(String str) {
        try {
            this.zza.zze("onStateChanged", new JSONObject().put(AdOperationMetric.INIT_STATE, str));
        } catch (JSONException e2) {
            com.google.android.gms.ads.internal.util.zze.zzh("Error occurred while dispatching state change.", e2);
        }
    }
}

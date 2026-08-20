package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public final class zzdsf implements zzdqo {
    private final zzbwi zza;
    private final zzdff zzb;
    private final zzdel zzc;
    private final zzdma zzd;
    private final Context zze;
    private final zzfil zzf;
    private final zzchu zzg;
    private final zzfjg zzh;
    private boolean zzi = false;
    private boolean zzj = false;
    private boolean zzk = true;
    private final zzbwe zzl;
    private final zzbwf zzm;

    public zzdsf(zzbwe zzbweVar, zzbwf zzbwfVar, zzbwi zzbwiVar, zzdff zzdffVar, zzdel zzdelVar, zzdma zzdmaVar, Context context, zzfil zzfilVar, zzchu zzchuVar, zzfjg zzfjgVar, byte[] bArr) {
        this.zzl = zzbweVar;
        this.zzm = zzbwfVar;
        this.zza = zzbwiVar;
        this.zzb = zzdffVar;
        this.zzc = zzdelVar;
        this.zzd = zzdmaVar;
        this.zze = context;
        this.zzf = zzfilVar;
        this.zzg = zzchuVar;
        this.zzh = zzfjgVar;
    }

    private final void zzb(View view) {
        try {
            zzbwi zzbwiVar = this.zza;
            if (zzbwiVar == null || zzbwiVar.zzA()) {
                zzbwe zzbweVar = this.zzl;
                if (zzbweVar == null || zzbweVar.zzx()) {
                    zzbwf zzbwfVar = this.zzm;
                    if (zzbwfVar == null || zzbwfVar.zzv()) {
                        return;
                    }
                    this.zzm.zzq(ObjectWrapper.wrap(view));
                    this.zzc.onAdClicked();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zziW)).booleanValue()) {
                        this.zzd.zzq();
                        return;
                    }
                    return;
                }
                this.zzl.zzs(ObjectWrapper.wrap(view));
                this.zzc.onAdClicked();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zziW)).booleanValue()) {
                    this.zzd.zzq();
                    return;
                }
                return;
            }
            this.zza.zzw(ObjectWrapper.wrap(view));
            this.zzc.onAdClicked();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zziW)).booleanValue()) {
                this.zzd.zzq();
            }
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.zze.zzk("Failed to call handleClick", e2);
        }
    }

    private static final HashMap zzc(Map map) {
        HashMap hashMap = new HashMap();
        if (map == null) {
            return hashMap;
        }
        synchronized (map) {
            for (Map.Entry entry : map.entrySet()) {
                View view = (View) ((WeakReference) entry.getValue()).get();
                if (view != null) {
                    hashMap.put((String) entry.getKey(), view);
                }
            }
        }
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.zzdqo
    public final boolean zzA() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdqo
    public final boolean zzB() {
        return this.zzf.zzM;
    }

    @Override // com.google.android.gms.internal.ads.zzdqo
    public final boolean zzC(Bundle bundle) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzdqo
    public final int zza() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdqo
    public final JSONObject zze(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdqo
    public final JSONObject zzf(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdqo
    public final void zzg() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzdqo
    public final void zzh() {
    }

    @Override // com.google.android.gms.internal.ads.zzdqo
    public final void zzi() {
    }

    @Override // com.google.android.gms.internal.ads.zzdqo
    public final void zzj(com.google.android.gms.ads.internal.client.zzcw zzcwVar) {
        com.google.android.gms.ads.internal.util.zze.zzj("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzdqo
    public final void zzk(View view, View view2, Map map, Map map2, boolean z, ImageView.ScaleType scaleType) {
        if (this.zzj && this.zzf.zzM) {
            return;
        }
        zzb(view);
    }

    @Override // com.google.android.gms.internal.ads.zzdqo
    public final void zzl(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzdqo
    public final void zzm(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzdqo
    public final void zzo(View view, View view2, Map map, Map map2, boolean z, ImageView.ScaleType scaleType, int i) {
        if (!this.zzj) {
            com.google.android.gms.ads.internal.util.zze.zzj("Custom click reporting for 3p ads failed. enableCustomClickGesture is not set.");
        } else if (!this.zzf.zzM) {
            com.google.android.gms.ads.internal.util.zze.zzj("Custom click reporting for 3p ads failed. Ad unit id not in allow list.");
        } else {
            zzb(view2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqo
    public final void zzp() {
    }

    @Override // com.google.android.gms.internal.ads.zzdqo
    public final void zzq(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        try {
            if (!this.zzi) {
                this.zzi = com.google.android.gms.ads.internal.zzt.zzs().zzn(this.zze, this.zzg.zza, this.zzf.zzD.toString(), this.zzh.zzf);
            }
            if (this.zzk) {
                zzbwi zzbwiVar = this.zza;
                if (zzbwiVar != null && !zzbwiVar.zzB()) {
                    this.zza.zzx();
                    this.zzb.zza();
                    return;
                }
                zzbwe zzbweVar = this.zzl;
                if (zzbweVar != null && !zzbweVar.zzy()) {
                    this.zzl.zzt();
                    this.zzb.zza();
                    return;
                }
                zzbwf zzbwfVar = this.zzm;
                if (zzbwfVar == null || zzbwfVar.zzw()) {
                    return;
                }
                this.zzm.zzr();
                this.zzb.zza();
            }
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.zze.zzk("Failed to call recordImpression", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqo
    public final void zzr() {
    }

    @Override // com.google.android.gms.internal.ads.zzdqo
    public final void zzs(View view, MotionEvent motionEvent, View view2) {
    }

    @Override // com.google.android.gms.internal.ads.zzdqo
    public final void zzt(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzdqo
    public final void zzu(View view) {
    }

    @Override // com.google.android.gms.internal.ads.zzdqo
    public final void zzv() {
        this.zzj = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdqo
    public final void zzw(com.google.android.gms.ads.internal.client.zzcs zzcsVar) {
        com.google.android.gms.ads.internal.util.zze.zzj("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzdqo
    public final void zzx(zzbof zzbofVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdqo
    public final void zzy(View view, Map map, Map map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        Object obj;
        IObjectWrapper zzn;
        try {
            IObjectWrapper wrap = ObjectWrapper.wrap(view);
            JSONObject jSONObject = this.zzf.zzal;
            boolean z = true;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbq)).booleanValue() && jSONObject.length() != 0) {
                Map hashMap = map == null ? new HashMap() : map;
                Map hashMap2 = map2 == null ? new HashMap() : map2;
                HashMap hashMap3 = new HashMap();
                hashMap3.putAll(hashMap);
                hashMap3.putAll(hashMap2);
                Iterator<String> keys = jSONObject.keys();
                loop0: while (keys.hasNext()) {
                    String next = keys.next();
                    JSONArray optJSONArray = jSONObject.optJSONArray(next);
                    if (optJSONArray != null) {
                        WeakReference weakReference = (WeakReference) hashMap3.get(next);
                        if (weakReference != null && (obj = weakReference.get()) != null) {
                            Class<?> cls = obj.getClass();
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbr)).booleanValue() && next.equals("3010")) {
                                zzbwi zzbwiVar = this.zza;
                                Object obj2 = null;
                                if (zzbwiVar != null) {
                                    try {
                                        zzn = zzbwiVar.zzn();
                                    } catch (RemoteException | IllegalArgumentException unused) {
                                    }
                                } else {
                                    zzbwe zzbweVar = this.zzl;
                                    if (zzbweVar != null) {
                                        zzn = zzbweVar.zzk();
                                    } else {
                                        zzbwf zzbwfVar = this.zzm;
                                        zzn = zzbwfVar != null ? zzbwfVar.zzj() : null;
                                    }
                                }
                                if (zzn != null) {
                                    obj2 = ObjectWrapper.unwrap(zzn);
                                }
                                if (obj2 != null) {
                                    cls = obj2.getClass();
                                }
                            }
                            try {
                                ArrayList<String> arrayList = new ArrayList();
                                com.google.android.gms.ads.internal.util.zzbu.zzc(optJSONArray, arrayList);
                                com.google.android.gms.ads.internal.zzt.zzp();
                                ClassLoader classLoader = this.zze.getClassLoader();
                                for (String str : arrayList) {
                                    if (Class.forName(str, false, classLoader).isAssignableFrom(cls)) {
                                        break;
                                    }
                                }
                            } catch (JSONException unused2) {
                                continue;
                            }
                        }
                        z = false;
                        break;
                    }
                }
            }
            this.zzk = z;
            HashMap zzc = zzc(map);
            HashMap zzc2 = zzc(map2);
            zzbwi zzbwiVar2 = this.zza;
            if (zzbwiVar2 != null) {
                zzbwiVar2.zzy(wrap, ObjectWrapper.wrap(zzc), ObjectWrapper.wrap(zzc2));
                return;
            }
            zzbwe zzbweVar2 = this.zzl;
            if (zzbweVar2 != null) {
                zzbweVar2.zzv(wrap, ObjectWrapper.wrap(zzc), ObjectWrapper.wrap(zzc2));
                this.zzl.zzu(wrap);
                return;
            }
            zzbwf zzbwfVar2 = this.zzm;
            if (zzbwfVar2 != null) {
                zzbwfVar2.zzt(wrap, ObjectWrapper.wrap(zzc), ObjectWrapper.wrap(zzc2));
                this.zzm.zzs(wrap);
            }
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.zze.zzk("Failed to call trackView", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqo
    public final void zzz(View view, Map map) {
        try {
            IObjectWrapper wrap = ObjectWrapper.wrap(view);
            zzbwi zzbwiVar = this.zza;
            if (zzbwiVar != null) {
                zzbwiVar.zzz(wrap);
                return;
            }
            zzbwe zzbweVar = this.zzl;
            if (zzbweVar != null) {
                zzbweVar.zzw(wrap);
                return;
            }
            zzbwf zzbwfVar = this.zzm;
            if (zzbwfVar != null) {
                zzbwfVar.zzu(wrap);
            }
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.zze.zzk("Failed to call untrackView", e2);
        }
    }
}

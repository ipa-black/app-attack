package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.firebase.messaging.Constants;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdsa {
    private final zzdwp zza;
    private final zzdve zzb;
    private ViewTreeObserver.OnScrollChangedListener zzc = null;

    public zzdsa(zzdwp zzdwpVar, zzdve zzdveVar) {
        this.zza = zzdwpVar;
        this.zzb = zzdveVar;
    }

    private static final int zzf(Context context, String str, int i) {
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException unused) {
        }
        com.google.android.gms.ads.internal.client.zzay.zzb();
        return zzchh.zzy(context, i);
    }

    public final View zza(final View view, final WindowManager windowManager) throws zzcnz {
        zzcno zza = this.zza.zza(com.google.android.gms.ads.internal.client.zzq.zzc(), null, null);
        View view2 = (View) zza;
        view2.setVisibility(4);
        view2.setContentDescription("policy_validator");
        zza.zzaf("/sendMessageToSdk", new zzbqd() { // from class: com.google.android.gms.internal.ads.zzdrw
            @Override // com.google.android.gms.internal.ads.zzbqd
            public final void zza(Object obj, Map map) {
                zzdsa.this.zzb((zzcno) obj, map);
            }
        });
        zza.zzaf("/hideValidatorOverlay", new zzbqd() { // from class: com.google.android.gms.internal.ads.zzdrx
            @Override // com.google.android.gms.internal.ads.zzbqd
            public final void zza(Object obj, Map map) {
                zzdsa.this.zzc(windowManager, view, (zzcno) obj, map);
            }
        });
        zza.zzaf("/open", new zzbqn(null, null, null, null, null));
        this.zzb.zzj(new WeakReference(zza), "/loadNativeAdPolicyViolations", new zzbqd() { // from class: com.google.android.gms.internal.ads.zzdry
            @Override // com.google.android.gms.internal.ads.zzbqd
            public final void zza(Object obj, Map map) {
                zzdsa.this.zze(view, windowManager, (zzcno) obj, map);
            }
        });
        this.zzb.zzj(new WeakReference(zza), "/showValidatorOverlay", new zzbqd() { // from class: com.google.android.gms.internal.ads.zzdrz
            @Override // com.google.android.gms.internal.ads.zzbqd
            public final void zza(Object obj, Map map) {
                com.google.android.gms.ads.internal.util.zze.zze("Show native ad policy validator overlay.");
                ((zzcno) obj).zzH().setVisibility(0);
            }
        });
        return view2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzb(zzcno zzcnoVar, Map map) {
        this.zzb.zzg("sendMessageToNativeJs", map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzc(WindowManager windowManager, View view, zzcno zzcnoVar, Map map) {
        com.google.android.gms.ads.internal.util.zze.zze("Hide native ad policy validator overlay.");
        zzcnoVar.zzH().setVisibility(8);
        if (zzcnoVar.zzH().getWindowToken() != null) {
            windowManager.removeView(zzcnoVar.zzH());
        }
        zzcnoVar.destroy();
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (this.zzc == null || viewTreeObserver == null || !viewTreeObserver.isAlive()) {
            return;
        }
        viewTreeObserver.removeOnScrollChangedListener(this.zzc);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzd(Map map, boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put(Constants.FirelogAnalytics.PARAM_MESSAGE_TYPE, "validatorHtmlLoaded");
        hashMap.put("id", (String) map.get("id"));
        this.zzb.zzg("sendMessageToNativeJs", hashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zze(final View view, final WindowManager windowManager, final zzcno zzcnoVar, final Map map) {
        int i;
        zzcnoVar.zzP().zzA(new zzcoz() { // from class: com.google.android.gms.internal.ads.zzdru
            @Override // com.google.android.gms.internal.ads.zzcoz
            public final void zza(boolean z) {
                zzdsa.this.zzd(map, z);
            }
        });
        if (map == null) {
            return;
        }
        Context context = view.getContext();
        int zzf = zzf(context, (String) map.get("validator_width"), ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhm)).intValue());
        int zzf2 = zzf(context, (String) map.get("validator_height"), ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhn)).intValue());
        int zzf3 = zzf(context, (String) map.get("validator_x"), 0);
        int zzf4 = zzf(context, (String) map.get("validator_y"), 0);
        zzcnoVar.zzai(zzcpd.zzb(zzf, zzf2));
        try {
            zzcnoVar.zzI().getSettings().setUseWideViewPort(((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzho)).booleanValue());
            zzcnoVar.zzI().getSettings().setLoadWithOverviewMode(((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhp)).booleanValue());
        } catch (NullPointerException unused) {
        }
        final WindowManager.LayoutParams zzb = com.google.android.gms.ads.internal.util.zzbx.zzb();
        zzb.x = zzf3;
        zzb.y = zzf4;
        windowManager.updateViewLayout(zzcnoVar.zzH(), zzb);
        final String str = (String) map.get(AdUnitActivity.EXTRA_ORIENTATION);
        Rect rect = new Rect();
        if (view.getGlobalVisibleRect(rect)) {
            if (IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE.equals(str) || "2".equals(str)) {
                i = rect.bottom;
            } else {
                i = rect.top;
            }
            final int i2 = i - zzf4;
            this.zzc = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.google.android.gms.internal.ads.zzdrv
                @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                public final void onScrollChanged() {
                    View view2 = view;
                    zzcno zzcnoVar2 = zzcnoVar;
                    String str2 = str;
                    WindowManager.LayoutParams layoutParams = zzb;
                    int i3 = i2;
                    WindowManager windowManager2 = windowManager;
                    Rect rect2 = new Rect();
                    if (!view2.getGlobalVisibleRect(rect2) || zzcnoVar2.zzH().getWindowToken() == null) {
                        return;
                    }
                    if (IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE.equals(str2) || "2".equals(str2)) {
                        layoutParams.y = rect2.bottom - i3;
                    } else {
                        layoutParams.y = rect2.top - i3;
                    }
                    windowManager2.updateViewLayout(zzcnoVar2.zzH(), layoutParams);
                }
            };
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                viewTreeObserver.addOnScrollChangedListener(this.zzc);
            }
        }
        String str2 = (String) map.get("overlay_url");
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        zzcnoVar.loadUrl(str2);
    }
}

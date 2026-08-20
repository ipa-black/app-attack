package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzekm implements zzekn {
    private static zzfpy zzf(String str) {
        char c2;
        int hashCode = str.hashCode();
        if (hashCode == -382745961) {
            if (str.equals("htmlDisplay")) {
                c2 = 0;
            }
            c2 = 65535;
        } else if (hashCode != 112202875) {
            if (hashCode == 714893483 && str.equals("nativeDisplay")) {
                c2 = 1;
            }
            c2 = 65535;
        } else {
            if (str.equals("video")) {
                c2 = 2;
            }
            c2 = 65535;
        }
        if (c2 != 0) {
            if (c2 != 1) {
                if (c2 != 2) {
                    return null;
                }
                return zzfpy.VIDEO;
            }
            return zzfpy.NATIVE_DISPLAY;
        }
        return zzfpy.HTML_DISPLAY;
    }

    private static zzfqa zzg(String str) {
        char c2;
        int hashCode = str.hashCode();
        if (hashCode == -1104128070) {
            if (str.equals("beginToRender")) {
                c2 = 0;
            }
            c2 = 65535;
        } else if (hashCode != 1318088141) {
            if (hashCode == 1988248512 && str.equals("onePixel")) {
                c2 = 2;
            }
            c2 = 65535;
        } else {
            if (str.equals("definedByJavascript")) {
                c2 = 1;
            }
            c2 = 65535;
        }
        if (c2 != 0) {
            if (c2 != 1) {
                if (c2 == 2) {
                    return zzfqa.ONE_PIXEL;
                }
                return zzfqa.UNSPECIFIED;
            }
            return zzfqa.DEFINED_BY_JAVASCRIPT;
        }
        return zzfqa.BEGIN_TO_RENDER;
    }

    private static zzfqb zzh(String str) {
        if ("native".equals(str)) {
            return zzfqb.NATIVE;
        }
        if ("javascript".equals(str)) {
            return zzfqb.JAVASCRIPT;
        }
        return zzfqb.NONE;
    }

    @Override // com.google.android.gms.internal.ads.zzekn
    public final IObjectWrapper zza(String str, WebView webView, String str2, String str3, String str4, zzekp zzekpVar, zzeko zzekoVar, String str5) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzey)).booleanValue() && zzfpr.zzb()) {
            zzfqc zza = zzfqc.zza("Google", str);
            zzfqb zzh = zzh("javascript");
            zzfpy zzf = zzf(zzekoVar.toString());
            if (zzh == zzfqb.NONE) {
                com.google.android.gms.ads.internal.util.zze.zzj("Omid html session error; Unable to parse impression owner: javascript");
                return null;
            } else if (zzf == null) {
                com.google.android.gms.ads.internal.util.zze.zzj("Omid html session error; Unable to parse creative type: ".concat(String.valueOf(String.valueOf(zzekoVar))));
                return null;
            } else {
                zzfqb zzh2 = zzh(str4);
                if (zzf != zzfpy.VIDEO || zzh2 != zzfqb.NONE) {
                    return ObjectWrapper.wrap(zzfpt.zza(zzfpu.zza(zzf, zzg(zzekpVar.toString()), zzh, zzh2, true), zzfpv.zzb(zza, webView, str5, "")));
                }
                com.google.android.gms.ads.internal.util.zze.zzj("Omid html session error; Video events owner unknown for video creative: ".concat(String.valueOf(str4)));
                return null;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzekn
    public final IObjectWrapper zzb(String str, WebView webView, String str2, String str3, String str4, String str5, zzekp zzekpVar, zzeko zzekoVar, String str6) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzey)).booleanValue() && zzfpr.zzb()) {
            zzfqc zza = zzfqc.zza(str5, str);
            zzfqb zzh = zzh("javascript");
            zzfqb zzh2 = zzh(str4);
            zzfpy zzf = zzf(zzekoVar.toString());
            if (zzh == zzfqb.NONE) {
                com.google.android.gms.ads.internal.util.zze.zzj("Omid js session error; Unable to parse impression owner: javascript");
                return null;
            } else if (zzf == null) {
                com.google.android.gms.ads.internal.util.zze.zzj("Omid js session error; Unable to parse creative type: ".concat(String.valueOf(String.valueOf(zzekoVar))));
                return null;
            } else if (zzf != zzfpy.VIDEO || zzh2 != zzfqb.NONE) {
                return ObjectWrapper.wrap(zzfpt.zza(zzfpu.zza(zzf, zzg(zzekpVar.toString()), zzh, zzh2, true), zzfpv.zzc(zza, webView, str6, "")));
            } else {
                com.google.android.gms.ads.internal.util.zze.zzj("Omid js session error; Video events owner unknown for video creative: ".concat(String.valueOf(str4)));
                return null;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzekn
    public final void zzc(IObjectWrapper iObjectWrapper, View view) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzey)).booleanValue() && zzfpr.zzb()) {
            Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
            if (unwrap instanceof zzfpt) {
                ((zzfpt) unwrap).zzd(view);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzekn
    public final void zzd(IObjectWrapper iObjectWrapper) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzey)).booleanValue() && zzfpr.zzb()) {
            Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
            if (unwrap instanceof zzfpt) {
                ((zzfpt) unwrap).zze();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzekn
    public final boolean zze(Context context) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzey)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zzj("Omid flag is disabled");
            return false;
        } else if (zzfpr.zzb()) {
            return true;
        } else {
            zzfpr.zza(context);
            return zzfpr.zzb();
        }
    }
}

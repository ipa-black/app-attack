package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.dynamic.IObjectWrapper;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public interface zzcno extends com.google.android.gms.ads.internal.client.zza, zzdmc, zzcnf, zzbsw, zzcol, zzcop, zzbtj, zzbbx, zzcot, com.google.android.gms.ads.internal.zzl, zzcow, zzcox, zzcjx, zzcoy {
    boolean canGoBack();

    void destroy();

    @Override // com.google.android.gms.internal.ads.zzcop, com.google.android.gms.internal.ads.zzcjx
    Context getContext();

    int getHeight();

    ViewGroup.LayoutParams getLayoutParams();

    void getLocationOnScreen(int[] iArr);

    int getMeasuredHeight();

    int getMeasuredWidth();

    ViewParent getParent();

    int getWidth();

    void goBack();

    void loadData(String str, String str2, String str3);

    void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5);

    void loadUrl(String str);

    void measure(int i, int i2);

    void onPause();

    void onResume();

    @Override // com.google.android.gms.internal.ads.zzcjx
    void setBackgroundColor(int i);

    void setOnClickListener(View.OnClickListener onClickListener);

    void setOnTouchListener(View.OnTouchListener onTouchListener);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);

    @Override // com.google.android.gms.internal.ads.zzcjx
    void zzE(zzcok zzcokVar);

    @Override // com.google.android.gms.internal.ads.zzcnf
    zzfil zzF();

    Context zzG();

    @Override // com.google.android.gms.internal.ads.zzcoy
    View zzH();

    WebView zzI();

    WebViewClient zzJ();

    @Override // com.google.android.gms.internal.ads.zzcow
    zzapj zzK();

    zzbdk zzL();

    zzbly zzM();

    com.google.android.gms.ads.internal.overlay.zzl zzN();

    com.google.android.gms.ads.internal.overlay.zzl zzO();

    zzcpb zzP();

    @Override // com.google.android.gms.internal.ads.zzcov
    zzcpd zzQ();

    @Override // com.google.android.gms.internal.ads.zzcol
    zzfio zzR();

    IObjectWrapper zzS();

    zzgfb zzT();

    String zzU();

    void zzV(zzfil zzfilVar, zzfio zzfioVar);

    void zzW();

    void zzX();

    void zzY(int i);

    void zzZ();

    boolean zzaA(boolean z, int i);

    boolean zzaB();

    boolean zzaC();

    boolean zzaD();

    boolean zzaE();

    void zzaa();

    void zzab(boolean z);

    void zzac();

    void zzad(String str, String str2, String str3);

    void zzae();

    void zzaf(String str, zzbqd zzbqdVar);

    void zzag();

    void zzah(com.google.android.gms.ads.internal.overlay.zzl zzlVar);

    void zzai(zzcpd zzcpdVar);

    void zzaj(zzbdk zzbdkVar);

    void zzak(boolean z);

    void zzal();

    void zzam(Context context);

    void zzan(boolean z);

    void zzao(zzblw zzblwVar);

    void zzap(boolean z);

    void zzaq(zzbly zzblyVar);

    void zzar(IObjectWrapper iObjectWrapper);

    void zzas(int i);

    void zzat(com.google.android.gms.ads.internal.overlay.zzl zzlVar);

    void zzau(boolean z);

    void zzav(boolean z);

    void zzaw(String str, zzbqd zzbqdVar);

    void zzax(String str, Predicate predicate);

    boolean zzay();

    boolean zzaz();

    @Override // com.google.android.gms.internal.ads.zzcop, com.google.android.gms.internal.ads.zzcjx
    Activity zzk();

    @Override // com.google.android.gms.internal.ads.zzcjx
    com.google.android.gms.ads.internal.zza zzm();

    @Override // com.google.android.gms.internal.ads.zzcjx
    zzbjw zzo();

    @Override // com.google.android.gms.internal.ads.zzcox, com.google.android.gms.internal.ads.zzcjx
    zzchu zzp();

    @Override // com.google.android.gms.internal.ads.zzcjx
    zzcok zzs();

    @Override // com.google.android.gms.internal.ads.zzcjx
    void zzv(String str, zzcma zzcmaVar);
}

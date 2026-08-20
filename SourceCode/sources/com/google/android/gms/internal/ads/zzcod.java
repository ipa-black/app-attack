package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.exoplayer2.C;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcod extends FrameLayout implements zzcno {
    private final zzcno zza;
    private final zzcjm zzb;
    private final AtomicBoolean zzc;

    public zzcod(zzcno zzcnoVar) {
        super(zzcnoVar.getContext());
        this.zzc = new AtomicBoolean();
        this.zza = zzcnoVar;
        this.zzb = new zzcjm(zzcnoVar.zzG(), this, this);
        addView((View) zzcnoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final boolean canGoBack() {
        return this.zza.canGoBack();
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void destroy() {
        final IObjectWrapper zzS = zzS();
        if (zzS != null) {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcob
                @Override // java.lang.Runnable
                public final void run() {
                    IObjectWrapper iObjectWrapper = IObjectWrapper.this;
                    com.google.android.gms.ads.internal.zzt.zzA();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzey)).booleanValue() && zzfpr.zzb()) {
                        Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
                        if (unwrap instanceof zzfpt) {
                            ((zzfpt) unwrap).zzc();
                        }
                    }
                }
            });
            zzfvb zzfvbVar = com.google.android.gms.ads.internal.util.zzs.zza;
            final zzcno zzcnoVar = this.zza;
            zzcnoVar.getClass();
            zzfvbVar.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcoc
                @Override // java.lang.Runnable
                public final void run() {
                    zzcno.this.destroy();
                }
            }, ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzez)).intValue());
            return;
        }
        this.zza.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void goBack() {
        this.zza.goBack();
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void loadData(String str, String str2, String str3) {
        this.zza.loadData(str, "text/html", str3);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.zza.loadDataWithBaseURL(str, str2, "text/html", C.UTF8_NAME, null);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void loadUrl(String str) {
        this.zza.loadUrl(str);
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        zzcno zzcnoVar = this.zza;
        if (zzcnoVar != null) {
            zzcnoVar.onAdClicked();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void onPause() {
        this.zzb.zze();
        this.zza.onPause();
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void onResume() {
        this.zza.onResume();
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzcno
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.zza.setOnClickListener(onClickListener);
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzcno
    public final void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.zza.setOnTouchListener(onTouchListener);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void setWebChromeClient(WebChromeClient webChromeClient) {
        this.zza.setWebChromeClient(webChromeClient);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void setWebViewClient(WebViewClient webViewClient) {
        this.zza.setWebViewClient(webViewClient);
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final void zzA(int i) {
        this.zza.zzA(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final void zzB(boolean z) {
        this.zza.zzB(false);
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final void zzC(int i) {
        this.zza.zzC(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final void zzD(int i) {
        this.zzb.zzf(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcno, com.google.android.gms.internal.ads.zzcjx
    public final void zzE(zzcok zzcokVar) {
        this.zza.zzE(zzcokVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcno, com.google.android.gms.internal.ads.zzcnf
    public final zzfil zzF() {
        return this.zza.zzF();
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final Context zzG() {
        return this.zza.zzG();
    }

    @Override // com.google.android.gms.internal.ads.zzcno, com.google.android.gms.internal.ads.zzcoy
    public final View zzH() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final WebView zzI() {
        return (WebView) this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final WebViewClient zzJ() {
        return this.zza.zzJ();
    }

    @Override // com.google.android.gms.internal.ads.zzcno, com.google.android.gms.internal.ads.zzcow
    public final zzapj zzK() {
        return this.zza.zzK();
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final zzbdk zzL() {
        return this.zza.zzL();
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final zzbly zzM() {
        return this.zza.zzM();
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final com.google.android.gms.ads.internal.overlay.zzl zzN() {
        return this.zza.zzN();
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final com.google.android.gms.ads.internal.overlay.zzl zzO() {
        return this.zza.zzO();
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final zzcpb zzP() {
        return ((zzcoh) this.zza).zzaL();
    }

    @Override // com.google.android.gms.internal.ads.zzcno, com.google.android.gms.internal.ads.zzcov
    public final zzcpd zzQ() {
        return this.zza.zzQ();
    }

    @Override // com.google.android.gms.internal.ads.zzcno, com.google.android.gms.internal.ads.zzcol
    public final zzfio zzR() {
        return this.zza.zzR();
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final IObjectWrapper zzS() {
        return this.zza.zzS();
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final zzgfb zzT() {
        return this.zza.zzT();
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final String zzU() {
        return this.zza.zzU();
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzV(zzfil zzfilVar, zzfio zzfioVar) {
        this.zza.zzV(zzfilVar, zzfioVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzW() {
        this.zzb.zzd();
        this.zza.zzW();
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzX() {
        this.zza.zzX();
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzY(int i) {
        this.zza.zzY(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzZ() {
        this.zza.zzZ();
    }

    @Override // com.google.android.gms.internal.ads.zzbtj
    public final void zza(String str) {
        ((zzcoh) this.zza).zzaQ(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final boolean zzaA(boolean z, int i) {
        if (this.zzc.compareAndSet(false, true)) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzaF)).booleanValue()) {
                return false;
            }
            if (this.zza.getParent() instanceof ViewGroup) {
                ((ViewGroup) this.zza.getParent()).removeView((View) this.zza);
            }
            this.zza.zzaA(z, i);
            return true;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final boolean zzaB() {
        return this.zza.zzaB();
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final boolean zzaC() {
        return this.zza.zzaC();
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final boolean zzaD() {
        return this.zzc.get();
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final boolean zzaE() {
        return this.zza.zzaE();
    }

    @Override // com.google.android.gms.internal.ads.zzcot
    public final void zzaF(com.google.android.gms.ads.internal.overlay.zzc zzcVar, boolean z) {
        this.zza.zzaF(zzcVar, z);
    }

    @Override // com.google.android.gms.internal.ads.zzcot
    public final void zzaG(com.google.android.gms.ads.internal.util.zzbr zzbrVar, zzekc zzekcVar, zzdzh zzdzhVar, zzfnt zzfntVar, String str, String str2, int i) {
        this.zza.zzaG(zzbrVar, zzekcVar, zzdzhVar, zzfntVar, str, str2, 14);
    }

    @Override // com.google.android.gms.internal.ads.zzcot
    public final void zzaH(boolean z, int i, boolean z2) {
        this.zza.zzaH(z, i, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcot
    public final void zzaI(boolean z, int i, String str, boolean z2) {
        this.zza.zzaI(z, i, str, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcot
    public final void zzaJ(boolean z, int i, String str, String str2, boolean z2) {
        this.zza.zzaJ(z, i, str, str2, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzaa() {
        zzcno zzcnoVar = this.zza;
        HashMap hashMap = new HashMap(3);
        hashMap.put("app_muted", String.valueOf(com.google.android.gms.ads.internal.zzt.zzr().zze()));
        hashMap.put("app_volume", String.valueOf(com.google.android.gms.ads.internal.zzt.zzr().zza()));
        zzcoh zzcohVar = (zzcoh) zzcnoVar;
        hashMap.put("device_volume", String.valueOf(com.google.android.gms.ads.internal.util.zzab.zzb(zzcohVar.getContext())));
        zzcohVar.zzd("volume", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzab(boolean z) {
        this.zza.zzab(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzac() {
        this.zza.zzac();
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzad(String str, String str2, String str3) {
        this.zza.zzad(str, str2, null);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzae() {
        this.zza.zzae();
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzaf(String str, zzbqd zzbqdVar) {
        this.zza.zzaf(str, zzbqdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzag() {
        TextView textView = new TextView(getContext());
        com.google.android.gms.ads.internal.zzt.zzp();
        textView.setText(com.google.android.gms.ads.internal.util.zzs.zzv());
        textView.setTextSize(15.0f);
        textView.setTextColor(-1);
        textView.setPadding(5, 0, 5, 0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(-12303292);
        gradientDrawable.setCornerRadius(8.0f);
        textView.setBackground(gradientDrawable);
        addView(textView, new FrameLayout.LayoutParams(-2, -2, 49));
        bringChildToFront(textView);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzah(com.google.android.gms.ads.internal.overlay.zzl zzlVar) {
        this.zza.zzah(zzlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzai(zzcpd zzcpdVar) {
        this.zza.zzai(zzcpdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzaj(zzbdk zzbdkVar) {
        this.zza.zzaj(zzbdkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzak(boolean z) {
        this.zza.zzak(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzal() {
        setBackgroundColor(0);
        this.zza.setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzam(Context context) {
        this.zza.zzam(context);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzan(boolean z) {
        this.zza.zzan(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzao(zzblw zzblwVar) {
        this.zza.zzao(zzblwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzap(boolean z) {
        this.zza.zzap(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzaq(zzbly zzblyVar) {
        this.zza.zzaq(zzblyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzar(IObjectWrapper iObjectWrapper) {
        this.zza.zzar(iObjectWrapper);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzas(int i) {
        this.zza.zzas(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzat(com.google.android.gms.ads.internal.overlay.zzl zzlVar) {
        this.zza.zzat(zzlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzau(boolean z) {
        this.zza.zzau(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzav(boolean z) {
        this.zza.zzav(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzaw(String str, zzbqd zzbqdVar) {
        this.zza.zzaw(str, zzbqdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzax(String str, Predicate predicate) {
        this.zza.zzax(str, predicate);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final boolean zzay() {
        return this.zza.zzay();
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final boolean zzaz() {
        return this.zza.zzaz();
    }

    @Override // com.google.android.gms.internal.ads.zzbtj
    public final void zzb(String str, String str2) {
        this.zza.zzb("window.inspectorInfo", str2);
    }

    @Override // com.google.android.gms.ads.internal.zzl
    public final void zzbn() {
        this.zza.zzbn();
    }

    @Override // com.google.android.gms.ads.internal.zzl
    public final void zzbo() {
        this.zza.zzbo();
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final zzcjm zzbp() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final zzcma zzbq(String str) {
        return this.zza.zzbq(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbbx
    public final void zzc(zzbbw zzbbwVar) {
        this.zza.zzc(zzbbwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbsw
    public final void zzd(String str, Map map) {
        this.zza.zzd(str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzbsw
    public final void zze(String str, JSONObject jSONObject) {
        this.zza.zze(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final int zzf() {
        return this.zza.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final int zzg() {
        return this.zza.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final int zzh() {
        return this.zza.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final int zzi() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdp)).booleanValue()) {
            return this.zza.getMeasuredHeight();
        }
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final int zzj() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdp)).booleanValue()) {
            return this.zza.getMeasuredWidth();
        }
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.zzcno, com.google.android.gms.internal.ads.zzcop, com.google.android.gms.internal.ads.zzcjx
    public final Activity zzk() {
        return this.zza.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzbtj
    public final void zzl(String str, JSONObject jSONObject) {
        ((zzcoh) this.zza).zzb(str, jSONObject.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcno, com.google.android.gms.internal.ads.zzcjx
    public final com.google.android.gms.ads.internal.zza zzm() {
        return this.zza.zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final zzbjv zzn() {
        return this.zza.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzcno, com.google.android.gms.internal.ads.zzcjx
    public final zzbjw zzo() {
        return this.zza.zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzcno, com.google.android.gms.internal.ads.zzcox, com.google.android.gms.internal.ads.zzcjx
    public final zzchu zzp() {
        return this.zza.zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzdmc
    public final void zzq() {
        zzcno zzcnoVar = this.zza;
        if (zzcnoVar != null) {
            zzcnoVar.zzq();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdmc
    public final void zzr() {
        zzcno zzcnoVar = this.zza;
        if (zzcnoVar != null) {
            zzcnoVar.zzr();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcno, com.google.android.gms.internal.ads.zzcjx
    public final zzcok zzs() {
        return this.zza.zzs();
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final String zzt() {
        return this.zza.zzt();
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final String zzu() {
        return this.zza.zzu();
    }

    @Override // com.google.android.gms.internal.ads.zzcno, com.google.android.gms.internal.ads.zzcjx
    public final void zzv(String str, zzcma zzcmaVar) {
        this.zza.zzv(str, zzcmaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final void zzw() {
        this.zza.zzw();
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final void zzx(boolean z, long j) {
        this.zza.zzx(z, j);
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final void zzy() {
        this.zza.zzy();
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final void zzz(int i) {
        this.zza.zzz(i);
    }
}

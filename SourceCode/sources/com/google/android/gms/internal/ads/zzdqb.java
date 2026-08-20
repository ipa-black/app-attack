package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import androidx.collection.ArrayMap;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdqb extends zzdan {
    public static final zzgau zzc = zzgau.zzt("3010", "3008", "1005", "1009", "2011", "2007");
    private final zzbbz zzA;
    private final Executor zzd;
    private final zzdqg zze;
    private final zzdqo zzf;
    private final zzdrg zzg;
    private final zzdql zzh;
    private final zzdqr zzi;
    private final zzhej zzj;
    private final zzhej zzk;
    private final zzhej zzl;
    private final zzhej zzm;
    private final zzhej zzn;
    private zzdsc zzo;
    private boolean zzp;
    private boolean zzq;
    private boolean zzr;
    private final zzcfb zzs;
    private final zzapj zzt;
    private final zzchu zzu;
    private final Context zzv;
    private final zzdqd zzw;
    private final zzese zzx;
    private final Map zzy;
    private final List zzz;

    public zzdqb(zzdam zzdamVar, Executor executor, zzdqg zzdqgVar, zzdqo zzdqoVar, zzdrg zzdrgVar, zzdql zzdqlVar, zzdqr zzdqrVar, zzhej zzhejVar, zzhej zzhejVar2, zzhej zzhejVar3, zzhej zzhejVar4, zzhej zzhejVar5, zzcfb zzcfbVar, zzapj zzapjVar, zzchu zzchuVar, Context context, zzdqd zzdqdVar, zzese zzeseVar, zzbbz zzbbzVar) {
        super(zzdamVar);
        this.zzd = executor;
        this.zze = zzdqgVar;
        this.zzf = zzdqoVar;
        this.zzg = zzdrgVar;
        this.zzh = zzdqlVar;
        this.zzi = zzdqrVar;
        this.zzj = zzhejVar;
        this.zzk = zzhejVar2;
        this.zzl = zzhejVar3;
        this.zzm = zzhejVar4;
        this.zzn = zzhejVar5;
        this.zzs = zzcfbVar;
        this.zzt = zzapjVar;
        this.zzu = zzchuVar;
        this.zzv = context;
        this.zzw = zzdqdVar;
        this.zzx = zzeseVar;
        this.zzy = new HashMap();
        this.zzz = new ArrayList();
        this.zzA = zzbbzVar;
    }

    public static boolean zzT(View view) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zziO)).booleanValue()) {
            return view.isShown() && view.getGlobalVisibleRect(new Rect(), null);
        }
        com.google.android.gms.ads.internal.zzt.zzp();
        long zzt = com.google.android.gms.ads.internal.util.zzs.zzt(view);
        if (view.isShown() && view.getGlobalVisibleRect(new Rect(), null)) {
            if (zzt >= ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zziP)).intValue()) {
                return true;
            }
        }
        return false;
    }

    private final synchronized View zzV(Map map) {
        if (map == null) {
            return null;
        }
        zzgau zzgauVar = zzc;
        int size = zzgauVar.size();
        int i = 0;
        while (i < size) {
            WeakReference weakReference = (WeakReference) map.get((String) zzgauVar.get(i));
            i++;
            if (weakReference != null) {
                return (View) weakReference.get();
            }
        }
        return null;
    }

    private final synchronized ImageView.ScaleType zzW() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhh)).booleanValue()) {
            zzdsc zzdscVar = this.zzo;
            if (zzdscVar == null) {
                com.google.android.gms.ads.internal.util.zze.zze("Ad should be associated with an ad view before calling getMediaviewScaleType()");
                return null;
            }
            IObjectWrapper zzj = zzdscVar.zzj();
            if (zzj != null) {
                return (ImageView.ScaleType) ObjectWrapper.unwrap(zzj);
            }
            return zzdrg.zza;
        }
        return null;
    }

    private final synchronized void zzX(View view, Map map, Map map2) {
        this.zzg.zzd(this.zzo);
        this.zzf.zzq(view, map, map2, zzW());
        this.zzq = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzY */
    public final synchronized void zzv(zzdsc zzdscVar) {
        Iterator<String> keys;
        View view;
        zzapf zzc2;
        if (this.zzp) {
            return;
        }
        this.zzo = zzdscVar;
        this.zzg.zze(zzdscVar);
        this.zzf.zzy(zzdscVar.zzf(), zzdscVar.zzm(), zzdscVar.zzn(), zzdscVar, zzdscVar);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzcj)).booleanValue() && (zzc2 = this.zzt.zzc()) != null) {
            zzc2.zzn(zzdscVar.zzf());
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbA)).booleanValue()) {
            zzfil zzfilVar = this.zzb;
            if (zzfilVar.zzam && (keys = zzfilVar.zzal.keys()) != null) {
                while (keys.hasNext()) {
                    String next = keys.next();
                    WeakReference weakReference = (WeakReference) this.zzo.zzl().get(next);
                    this.zzy.put(next, false);
                    if (weakReference != null && (view = (View) weakReference.get()) != null) {
                        zzbby zzbbyVar = new zzbby(this.zzv, view);
                        this.zzz.add(zzbbyVar);
                        zzbbyVar.zzc(new zzdqa(this, next));
                    }
                }
            }
        }
        if (zzdscVar.zzi() != null) {
            zzdscVar.zzi().zzc(this.zzs);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzZ */
    public final void zzw(zzdsc zzdscVar) {
        this.zzf.zzz(zzdscVar.zzf(), zzdscVar.zzl());
        if (zzdscVar.zzh() != null) {
            zzdscVar.zzh().setClickable(false);
            zzdscVar.zzh().removeAllViews();
        }
        if (zzdscVar.zzi() != null) {
            zzdscVar.zzi().zze(this.zzs);
        }
        this.zzo = null;
    }

    public final synchronized void zzA(final View view, final int i) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzjw)).booleanValue()) {
            zzdsc zzdscVar = this.zzo;
            if (zzdscVar == null) {
                com.google.android.gms.ads.internal.util.zze.zze("Ad should be associated with an ad view before calling performClickForCustomGesture()");
                return;
            }
            final boolean z = zzdscVar instanceof zzdra;
            this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdpt
                @Override // java.lang.Runnable
                public final void run() {
                    zzdqb.this.zzt(view, z, i);
                }
            });
        }
    }

    public final synchronized void zzB(String str) {
        this.zzf.zzl(str);
    }

    public final synchronized void zzC(Bundle bundle) {
        this.zzf.zzm(bundle);
    }

    public final synchronized void zzD() {
        zzdsc zzdscVar = this.zzo;
        if (zzdscVar == null) {
            com.google.android.gms.ads.internal.util.zze.zze("Ad should be associated with an ad view before calling recordCustomClickGesture()");
            return;
        }
        final boolean z = zzdscVar instanceof zzdra;
        this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdpx
            @Override // java.lang.Runnable
            public final void run() {
                zzdqb.this.zzu(z);
            }
        });
    }

    public final synchronized void zzE() {
        if (this.zzq) {
            return;
        }
        this.zzf.zzr();
    }

    public final void zzF(View view) {
        zzdqg zzdqgVar = this.zze;
        IObjectWrapper zzu = zzdqgVar.zzu();
        zzcno zzq = zzdqgVar.zzq();
        if (!this.zzh.zzd() || zzu == null || zzq == null || view == null) {
            return;
        }
        com.google.android.gms.ads.internal.zzt.zzA().zzc(zzu, view);
    }

    public final synchronized void zzG(View view, MotionEvent motionEvent, View view2) {
        this.zzf.zzs(view, motionEvent, view2);
    }

    public final synchronized void zzH(Bundle bundle) {
        this.zzf.zzt(bundle);
    }

    public final synchronized void zzI(View view) {
        this.zzf.zzu(view);
    }

    public final synchronized void zzJ() {
        this.zzf.zzv();
    }

    public final synchronized void zzK(com.google.android.gms.ads.internal.client.zzcs zzcsVar) {
        this.zzf.zzw(zzcsVar);
    }

    public final synchronized void zzL(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        this.zzx.zza(zzdgVar);
    }

    public final synchronized void zzM(zzbof zzbofVar) {
        this.zzf.zzx(zzbofVar);
    }

    public final synchronized void zzN(final zzdsc zzdscVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzby)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdpy
                @Override // java.lang.Runnable
                public final void run() {
                    zzdqb.this.zzv(zzdscVar);
                }
            });
        } else {
            zzv(zzdscVar);
        }
    }

    public final synchronized void zzO(final zzdsc zzdscVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzby)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdpu
                @Override // java.lang.Runnable
                public final void run() {
                    zzdqb.this.zzw(zzdscVar);
                }
            });
        } else {
            zzw(zzdscVar);
        }
    }

    public final boolean zzP() {
        return this.zzh.zze();
    }

    public final synchronized boolean zzQ() {
        return this.zzf.zzA();
    }

    public final synchronized boolean zzR() {
        return this.zzf.zzB();
    }

    public final boolean zzS() {
        return this.zzh.zzd();
    }

    public final synchronized boolean zzU(Bundle bundle) {
        if (this.zzq) {
            return true;
        }
        boolean zzC = this.zzf.zzC(bundle);
        this.zzq = zzC;
        return zzC;
    }

    public final synchronized int zza() {
        return this.zzf.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzdan
    public final synchronized void zzaa() {
        this.zzp = true;
        this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdpz
            @Override // java.lang.Runnable
            public final void run() {
                zzdqb.this.zzs();
            }
        });
        super.zzaa();
    }

    @Override // com.google.android.gms.internal.ads.zzdan
    public final void zzab() {
        this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdpv
            @Override // java.lang.Runnable
            public final void run() {
                zzdqb.zzi(zzdqb.this);
            }
        });
        if (this.zze.zzc() != 7) {
            Executor executor = this.zzd;
            final zzdqo zzdqoVar = this.zzf;
            zzdqoVar.getClass();
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdpw
                @Override // java.lang.Runnable
                public final void run() {
                    zzdqo.this.zzp();
                }
            });
        }
        super.zzab();
    }

    public final zzdqd zzc() {
        return this.zzw;
    }

    public final String zze() {
        return this.zzh.zzb();
    }

    public final synchronized JSONObject zzg(View view, Map map, Map map2) {
        return this.zzf.zze(view, map, map2, zzW());
    }

    public final synchronized JSONObject zzh(View view, Map map, Map map2) {
        return this.zzf.zzf(view, map, map2, zzW());
    }

    public final void zzk(View view) {
        IObjectWrapper zzu = this.zze.zzu();
        if (!this.zzh.zzd() || zzu == null || view == null) {
            return;
        }
        com.google.android.gms.ads.internal.zzt.zzA();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzey)).booleanValue() && zzfpr.zzb()) {
            Object unwrap = ObjectWrapper.unwrap(zzu);
            if (unwrap instanceof zzfpt) {
                ((zzfpt) unwrap).zzb(view, zzfpz.NOT_VISIBLE, "Ad overlay");
            }
        }
    }

    public final synchronized void zzq() {
        this.zzf.zzh();
    }

    public final void zzr(String str, boolean z) {
        String str2;
        zzeko zzekoVar;
        zzekp zzekpVar;
        String str3;
        if (!this.zzh.zzd() || TextUtils.isEmpty(str)) {
            return;
        }
        zzdqg zzdqgVar = this.zze;
        zzcno zzq = zzdqgVar.zzq();
        zzcno zzr = zzdqgVar.zzr();
        if (zzq != null || zzr != null) {
            boolean z2 = false;
            boolean z3 = zzq != null;
            boolean z4 = zzr != null;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzeC)).booleanValue()) {
                this.zzh.zza();
                int zzb = this.zzh.zza().zzb();
                int i = zzb - 1;
                if (i != 0) {
                    if (i != 1) {
                        if (zzb != 1) {
                            str3 = zzb != 2 ? "UNKNOWN" : "DISPLAY";
                        } else {
                            str3 = "VIDEO";
                        }
                        com.google.android.gms.ads.internal.util.zze.zzj("Unknown omid media type: " + str3 + ". Not initializing Omid.");
                        return;
                    } else if (zzq == null) {
                        com.google.android.gms.ads.internal.util.zze.zzj("Omid media type was display but there was no display webview.");
                        return;
                    } else {
                        z4 = false;
                        z2 = true;
                    }
                } else if (zzr == null) {
                    com.google.android.gms.ads.internal.util.zze.zzj("Omid media type was video but there was no video webview.");
                    return;
                } else {
                    z4 = true;
                }
            } else {
                z2 = z3;
            }
            if (z2) {
                str2 = null;
            } else {
                str2 = "javascript";
                zzq = zzr;
            }
            String str4 = str2;
            zzq.zzI();
            if (!com.google.android.gms.ads.internal.zzt.zzA().zze(this.zzv)) {
                com.google.android.gms.ads.internal.util.zze.zzj("Failed to initialize omid in InternalNativeAd");
                return;
            }
            zzchu zzchuVar = this.zzu;
            String str5 = zzchuVar.zzb + "." + zzchuVar.zzc;
            if (z4) {
                zzekoVar = zzeko.VIDEO;
                zzekpVar = zzekp.DEFINED_BY_JAVASCRIPT;
            } else {
                zzekoVar = zzeko.NATIVE_DISPLAY;
                if (this.zze.zzc() == 3) {
                    zzekpVar = zzekp.UNSPECIFIED;
                } else {
                    zzekpVar = zzekp.ONE_PIXEL;
                }
            }
            IObjectWrapper zzb2 = com.google.android.gms.ads.internal.zzt.zzA().zzb(str5, zzq.zzI(), "", "javascript", str4, str, zzekpVar, zzekoVar, this.zzb.zzan);
            if (zzb2 == null) {
                com.google.android.gms.ads.internal.util.zze.zzj("Failed to create omid session in InternalNativeAd");
                return;
            }
            this.zze.zzaa(zzb2);
            zzq.zzar(zzb2);
            if (z4) {
                com.google.android.gms.ads.internal.zzt.zzA().zzc(zzb2, zzr.zzH());
                this.zzr = true;
            }
            if (z) {
                com.google.android.gms.ads.internal.zzt.zzA().zzd(zzb2);
                zzq.zzd("onSdkLoaded", new ArrayMap());
                return;
            }
            return;
        }
        com.google.android.gms.ads.internal.util.zze.zzj("Omid display and video webview are null. Skipping initialization.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzs() {
        this.zzf.zzi();
        this.zze.zzG();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzt(View view, boolean z, int i) {
        this.zzf.zzo(view, this.zzo.zzf(), this.zzo.zzl(), this.zzo.zzm(), z, zzW(), i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzu(boolean z) {
        this.zzf.zzo(null, this.zzo.zzf(), this.zzo.zzl(), this.zzo.zzm(), z, zzW(), 0);
    }

    public final synchronized void zzx(View view, Map map, Map map2, boolean z) {
        if (this.zzq) {
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbA)).booleanValue() && this.zzb.zzam) {
            for (String str : this.zzy.keySet()) {
                if (!((Boolean) this.zzy.get(str)).booleanValue()) {
                    return;
                }
            }
        }
        if (!z) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdq)).booleanValue() && map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    View view2 = (View) ((WeakReference) entry.getValue()).get();
                    if (view2 != null && zzT(view2)) {
                        zzX(view, map, map2);
                        return;
                    }
                }
            }
            return;
        }
        View zzV = zzV(map);
        if (zzV == null) {
            zzX(view, map, map2);
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdr)).booleanValue()) {
            if (zzT(zzV)) {
                zzX(view, map, map2);
                return;
            }
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzds)).booleanValue()) {
            Rect rect = new Rect();
            if (zzV.getGlobalVisibleRect(rect, null) && zzV.getHeight() == rect.height() && zzV.getWidth() == rect.width()) {
                zzX(view, map, map2);
                return;
            }
            return;
        }
        zzX(view, map, map2);
    }

    public final synchronized void zzy(com.google.android.gms.ads.internal.client.zzcw zzcwVar) {
        this.zzf.zzj(zzcwVar);
    }

    public final synchronized void zzz(View view, View view2, Map map, Map map2, boolean z) {
        this.zzg.zzc(this.zzo);
        this.zzf.zzk(view, view2, map, map2, z, zzW());
        if (this.zzr) {
            zzdqg zzdqgVar = this.zze;
            if (zzdqgVar.zzr() != null) {
                zzdqgVar.zzr().zzd("onSdkAdUserInteractionClick", new ArrayMap());
            }
        }
    }

    public static /* synthetic */ void zzi(zzdqb zzdqbVar) {
        try {
            zzdqg zzdqgVar = zzdqbVar.zze;
            int zzc2 = zzdqgVar.zzc();
            if (zzc2 == 1) {
                if (zzdqbVar.zzi.zzb() != null) {
                    zzdqbVar.zzr("Google", true);
                    zzdqbVar.zzi.zzb().zze((zzbnc) zzdqbVar.zzj.zzb());
                }
            } else if (zzc2 == 2) {
                if (zzdqbVar.zzi.zza() != null) {
                    zzdqbVar.zzr("Google", true);
                    zzdqbVar.zzi.zza().zze((zzbna) zzdqbVar.zzk.zzb());
                }
            } else if (zzc2 == 3) {
                if (zzdqbVar.zzi.zzd(zzdqgVar.zzy()) != null) {
                    if (zzdqbVar.zze.zzr() != null) {
                        zzdqbVar.zzr("Google", true);
                    }
                    zzdqbVar.zzi.zzd(zzdqbVar.zze.zzy()).zze((zzbnf) zzdqbVar.zzn.zzb());
                }
            } else if (zzc2 == 6) {
                if (zzdqbVar.zzi.zzf() != null) {
                    zzdqbVar.zzr("Google", true);
                    zzdqbVar.zzi.zzf().zze((zzboi) zzdqbVar.zzl.zzb());
                }
            } else if (zzc2 != 7) {
                com.google.android.gms.ads.internal.util.zze.zzg("Wrong native template id!");
            } else {
                zzdqr zzdqrVar = zzdqbVar.zzi;
                if (zzdqrVar.zzg() != null) {
                    zzdqrVar.zzg().zzg((zzbso) zzdqbVar.zzm.zzb());
                }
            }
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.zze.zzh("RemoteException when notifyAdLoad is called", e2);
        }
    }
}

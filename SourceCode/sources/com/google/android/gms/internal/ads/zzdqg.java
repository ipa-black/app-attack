package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.View;
import androidx.collection.SimpleArrayMap;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdqg {
    private int zza;
    private com.google.android.gms.ads.internal.client.zzdq zzb;
    private zzbmd zzc;
    private View zzd;
    private List zze;
    private com.google.android.gms.ads.internal.client.zzel zzg;
    private Bundle zzh;
    private zzcno zzi;
    private zzcno zzj;
    private zzcno zzk;
    private IObjectWrapper zzl;
    private View zzm;
    private View zzn;
    private IObjectWrapper zzo;
    private double zzp;
    private zzbml zzq;
    private zzbml zzr;
    private String zzs;
    private float zzv;
    private String zzw;
    private final SimpleArrayMap zzt = new SimpleArrayMap();
    private final SimpleArrayMap zzu = new SimpleArrayMap();
    private List zzf = Collections.emptyList();

    public static zzdqg zzab(zzbwe zzbweVar) {
        try {
            zzdqf zzaf = zzaf(zzbweVar.zzg(), null);
            zzbmd zzh = zzbweVar.zzh();
            String zzo = zzbweVar.zzo();
            List zzr = zzbweVar.zzr();
            String zzm = zzbweVar.zzm();
            Bundle zzf = zzbweVar.zzf();
            String zzn = zzbweVar.zzn();
            IObjectWrapper zzl = zzbweVar.zzl();
            String zzq = zzbweVar.zzq();
            String zzp = zzbweVar.zzp();
            double zze = zzbweVar.zze();
            zzbml zzi = zzbweVar.zzi();
            zzdqg zzdqgVar = new zzdqg();
            zzdqgVar.zza = 2;
            zzdqgVar.zzb = zzaf;
            zzdqgVar.zzc = zzh;
            zzdqgVar.zzd = (View) zzah(zzbweVar.zzj());
            zzdqgVar.zzU("headline", zzo);
            zzdqgVar.zze = zzr;
            zzdqgVar.zzU(TtmlNode.TAG_BODY, zzm);
            zzdqgVar.zzh = zzf;
            zzdqgVar.zzU("call_to_action", zzn);
            zzdqgVar.zzm = (View) zzah(zzbweVar.zzk());
            zzdqgVar.zzo = zzl;
            zzdqgVar.zzU("store", zzq);
            zzdqgVar.zzU("price", zzp);
            zzdqgVar.zzp = zze;
            zzdqgVar.zzq = zzi;
            return zzdqgVar;
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.zze.zzk("Failed to get native ad from app install ad mapper", e2);
            return null;
        }
    }

    public static zzdqg zzac(zzbwf zzbwfVar) {
        try {
            zzdqf zzaf = zzaf(zzbwfVar.zzf(), null);
            zzbmd zzg = zzbwfVar.zzg();
            String zzo = zzbwfVar.zzo();
            List zzp = zzbwfVar.zzp();
            String zzm = zzbwfVar.zzm();
            Bundle zze = zzbwfVar.zze();
            String zzn = zzbwfVar.zzn();
            IObjectWrapper zzk = zzbwfVar.zzk();
            String zzl = zzbwfVar.zzl();
            zzbml zzh = zzbwfVar.zzh();
            zzdqg zzdqgVar = new zzdqg();
            zzdqgVar.zza = 1;
            zzdqgVar.zzb = zzaf;
            zzdqgVar.zzc = zzg;
            zzdqgVar.zzd = (View) zzah(zzbwfVar.zzi());
            zzdqgVar.zzU("headline", zzo);
            zzdqgVar.zze = zzp;
            zzdqgVar.zzU(TtmlNode.TAG_BODY, zzm);
            zzdqgVar.zzh = zze;
            zzdqgVar.zzU("call_to_action", zzn);
            zzdqgVar.zzm = (View) zzah(zzbwfVar.zzj());
            zzdqgVar.zzo = zzk;
            zzdqgVar.zzU("advertiser", zzl);
            zzdqgVar.zzr = zzh;
            return zzdqgVar;
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.zze.zzk("Failed to get native ad from content ad mapper", e2);
            return null;
        }
    }

    public static zzdqg zzad(zzbwe zzbweVar) {
        try {
            return zzag(zzaf(zzbweVar.zzg(), null), zzbweVar.zzh(), (View) zzah(zzbweVar.zzj()), zzbweVar.zzo(), zzbweVar.zzr(), zzbweVar.zzm(), zzbweVar.zzf(), zzbweVar.zzn(), (View) zzah(zzbweVar.zzk()), zzbweVar.zzl(), zzbweVar.zzq(), zzbweVar.zzp(), zzbweVar.zze(), zzbweVar.zzi(), null, 0.0f);
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.zze.zzk("Failed to get native ad assets from app install ad mapper", e2);
            return null;
        }
    }

    public static zzdqg zzae(zzbwf zzbwfVar) {
        try {
            return zzag(zzaf(zzbwfVar.zzf(), null), zzbwfVar.zzg(), (View) zzah(zzbwfVar.zzi()), zzbwfVar.zzo(), zzbwfVar.zzp(), zzbwfVar.zzm(), zzbwfVar.zze(), zzbwfVar.zzn(), (View) zzah(zzbwfVar.zzj()), zzbwfVar.zzk(), null, null, -1.0d, zzbwfVar.zzh(), zzbwfVar.zzl(), 0.0f);
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.zze.zzk("Failed to get native ad assets from content ad mapper", e2);
            return null;
        }
    }

    private static zzdqf zzaf(com.google.android.gms.ads.internal.client.zzdq zzdqVar, zzbwi zzbwiVar) {
        if (zzdqVar == null) {
            return null;
        }
        return new zzdqf(zzdqVar, zzbwiVar);
    }

    private static zzdqg zzag(com.google.android.gms.ads.internal.client.zzdq zzdqVar, zzbmd zzbmdVar, View view, String str, List list, String str2, Bundle bundle, String str3, View view2, IObjectWrapper iObjectWrapper, String str4, String str5, double d2, zzbml zzbmlVar, String str6, float f2) {
        zzdqg zzdqgVar = new zzdqg();
        zzdqgVar.zza = 6;
        zzdqgVar.zzb = zzdqVar;
        zzdqgVar.zzc = zzbmdVar;
        zzdqgVar.zzd = view;
        zzdqgVar.zzU("headline", str);
        zzdqgVar.zze = list;
        zzdqgVar.zzU(TtmlNode.TAG_BODY, str2);
        zzdqgVar.zzh = bundle;
        zzdqgVar.zzU("call_to_action", str3);
        zzdqgVar.zzm = view2;
        zzdqgVar.zzo = iObjectWrapper;
        zzdqgVar.zzU("store", str4);
        zzdqgVar.zzU("price", str5);
        zzdqgVar.zzp = d2;
        zzdqgVar.zzq = zzbmlVar;
        zzdqgVar.zzU("advertiser", str6);
        zzdqgVar.zzP(f2);
        return zzdqgVar;
    }

    private static Object zzah(IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper == null) {
            return null;
        }
        return ObjectWrapper.unwrap(iObjectWrapper);
    }

    public static zzdqg zzs(zzbwi zzbwiVar) {
        try {
            return zzag(zzaf(zzbwiVar.zzj(), zzbwiVar), zzbwiVar.zzk(), (View) zzah(zzbwiVar.zzm()), zzbwiVar.zzs(), zzbwiVar.zzv(), zzbwiVar.zzq(), zzbwiVar.zzi(), zzbwiVar.zzr(), (View) zzah(zzbwiVar.zzn()), zzbwiVar.zzo(), zzbwiVar.zzu(), zzbwiVar.zzt(), zzbwiVar.zze(), zzbwiVar.zzl(), zzbwiVar.zzp(), zzbwiVar.zzf());
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.zze.zzk("Failed to get native ad assets from unified ad mapper", e2);
            return null;
        }
    }

    public final synchronized String zzA() {
        return this.zzw;
    }

    public final synchronized String zzB() {
        return zzD("price");
    }

    public final synchronized String zzC() {
        return zzD("store");
    }

    public final synchronized String zzD(String str) {
        return (String) this.zzu.get(str);
    }

    public final synchronized List zzE() {
        return this.zze;
    }

    public final synchronized List zzF() {
        return this.zzf;
    }

    public final synchronized void zzG() {
        zzcno zzcnoVar = this.zzi;
        if (zzcnoVar != null) {
            zzcnoVar.destroy();
            this.zzi = null;
        }
        zzcno zzcnoVar2 = this.zzj;
        if (zzcnoVar2 != null) {
            zzcnoVar2.destroy();
            this.zzj = null;
        }
        zzcno zzcnoVar3 = this.zzk;
        if (zzcnoVar3 != null) {
            zzcnoVar3.destroy();
            this.zzk = null;
        }
        this.zzl = null;
        this.zzt.clear();
        this.zzu.clear();
        this.zzb = null;
        this.zzc = null;
        this.zzd = null;
        this.zze = null;
        this.zzh = null;
        this.zzm = null;
        this.zzn = null;
        this.zzo = null;
        this.zzq = null;
        this.zzr = null;
        this.zzs = null;
    }

    public final synchronized void zzH(zzbmd zzbmdVar) {
        this.zzc = zzbmdVar;
    }

    public final synchronized void zzI(String str) {
        this.zzs = str;
    }

    public final synchronized void zzJ(com.google.android.gms.ads.internal.client.zzel zzelVar) {
        this.zzg = zzelVar;
    }

    public final synchronized void zzK(zzbml zzbmlVar) {
        this.zzq = zzbmlVar;
    }

    public final synchronized void zzL(String str, zzblx zzblxVar) {
        if (zzblxVar == null) {
            this.zzt.remove(str);
        } else {
            this.zzt.put(str, zzblxVar);
        }
    }

    public final synchronized void zzM(zzcno zzcnoVar) {
        this.zzj = zzcnoVar;
    }

    public final synchronized void zzN(List list) {
        this.zze = list;
    }

    public final synchronized void zzO(zzbml zzbmlVar) {
        this.zzr = zzbmlVar;
    }

    public final synchronized void zzP(float f2) {
        this.zzv = f2;
    }

    public final synchronized void zzQ(List list) {
        this.zzf = list;
    }

    public final synchronized void zzR(zzcno zzcnoVar) {
        this.zzk = zzcnoVar;
    }

    public final synchronized void zzS(String str) {
        this.zzw = str;
    }

    public final synchronized void zzT(double d2) {
        this.zzp = d2;
    }

    public final synchronized void zzU(String str, String str2) {
        if (str2 == null) {
            this.zzu.remove(str);
        } else {
            this.zzu.put(str, str2);
        }
    }

    public final synchronized void zzV(int i) {
        this.zza = i;
    }

    public final synchronized void zzW(com.google.android.gms.ads.internal.client.zzdq zzdqVar) {
        this.zzb = zzdqVar;
    }

    public final synchronized void zzX(View view) {
        this.zzm = view;
    }

    public final synchronized void zzY(zzcno zzcnoVar) {
        this.zzi = zzcnoVar;
    }

    public final synchronized void zzZ(View view) {
        this.zzn = view;
    }

    public final synchronized double zza() {
        return this.zzp;
    }

    public final synchronized void zzaa(IObjectWrapper iObjectWrapper) {
        this.zzl = iObjectWrapper;
    }

    public final synchronized float zzb() {
        return this.zzv;
    }

    public final synchronized int zzc() {
        return this.zza;
    }

    public final synchronized Bundle zzd() {
        if (this.zzh == null) {
            this.zzh = new Bundle();
        }
        return this.zzh;
    }

    public final synchronized View zze() {
        return this.zzd;
    }

    public final synchronized View zzf() {
        return this.zzm;
    }

    public final synchronized View zzg() {
        return this.zzn;
    }

    public final synchronized SimpleArrayMap zzh() {
        return this.zzt;
    }

    public final synchronized SimpleArrayMap zzi() {
        return this.zzu;
    }

    public final synchronized com.google.android.gms.ads.internal.client.zzdq zzj() {
        return this.zzb;
    }

    public final synchronized com.google.android.gms.ads.internal.client.zzel zzk() {
        return this.zzg;
    }

    public final synchronized zzbmd zzl() {
        return this.zzc;
    }

    public final zzbml zzm() {
        List list = this.zze;
        if (list != null && !list.isEmpty()) {
            Object obj = this.zze.get(0);
            if (obj instanceof IBinder) {
                return zzbmk.zzg((IBinder) obj);
            }
        }
        return null;
    }

    public final synchronized zzbml zzn() {
        return this.zzq;
    }

    public final synchronized zzbml zzo() {
        return this.zzr;
    }

    public final synchronized zzcno zzp() {
        return this.zzj;
    }

    public final synchronized zzcno zzq() {
        return this.zzk;
    }

    public final synchronized zzcno zzr() {
        return this.zzi;
    }

    public final synchronized IObjectWrapper zzt() {
        return this.zzo;
    }

    public final synchronized IObjectWrapper zzu() {
        return this.zzl;
    }

    public final synchronized String zzv() {
        return zzD("advertiser");
    }

    public final synchronized String zzw() {
        return zzD(TtmlNode.TAG_BODY);
    }

    public final synchronized String zzx() {
        return zzD("call_to_action");
    }

    public final synchronized String zzy() {
        return this.zzs;
    }

    public final synchronized String zzz() {
        return zzD("headline");
    }
}

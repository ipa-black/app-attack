package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcue extends com.google.android.gms.ads.internal.client.zzcn {
    private final Context zza;
    private final zzchu zzb;
    private final zzdxc zzc;
    private final zzeks zzd;
    private final zzeqx zze;
    private final zzebj zzf;
    private final zzcft zzg;
    private final zzdxh zzh;
    private final zzece zzi;
    private final zzbls zzj;
    private final zzfoy zzk;
    private final zzfjz zzl;
    private boolean zzm = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcue(Context context, zzchu zzchuVar, zzdxc zzdxcVar, zzeks zzeksVar, zzeqx zzeqxVar, zzebj zzebjVar, zzcft zzcftVar, zzdxh zzdxhVar, zzece zzeceVar, zzbls zzblsVar, zzfoy zzfoyVar, zzfjz zzfjzVar) {
        this.zza = context;
        this.zzb = zzchuVar;
        this.zzc = zzdxcVar;
        this.zzd = zzeksVar;
        this.zze = zzeqxVar;
        this.zzf = zzebjVar;
        this.zzg = zzcftVar;
        this.zzh = zzdxhVar;
        this.zzi = zzeceVar;
        this.zzj = zzblsVar;
        this.zzk = zzfoyVar;
        this.zzl = zzfjzVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzb() {
        if (com.google.android.gms.ads.internal.zzt.zzo().zzh().zzO()) {
            if (com.google.android.gms.ads.internal.zzt.zzs().zzj(this.zza, com.google.android.gms.ads.internal.zzt.zzo().zzh().zzl(), this.zzb.zza)) {
                return;
            }
            com.google.android.gms.ads.internal.zzt.zzo().zzh().zzB(false);
            com.google.android.gms.ads.internal.zzt.zzo().zzh().zzA("");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzc(Runnable runnable) {
        Preconditions.checkMainThread("Adapters must be initialized on the main thread.");
        Map zze = com.google.android.gms.ads.internal.zzt.zzo().zzh().zzh().zze();
        if (zze.isEmpty()) {
            return;
        }
        if (runnable != null) {
            try {
                runnable.run();
            } catch (Throwable th) {
                com.google.android.gms.ads.internal.util.zze.zzk("Could not initialize rewarded ads.", th);
                return;
            }
        }
        if (this.zzc.zzd()) {
            HashMap hashMap = new HashMap();
            for (zzbvo zzbvoVar : zze.values()) {
                for (zzbvn zzbvnVar : zzbvoVar.zza) {
                    String str = zzbvnVar.zzk;
                    for (String str2 : zzbvnVar.zzc) {
                        if (!hashMap.containsKey(str2)) {
                            hashMap.put(str2, new ArrayList());
                        }
                        if (str != null) {
                            ((Collection) hashMap.get(str2)).add(str);
                        }
                    }
                }
            }
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry entry : hashMap.entrySet()) {
                String str3 = (String) entry.getKey();
                try {
                    zzekt zza = this.zzd.zza(str3, jSONObject);
                    if (zza != null) {
                        zzfkb zzfkbVar = (zzfkb) zza.zzb;
                        if (!zzfkbVar.zzC() && zzfkbVar.zzB()) {
                            zzfkbVar.zzj(this.zza, (zzemt) zza.zzc, (List) entry.getValue());
                            com.google.android.gms.ads.internal.util.zze.zze("Initialized rewarded video mediation adapter " + str3);
                        }
                    }
                } catch (zzfjl e2) {
                    com.google.android.gms.ads.internal.util.zze.zzk("Failed to initialize rewarded video mediation adapter \"" + str3 + "\"", e2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzd() {
        zzfkj.zzb(this.zza, true);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final synchronized float zze() {
        return com.google.android.gms.ads.internal.zzt.zzr().zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final String zzf() {
        return this.zzb.zza;
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final List zzg() throws RemoteException {
        return this.zzf.zzg();
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzh(String str) {
        this.zze.zzf(str);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzi() {
        this.zzf.zzl();
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final synchronized void zzk() {
        if (this.zzm) {
            com.google.android.gms.ads.internal.util.zze.zzj("Mobile ads is initialized already.");
            return;
        }
        zzbjj.zzc(this.zza);
        com.google.android.gms.ads.internal.zzt.zzo().zzs(this.zza, this.zzb);
        com.google.android.gms.ads.internal.zzt.zzc().zzi(this.zza);
        this.zzm = true;
        this.zzf.zzr();
        this.zze.zzd();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdw)).booleanValue()) {
            this.zzh.zzc();
        }
        this.zzi.zzg();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzim)).booleanValue()) {
            zzcib.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcua
                @Override // java.lang.Runnable
                public final void run() {
                    zzcue.this.zzb();
                }
            });
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzjb)).booleanValue()) {
            zzcib.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzctz
                @Override // java.lang.Runnable
                public final void run() {
                    zzcue.this.zzw();
                }
            });
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzct)).booleanValue()) {
            zzcib.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcub
                @Override // java.lang.Runnable
                public final void run() {
                    zzcue.this.zzd();
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzl(String str, IObjectWrapper iObjectWrapper) {
        String str2;
        Runnable runnable;
        zzbjj.zzc(this.zza);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdA)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzp();
            str2 = com.google.android.gms.ads.internal.util.zzs.zzo(this.zza);
        } else {
            str2 = "";
        }
        boolean z = true;
        String str3 = true != TextUtils.isEmpty(str2) ? str2 : str;
        if (TextUtils.isEmpty(str3)) {
            return;
        }
        boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdv)).booleanValue() | ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzaK)).booleanValue();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzaK)).booleanValue()) {
            final Runnable runnable2 = (Runnable) ObjectWrapper.unwrap(iObjectWrapper);
            runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzcuc
                @Override // java.lang.Runnable
                public final void run() {
                    final zzcue zzcueVar = zzcue.this;
                    final Runnable runnable3 = runnable2;
                    zzcib.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcud
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzcue.this.zzc(runnable3);
                        }
                    });
                }
            };
        } else {
            runnable = null;
            z = booleanValue;
        }
        Runnable runnable3 = runnable;
        if (z) {
            com.google.android.gms.ads.internal.zzt.zza().zza(this.zza, this.zzb, str3, runnable3, this.zzk);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzm(com.google.android.gms.ads.internal.client.zzda zzdaVar) throws RemoteException {
        this.zzi.zzh(zzdaVar, zzecd.API);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzn(IObjectWrapper iObjectWrapper, String str) {
        if (iObjectWrapper == null) {
            com.google.android.gms.ads.internal.util.zze.zzg("Wrapped context is null. Failed to open debug menu.");
            return;
        }
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        if (context == null) {
            com.google.android.gms.ads.internal.util.zze.zzg("Context is null. Failed to open debug menu.");
            return;
        }
        com.google.android.gms.ads.internal.util.zzas zzasVar = new com.google.android.gms.ads.internal.util.zzas(context);
        zzasVar.zzn(str);
        zzasVar.zzo(this.zzb.zza);
        zzasVar.zzr();
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzo(zzbvt zzbvtVar) throws RemoteException {
        this.zzl.zze(zzbvtVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final synchronized void zzp(boolean z) {
        com.google.android.gms.ads.internal.zzt.zzr().zzc(z);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final synchronized void zzq(float f2) {
        com.google.android.gms.ads.internal.zzt.zzr().zzd(f2);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final synchronized void zzr(String str) {
        zzbjj.zzc(this.zza);
        if (!TextUtils.isEmpty(str)) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdv)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.zza().zza(this.zza, this.zzb, str, null, this.zzk);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzs(zzbsg zzbsgVar) throws RemoteException {
        this.zzf.zzs(zzbsgVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzt(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zziv)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(str);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzu(com.google.android.gms.ads.internal.client.zzff zzffVar) throws RemoteException {
        this.zzg.zzq(this.zza, zzffVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final synchronized boolean zzv() {
        return com.google.android.gms.ads.internal.zzt.zzr().zze();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzw() {
        this.zzj.zza(new zzcay());
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzj(boolean z) throws RemoteException {
        try {
            zzfvg.zzi(this.zza).zzn(z);
        } catch (IOException e2) {
            throw new RemoteException(e2.getMessage());
        }
    }
}

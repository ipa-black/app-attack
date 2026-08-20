package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfrk implements zzfqp {
    private static final zzfrk zza = new zzfrk();
    private static final Handler zzb = new Handler(Looper.getMainLooper());
    private static Handler zzc = null;
    private static final Runnable zzd = new zzfrg();
    private static final Runnable zze = new zzfrh();
    private int zzg;
    private long zzm;
    private final List zzf = new ArrayList();
    private boolean zzh = false;
    private final List zzi = new ArrayList();
    private final zzfrd zzk = new zzfrd();
    private final zzfqr zzj = new zzfqr();
    private final zzfre zzl = new zzfre(new zzfrn());

    zzfrk() {
    }

    public static zzfrk zzd() {
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzg(zzfrk zzfrkVar) {
        zzfrkVar.zzg = 0;
        zzfrkVar.zzi.clear();
        zzfrkVar.zzh = false;
        for (zzfpx zzfpxVar : zzfqi.zza().zzb()) {
        }
        zzfrkVar.zzm = System.nanoTime();
        zzfrkVar.zzk.zzi();
        long nanoTime = System.nanoTime();
        zzfqq zza2 = zzfrkVar.zzj.zza();
        if (zzfrkVar.zzk.zze().size() > 0) {
            Iterator it = zzfrkVar.zzk.zze().iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                JSONObject zza3 = zzfqy.zza(0, 0, 0, 0);
                View zza4 = zzfrkVar.zzk.zza(str);
                zzfqq zzb2 = zzfrkVar.zzj.zzb();
                String zzc2 = zzfrkVar.zzk.zzc(str);
                if (zzc2 != null) {
                    JSONObject zza5 = zzb2.zza(zza4);
                    zzfqy.zzb(zza5, str);
                    zzfqy.zzf(zza5, zzc2);
                    zzfqy.zzc(zza3, zza5);
                }
                zzfqy.zzi(zza3);
                HashSet hashSet = new HashSet();
                hashSet.add(str);
                zzfrkVar.zzl.zzc(zza3, hashSet, nanoTime);
            }
        }
        if (zzfrkVar.zzk.zzf().size() > 0) {
            JSONObject zza6 = zzfqy.zza(0, 0, 0, 0);
            zzfrkVar.zzk(null, zza2, zza6, 1, false);
            zzfqy.zzi(zza6);
            zzfrkVar.zzl.zzd(zza6, zzfrkVar.zzk.zzf(), nanoTime);
            boolean z = zzfrkVar.zzh;
        } else {
            zzfrkVar.zzl.zzb();
        }
        zzfrkVar.zzk.zzg();
        long nanoTime2 = System.nanoTime() - zzfrkVar.zzm;
        if (zzfrkVar.zzf.size() > 0) {
            for (zzfrj zzfrjVar : zzfrkVar.zzf) {
                int i = zzfrkVar.zzg;
                TimeUnit.NANOSECONDS.toMillis(nanoTime2);
                zzfrjVar.zzb();
                if (zzfrjVar instanceof zzfri) {
                    int i2 = zzfrkVar.zzg;
                    ((zzfri) zzfrjVar).zza();
                }
            }
        }
    }

    private final void zzk(View view, zzfqq zzfqqVar, JSONObject jSONObject, int i, boolean z) {
        zzfqqVar.zzb(view, jSONObject, this, i == 1, z);
    }

    private static final void zzl() {
        Handler handler = zzc;
        if (handler != null) {
            handler.removeCallbacks(zze);
            zzc = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfqp
    public final void zza(View view, zzfqq zzfqqVar, JSONObject jSONObject, boolean z) {
        int zzk;
        boolean z2;
        if (zzfrb.zzb(view) != null || (zzk = this.zzk.zzk(view)) == 3) {
            return;
        }
        JSONObject zza2 = zzfqqVar.zza(view);
        zzfqy.zzc(jSONObject, zza2);
        String zzd2 = this.zzk.zzd(view);
        if (zzd2 == null) {
            zzfrc zzb2 = this.zzk.zzb(view);
            if (zzb2 != null) {
                zzfqy.zzd(zza2, zzb2);
                z2 = true;
            } else {
                z2 = false;
            }
            zzk(view, zzfqqVar, zza2, zzk, z || z2);
        } else {
            zzfqy.zzb(zza2, zzd2);
            zzfqy.zze(zza2, Boolean.valueOf(this.zzk.zzj(view)));
            this.zzk.zzh();
        }
        this.zzg++;
    }

    public final void zzh() {
        zzl();
    }

    public final void zzi() {
        if (zzc == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            zzc = handler;
            handler.post(zzd);
            zzc.postDelayed(zze, 200L);
        }
    }

    public final void zzj() {
        zzl();
        this.zzf.clear();
        zzb.post(new zzfrf(this));
    }
}

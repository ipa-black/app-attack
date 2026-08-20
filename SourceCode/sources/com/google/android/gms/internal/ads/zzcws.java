package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcws implements zzbbx, zzdfi, com.google.android.gms.ads.internal.overlay.zzo, zzdfh {
    private final zzcwn zza;
    private final zzcwo zzb;
    private final zzbvf zzd;
    private final Executor zze;
    private final Clock zzf;
    private final Set zzc = new HashSet();
    private final AtomicBoolean zzg = new AtomicBoolean(false);
    private final zzcwr zzh = new zzcwr();
    private boolean zzi = false;
    private WeakReference zzj = new WeakReference(this);

    public zzcws(zzbvc zzbvcVar, zzcwo zzcwoVar, Executor executor, zzcwn zzcwnVar, Clock clock) {
        this.zza = zzcwnVar;
        this.zzd = zzbvcVar.zza("google.afma.activeView.handleUpdate", zzbuq.zza, zzbuq.zza);
        this.zzb = zzcwoVar;
        this.zze = executor;
        this.zzf = clock;
    }

    private final void zzk() {
        for (zzcno zzcnoVar : this.zzc) {
            this.zza.zzf(zzcnoVar);
        }
        this.zza.zze();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzb() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbE() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void zzbM() {
        this.zzh.zzb = false;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final synchronized void zzbr(Context context) {
        this.zzh.zze = "u";
        zzg();
        zzk();
        this.zzi = true;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void zzbs() {
        this.zzh.zzb = true;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final synchronized void zzbt(Context context) {
        this.zzh.zzb = true;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final synchronized void zzbu(Context context) {
        this.zzh.zzb = false;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzbbx
    public final synchronized void zzc(zzbbw zzbbwVar) {
        zzcwr zzcwrVar = this.zzh;
        zzcwrVar.zza = zzbbwVar.zzj;
        zzcwrVar.zzf = zzbbwVar;
        zzg();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zze() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzf(int i) {
    }

    public final synchronized void zzg() {
        if (this.zzj.get() == null) {
            zzj();
        } else if (!this.zzi && this.zzg.get()) {
            try {
                this.zzh.zzd = this.zzf.elapsedRealtime();
                final JSONObject zzb = this.zzb.zzb(this.zzh);
                for (final zzcno zzcnoVar : this.zzc) {
                    this.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcwq
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzcno.this.zzl("AFMA_updateActiveView", zzb);
                        }
                    });
                }
                zzcie.zzb(this.zzd.zzb(zzb), "ActiveViewListener.callActiveViewJs");
            } catch (Exception e2) {
                com.google.android.gms.ads.internal.util.zze.zzb("Failed to call ActiveViewJS", e2);
            }
        }
    }

    public final synchronized void zzh(zzcno zzcnoVar) {
        this.zzc.add(zzcnoVar);
        this.zza.zzd(zzcnoVar);
    }

    public final void zzi(Object obj) {
        this.zzj = new WeakReference(obj);
    }

    public final synchronized void zzj() {
        zzk();
        this.zzi = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdfh
    public final synchronized void zzl() {
        if (this.zzg.compareAndSet(false, true)) {
            this.zza.zzc(this);
            zzg();
        }
    }
}

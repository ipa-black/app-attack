package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Handler;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzkj {
    private final Context zza;
    private final Handler zzb;
    private final zzkf zzc;
    private final AudioManager zzd;
    private zzki zze;
    private int zzf;
    private int zzg;
    private boolean zzh;

    public zzkj(Context context, Handler handler, zzkf zzkfVar) {
        Context applicationContext = context.getApplicationContext();
        this.zza = applicationContext;
        this.zzb = handler;
        this.zzc = zzkfVar;
        AudioManager audioManager = (AudioManager) applicationContext.getSystemService("audio");
        zzdd.zzb(audioManager);
        this.zzd = audioManager;
        this.zzf = 3;
        this.zzg = zzg(audioManager, 3);
        this.zzh = zzi(audioManager, this.zzf);
        zzki zzkiVar = new zzki(this, null);
        try {
            zzen.zzA(applicationContext, zzkiVar, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
            this.zze = zzkiVar;
        } catch (RuntimeException e2) {
            zzdw.zzf("StreamVolumeManager", "Error registering stream volume receiver", e2);
        }
    }

    public static /* bridge */ /* synthetic */ void zzd(zzkj zzkjVar) {
        zzkjVar.zzh();
    }

    private static int zzg(AudioManager audioManager, int i) {
        try {
            return audioManager.getStreamVolume(i);
        } catch (RuntimeException e2) {
            zzdw.zzf("StreamVolumeManager", "Could not retrieve stream volume for stream type " + i, e2);
            return audioManager.getStreamMaxVolume(i);
        }
    }

    public final void zzh() {
        zzdt zzdtVar;
        final int zzg = zzg(this.zzd, this.zzf);
        final boolean zzi = zzi(this.zzd, this.zzf);
        if (this.zzg == zzg && this.zzh == zzi) {
            return;
        }
        this.zzg = zzg;
        this.zzh = zzi;
        zzdtVar = ((zzio) this.zzc).zza.zzl;
        zzdtVar.zzd(30, new zzdq() { // from class: com.google.android.gms.internal.ads.zzij
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                int i = zzg;
                boolean z = zzi;
                int i2 = zzio.zzb;
                ((zzcd) obj).zzc(i, z);
            }
        });
        zzdtVar.zzc();
    }

    private static boolean zzi(AudioManager audioManager, int i) {
        if (zzen.zza >= 23) {
            return audioManager.isStreamMute(i);
        }
        return zzg(audioManager, i) == 0;
    }

    public final int zza() {
        return this.zzd.getStreamMaxVolume(this.zzf);
    }

    public final int zzb() {
        if (zzen.zza >= 28) {
            return this.zzd.getStreamMinVolume(this.zzf);
        }
        return 0;
    }

    public final void zze() {
        zzki zzkiVar = this.zze;
        if (zzkiVar != null) {
            try {
                this.zza.unregisterReceiver(zzkiVar);
            } catch (RuntimeException e2) {
                zzdw.zzf("StreamVolumeManager", "Error unregistering stream volume receiver", e2);
            }
            this.zze = null;
        }
    }

    public final void zzf(int i) {
        zzkj zzkjVar;
        final zzt zzal;
        zzt zztVar;
        zzdt zzdtVar;
        if (this.zzf == 3) {
            return;
        }
        this.zzf = 3;
        zzh();
        zzio zzioVar = (zzio) this.zzc;
        zzkjVar = zzioVar.zza.zzz;
        zzal = zzis.zzal(zzkjVar);
        zztVar = zzioVar.zza.zzac;
        if (zzal.equals(zztVar)) {
            return;
        }
        zzioVar.zza.zzac = zzal;
        zzdtVar = zzioVar.zza.zzl;
        zzdtVar.zzd(29, new zzdq() { // from class: com.google.android.gms.internal.ads.zzik
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzt zztVar2 = zzt.this;
                int i2 = zzio.zzb;
                ((zzcd) obj).zzb(zztVar2);
            }
        });
        zzdtVar.zzc();
    }
}

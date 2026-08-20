package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgq {
    private final AudioManager zza;
    private final zzgo zzb;
    private zzgp zzc;
    private int zzd;
    private float zze = 1.0f;

    public zzgq(Context context, Handler handler, zzgp zzgpVar) {
        AudioManager audioManager = (AudioManager) context.getApplicationContext().getSystemService("audio");
        audioManager.getClass();
        this.zza = audioManager;
        this.zzc = zzgpVar;
        this.zzb = new zzgo(this, handler);
        this.zzd = 0;
    }

    private final void zze() {
        if (this.zzd == 0) {
            return;
        }
        if (zzen.zza < 26) {
            this.zza.abandonAudioFocus(this.zzb);
        }
        zzg(0);
    }

    private final void zzf(int i) {
        int zzag;
        zzgp zzgpVar = this.zzc;
        if (zzgpVar != null) {
            zzio zzioVar = (zzio) zzgpVar;
            boolean zzq = zzioVar.zza.zzq();
            zzis zzisVar = zzioVar.zza;
            zzag = zzis.zzag(zzq, i);
            zzisVar.zzat(zzq, i, zzag);
        }
    }

    private final void zzg(int i) {
        if (this.zzd == i) {
            return;
        }
        this.zzd = i;
        float f2 = i == 3 ? 0.2f : 1.0f;
        if (this.zze == f2) {
            return;
        }
        this.zze = f2;
        zzgp zzgpVar = this.zzc;
        if (zzgpVar != null) {
            ((zzio) zzgpVar).zza.zzaq();
        }
    }

    public final float zza() {
        return this.zze;
    }

    public final int zzb(boolean z, int i) {
        zze();
        return z ? 1 : -1;
    }

    public final void zzd() {
        this.zzc = null;
        zze();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzc(zzgq zzgqVar, int i) {
        if (i == -3 || i == -2) {
            if (i == -2) {
                zzgqVar.zzf(0);
                zzgqVar.zzg(2);
                return;
            }
            zzgqVar.zzg(3);
        } else if (i == -1) {
            zzgqVar.zzf(-1);
            zzgqVar.zze();
        } else if (i == 1) {
            zzgqVar.zzg(1);
            zzgqVar.zzf(1);
        } else {
            zzdw.zze("AudioFocusManager", "Unknown focus change type: " + i);
        }
    }
}

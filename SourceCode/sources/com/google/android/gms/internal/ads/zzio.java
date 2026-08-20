package com.google.android.gms.internal.ads;

import android.graphics.SurfaceTexture;
import android.view.SurfaceHolder;
import android.view.TextureView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzio implements SurfaceHolder.Callback, TextureView.SurfaceTextureListener, zzye, zznq, zzuj, zzrh, zzgp, zzgl, zzkf, zzhb {
    public static final /* synthetic */ int zzb = 0;
    final /* synthetic */ zzis zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzio(zzis zzisVar, zzin zzinVar) {
        this.zza = zzisVar;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        zzis.zzN(this.zza, surfaceTexture);
        zzis.zzL(this.zza, i, i2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        zzis.zzO(this.zza, null);
        zzis.zzL(this.zza, 0, 0);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        zzis.zzL(this.zza, i, i2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        zzis.zzL(this.zza, i2, i3);
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        zzis.zzL(this.zza, 0, 0);
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void zza(boolean z) {
        zzis.zzQ(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zznq
    public final void zzb(Exception exc) {
        zzis.zzC(this.zza).zzy(exc);
    }

    @Override // com.google.android.gms.internal.ads.zznq
    public final void zzc(String str, long j, long j2) {
        zzis.zzC(this.zza).zzz(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zznq
    public final void zzd(String str) {
        zzis.zzC(this.zza).zzA(str);
    }

    @Override // com.google.android.gms.internal.ads.zznq
    public final void zze(zzgs zzgsVar) {
        zzis.zzC(this.zza).zzB(zzgsVar);
        zzis.zzF(this.zza, null);
        zzis.zzE(this.zza, null);
    }

    @Override // com.google.android.gms.internal.ads.zznq
    public final void zzf(zzgs zzgsVar) {
        zzis.zzE(this.zza, zzgsVar);
        zzis.zzC(this.zza).zzC(zzgsVar);
    }

    @Override // com.google.android.gms.internal.ads.zznq
    public final void zzg(zzaf zzafVar, zzgt zzgtVar) {
        zzis.zzF(this.zza, zzafVar);
        zzis.zzC(this.zza).zzD(zzafVar, zzgtVar);
    }

    @Override // com.google.android.gms.internal.ads.zznq
    public final void zzh(long j) {
        zzis.zzC(this.zza).zzE(j);
    }

    @Override // com.google.android.gms.internal.ads.zznq
    public final void zzi(Exception exc) {
        zzis.zzC(this.zza).zzF(exc);
    }

    @Override // com.google.android.gms.internal.ads.zznq
    public final void zzj(int i, long j, long j2) {
        zzis.zzC(this.zza).zzG(i, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzye
    public final void zzk(int i, long j) {
        zzis.zzC(this.zza).zzH(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzye
    public final void zzl(Object obj, long j) {
        zzis.zzC(this.zza).zzI(obj, j);
        zzis zzisVar = this.zza;
        if (zzis.zzD(zzisVar) == obj) {
            zzdt zzz = zzis.zzz(zzisVar);
            zzz.zzd(26, new zzdq() { // from class: com.google.android.gms.internal.ads.zzii
                @Override // com.google.android.gms.internal.ads.zzdq
                public final void zza(Object obj2) {
                    zzcd zzcdVar = (zzcd) obj2;
                }
            });
            zzz.zzc();
        }
    }

    @Override // com.google.android.gms.internal.ads.zznq
    public final void zzm(final boolean z) {
        zzis zzisVar = this.zza;
        if (zzis.zzae(zzisVar) == z) {
            return;
        }
        zzis.zzH(zzisVar, z);
        zzdt zzz = zzis.zzz(this.zza);
        zzz.zzd(23, new zzdq() { // from class: com.google.android.gms.internal.ads.zzil
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                boolean z2 = z;
                int i = zzio.zzb;
                ((zzcd) obj).zzq(z2);
            }
        });
        zzz.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzye
    public final void zzn(Exception exc) {
        zzis.zzC(this.zza).zzJ(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzye
    public final void zzo(String str, long j, long j2) {
        zzis.zzC(this.zza).zzK(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzye
    public final void zzp(String str) {
        zzis.zzC(this.zza).zzL(str);
    }

    @Override // com.google.android.gms.internal.ads.zzye
    public final void zzq(zzgs zzgsVar) {
        zzis.zzC(this.zza).zzM(zzgsVar);
        zzis.zzJ(this.zza, null);
        zzis.zzI(this.zza, null);
    }

    @Override // com.google.android.gms.internal.ads.zzye
    public final void zzr(zzgs zzgsVar) {
        zzis.zzI(this.zza, zzgsVar);
        zzis.zzC(this.zza).zzN(zzgsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzye
    public final void zzs(long j, int i) {
        zzis.zzC(this.zza).zzO(j, i);
    }

    @Override // com.google.android.gms.internal.ads.zzye
    public final void zzt(zzaf zzafVar, zzgt zzgtVar) {
        zzis.zzJ(this.zza, zzafVar);
        zzis.zzC(this.zza).zzP(zzafVar, zzgtVar);
    }

    @Override // com.google.android.gms.internal.ads.zzye
    public final void zzu(final zzda zzdaVar) {
        zzis.zzK(this.zza, zzdaVar);
        zzdt zzz = zzis.zzz(this.zza);
        zzz.zzd(25, new zzdq() { // from class: com.google.android.gms.internal.ads.zzim
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzda zzdaVar2 = zzda.this;
                int i = zzio.zzb;
                ((zzcd) obj).zzu(zzdaVar2);
            }
        });
        zzz.zzc();
    }
}

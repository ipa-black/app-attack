package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.view.Surface;
import android.view.TextureView;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzckp extends zzcjd implements TextureView.SurfaceTextureListener, zzcjn {
    private final zzcjx zzd;
    private final zzcjy zze;
    private final zzcjw zzf;
    private zzcjc zzg;
    private Surface zzh;
    private zzcjo zzi;
    private String zzj;
    private String[] zzk;
    private boolean zzl;
    private int zzm;
    private zzcjv zzn;
    private final boolean zzo;
    private boolean zzp;
    private boolean zzq;
    private int zzr;
    private int zzs;
    private float zzt;

    public zzckp(Context context, zzcjy zzcjyVar, zzcjx zzcjxVar, boolean z, boolean z2, zzcjw zzcjwVar, Integer num) {
        super(context, num);
        this.zzm = 1;
        this.zzd = zzcjxVar;
        this.zze = zzcjyVar;
        this.zzo = z;
        this.zzf = zzcjwVar;
        setSurfaceTextureListener(this);
        zzcjyVar.zza(this);
    }

    private static String zzS(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        return str + "/" + canonicalName + ":" + message;
    }

    private final void zzT() {
        zzcjo zzcjoVar = this.zzi;
        if (zzcjoVar != null) {
            zzcjoVar.zzM(true);
        }
    }

    private final void zzU() {
        if (this.zzp) {
            return;
        }
        this.zzp = true;
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzckj
            @Override // java.lang.Runnable
            public final void run() {
                zzckp.this.zzH();
            }
        });
        zzn();
        this.zze.zzb();
        if (this.zzq) {
            zzp();
        }
    }

    private final void zzV(boolean z) {
        zzcjo zzcjoVar = this.zzi;
        if ((zzcjoVar != null && !z) || this.zzj == null || this.zzh == null) {
            return;
        }
        if (z) {
            if (zzad()) {
                zzcjoVar.zzQ();
                zzX();
            } else {
                com.google.android.gms.ads.internal.util.zze.zzj("No valid ExoPlayerAdapter exists when switch source.");
                return;
            }
        }
        if (this.zzj.startsWith("cache:")) {
            zzcma zzbq = this.zzd.zzbq(this.zzj);
            if (zzbq instanceof zzcmj) {
                zzcjo zzj = ((zzcmj) zzbq).zzj();
                this.zzi = zzj;
                if (!zzj.zzR()) {
                    com.google.android.gms.ads.internal.util.zze.zzj("Precached video player has been released.");
                    return;
                }
            } else if (zzbq instanceof zzcmg) {
                zzcmg zzcmgVar = (zzcmg) zzbq;
                String zzE = zzE();
                ByteBuffer zzl = zzcmgVar.zzl();
                boolean zzm = zzcmgVar.zzm();
                String zzi = zzcmgVar.zzi();
                if (zzi == null) {
                    com.google.android.gms.ads.internal.util.zze.zzj("Stream cache URL is null.");
                    return;
                }
                zzcjo zzD = zzD();
                this.zzi = zzD;
                zzD.zzD(new Uri[]{Uri.parse(zzi)}, zzE, zzl, zzm);
            } else {
                com.google.android.gms.ads.internal.util.zze.zzj("Stream cache miss: ".concat(String.valueOf(this.zzj)));
                return;
            }
        } else {
            this.zzi = zzD();
            String zzE2 = zzE();
            Uri[] uriArr = new Uri[this.zzk.length];
            int i = 0;
            while (true) {
                String[] strArr = this.zzk;
                if (i >= strArr.length) {
                    break;
                }
                uriArr[i] = Uri.parse(strArr[i]);
                i++;
            }
            this.zzi.zzC(uriArr, zzE2);
        }
        this.zzi.zzI(this);
        zzZ(this.zzh, false);
        if (this.zzi.zzR()) {
            int zzt = this.zzi.zzt();
            this.zzm = zzt;
            if (zzt == 3) {
                zzU();
            }
        }
    }

    private final void zzW() {
        zzcjo zzcjoVar = this.zzi;
        if (zzcjoVar != null) {
            zzcjoVar.zzM(false);
        }
    }

    private final void zzX() {
        if (this.zzi != null) {
            zzZ(null, true);
            zzcjo zzcjoVar = this.zzi;
            if (zzcjoVar != null) {
                zzcjoVar.zzI(null);
                this.zzi.zzE();
                this.zzi = null;
            }
            this.zzm = 1;
            this.zzl = false;
            this.zzp = false;
            this.zzq = false;
        }
    }

    private final void zzY(float f2, boolean z) {
        zzcjo zzcjoVar = this.zzi;
        if (zzcjoVar != null) {
            try {
                zzcjoVar.zzP(f2, false);
                return;
            } catch (IOException e2) {
                zzcho.zzk("", e2);
                return;
            }
        }
        com.google.android.gms.ads.internal.util.zze.zzj("Trying to set volume before player is initialized.");
    }

    private final void zzZ(Surface surface, boolean z) {
        zzcjo zzcjoVar = this.zzi;
        if (zzcjoVar != null) {
            try {
                zzcjoVar.zzO(surface, z);
                return;
            } catch (IOException e2) {
                zzcho.zzk("", e2);
                return;
            }
        }
        com.google.android.gms.ads.internal.util.zze.zzj("Trying to set surface before player is initialized.");
    }

    private final void zzaa() {
        zzab(this.zzr, this.zzs);
    }

    private final void zzab(int i, int i2) {
        float f2 = i2 > 0 ? i / i2 : 1.0f;
        if (this.zzt != f2) {
            this.zzt = f2;
            requestLayout();
        }
    }

    private final boolean zzac() {
        return zzad() && this.zzm != 1;
    }

    private final boolean zzad() {
        zzcjo zzcjoVar = this.zzi;
        return (zzcjoVar == null || !zzcjoVar.zzR() || this.zzl) ? false : true;
    }

    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f2 = this.zzt;
        if (f2 != 0.0f && this.zzn == null) {
            float f3 = measuredWidth;
            float f4 = f3 / measuredHeight;
            if (f2 > f4) {
                measuredHeight = (int) (f3 / f2);
            }
            if (f2 < f4) {
                measuredWidth = (int) (measuredHeight * f2);
            }
        }
        setMeasuredDimension(measuredWidth, measuredHeight);
        zzcjv zzcjvVar = this.zzn;
        if (zzcjvVar != null) {
            zzcjvVar.zzc(measuredWidth, measuredHeight);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        if (this.zzo) {
            zzcjv zzcjvVar = new zzcjv(getContext());
            this.zzn = zzcjvVar;
            zzcjvVar.zzd(surfaceTexture, i, i2);
            this.zzn.start();
            SurfaceTexture zzb = this.zzn.zzb();
            if (zzb != null) {
                surfaceTexture = zzb;
            } else {
                this.zzn.zze();
                this.zzn = null;
            }
        }
        Surface surface = new Surface(surfaceTexture);
        this.zzh = surface;
        if (this.zzi == null) {
            zzV(false);
        } else {
            zzZ(surface, true);
            if (!this.zzf.zza) {
                zzT();
            }
        }
        if (this.zzr == 0 || this.zzs == 0) {
            zzab(i, i2);
        } else {
            zzaa();
        }
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzckk
            @Override // java.lang.Runnable
            public final void run() {
                zzckp.this.zzL();
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        zzo();
        zzcjv zzcjvVar = this.zzn;
        if (zzcjvVar != null) {
            zzcjvVar.zze();
            this.zzn = null;
        }
        if (this.zzi != null) {
            zzW();
            Surface surface = this.zzh;
            if (surface != null) {
                surface.release();
            }
            this.zzh = null;
            zzZ(null, true);
        }
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzckn
            @Override // java.lang.Runnable
            public final void run() {
                zzckp.this.zzM();
            }
        });
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, final int i, final int i2) {
        zzcjv zzcjvVar = this.zzn;
        if (zzcjvVar != null) {
            zzcjvVar.zzc(i, i2);
        }
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzckm
            @Override // java.lang.Runnable
            public final void run() {
                zzckp.this.zzN(i, i2);
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.zze.zzf(this);
        this.zza.zza(surfaceTexture, this.zzg);
    }

    @Override // android.view.View
    protected final void onWindowVisibilityChanged(final int i) {
        com.google.android.gms.ads.internal.util.zze.zza("AdExoPlayerView3 window visibility changed to " + i);
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzckl
            @Override // java.lang.Runnable
            public final void run() {
                zzckp.this.zzP(i);
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcjd
    public final void zzA(int i) {
        zzcjo zzcjoVar = this.zzi;
        if (zzcjoVar != null) {
            zzcjoVar.zzN(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjn
    public final void zzC(int i, int i2) {
        this.zzr = i;
        this.zzs = i2;
        zzaa();
    }

    final zzcjo zzD() {
        if (this.zzf.zzm) {
            return new zzcnb(this.zzd.getContext(), this.zzf, this.zzd);
        }
        return new zzclf(this.zzd.getContext(), this.zzf, this.zzd);
    }

    final String zzE() {
        return com.google.android.gms.ads.internal.zzt.zzp().zzc(this.zzd.getContext(), this.zzd.zzp().zza);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzF(String str) {
        zzcjc zzcjcVar = this.zzg;
        if (zzcjcVar != null) {
            zzcjcVar.zzb("ExoPlayerAdapter error", str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzG() {
        zzcjc zzcjcVar = this.zzg;
        if (zzcjcVar != null) {
            zzcjcVar.zza();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzH() {
        zzcjc zzcjcVar = this.zzg;
        if (zzcjcVar != null) {
            zzcjcVar.zzf();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzI(boolean z, long j) {
        this.zzd.zzx(z, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzJ(String str) {
        zzcjc zzcjcVar = this.zzg;
        if (zzcjcVar != null) {
            zzcjcVar.zzc("ExoPlayerAdapter exception", str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzK() {
        zzcjc zzcjcVar = this.zzg;
        if (zzcjcVar != null) {
            zzcjcVar.zzg();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzL() {
        zzcjc zzcjcVar = this.zzg;
        if (zzcjcVar != null) {
            zzcjcVar.zzh();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzM() {
        zzcjc zzcjcVar = this.zzg;
        if (zzcjcVar != null) {
            zzcjcVar.zzi();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzN(int i, int i2) {
        zzcjc zzcjcVar = this.zzg;
        if (zzcjcVar != null) {
            zzcjcVar.zzj(i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzO() {
        zzY(this.zzb.zza(), false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzP(int i) {
        zzcjc zzcjcVar = this.zzg;
        if (zzcjcVar != null) {
            zzcjcVar.onWindowVisibilityChanged(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzQ() {
        zzcjc zzcjcVar = this.zzg;
        if (zzcjcVar != null) {
            zzcjcVar.zzd();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzR() {
        zzcjc zzcjcVar = this.zzg;
        if (zzcjcVar != null) {
            zzcjcVar.zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjd
    public final int zza() {
        if (zzac()) {
            return (int) this.zzi.zzy();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcjd
    public final int zzb() {
        zzcjo zzcjoVar = this.zzi;
        if (zzcjoVar != null) {
            return zzcjoVar.zzr();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcjd
    public final int zzc() {
        if (zzac()) {
            return (int) this.zzi.zzz();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcjd
    public final int zzd() {
        return this.zzs;
    }

    @Override // com.google.android.gms.internal.ads.zzcjd
    public final int zze() {
        return this.zzr;
    }

    @Override // com.google.android.gms.internal.ads.zzcjd
    public final long zzf() {
        zzcjo zzcjoVar = this.zzi;
        if (zzcjoVar != null) {
            return zzcjoVar.zzx();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzcjd
    public final long zzg() {
        zzcjo zzcjoVar = this.zzi;
        if (zzcjoVar != null) {
            return zzcjoVar.zzA();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzcjd
    public final long zzh() {
        zzcjo zzcjoVar = this.zzi;
        if (zzcjoVar != null) {
            return zzcjoVar.zzB();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzcjn
    public final void zzi(final boolean z, final long j) {
        if (this.zzd != null) {
            zzcib.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzckc
                @Override // java.lang.Runnable
                public final void run() {
                    zzckp.this.zzI(z, j);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjd
    public final String zzj() {
        return "ExoPlayer/3".concat(true != this.zzo ? "" : " spherical");
    }

    @Override // com.google.android.gms.internal.ads.zzcjn
    public final void zzk(String str, Exception exc) {
        final String zzS = zzS(str, exc);
        com.google.android.gms.ads.internal.util.zze.zzj("ExoPlayerAdapter error: ".concat(zzS));
        this.zzl = true;
        if (this.zzf.zza) {
            zzW();
        }
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzckf
            @Override // java.lang.Runnable
            public final void run() {
                zzckp.this.zzF(zzS);
            }
        });
        com.google.android.gms.ads.internal.zzt.zzo().zzt(exc, "AdExoPlayerView.onError");
    }

    @Override // com.google.android.gms.internal.ads.zzcjn
    public final void zzl(String str, Exception exc) {
        final String zzS = zzS("onLoadException", exc);
        com.google.android.gms.ads.internal.util.zze.zzj("ExoPlayerAdapter exception: ".concat(zzS));
        com.google.android.gms.ads.internal.zzt.zzo().zzt(exc, "AdExoPlayerView.onException");
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcke
            @Override // java.lang.Runnable
            public final void run() {
                zzckp.this.zzJ(zzS);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcjn
    public final void zzm(int i) {
        if (this.zzm != i) {
            this.zzm = i;
            if (i == 3) {
                zzU();
            } else if (i != 4) {
            } else {
                if (this.zzf.zza) {
                    zzW();
                }
                this.zze.zze();
                this.zzb.zzc();
                com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzckd
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzckp.this.zzG();
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjd, com.google.android.gms.internal.ads.zzcka
    public final void zzn() {
        if (this.zzf.zzm) {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzckh
                @Override // java.lang.Runnable
                public final void run() {
                    zzckp.this.zzO();
                }
            });
        } else {
            zzY(this.zzb.zza(), false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjd
    public final void zzo() {
        if (zzac()) {
            if (this.zzf.zza) {
                zzW();
            }
            this.zzi.zzL(false);
            this.zze.zze();
            this.zzb.zzc();
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcki
                @Override // java.lang.Runnable
                public final void run() {
                    zzckp.this.zzQ();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjd
    public final void zzp() {
        if (!zzac()) {
            this.zzq = true;
            return;
        }
        if (this.zzf.zza) {
            zzT();
        }
        this.zzi.zzL(true);
        this.zze.zzc();
        this.zzb.zzb();
        this.zza.zzb();
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcko
            @Override // java.lang.Runnable
            public final void run() {
                zzckp.this.zzR();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcjd
    public final void zzq(int i) {
        if (zzac()) {
            this.zzi.zzF(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjd
    public final void zzr(zzcjc zzcjcVar) {
        this.zzg = zzcjcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjd
    public final void zzs(String str) {
        if (str != null) {
            zzB(str, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjd
    public final void zzt() {
        if (zzad()) {
            this.zzi.zzQ();
            zzX();
        }
        this.zze.zze();
        this.zzb.zzc();
        this.zze.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzcjd
    public final void zzu(float f2, float f3) {
        zzcjv zzcjvVar = this.zzn;
        if (zzcjvVar != null) {
            zzcjvVar.zzf(f2, f3);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjn
    public final void zzv() {
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzckg
            @Override // java.lang.Runnable
            public final void run() {
                zzckp.this.zzK();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcjd
    public final void zzw(int i) {
        zzcjo zzcjoVar = this.zzi;
        if (zzcjoVar != null) {
            zzcjoVar.zzG(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjd
    public final void zzx(int i) {
        zzcjo zzcjoVar = this.zzi;
        if (zzcjoVar != null) {
            zzcjoVar.zzH(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjd
    public final void zzy(int i) {
        zzcjo zzcjoVar = this.zzi;
        if (zzcjoVar != null) {
            zzcjoVar.zzJ(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjd
    public final void zzz(int i) {
        zzcjo zzcjoVar = this.zzi;
        if (zzcjoVar != null) {
            zzcjoVar.zzK(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjd
    public final void zzB(String str, String[] strArr) {
        if (str == null) {
            return;
        }
        boolean z = true;
        if (strArr == null) {
            this.zzk = new String[]{str};
        } else {
            this.zzk = (String[]) Arrays.copyOf(strArr, strArr.length);
        }
        String str2 = this.zzj;
        if (!this.zzf.zzn || str2 == null || str.equals(str2) || this.zzm != 4) {
            z = false;
        }
        this.zzj = str;
        zzV(z);
    }
}

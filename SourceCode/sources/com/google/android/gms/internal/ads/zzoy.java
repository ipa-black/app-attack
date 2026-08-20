package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.firebase.messaging.Constants;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.nio.ByteBuffer;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzoy extends zzqp implements zzjg {
    private final Context zzb;
    private final zznp zzc;
    private final zznw zzd;
    private int zze;
    private boolean zzf;
    private zzaf zzg;
    private long zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;
    private zzjx zzl;

    public zzoy(Context context, zzqi zzqiVar, zzqr zzqrVar, boolean z, Handler handler, zznq zznqVar, zznw zznwVar) {
        super(1, zzqiVar, zzqrVar, false, 44100.0f);
        this.zzb = context.getApplicationContext();
        this.zzd = zznwVar;
        this.zzc = new zznp(handler, zznqVar);
        zznwVar.zzn(new zzox(this, null));
    }

    private final int zzaw(zzqm zzqmVar, zzaf zzafVar) {
        if (!"OMX.google.raw.decoder".equals(zzqmVar.zza) || zzen.zza >= 24 || (zzen.zza == 23 && zzen.zzX(this.zzb))) {
            return zzafVar.zzn;
        }
        return -1;
    }

    private static List zzax(zzqr zzqrVar, zzaf zzafVar, boolean z, zznw zznwVar) throws zzqy {
        zzqm zzd;
        String str = zzafVar.zzm;
        if (str == null) {
            return zzgau.zzo();
        }
        if (!zznwVar.zzv(zzafVar) || (zzd = zzre.zzd()) == null) {
            List zzf = zzre.zzf(str, false, false);
            String zze = zzre.zze(zzafVar);
            if (zze == null) {
                return zzgau.zzm(zzf);
            }
            List zzf2 = zzre.zzf(zze, false, false);
            zzgar zzi = zzgau.zzi();
            zzi.zzf(zzf);
            zzi.zzf(zzf2);
            return zzi.zzg();
        }
        return zzgau.zzp(zzd);
    }

    private final void zzay() {
        long zzb = this.zzd.zzb(zzM());
        if (zzb != Long.MIN_VALUE) {
            if (!this.zzj) {
                zzb = Math.max(this.zzh, zzb);
            }
            this.zzh = zzb;
            this.zzj = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzjy, com.google.android.gms.internal.ads.zzjz
    public final String zzK() {
        return "MediaCodecAudioRenderer";
    }

    @Override // com.google.android.gms.internal.ads.zzqp, com.google.android.gms.internal.ads.zzjy
    public final boolean zzM() {
        return super.zzM() && this.zzd.zzu();
    }

    @Override // com.google.android.gms.internal.ads.zzqp, com.google.android.gms.internal.ads.zzjy
    public final boolean zzN() {
        return this.zzd.zzt() || super.zzN();
    }

    @Override // com.google.android.gms.internal.ads.zzqp
    protected final float zzP(float f2, zzaf zzafVar, zzaf[] zzafVarArr) {
        int i = -1;
        for (zzaf zzafVar2 : zzafVarArr) {
            int i2 = zzafVar2.zzA;
            if (i2 != -1) {
                i = Math.max(i, i2);
            }
        }
        if (i == -1) {
            return -1.0f;
        }
        return i * f2;
    }

    @Override // com.google.android.gms.internal.ads.zzqp
    protected final int zzQ(zzqr zzqrVar, zzaf zzafVar) throws zzqy {
        boolean z;
        if (zzbt.zzg(zzafVar.zzm)) {
            int i = zzen.zza >= 21 ? 32 : 0;
            int i2 = zzafVar.zzF;
            boolean zzav = zzav(zzafVar);
            if (zzav && this.zzd.zzv(zzafVar) && (i2 == 0 || zzre.zzd() != null)) {
                return i | IronSourceConstants.USING_CACHE_FOR_INIT_EVENT;
            }
            if ((!MimeTypes.AUDIO_RAW.equals(zzafVar.zzm) || this.zzd.zzv(zzafVar)) && this.zzd.zzv(zzen.zzF(2, zzafVar.zzz, zzafVar.zzA))) {
                List zzax = zzax(zzqrVar, zzafVar, false, this.zzd);
                if (zzax.isEmpty()) {
                    return TsExtractor.TS_STREAM_TYPE_AC3;
                }
                if (zzav) {
                    zzqm zzqmVar = (zzqm) zzax.get(0);
                    boolean zzd = zzqmVar.zzd(zzafVar);
                    if (!zzd) {
                        for (int i3 = 1; i3 < zzax.size(); i3++) {
                            zzqm zzqmVar2 = (zzqm) zzax.get(i3);
                            if (zzqmVar2.zzd(zzafVar)) {
                                z = false;
                                zzd = true;
                                zzqmVar = zzqmVar2;
                                break;
                            }
                        }
                    }
                    z = true;
                    int i4 = true != zzd ? 3 : 4;
                    int i5 = 8;
                    if (zzd && zzqmVar.zze(zzafVar)) {
                        i5 = 16;
                    }
                    return i4 | i5 | i | (true != zzqmVar.zzg ? 0 : 64) | (true != z ? 0 : 128);
                }
                return TsExtractor.TS_STREAM_TYPE_HDMV_DTS;
            }
            return TsExtractor.TS_STREAM_TYPE_AC3;
        }
        return 128;
    }

    @Override // com.google.android.gms.internal.ads.zzqp
    protected final zzgt zzR(zzqm zzqmVar, zzaf zzafVar, zzaf zzafVar2) {
        int i;
        int i2;
        zzgt zzb = zzqmVar.zzb(zzafVar, zzafVar2);
        int i3 = zzb.zze;
        if (zzaw(zzqmVar, zzafVar2) > this.zze) {
            i3 |= 64;
        }
        String str = zzqmVar.zza;
        if (i3 != 0) {
            i2 = 0;
            i = i3;
        } else {
            i = 0;
            i2 = zzb.zzd;
        }
        return new zzgt(str, zzafVar, zzafVar2, i2, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzqp
    public final zzgt zzS(zzje zzjeVar) throws zzha {
        zzgt zzS = super.zzS(zzjeVar);
        this.zzc.zzg(zzjeVar.zza, zzS);
        return zzS;
    }

    @Override // com.google.android.gms.internal.ads.zzqp
    protected final zzqh zzV(zzqm zzqmVar, zzaf zzafVar, MediaCrypto mediaCrypto, float f2) {
        zzaf[] zzJ = zzJ();
        int zzaw = zzaw(zzqmVar, zzafVar);
        if (zzJ.length != 1) {
            for (zzaf zzafVar2 : zzJ) {
                if (zzqmVar.zzb(zzafVar, zzafVar2).zzd != 0) {
                    zzaw = Math.max(zzaw, zzaw(zzqmVar, zzafVar2));
                }
            }
        }
        this.zze = zzaw;
        this.zzf = zzen.zza < 24 && "OMX.SEC.aac.dec".equals(zzqmVar.zza) && "samsung".equals(zzen.zzc) && (zzen.zzb.startsWith("zeroflte") || zzen.zzb.startsWith("herolte") || zzen.zzb.startsWith("heroqlte"));
        String str = zzqmVar.zzc;
        int i = this.zze;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("channel-count", zzafVar.zzz);
        mediaFormat.setInteger("sample-rate", zzafVar.zzA);
        zzdy.zzb(mediaFormat, zzafVar.zzo);
        zzdy.zza(mediaFormat, "max-input-size", i);
        if (zzen.zza >= 23) {
            mediaFormat.setInteger(Constants.FirelogAnalytics.PARAM_PRIORITY, 0);
            if (f2 != -1.0f && (zzen.zza != 23 || (!"ZTE B2017G".equals(zzen.zzd) && !"AXON 7 mini".equals(zzen.zzd)))) {
                mediaFormat.setFloat("operating-rate", f2);
            }
        }
        if (zzen.zza <= 28 && MimeTypes.AUDIO_AC4.equals(zzafVar.zzm)) {
            mediaFormat.setInteger("ac4-is-sync", 1);
        }
        if (zzen.zza >= 24 && this.zzd.zza(zzen.zzF(4, zzafVar.zzz, zzafVar.zzA)) == 2) {
            mediaFormat.setInteger("pcm-encoding", 4);
        }
        if (zzen.zza >= 32) {
            mediaFormat.setInteger("max-output-channel-count", 99);
        }
        this.zzg = (!MimeTypes.AUDIO_RAW.equals(zzqmVar.zzb) || MimeTypes.AUDIO_RAW.equals(zzafVar.zzm)) ? null : zzafVar;
        return zzqh.zza(zzqmVar, mediaFormat, zzafVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzqp
    protected final List zzW(zzqr zzqrVar, zzaf zzafVar, boolean z) throws zzqy {
        return zzre.zzg(zzax(zzqrVar, zzafVar, false, this.zzd), zzafVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqp
    protected final void zzX(Exception exc) {
        zzdw.zzc("MediaCodecAudioRenderer", "Audio codec error", exc);
        this.zzc.zza(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzqp
    protected final void zzY(String str, zzqh zzqhVar, long j, long j2) {
        this.zzc.zzc(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzqp
    protected final void zzZ(String str) {
        this.zzc.zzd(str);
    }

    @Override // com.google.android.gms.internal.ads.zzjg
    public final long zza() {
        if (zzbe() == 2) {
            zzay();
        }
        return this.zzh;
    }

    public final void zzab() {
        this.zzj = true;
    }

    @Override // com.google.android.gms.internal.ads.zzqp
    protected final void zzac() {
        this.zzd.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzqp
    protected final void zzad(zzgi zzgiVar) {
        if (!this.zzi || zzgiVar.zzf()) {
            return;
        }
        if (Math.abs(zzgiVar.zzd - this.zzh) > 500000) {
            this.zzh = zzgiVar.zzd;
        }
        this.zzi = false;
    }

    @Override // com.google.android.gms.internal.ads.zzqp
    protected final boolean zzag(zzaf zzafVar) {
        return this.zzd.zzv(zzafVar);
    }

    @Override // com.google.android.gms.internal.ads.zzjg
    public final zzby zzc() {
        return this.zzd.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzjg
    public final void zzg(zzby zzbyVar) {
        this.zzd.zzo(zzbyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgr, com.google.android.gms.internal.ads.zzjy
    public final zzjg zzi() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzgr, com.google.android.gms.internal.ads.zzju
    public final void zzp(int i, Object obj) throws zzha {
        if (i == 2) {
            this.zzd.zzr(((Float) obj).floatValue());
        } else if (i == 3) {
            this.zzd.zzk((zzk) obj);
        } else if (i != 6) {
            switch (i) {
                case 9:
                    this.zzd.zzq(((Boolean) obj).booleanValue());
                    return;
                case 10:
                    this.zzd.zzl(((Integer) obj).intValue());
                    return;
                case 11:
                    this.zzl = (zzjx) obj;
                    return;
                default:
                    return;
            }
        } else {
            this.zzd.zzm((zzl) obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzqp, com.google.android.gms.internal.ads.zzgr
    public final void zzs() {
        this.zzk = true;
        try {
            this.zzd.zze();
            try {
                super.zzs();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.zzs();
                throw th;
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzqp, com.google.android.gms.internal.ads.zzgr
    public final void zzt(boolean z, boolean z2) throws zzha {
        super.zzt(z, z2);
        this.zzc.zzf(this.zza);
        zzk();
        this.zzd.zzp(zzl());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzqp, com.google.android.gms.internal.ads.zzgr
    public final void zzu(long j, boolean z) throws zzha {
        super.zzu(j, z);
        this.zzd.zze();
        this.zzh = j;
        this.zzi = true;
        this.zzj = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzqp, com.google.android.gms.internal.ads.zzgr
    public final void zzv() {
        try {
            super.zzv();
            if (this.zzk) {
                this.zzk = false;
                this.zzd.zzj();
            }
        } catch (Throwable th) {
            if (this.zzk) {
                this.zzk = false;
                this.zzd.zzj();
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgr
    protected final void zzw() {
        this.zzd.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzgr
    protected final void zzx() {
        zzay();
        this.zzd.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzqp
    protected final void zzae() throws zzha {
        try {
            this.zzd.zzi();
        } catch (zznv e2) {
            throw zzbg(e2, e2.zzc, e2.zzb, 5002);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqp
    protected final boolean zzaf(long j, long j2, zzqj zzqjVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzaf zzafVar) throws zzha {
        byteBuffer.getClass();
        if (this.zzg != null && (i2 & 2) != 0) {
            zzqjVar.getClass();
            zzqjVar.zzn(i, false);
            return true;
        } else if (z) {
            if (zzqjVar != null) {
                zzqjVar.zzn(i, false);
            }
            this.zza.zzf += i3;
            this.zzd.zzf();
            return true;
        } else {
            try {
                if (this.zzd.zzs(byteBuffer, j3, i3)) {
                    if (zzqjVar != null) {
                        zzqjVar.zzn(i, false);
                    }
                    this.zza.zze += i3;
                    return true;
                }
                return false;
            } catch (zzns e2) {
                throw zzbg(e2, e2.zzc, e2.zzb, 5001);
            } catch (zznv e3) {
                throw zzbg(e3, zzafVar, e3.zzb, 5002);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqp
    protected final void zzaa(zzaf zzafVar, MediaFormat mediaFormat) throws zzha {
        int zzn;
        int i;
        zzaf zzafVar2 = this.zzg;
        int[] iArr = null;
        if (zzafVar2 != null) {
            zzafVar = zzafVar2;
        } else if (zzaj() != null) {
            if (MimeTypes.AUDIO_RAW.equals(zzafVar.zzm)) {
                zzn = zzafVar.zzB;
            } else if (zzen.zza < 24 || !mediaFormat.containsKey("pcm-encoding")) {
                zzn = mediaFormat.containsKey("v-bits-per-sample") ? zzen.zzn(mediaFormat.getInteger("v-bits-per-sample")) : 2;
            } else {
                zzn = mediaFormat.getInteger("pcm-encoding");
            }
            zzad zzadVar = new zzad();
            zzadVar.zzS(MimeTypes.AUDIO_RAW);
            zzadVar.zzN(zzn);
            zzadVar.zzC(zzafVar.zzC);
            zzadVar.zzD(zzafVar.zzD);
            zzadVar.zzw(mediaFormat.getInteger("channel-count"));
            zzadVar.zzT(mediaFormat.getInteger("sample-rate"));
            zzaf zzY = zzadVar.zzY();
            if (this.zzf && zzY.zzz == 6 && (i = zzafVar.zzz) < 6) {
                iArr = new int[i];
                for (int i2 = 0; i2 < zzafVar.zzz; i2++) {
                    iArr[i2] = i2;
                }
            }
            zzafVar = zzY;
        }
        try {
            this.zzd.zzd(zzafVar, 0, iArr);
        } catch (zznr e2) {
            throw zzbg(e2, e2.zza, false, 5001);
        }
    }
}

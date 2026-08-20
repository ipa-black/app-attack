package com.google.android.gms.internal.ads;

import androidx.core.view.MotionEventCompat;
import java.nio.ByteBuffer;
import java.util.Date;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzalu extends zzhdy {
    private Date zza;
    private Date zzh;
    private long zzi;
    private long zzj;
    private double zzk;
    private float zzl;
    private zzhei zzm;
    private long zzn;

    public zzalu() {
        super("mvhd");
        this.zzk = 1.0d;
        this.zzl = 1.0f;
        this.zzm = zzhei.zza;
    }

    public final String toString() {
        return "MovieHeaderBox[creationTime=" + this.zza + ";modificationTime=" + this.zzh + ";timescale=" + this.zzi + ";duration=" + this.zzj + ";rate=" + this.zzk + ";volume=" + this.zzl + ";matrix=" + this.zzm + ";nextTrackId=" + this.zzn + "]";
    }

    public final long zzd() {
        return this.zzj;
    }

    public final long zze() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzhdw
    public final void zzf(ByteBuffer byteBuffer) {
        zzi(byteBuffer);
        if (zzh() == 1) {
            this.zza = zzhed.zza(zzalq.zzf(byteBuffer));
            this.zzh = zzhed.zza(zzalq.zzf(byteBuffer));
            this.zzi = zzalq.zze(byteBuffer);
            this.zzj = zzalq.zzf(byteBuffer);
        } else {
            this.zza = zzhed.zza(zzalq.zze(byteBuffer));
            this.zzh = zzhed.zza(zzalq.zze(byteBuffer));
            this.zzi = zzalq.zze(byteBuffer);
            this.zzj = zzalq.zze(byteBuffer);
        }
        this.zzk = zzalq.zzb(byteBuffer);
        byte[] bArr = new byte[2];
        byteBuffer.get(bArr);
        this.zzl = ((short) ((bArr[1] & 255) | ((short) ((bArr[0] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK)))) / 256.0f;
        zzalq.zzd(byteBuffer);
        zzalq.zze(byteBuffer);
        zzalq.zze(byteBuffer);
        double zzb = zzalq.zzb(byteBuffer);
        double zzb2 = zzalq.zzb(byteBuffer);
        double zza = zzalq.zza(byteBuffer);
        this.zzm = new zzhei(zzb, zzb2, zzalq.zzb(byteBuffer), zzalq.zzb(byteBuffer), zza, zzalq.zza(byteBuffer), zzalq.zza(byteBuffer), zzalq.zzb(byteBuffer), zzalq.zzb(byteBuffer));
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        this.zzn = zzalq.zze(byteBuffer);
    }
}

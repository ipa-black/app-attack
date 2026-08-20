package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzaus implements zzats {
    private zzaur zzd;
    private ByteBuffer zzg;
    private ShortBuffer zzh;
    private ByteBuffer zzi;
    private long zzj;
    private long zzk;
    private boolean zzl;
    private float zze = 1.0f;
    private float zzf = 1.0f;
    private int zzb = -1;
    private int zzc = -1;

    public zzaus() {
        ByteBuffer byteBuffer = zza;
        this.zzg = byteBuffer;
        this.zzh = byteBuffer.asShortBuffer();
        this.zzi = zza;
    }

    @Override // com.google.android.gms.internal.ads.zzats
    public final int zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzats
    public final int zzb() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzats
    public final ByteBuffer zzc() {
        ByteBuffer byteBuffer = this.zzi;
        this.zzi = zza;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzats
    public final void zzd() {
        zzaur zzaurVar = new zzaur(this.zzc, this.zzb);
        this.zzd = zzaurVar;
        zzaurVar.zzf(this.zze);
        this.zzd.zze(this.zzf);
        this.zzi = zza;
        this.zzj = 0L;
        this.zzk = 0L;
        this.zzl = false;
    }

    @Override // com.google.android.gms.internal.ads.zzats
    public final void zze() {
        this.zzd.zzc();
        this.zzl = true;
    }

    @Override // com.google.android.gms.internal.ads.zzats
    public final void zzf(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int remaining = byteBuffer.remaining();
            this.zzj += remaining;
            this.zzd.zzd(asShortBuffer);
            byteBuffer.position(byteBuffer.position() + remaining);
        }
        int zza = this.zzd.zza() * this.zzb;
        int i = zza + zza;
        if (i > 0) {
            if (this.zzg.capacity() < i) {
                ByteBuffer order = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
                this.zzg = order;
                this.zzh = order.asShortBuffer();
            } else {
                this.zzg.clear();
                this.zzh.clear();
            }
            this.zzd.zzb(this.zzh);
            this.zzk += i;
            this.zzg.limit(i);
            this.zzi = this.zzg;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzats
    public final void zzg() {
        this.zzd = null;
        ByteBuffer byteBuffer = zza;
        this.zzg = byteBuffer;
        this.zzh = byteBuffer.asShortBuffer();
        this.zzi = zza;
        this.zzb = -1;
        this.zzc = -1;
        this.zzj = 0L;
        this.zzk = 0L;
        this.zzl = false;
    }

    @Override // com.google.android.gms.internal.ads.zzats
    public final boolean zzh(int i, int i2, int i3) throws zzatr {
        if (i3 == 2) {
            if (this.zzc == i && this.zzb == i2) {
                return false;
            }
            this.zzc = i;
            this.zzb = i2;
            return true;
        }
        throw new zzatr(i, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzats
    public final boolean zzi() {
        return Math.abs(this.zze + (-1.0f)) >= 0.01f || Math.abs(this.zzf + (-1.0f)) >= 0.01f;
    }

    @Override // com.google.android.gms.internal.ads.zzats
    public final boolean zzj() {
        if (this.zzl) {
            zzaur zzaurVar = this.zzd;
            return zzaurVar == null || zzaurVar.zza() == 0;
        }
        return false;
    }

    public final float zzk(float f2) {
        this.zzf = zzbay.zza(1.0f, 0.1f, 8.0f);
        return 1.0f;
    }

    public final float zzl(float f2) {
        float zza = zzbay.zza(f2, 0.1f, 8.0f);
        this.zze = zza;
        return zza;
    }

    public final long zzm() {
        return this.zzj;
    }

    public final long zzn() {
        return this.zzk;
    }
}

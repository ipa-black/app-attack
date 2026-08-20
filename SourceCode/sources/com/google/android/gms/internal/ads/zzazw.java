package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzazw {
    private int zzb;
    private int zzc;
    private int zzd = 0;
    private zzazq[] zze = new zzazq[100];
    private final zzazq[] zza = new zzazq[1];

    public zzazw(boolean z, int i) {
    }

    public final synchronized int zza() {
        return this.zzc * 65536;
    }

    public final synchronized zzazq zzb() {
        zzazq zzazqVar;
        this.zzc++;
        int i = this.zzd;
        if (i > 0) {
            zzazq[] zzazqVarArr = this.zze;
            int i2 = i - 1;
            this.zzd = i2;
            zzazqVar = zzazqVarArr[i2];
            zzazqVarArr[i2] = null;
        } else {
            zzazqVar = new zzazq(new byte[65536], 0);
        }
        return zzazqVar;
    }

    public final synchronized void zzc(zzazq zzazqVar) {
        zzazq[] zzazqVarArr = this.zza;
        zzazqVarArr[0] = zzazqVar;
        zzd(zzazqVarArr);
    }

    public final synchronized void zzd(zzazq[] zzazqVarArr) {
        int length = this.zzd + zzazqVarArr.length;
        zzazq[] zzazqVarArr2 = this.zze;
        int length2 = zzazqVarArr2.length;
        if (length >= length2) {
            this.zze = (zzazq[]) Arrays.copyOf(zzazqVarArr2, Math.max(length2 + length2, length));
        }
        for (zzazq zzazqVar : zzazqVarArr) {
            byte[] bArr = zzazqVar.zza;
            zzazq[] zzazqVarArr3 = this.zze;
            int i = this.zzd;
            this.zzd = i + 1;
            zzazqVarArr3[i] = zzazqVar;
        }
        this.zzc -= zzazqVarArr.length;
        notifyAll();
    }

    public final synchronized void zze() {
        zzf(0);
    }

    public final synchronized void zzf(int i) {
        int i2 = this.zzb;
        this.zzb = i;
        if (i < i2) {
            zzg();
        }
    }

    public final synchronized void zzg() {
        int max = Math.max(0, zzbay.zzd(this.zzb, 65536) - this.zzc);
        int i = this.zzd;
        if (max >= i) {
            return;
        }
        Arrays.fill(this.zze, max, i, (Object) null);
        this.zzd = max;
    }
}

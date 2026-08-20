package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public class zzzx implements zzzk {
    private final zzzk zza;

    public zzzx(zzzk zzzkVar) {
        this.zza = zzzkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzzk, com.google.android.gms.internal.ads.zzr
    public final int zza(byte[] bArr, int i, int i2) throws IOException {
        return this.zza.zza(bArr, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final int zzb(byte[] bArr, int i, int i2) throws IOException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final int zzc(int i) throws IOException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public long zzd() {
        return this.zza.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public long zze() {
        return this.zza.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public long zzf() {
        return this.zza.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zzg(int i) throws IOException {
        ((zzyz) this.zza).zzl(i, false);
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zzh(byte[] bArr, int i, int i2) throws IOException {
        ((zzyz) this.zza).zzm(bArr, i, i2, false);
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zzi(byte[] bArr, int i, int i2) throws IOException {
        ((zzyz) this.zza).zzn(bArr, i, i2, false);
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zzj() {
        this.zza.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zzk(int i) throws IOException {
        ((zzyz) this.zza).zzo(i, false);
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final boolean zzm(byte[] bArr, int i, int i2, boolean z) throws IOException {
        return this.zza.zzm(bArr, 0, 8, true);
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final boolean zzn(byte[] bArr, int i, int i2, boolean z) throws IOException {
        return this.zza.zzn(bArr, 0, 8, true);
    }
}

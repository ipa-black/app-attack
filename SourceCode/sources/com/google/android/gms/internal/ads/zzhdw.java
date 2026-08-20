package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzhdw implements zzalr {
    private static final zzheh zza = zzheh.zzb(zzhdw.class);
    protected final String zzb;
    long zze;
    zzheb zzg;
    private zzals zzh;
    private ByteBuffer zzi;
    long zzf = -1;
    private ByteBuffer zzj = null;
    boolean zzd = true;
    boolean zzc = true;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzhdw(String str) {
        this.zzb = str;
    }

    private final synchronized void zzd() {
        if (this.zzd) {
            return;
        }
        try {
            zzheh zzhehVar = zza;
            String str = this.zzb;
            zzhehVar.zza(str.length() != 0 ? "mem mapping ".concat(str) : new String("mem mapping "));
            this.zzi = this.zzg.zzd(this.zze, this.zzf);
            this.zzd = true;
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final String zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final void zzb(zzheb zzhebVar, ByteBuffer byteBuffer, long j, zzalo zzaloVar) throws IOException {
        this.zze = zzhebVar.zzb();
        byteBuffer.remaining();
        this.zzf = j;
        this.zzg = zzhebVar;
        zzhebVar.zze(zzhebVar.zzb() + j);
        this.zzd = false;
        this.zzc = false;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final void zzc(zzals zzalsVar) {
        this.zzh = zzalsVar;
    }

    protected abstract void zzf(ByteBuffer byteBuffer);

    public final synchronized void zzg() {
        zzd();
        zzheh zzhehVar = zza;
        String str = this.zzb;
        zzhehVar.zza(str.length() != 0 ? "parsing details of ".concat(str) : new String("parsing details of "));
        ByteBuffer byteBuffer = this.zzi;
        if (byteBuffer != null) {
            this.zzc = true;
            byteBuffer.rewind();
            zzf(byteBuffer);
            if (byteBuffer.remaining() > 0) {
                this.zzj = byteBuffer.slice();
            }
            this.zzi = null;
        }
    }
}

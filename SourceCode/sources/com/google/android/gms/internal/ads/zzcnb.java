package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.view.Surface;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcnb extends zzcjo implements zzfz, zzkp {
    public static final /* synthetic */ int zzc = 0;
    private final Context zzd;
    private final zzcmm zze;
    private final zzvr zzf;
    private final zzcjw zzg;
    private final WeakReference zzh;
    private final zztn zzi;
    private zzkd zzj;
    private ByteBuffer zzk;
    private boolean zzl;
    private zzcjn zzm;
    private int zzn;
    private int zzo;
    private long zzp;
    private final String zzq;
    private final int zzr;
    private final ArrayList zzt;
    private volatile zzcmo zzu;
    private final Object zzs = new Object();
    private final Set zzv = new HashSet();

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00dc, code lost:
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(com.google.android.gms.internal.ads.zzbjj.zzbF)).booleanValue() == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00e0, code lost:
        if (r7.zzj == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00e2, code lost:
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00e5, code lost:
        if (r7.zzo == false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00e7, code lost:
        r8 = new com.google.android.gms.internal.ads.zzcms(r5, r6, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ef, code lost:
        if (r7.zzi <= 0) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00f1, code lost:
        r8 = new com.google.android.gms.internal.ads.zzcmt(r5, r6, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00f7, code lost:
        r8 = new com.google.android.gms.internal.ads.zzcmu(r5, r6, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00fe, code lost:
        if (r7.zzj == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0100, code lost:
        r7 = new com.google.android.gms.internal.ads.zzcmv(r5, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0107, code lost:
        r7 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0108, code lost:
        r6 = r5.zzk;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x010a, code lost:
        if (r6 == null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0110, code lost:
        if (r6.limit() <= 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0112, code lost:
        r6 = new byte[r5.zzk.limit()];
        r5.zzk.get(r6);
        r7 = new com.google.android.gms.internal.ads.zzcmw(r7, r6);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzcnb(android.content.Context r6, com.google.android.gms.internal.ads.zzcjw r7, com.google.android.gms.internal.ads.zzcjx r8) {
        /*
            Method dump skipped, instructions count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcnb.<init>(android.content.Context, com.google.android.gms.internal.ads.zzcjw, com.google.android.gms.internal.ads.zzcjx):void");
    }

    private final boolean zzZ() {
        return this.zzu != null && this.zzu.zzq();
    }

    public final void finalize() {
        zza.decrementAndGet();
        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
            com.google.android.gms.ads.internal.util.zze.zza("OfficialSimpleExoPlayerAdapter finalize ".concat(toString()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final long zzA() {
        if (zzZ()) {
            return 0L;
        }
        return this.zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final long zzB() {
        if (!zzZ()) {
            synchronized (this.zzs) {
                while (!this.zzt.isEmpty()) {
                    long j = this.zzp;
                    Map zze = ((zzfu) this.zzt.remove(0)).zze();
                    long j2 = 0;
                    if (zze != null) {
                        Iterator it = zze.entrySet().iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            Map.Entry entry = (Map.Entry) it.next();
                            if (entry != null) {
                                try {
                                    if (entry.getKey() != null && zzfxl.zzc("content-length", (CharSequence) entry.getKey()) && entry.getValue() != null && ((List) entry.getValue()).get(0) != null) {
                                        j2 = Long.parseLong((String) ((List) entry.getValue()).get(0));
                                        break;
                                    }
                                } catch (NumberFormatException unused) {
                                    continue;
                                }
                            }
                        }
                    }
                    this.zzp = j + j2;
                }
            }
            return this.zzp;
        }
        return this.zzu.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final void zzC(Uri[] uriArr, String str) {
        zzD(uriArr, str, ByteBuffer.allocate(0), false);
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final void zzE() {
        zzkd zzkdVar = this.zzj;
        if (zzkdVar != null) {
            zzkdVar.zzA(this);
            this.zzj.zzz();
            this.zzj = null;
            zzb.decrementAndGet();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final void zzF(long j) {
        zzkd zzkdVar = this.zzj;
        zzkdVar.zzp(zzkdVar.zzf(), j);
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final void zzG(int i) {
        this.zze.zzk(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final void zzH(int i) {
        this.zze.zzl(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final void zzI(zzcjn zzcjnVar) {
        this.zzm = zzcjnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final void zzJ(int i) {
        this.zze.zzm(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final void zzK(int i) {
        this.zze.zzn(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final void zzL(boolean z) {
        this.zzj.zzC(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final void zzM(boolean z) {
        if (this.zzj == null) {
            return;
        }
        int i = 0;
        while (true) {
            this.zzj.zzt();
            if (i >= 2) {
                return;
            }
            zzvr zzvrVar = this.zzf;
            zzvd zzc2 = zzvrVar.zzc().zzc();
            zzc2.zzo(i, !z);
            zzvrVar.zzj(zzc2);
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final void zzN(int i) {
        for (WeakReference weakReference : this.zzv) {
            zzcml zzcmlVar = (zzcml) weakReference.get();
            if (zzcmlVar != null) {
                zzcmlVar.zzm(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final void zzO(Surface surface, boolean z) {
        zzkd zzkdVar = this.zzj;
        if (zzkdVar == null) {
            return;
        }
        zzkdVar.zzD(surface);
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final void zzP(float f2, boolean z) {
        zzkd zzkdVar = this.zzj;
        if (zzkdVar == null) {
            return;
        }
        zzkdVar.zzE(f2);
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final void zzQ() {
        this.zzj.zzF();
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final boolean zzR() {
        return this.zzj != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzex zzS(String str, boolean z) {
        zzcnb zzcnbVar = true != z ? null : this;
        zzcjw zzcjwVar = this.zzg;
        return new zzcne(str, zzcnbVar, zzcjwVar.zzd, zzcjwVar.zzf, zzcjwVar.zzp, zzcjwVar.zzq);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzex zzT(String str, boolean z) {
        zzcnb zzcnbVar = true != z ? null : this;
        zzcjw zzcjwVar = this.zzg;
        zzcml zzcmlVar = new zzcml(str, zzcnbVar, zzcjwVar.zzd, zzcjwVar.zzf, zzcjwVar.zzi);
        this.zzv.add(new WeakReference(zzcmlVar));
        return zzcmlVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzex zzU(String str, boolean z) {
        zzff zzffVar = new zzff();
        zzffVar.zzf(str);
        zzffVar.zze(true != z ? null : this);
        zzffVar.zzc(this.zzg.zzd);
        zzffVar.zzd(this.zzg.zzf);
        zzffVar.zzb(true);
        return zzffVar.zza();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzex zzV(zzew zzewVar) {
        return new zzcmo(this.zzd, zzewVar.zza(), this.zzq, this.zzr, this, new zzcmr(this), null);
    }

    final zzsj zzW(Uri uri) {
        zzaj zzajVar = new zzaj();
        zzajVar.zzb(uri);
        zzbg zzc2 = zzajVar.zzc();
        zztn zztnVar = this.zzi;
        zztnVar.zza(this.zzg.zzg);
        return zztnVar.zzb(zzc2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzX(boolean z, long j) {
        zzcjn zzcjnVar = this.zzm;
        if (zzcjnVar != null) {
            zzcjnVar.zzi(z, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzjy[] zzY(Handler handler, zzye zzyeVar, zznq zznqVar, zzuj zzujVar, zzrh zzrhVar) {
        Context context = this.zzd;
        zzqr zzqrVar = zzqr.zzb;
        zznb zznbVar = zznb.zza;
        zzne[] zzneVarArr = new zzne[0];
        zzog zzogVar = new zzog();
        zznb zznbVar2 = zznb.zza;
        if (zznbVar == null) {
            if (zznbVar2 == null) {
                throw new NullPointerException("Both parameters are null");
            }
            zznbVar = zznbVar2;
        }
        zzogVar.zzb(zznbVar);
        zzogVar.zzc(zzneVarArr);
        return new zzjy[]{new zzoy(context, zzqi.zza, zzqrVar, false, handler, zznqVar, zzogVar.zzd()), new zzxh(this.zzd, zzqi.zza, zzqr.zzb, 0L, false, handler, zzyeVar, -1, 30.0f)};
    }

    @Override // com.google.android.gms.internal.ads.zzfz
    public final void zza(zzex zzexVar, zzfc zzfcVar, boolean z, int i) {
        this.zzn += i;
    }

    @Override // com.google.android.gms.internal.ads.zzfz
    public final void zzb(zzex zzexVar, zzfc zzfcVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzfz
    public final void zzc(zzex zzexVar, zzfc zzfcVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzfz
    public final void zzd(zzex zzexVar, zzfc zzfcVar, boolean z) {
        if (zzexVar instanceof zzfu) {
            synchronized (this.zzs) {
                this.zzt.add((zzfu) zzexVar);
            }
        } else if (zzexVar instanceof zzcmo) {
            this.zzu = (zzcmo) zzexVar;
            final zzcjx zzcjxVar = (zzcjx) this.zzh.get();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbF)).booleanValue() && zzcjxVar != null && this.zzu.zzn()) {
                final HashMap hashMap = new HashMap();
                hashMap.put("gcacheHit", String.valueOf(this.zzu.zzp()));
                hashMap.put("gcacheDownloaded", String.valueOf(this.zzu.zzo()));
                com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmy
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzcjx zzcjxVar2 = zzcjx.this;
                        Map map = hashMap;
                        int i = zzcnb.zzc;
                        zzcjxVar2.zzd("onGcacheInfoEvent", map);
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkp
    public final void zze(zzkn zzknVar, zzaf zzafVar, zzgt zzgtVar) {
        zzcjx zzcjxVar = (zzcjx) this.zzh.get();
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbF)).booleanValue() || zzcjxVar == null || zzafVar == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("audioMime", zzafVar.zzl);
        hashMap.put("audioSampleMime", zzafVar.zzm);
        hashMap.put("audioCodec", zzafVar.zzj);
        zzcjxVar.zzd("onMetadataEvent", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzkp
    public final /* synthetic */ void zzf(zzkn zzknVar, int i, long j, long j2) {
    }

    @Override // com.google.android.gms.internal.ads.zzkp
    public final /* synthetic */ void zzg(zzkn zzknVar, zzsd zzsdVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzkp
    public final void zzh(zzkn zzknVar, int i, long j) {
        this.zzo += i;
    }

    @Override // com.google.android.gms.internal.ads.zzkp
    public final /* synthetic */ void zzi(zzcg zzcgVar, zzko zzkoVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzkp
    public final void zzj(zzkn zzknVar, zzry zzryVar, zzsd zzsdVar, IOException iOException, boolean z) {
        zzcjn zzcjnVar = this.zzm;
        if (zzcjnVar != null) {
            if (this.zzg.zzl) {
                zzcjnVar.zzl("onLoadException", iOException);
            } else {
                zzcjnVar.zzk("onLoadError", iOException);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkp
    public final void zzk(zzkn zzknVar, int i) {
        zzcjn zzcjnVar = this.zzm;
        if (zzcjnVar != null) {
            zzcjnVar.zzm(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkp
    public final void zzl(zzkn zzknVar, zzbw zzbwVar) {
        zzcjn zzcjnVar = this.zzm;
        if (zzcjnVar != null) {
            zzcjnVar.zzk("onPlayerError", zzbwVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkp
    public final /* synthetic */ void zzm(zzkn zzknVar, zzcf zzcfVar, zzcf zzcfVar2, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzkp
    public final void zzn(zzkn zzknVar, Object obj, long j) {
        zzcjn zzcjnVar = this.zzm;
        if (zzcjnVar != null) {
            zzcjnVar.zzv();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkp
    public final /* synthetic */ void zzo(zzkn zzknVar, zzgs zzgsVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzkp
    public final void zzp(zzkn zzknVar, zzaf zzafVar, zzgt zzgtVar) {
        zzcjx zzcjxVar = (zzcjx) this.zzh.get();
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbF)).booleanValue() || zzcjxVar == null || zzafVar == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("frameRate", String.valueOf(zzafVar.zzt));
        hashMap.put("bitRate", String.valueOf(zzafVar.zzi));
        int i = zzafVar.zzr;
        int i2 = zzafVar.zzs;
        hashMap.put("resolution", i + "x" + i2);
        hashMap.put("videoMime", zzafVar.zzl);
        hashMap.put("videoSampleMime", zzafVar.zzm);
        hashMap.put("videoCodec", zzafVar.zzj);
        zzcjxVar.zzd("onMetadataEvent", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzkp
    public final void zzq(zzkn zzknVar, zzda zzdaVar) {
        zzcjn zzcjnVar = this.zzm;
        if (zzcjnVar != null) {
            zzcjnVar.zzC(zzdaVar.zzc, zzdaVar.zzd);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final int zzr() {
        return this.zzo;
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final int zzt() {
        return this.zzj.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final long zzv() {
        return this.zzj.zzu();
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final long zzw() {
        return this.zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final long zzx() {
        if (zzZ() && this.zzu.zzp()) {
            return Math.min(this.zzn, this.zzu.zzk());
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final long zzy() {
        return this.zzj.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final long zzz() {
        return this.zzj.zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final void zzD(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z) {
        zzsj zzszVar;
        if (this.zzj == null) {
            return;
        }
        this.zzk = byteBuffer;
        this.zzl = z;
        int length = uriArr.length;
        if (length == 1) {
            zzszVar = zzW(uriArr[0]);
        } else {
            zzsj[] zzsjVarArr = new zzsj[length];
            for (int i = 0; i < uriArr.length; i++) {
                zzsjVarArr[i] = zzW(uriArr[i]);
            }
            zzszVar = new zzsz(false, false, zzsjVarArr);
        }
        this.zzj.zzB(zzszVar);
        this.zzj.zzy();
        zzb.incrementAndGet();
    }
}

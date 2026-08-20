package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
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
public final class zzclf extends zzcjo implements zzbai, zzayg, zzbbs, zzaua, zzasq {
    public static final /* synthetic */ int zzc = 0;
    private final Context zzd;
    private final zzcku zze;
    private final zzati zzf;
    private final zzati zzg;
    private final zzazk zzh;
    private final zzcjw zzi;
    private zzast zzj;
    private ByteBuffer zzk;
    private boolean zzl;
    private final WeakReference zzm;
    private zzcjn zzn;
    private int zzo;
    private int zzp;
    private long zzq;
    private final String zzr;
    private final int zzs;
    private final ArrayList zzu;
    private volatile zzckt zzv;
    private final Object zzt = new Object();
    private final Set zzw = new HashSet();

    public zzclf(Context context, zzcjw zzcjwVar, zzcjx zzcjxVar) {
        this.zzd = context;
        this.zzi = zzcjwVar;
        this.zzm = new WeakReference(zzcjxVar);
        zzcku zzckuVar = new zzcku();
        this.zze = zzckuVar;
        zzbbh zzbbhVar = new zzbbh(context, zzaxd.zza, 0L, com.google.android.gms.ads.internal.util.zzs.zza, this, -1);
        this.zzf = zzbbhVar;
        zzaup zzaupVar = new zzaup(zzaxd.zza, null, true, com.google.android.gms.ads.internal.util.zzs.zza, this);
        this.zzg = zzaupVar;
        zzazg zzazgVar = new zzazg(null);
        this.zzh = zzazgVar;
        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
            com.google.android.gms.ads.internal.util.zze.zza("ForkedExoPlayerAdapter initialize ".concat(toString()));
        }
        zza.incrementAndGet();
        zzast zza = zzasu.zza(new zzati[]{zzaupVar, zzbbhVar}, zzazgVar, zzckuVar);
        this.zzj = zza;
        zza.zze(this);
        this.zzo = 0;
        this.zzq = 0L;
        this.zzp = 0;
        this.zzu = new ArrayList();
        this.zzv = null;
        this.zzr = (zzcjxVar == null || zzcjxVar.zzt() == null) ? "" : zzcjxVar.zzt();
        this.zzs = zzcjxVar != null ? zzcjxVar.zzh() : 0;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzn)).booleanValue()) {
            this.zzj.zzg();
        }
        if (zzcjxVar != null && zzcjxVar.zzg() > 0) {
            this.zzj.zzp(zzcjxVar.zzg());
        }
        if (zzcjxVar != null && zzcjxVar.zzf() > 0) {
            this.zzj.zzo(zzcjxVar.zzf());
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzp)).booleanValue()) {
            this.zzj.zzi();
            this.zzj.zzh(((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzq)).intValue());
        }
    }

    private final boolean zzY() {
        return this.zzv != null && this.zzv.zzk();
    }

    public final void finalize() throws Throwable {
        zza.decrementAndGet();
        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
            com.google.android.gms.ads.internal.util.zze.zza("ForkedExoPlayerAdapter finalize ".concat(toString()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final long zzA() {
        if (zzY()) {
            return 0L;
        }
        return this.zzo;
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final long zzB() {
        if (!zzY()) {
            synchronized (this.zzt) {
                while (!this.zzu.isEmpty()) {
                    long j = this.zzq;
                    Map zze = ((zzbac) this.zzu.remove(0)).zze();
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
                    this.zzq = j + j2;
                }
            }
            return this.zzq;
        }
        return this.zzv.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final void zzC(Uri[] uriArr, String str) {
        zzD(uriArr, str, ByteBuffer.allocate(0), false);
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final void zzE() {
        zzast zzastVar = this.zzj;
        if (zzastVar != null) {
            zzastVar.zzl(this);
            this.zzj.zzk();
            this.zzj = null;
            zzb.decrementAndGet();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final void zzF(long j) {
        this.zzj.zzm(j);
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final void zzG(int i) {
        this.zze.zzf(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final void zzH(int i) {
        this.zze.zzg(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final void zzI(zzcjn zzcjnVar) {
        this.zzn = zzcjnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final void zzJ(int i) {
        this.zze.zzh(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final void zzK(int i) {
        this.zze.zzi(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final void zzL(boolean z) {
        this.zzj.zzq(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final void zzM(boolean z) {
        if (this.zzj != null) {
            for (int i = 0; i < 2; i++) {
                this.zzh.zze(i, !z);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final void zzN(int i) {
        for (WeakReference weakReference : this.zzw) {
            zzckr zzckrVar = (zzckr) weakReference.get();
            if (zzckrVar != null) {
                zzckrVar.zzh(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final void zzO(Surface surface, boolean z) {
        zzast zzastVar = this.zzj;
        if (zzastVar == null) {
            return;
        }
        zzass zzassVar = new zzass(this.zzf, 1, surface);
        if (z) {
            zzastVar.zzf(zzassVar);
        } else {
            zzastVar.zzn(zzassVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final void zzP(float f2, boolean z) {
        if (this.zzj == null) {
            return;
        }
        this.zzj.zzn(new zzass(this.zzg, 2, Float.valueOf(f2)));
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final void zzQ() {
        this.zzj.zzr();
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final boolean zzR() {
        return this.zzj != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzazt zzS(String str, boolean z) {
        zzclf zzclfVar = true != z ? null : this;
        zzcjw zzcjwVar = this.zzi;
        zzckr zzckrVar = new zzckr(str, zzclfVar, zzcjwVar.zzd, zzcjwVar.zzf, zzcjwVar.zzi);
        this.zzw.add(new WeakReference(zzckrVar));
        return zzckrVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzazt zzT(String str, boolean z) {
        zzclf zzclfVar = true != z ? null : this;
        zzcjw zzcjwVar = this.zzi;
        return new zzazx(str, null, zzclfVar, zzcjwVar.zzd, zzcjwVar.zzf, true, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzazt zzU(zzazs zzazsVar) {
        return new zzckt(this.zzd, zzazsVar.zza(), this.zzr, this.zzs, this, new zzclb(this), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzV(boolean z, long j) {
        zzcjn zzcjnVar = this.zzn;
        if (zzcjnVar != null) {
            zzcjnVar.zzi(z, j);
        }
    }

    public final void zzW(zzazt zzaztVar, int i) {
        this.zzo += i;
    }

    @Override // com.google.android.gms.internal.ads.zzbai
    /* renamed from: zzX */
    public final void zzk(zzazt zzaztVar, zzazv zzazvVar) {
        if (zzaztVar instanceof zzbac) {
            synchronized (this.zzt) {
                this.zzu.add((zzbac) zzaztVar);
            }
        } else if (zzaztVar instanceof zzckt) {
            this.zzv = (zzckt) zzaztVar;
            final zzcjx zzcjxVar = (zzcjx) this.zzm.get();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbF)).booleanValue() && zzcjxVar != null && this.zzv.zzh()) {
                final HashMap hashMap = new HashMap();
                hashMap.put("gcacheHit", String.valueOf(this.zzv.zzj()));
                hashMap.put("gcacheDownloaded", String.valueOf(this.zzv.zzi()));
                com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzclc
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzcjx zzcjxVar2 = zzcjx.this;
                        Map map = hashMap;
                        int i = zzclf.zzc;
                        zzcjxVar2.zzd("onGcacheInfoEvent", map);
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzasq
    public final void zza(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzasq
    public final void zzb(zzath zzathVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzasq
    public final void zzc(zzasp zzaspVar) {
        zzcjn zzcjnVar = this.zzn;
        if (zzcjnVar != null) {
            zzcjnVar.zzk("onPlayerError", zzaspVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzasq
    public final void zzd(boolean z, int i) {
        zzcjn zzcjnVar = this.zzn;
        if (zzcjnVar != null) {
            zzcjnVar.zzm(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzasq
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzasq
    public final void zzf(zzato zzatoVar, Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzasq
    public final void zzg(zzaza zzazaVar, zzazm zzazmVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzaua
    public final void zzh(zzatd zzatdVar) {
        zzcjx zzcjxVar = (zzcjx) this.zzm.get();
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbF)).booleanValue() || zzcjxVar == null || zzatdVar == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("audioMime", zzatdVar.zze);
        hashMap.put("audioSampleMime", zzatdVar.zzf);
        hashMap.put("audioCodec", zzatdVar.zzc);
        zzcjxVar.zzd("onMetadataEvent", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzayg
    public final void zzi(IOException iOException) {
        zzcjn zzcjnVar = this.zzn;
        if (zzcjnVar != null) {
            if (this.zzi.zzl) {
                zzcjnVar.zzl("onLoadException", iOException);
            } else {
                zzcjnVar.zzk("onLoadError", iOException);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbai
    public final /* synthetic */ void zzj(Object obj, int i) {
        this.zzo += i;
    }

    @Override // com.google.android.gms.internal.ads.zzbbs
    public final void zzl(int i, long j) {
        this.zzp += i;
    }

    @Override // com.google.android.gms.internal.ads.zzbbs
    public final void zzm(Surface surface) {
        zzcjn zzcjnVar = this.zzn;
        if (zzcjnVar != null) {
            zzcjnVar.zzv();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbs
    public final void zzn(zzatd zzatdVar) {
        zzcjx zzcjxVar = (zzcjx) this.zzm.get();
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbF)).booleanValue() || zzcjxVar == null || zzatdVar == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("frameRate", String.valueOf(zzatdVar.zzl));
        hashMap.put("bitRate", String.valueOf(zzatdVar.zzb));
        int i = zzatdVar.zzj;
        int i2 = zzatdVar.zzk;
        hashMap.put("resolution", i + "x" + i2);
        hashMap.put("videoMime", zzatdVar.zze);
        hashMap.put("videoSampleMime", zzatdVar.zzf);
        hashMap.put("videoCodec", zzatdVar.zzc);
        zzcjxVar.zzd("onMetadataEvent", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbbs
    public final void zzo(int i, int i2, int i3, float f2) {
        zzcjn zzcjnVar = this.zzn;
        if (zzcjnVar != null) {
            zzcjnVar.zzC(i, i2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0046, code lost:
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(com.google.android.gms.internal.ads.zzbjj.zzbF)).booleanValue() == false) goto L33;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final com.google.android.gms.internal.ads.zzayl zzp(android.net.Uri r11, final java.lang.String r12) {
        /*
            r10 = this;
            com.google.android.gms.internal.ads.zzayh r9 = new com.google.android.gms.internal.ads.zzayh
            boolean r0 = r10.zzl
            if (r0 == 0) goto L23
            java.nio.ByteBuffer r0 = r10.zzk
            int r0 = r0.limit()
            if (r0 <= 0) goto L23
            java.nio.ByteBuffer r12 = r10.zzk
            int r12 = r12.limit()
            byte[] r12 = new byte[r12]
            java.nio.ByteBuffer r0 = r10.zzk
            r0.get(r12)
            com.google.android.gms.internal.ads.zzckv r0 = new com.google.android.gms.internal.ads.zzckv
            r0.<init>()
        L20:
            r2 = r0
            goto L94
        L23:
            com.google.android.gms.internal.ads.zzbjb r0 = com.google.android.gms.internal.ads.zzbjj.zzbO
            com.google.android.gms.internal.ads.zzbjh r1 = com.google.android.gms.ads.internal.client.zzba.zzc()
            java.lang.Object r0 = r1.zzb(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r1 = 1
            if (r0 == 0) goto L48
            com.google.android.gms.internal.ads.zzbjb r0 = com.google.android.gms.internal.ads.zzbjj.zzbF
            com.google.android.gms.internal.ads.zzbjh r2 = com.google.android.gms.ads.internal.client.zzba.zzc()
            java.lang.Object r0 = r2.zzb(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L50
        L48:
            com.google.android.gms.internal.ads.zzcjw r0 = r10.zzi
            boolean r0 = r0.zzj
            if (r0 != 0) goto L4f
            goto L50
        L4f:
            r1 = 0
        L50:
            com.google.android.gms.internal.ads.zzcjw r0 = r10.zzi
            boolean r2 = r0.zzo
            if (r2 == 0) goto L5c
            com.google.android.gms.internal.ads.zzckw r0 = new com.google.android.gms.internal.ads.zzckw
            r0.<init>()
            goto L6b
        L5c:
            int r0 = r0.zzi
            if (r0 <= 0) goto L66
            com.google.android.gms.internal.ads.zzckx r0 = new com.google.android.gms.internal.ads.zzckx
            r0.<init>()
            goto L6b
        L66:
            com.google.android.gms.internal.ads.zzcky r0 = new com.google.android.gms.internal.ads.zzcky
            r0.<init>()
        L6b:
            com.google.android.gms.internal.ads.zzcjw r12 = r10.zzi
            boolean r12 = r12.zzj
            if (r12 == 0) goto L77
            com.google.android.gms.internal.ads.zzckz r12 = new com.google.android.gms.internal.ads.zzckz
            r12.<init>()
            r0 = r12
        L77:
            java.nio.ByteBuffer r12 = r10.zzk
            if (r12 == 0) goto L20
            int r12 = r12.limit()
            if (r12 <= 0) goto L20
            java.nio.ByteBuffer r12 = r10.zzk
            int r12 = r12.limit()
            byte[] r12 = new byte[r12]
            java.nio.ByteBuffer r1 = r10.zzk
            r1.get(r12)
            com.google.android.gms.internal.ads.zzcla r1 = new com.google.android.gms.internal.ads.zzcla
            r1.<init>()
            r2 = r1
        L94:
            com.google.android.gms.internal.ads.zzbjb r12 = com.google.android.gms.internal.ads.zzbjj.zzm
            com.google.android.gms.internal.ads.zzbjh r0 = com.google.android.gms.ads.internal.client.zzba.zzc()
            java.lang.Object r12 = r0.zzb(r12)
            java.lang.Boolean r12 = (java.lang.Boolean) r12
            boolean r12 = r12.booleanValue()
            if (r12 == 0) goto La9
            com.google.android.gms.internal.ads.zzcld r12 = new com.google.android.gms.internal.ads.zzavi() { // from class: com.google.android.gms.internal.ads.zzcld
                static {
                    /*
                        com.google.android.gms.internal.ads.zzcld r0 = new com.google.android.gms.internal.ads.zzcld
                        r0.<init>()
                        
                        // error: 0x0005: SPUT  (r0 I:com.google.android.gms.internal.ads.zzcld) com.google.android.gms.internal.ads.zzcld.zza com.google.android.gms.internal.ads.zzcld
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcld.<clinit>():void");
                }

                {
                    /*
                        r0 = this;
                        r0.<init>()
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcld.<init>():void");
                }

                @Override // com.google.android.gms.internal.ads.zzavi
                public final com.google.android.gms.internal.ads.zzavg[] zza() {
                    /*
                        r4 = this;
                        int r0 = com.google.android.gms.internal.ads.zzclf.zzc
                        r0 = 3
                        com.google.android.gms.internal.ads.zzavg[] r0 = new com.google.android.gms.internal.ads.zzavg[r0]
                        com.google.android.gms.internal.ads.zzawt r1 = new com.google.android.gms.internal.ads.zzawt
                        r1.<init>()
                        r2 = 0
                        r0[r2] = r1
                        com.google.android.gms.internal.ads.zzavy r1 = new com.google.android.gms.internal.ads.zzavy
                        r1.<init>(r2)
                        r3 = 1
                        r0[r3] = r1
                        com.google.android.gms.internal.ads.zzawp r1 = new com.google.android.gms.internal.ads.zzawp
                        r3 = 0
                        r1.<init>(r2, r3, r3)
                        r2 = 2
                        r0[r2] = r1
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcld.zza():com.google.android.gms.internal.ads.zzavg[]");
                }
            }
            goto Lab
        La9:
            com.google.android.gms.internal.ads.zzcle r12 = new com.google.android.gms.internal.ads.zzavi() { // from class: com.google.android.gms.internal.ads.zzcle
                static {
                    /*
                        com.google.android.gms.internal.ads.zzcle r0 = new com.google.android.gms.internal.ads.zzcle
                        r0.<init>()
                        
                        // error: 0x0005: SPUT  (r0 I:com.google.android.gms.internal.ads.zzcle) com.google.android.gms.internal.ads.zzcle.zza com.google.android.gms.internal.ads.zzcle
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcle.<clinit>():void");
                }

                {
                    /*
                        r0 = this;
                        r0.<init>()
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcle.<init>():void");
                }

                @Override // com.google.android.gms.internal.ads.zzavi
                public final com.google.android.gms.internal.ads.zzavg[] zza() {
                    /*
                        r3 = this;
                        int r0 = com.google.android.gms.internal.ads.zzclf.zzc
                        r0 = 2
                        com.google.android.gms.internal.ads.zzavg[] r0 = new com.google.android.gms.internal.ads.zzavg[r0]
                        com.google.android.gms.internal.ads.zzawt r1 = new com.google.android.gms.internal.ads.zzawt
                        r1.<init>()
                        r2 = 0
                        r0[r2] = r1
                        com.google.android.gms.internal.ads.zzavy r1 = new com.google.android.gms.internal.ads.zzavy
                        r1.<init>(r2)
                        r2 = 1
                        r0[r2] = r1
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcle.zza():com.google.android.gms.internal.ads.zzavg[]");
                }
            }
        Lab:
            r3 = r12
            com.google.android.gms.internal.ads.zzcjw r12 = r10.zzi
            int r4 = r12.zzk
            com.google.android.gms.internal.ads.zzfvb r5 = com.google.android.gms.ads.internal.util.zzs.zza
            com.google.android.gms.internal.ads.zzcjw r12 = r10.zzi
            int r8 = r12.zzg
            r7 = 0
            r0 = r9
            r1 = r11
            r6 = r10
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzclf.zzp(android.net.Uri, java.lang.String):com.google.android.gms.internal.ads.zzayl");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzazt zzq(String str, boolean z) {
        zzclf zzclfVar = true != z ? null : this;
        zzcjw zzcjwVar = this.zzi;
        return new zzclj(str, zzclfVar, zzcjwVar.zzd, zzcjwVar.zzf, zzcjwVar.zzp, zzcjwVar.zzq);
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final int zzr() {
        return this.zzp;
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final int zzt() {
        return this.zzj.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final long zzv() {
        return this.zzj.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final long zzw() {
        return this.zzo;
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final long zzx() {
        if (zzY() && this.zzv.zzj()) {
            return Math.min(this.zzo, this.zzv.zze());
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final long zzy() {
        return this.zzj.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final long zzz() {
        return this.zzj.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzcjo
    public final void zzD(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z) {
        zzayl zzaypVar;
        if (this.zzj == null) {
            return;
        }
        this.zzk = byteBuffer;
        this.zzl = z;
        int length = uriArr.length;
        if (length == 1) {
            zzaypVar = zzp(uriArr[0], str);
        } else {
            zzayl[] zzaylVarArr = new zzayl[length];
            for (int i = 0; i < uriArr.length; i++) {
                zzaylVarArr[i] = zzp(uriArr[i], str);
            }
            zzaypVar = new zzayp(zzaylVarArr);
        }
        this.zzj.zzj(zzaypVar);
        zzb.incrementAndGet();
    }
}

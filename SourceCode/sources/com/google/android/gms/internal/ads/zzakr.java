package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzakr implements zzakd {
    private final Map zza = new HashMap();
    private final zzajq zzb;
    private final BlockingQueue zzc;
    private final zzajv zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzakr(zzajq zzajqVar, BlockingQueue blockingQueue, zzajv zzajvVar, byte[] bArr) {
        this.zzd = zzajvVar;
        this.zzb = zzajqVar;
        this.zzc = blockingQueue;
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final synchronized void zza(zzake zzakeVar) {
        String zzj = zzakeVar.zzj();
        List list = (List) this.zza.remove(zzj);
        if (list == null || list.isEmpty()) {
            return;
        }
        if (zzakq.zzb) {
            zzakq.zzd("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(list.size()), zzj);
        }
        zzake zzakeVar2 = (zzake) list.remove(0);
        this.zza.put(zzj, list);
        zzakeVar2.zzu(this);
        try {
            this.zzc.put(zzakeVar2);
        } catch (InterruptedException e2) {
            zzakq.zzb("Couldn't add request to queue. %s", e2.toString());
            Thread.currentThread().interrupt();
            this.zzb.zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final void zzb(zzake zzakeVar, zzakk zzakkVar) {
        List<zzake> list;
        zzajn zzajnVar = zzakkVar.zzb;
        if (zzajnVar == null || zzajnVar.zza(System.currentTimeMillis())) {
            zza(zzakeVar);
            return;
        }
        String zzj = zzakeVar.zzj();
        synchronized (this) {
            list = (List) this.zza.remove(zzj);
        }
        if (list != null) {
            if (zzakq.zzb) {
                zzakq.zzd("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(list.size()), zzj);
            }
            for (zzake zzakeVar2 : list) {
                this.zzd.zzb(zzakeVar2, zzakkVar, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized boolean zzc(zzake zzakeVar) {
        String zzj = zzakeVar.zzj();
        if (this.zza.containsKey(zzj)) {
            List list = (List) this.zza.get(zzj);
            if (list == null) {
                list = new ArrayList();
            }
            zzakeVar.zzm("waiting-for-response");
            list.add(zzakeVar);
            this.zza.put(zzj, list);
            if (zzakq.zzb) {
                zzakq.zza("Request for cacheKey=%s is in flight, putting on hold.", zzj);
            }
            return true;
        }
        this.zza.put(zzj, null);
        zzakeVar.zzu(this);
        if (zzakq.zzb) {
            zzakq.zza("new request, sending to network %s", zzj);
        }
        return false;
    }
}

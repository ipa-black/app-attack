package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzpi {
    public final int zza;
    public final zzsh zzb;
    private final CopyOnWriteArrayList zzc;

    public zzpi() {
        this(new CopyOnWriteArrayList(), 0, null);
    }

    private zzpi(CopyOnWriteArrayList copyOnWriteArrayList, int i, zzsh zzshVar) {
        this.zzc = copyOnWriteArrayList;
        this.zza = i;
        this.zzb = zzshVar;
    }

    public final zzpi zza(int i, zzsh zzshVar) {
        return new zzpi(this.zzc, i, zzshVar);
    }

    public final void zzc(zzpj zzpjVar) {
        Iterator it = this.zzc.iterator();
        while (it.hasNext()) {
            zzph zzphVar = (zzph) it.next();
            if (zzphVar.zzb == zzpjVar) {
                this.zzc.remove(zzphVar);
            }
        }
    }

    public final void zzb(Handler handler, zzpj zzpjVar) {
        zzpjVar.getClass();
        this.zzc.add(new zzph(handler, zzpjVar));
    }
}

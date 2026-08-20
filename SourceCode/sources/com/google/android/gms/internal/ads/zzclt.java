package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzclt implements Iterable {
    private final List zza = new ArrayList();

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.zza.iterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzcls zza(zzcjx zzcjxVar) {
        Iterator it = iterator();
        while (it.hasNext()) {
            zzcls zzclsVar = (zzcls) it.next();
            if (zzclsVar.zza == zzcjxVar) {
                return zzclsVar;
            }
        }
        return null;
    }

    public final void zzb(zzcls zzclsVar) {
        this.zza.add(zzclsVar);
    }

    public final void zzc(zzcls zzclsVar) {
        this.zza.remove(zzclsVar);
    }

    public final boolean zzd(zzcjx zzcjxVar) {
        ArrayList<zzcls> arrayList = new ArrayList();
        Iterator it = iterator();
        while (it.hasNext()) {
            zzcls zzclsVar = (zzcls) it.next();
            if (zzclsVar.zza == zzcjxVar) {
                arrayList.add(zzclsVar);
            }
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        for (zzcls zzclsVar2 : arrayList) {
            zzclsVar2.zzb.zzb();
        }
        return true;
    }
}

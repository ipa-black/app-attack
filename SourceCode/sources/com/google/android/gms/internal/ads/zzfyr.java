package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfyr {
    private final zzfxq zza;
    private final zzfyq zzb;

    private zzfyr(zzfyq zzfyqVar) {
        zzfxp zzfxpVar = zzfxp.zza;
        this.zzb = zzfyqVar;
        this.zza = zzfxpVar;
    }

    public static zzfyr zzb(int i) {
        return new zzfyr(new zzfyn(4000));
    }

    public static zzfyr zzc(zzfxq zzfxqVar) {
        return new zzfyr(new zzfyl(zzfxqVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Iterator zzg(CharSequence charSequence) {
        return this.zzb.zza(this, charSequence);
    }

    public final Iterable zzd(CharSequence charSequence) {
        charSequence.getClass();
        return new zzfyo(this, charSequence);
    }

    public final List zzf(CharSequence charSequence) {
        Iterator zzg = zzg(charSequence);
        ArrayList arrayList = new ArrayList();
        while (zzg.hasNext()) {
            arrayList.add((String) zzg.next());
        }
        return Collections.unmodifiableList(arrayList);
    }
}

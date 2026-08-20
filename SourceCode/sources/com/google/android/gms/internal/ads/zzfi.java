package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.Map;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzfi extends zzgak {
    private final Map zza;

    public zzfi(Map map) {
        this.zza = map;
    }

    @Override // com.google.android.gms.internal.ads.zzgak, java.util.Map
    public final boolean containsKey(Object obj) {
        return obj != null && super.containsKey(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgak, java.util.Map
    public final boolean containsValue(Object obj) {
        return super.zzd(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgak, java.util.Map
    public final Set entrySet() {
        return zzgcp.zzb(this.zza.entrySet(), new zzfyf() { // from class: com.google.android.gms.internal.ads.zzfg
            @Override // com.google.android.gms.internal.ads.zzfyf
            public final boolean zza(Object obj) {
                return ((Map.Entry) obj).getKey() != null;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzgak, java.util.Map
    public final boolean equals(Object obj) {
        return obj != null && super.zze(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgak, java.util.Map
    public final /* synthetic */ Object get(Object obj) {
        if (obj == null) {
            return null;
        }
        return (List) this.zza.get(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgak, java.util.Map
    public final int hashCode() {
        return super.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzgak, java.util.Map
    public final boolean isEmpty() {
        if (this.zza.isEmpty()) {
            return true;
        }
        return super.size() == 1 && super.containsKey(null);
    }

    @Override // com.google.android.gms.internal.ads.zzgak, java.util.Map
    public final Set keySet() {
        return zzgcp.zzb(this.zza.keySet(), new zzfyf() { // from class: com.google.android.gms.internal.ads.zzfh
            @Override // com.google.android.gms.internal.ads.zzfyf
            public final boolean zza(Object obj) {
                return ((String) obj) != null;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzgak, java.util.Map
    public final int size() {
        return super.size() - (super.containsKey(null) ? 1 : 0);
    }

    @Override // com.google.android.gms.internal.ads.zzgak, com.google.android.gms.internal.ads.zzgal
    protected final /* synthetic */ Object zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgak
    protected final Map zzb() {
        return this.zza;
    }
}

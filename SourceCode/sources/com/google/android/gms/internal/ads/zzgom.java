package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import javax.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgom {
    @Nullable
    private ArrayList zza = new ArrayList();
    private zzgoj zzb = zzgoj.zza;
    @Nullable
    private Integer zzc = null;

    public final zzgom zza(zzggo zzggoVar, int i, zzghb zzghbVar) {
        ArrayList arrayList = this.zza;
        if (arrayList == null) {
            throw new IllegalStateException("addEntry cannot be called after build()");
        }
        arrayList.add(new zzgoo(zzggoVar, i, zzghbVar, null));
        return this;
    }

    public final zzgom zzb(zzgoj zzgojVar) {
        if (this.zza != null) {
            this.zzb = zzgojVar;
            return this;
        }
        throw new IllegalStateException("setAnnotations cannot be called after build()");
    }

    public final zzgom zzc(int i) {
        if (this.zza == null) {
            throw new IllegalStateException("setPrimaryKeyId cannot be called after build()");
        }
        this.zzc = Integer.valueOf(i);
        return this;
    }

    public final zzgoq zzd() throws GeneralSecurityException {
        if (this.zza == null) {
            throw new IllegalStateException("cannot call build() twice");
        }
        Integer num = this.zzc;
        if (num != null) {
            int intValue = num.intValue();
            ArrayList arrayList = this.zza;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                int i2 = i + 1;
                if (((zzgoo) arrayList.get(i)).zza() != intValue) {
                    i = i2;
                }
            }
            throw new GeneralSecurityException("primary key ID is not present in entries");
        }
        zzgoq zzgoqVar = new zzgoq(this.zzb, Collections.unmodifiableList(this.zza), this.zzc, null);
        this.zza = null;
        return zzgoqVar;
    }
}

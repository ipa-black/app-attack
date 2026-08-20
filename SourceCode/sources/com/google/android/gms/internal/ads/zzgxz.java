package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgxz;
import com.google.android.gms.internal.ads.zzgyd;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public class zzgxz<MessageType extends zzgyd<MessageType, BuilderType>, BuilderType extends zzgxz<MessageType, BuilderType>> extends zzgwd<MessageType, BuilderType> {
    protected zzgyd zza;
    private final zzgyd zzb;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzgxz(MessageType messagetype) {
        this.zzb = messagetype;
        if (!messagetype.zzaW()) {
            this.zza = messagetype.zzaC();
            return;
        }
        throw new IllegalArgumentException("Default instance must be immutable.");
    }

    private static void zza(Object obj, Object obj2) {
        zzgzv.zza().zzb(obj.getClass()).zzg(obj, obj2);
    }

    @Override // com.google.android.gms.internal.ads.zzgwd
    /* renamed from: zzah */
    public final zzgxz zzag() {
        zzgxz zzgxzVar = (zzgxz) this.zzb.zzb(5, null, null);
        zzgxzVar.zza = zzam();
        return zzgxzVar;
    }

    public final zzgxz zzai(zzgyd zzgydVar) {
        if (!this.zzb.equals(zzgydVar)) {
            if (!this.zza.zzaW()) {
                zzap();
            }
            zza(this.zza, zzgydVar);
        }
        return this;
    }

    public final zzgxz zzaj(byte[] bArr, int i, int i2, zzgxp zzgxpVar) throws zzgyp {
        if (!this.zza.zzaW()) {
            zzap();
        }
        try {
            zzgzv.zza().zzb(this.zza.getClass()).zzi(this.zza, bArr, 0, i2, new zzgwh(zzgxpVar));
            return this;
        } catch (zzgyp e2) {
            throw e2;
        } catch (IOException e3) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e3);
        } catch (IndexOutOfBoundsException unused) {
            throw zzgyp.zzj();
        }
    }

    public final MessageType zzak() {
        MessageType zzam = zzam();
        if (zzam.zzaV()) {
            return zzam;
        }
        throw new zzhaw(zzam);
    }

    @Override // com.google.android.gms.internal.ads.zzgzm
    /* renamed from: zzal */
    public MessageType zzam() {
        if (this.zza.zzaW()) {
            this.zza.zzaQ();
            return (MessageType) this.zza;
        }
        return (MessageType) this.zza;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzao() {
        if (this.zza.zzaW()) {
            return;
        }
        zzap();
    }

    protected void zzap() {
        zzgyd zzaC = this.zzb.zzaC();
        zza(zzaC, this.zza);
        this.zza = zzaC;
    }

    @Override // com.google.android.gms.internal.ads.zzgzo
    public final /* synthetic */ zzgzn zzbh() {
        throw null;
    }
}

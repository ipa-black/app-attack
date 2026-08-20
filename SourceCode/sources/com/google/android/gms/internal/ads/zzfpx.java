package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfpx extends zzfpt {
    private static final Pattern zza = Pattern.compile("^[a-zA-Z0-9 ]+$");
    private final zzfpv zzb;
    private final zzfpu zzc;
    private zzfrr zze;
    private zzfqu zzf;
    private final List zzd = new ArrayList();
    private boolean zzg = false;
    private boolean zzh = false;
    private final String zzi = UUID.randomUUID().toString();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfpx(zzfpu zzfpuVar, zzfpv zzfpvVar) {
        this.zzc = zzfpuVar;
        this.zzb = zzfpvVar;
        zzk(null);
        if (zzfpvVar.zzd() == zzfpw.HTML || zzfpvVar.zzd() == zzfpw.JAVASCRIPT) {
            this.zzf = new zzfqv(zzfpvVar.zza());
        } else {
            this.zzf = new zzfqx(zzfpvVar.zzi(), null);
        }
        this.zzf.zzj();
        zzfqi.zza().zzd(this);
        zzfqn.zza().zzd(this.zzf.zza(), zzfpuVar.zzb());
    }

    private final void zzk(View view) {
        this.zze = new zzfrr(view);
    }

    @Override // com.google.android.gms.internal.ads.zzfpt
    public final void zzb(View view, zzfpz zzfpzVar, String str) {
        zzfqk zzfqkVar;
        if (this.zzh) {
            return;
        }
        if (zza.matcher("Ad overlay").matches()) {
            Iterator it = this.zzd.iterator();
            while (true) {
                if (!it.hasNext()) {
                    zzfqkVar = null;
                    break;
                }
                zzfqkVar = (zzfqk) it.next();
                if (zzfqkVar.zzb().get() == view) {
                    break;
                }
            }
            if (zzfqkVar == null) {
                this.zzd.add(new zzfqk(view, zzfpzVar, "Ad overlay"));
                return;
            }
            return;
        }
        throw new IllegalArgumentException("FriendlyObstruction has detailed reason that contains characters not in [a-z][A-Z][0-9] or space");
    }

    @Override // com.google.android.gms.internal.ads.zzfpt
    public final void zzc() {
        if (this.zzh) {
            return;
        }
        this.zze.clear();
        if (!this.zzh) {
            this.zzd.clear();
        }
        this.zzh = true;
        zzfqn.zza().zzc(this.zzf.zza());
        zzfqi.zza().zze(this);
        this.zzf.zzc();
        this.zzf = null;
    }

    @Override // com.google.android.gms.internal.ads.zzfpt
    public final void zzd(View view) {
        if (this.zzh || zzf() == view) {
            return;
        }
        zzk(view);
        this.zzf.zzb();
        Collection<zzfpx> zzc = zzfqi.zza().zzc();
        if (zzc == null || zzc.isEmpty()) {
            return;
        }
        for (zzfpx zzfpxVar : zzc) {
            if (zzfpxVar != this && zzfpxVar.zzf() == view) {
                zzfpxVar.zze.clear();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfpt
    public final void zze() {
        if (this.zzg) {
            return;
        }
        this.zzg = true;
        zzfqi.zza().zzf(this);
        this.zzf.zzh(zzfqo.zzb().zza());
        this.zzf.zzf(this, this.zzb);
    }

    public final View zzf() {
        return (View) this.zze.get();
    }

    public final zzfqu zzg() {
        return this.zzf;
    }

    public final String zzh() {
        return this.zzi;
    }

    public final List zzi() {
        return this.zzd;
    }

    public final boolean zzj() {
        return this.zzg && !this.zzh;
    }
}

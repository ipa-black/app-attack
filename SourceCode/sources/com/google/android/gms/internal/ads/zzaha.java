package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.util.MimeTypes;
import com.google.common.primitives.SignedBytes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzaha implements zzaio {
    private final List zza;

    public zzaha() {
        this(0);
    }

    private final zzaie zzb(zzain zzainVar) {
        return new zzaie(zzd(zzainVar));
    }

    private final zzais zzc(zzain zzainVar) {
        return new zzais(zzd(zzainVar));
    }

    private final List zzd(zzain zzainVar) {
        String str;
        int i;
        List list;
        zzef zzefVar = new zzef(zzainVar.zzd);
        List list2 = this.zza;
        while (zzefVar.zza() > 0) {
            int zzk = zzefVar.zzk();
            int zzc = zzefVar.zzc() + zzefVar.zzk();
            if (zzk == 134) {
                list2 = new ArrayList();
                int zzk2 = zzefVar.zzk() & 31;
                for (int i2 = 0; i2 < zzk2; i2++) {
                    String zzx = zzefVar.zzx(3, zzfxr.zzc);
                    int zzk3 = zzefVar.zzk();
                    boolean z = (zzk3 & 128) != 0;
                    if (z) {
                        i = zzk3 & 63;
                        str = MimeTypes.APPLICATION_CEA708;
                    } else {
                        str = MimeTypes.APPLICATION_CEA608;
                        i = 1;
                    }
                    byte zzk4 = (byte) zzefVar.zzk();
                    zzefVar.zzG(1);
                    if (z) {
                        int i3 = zzdf.zza;
                        list = Collections.singletonList((zzk4 & SignedBytes.MAX_POWER_OF_TWO) != 0 ? new byte[]{1} : new byte[]{0});
                    } else {
                        list = null;
                    }
                    zzad zzadVar = new zzad();
                    zzadVar.zzS(str);
                    zzadVar.zzK(zzx);
                    zzadVar.zzu(i);
                    zzadVar.zzI(list);
                    list2.add(zzadVar.zzY());
                }
            }
            zzefVar.zzF(zzc);
        }
        return list2;
    }

    @Override // com.google.android.gms.internal.ads.zzaio
    public final zzaiq zza(int i, zzain zzainVar) {
        if (i != 2) {
            if (i == 3 || i == 4) {
                return new zzahu(new zzahr(zzainVar.zzb));
            }
            if (i == 21) {
                return new zzahu(new zzahp());
            }
            if (i == 27) {
                return new zzahu(new zzahm(zzb(zzainVar), false, false));
            }
            if (i == 36) {
                return new zzahu(new zzaho(zzb(zzainVar)));
            }
            if (i == 89) {
                return new zzahu(new zzahc(zzainVar.zzc));
            }
            if (i == 138) {
                return new zzahu(new zzahb(zzainVar.zzb));
            }
            if (i == 172) {
                return new zzahu(new zzagw(zzainVar.zzb));
            }
            if (i == 257) {
                return new zzaid(new zzaht(MimeTypes.APPLICATION_AIT));
            }
            if (i != 128) {
                if (i != 129) {
                    if (i == 134) {
                        return new zzaid(new zzaht(MimeTypes.APPLICATION_SCTE35));
                    }
                    if (i != 135) {
                        switch (i) {
                            case 15:
                                return new zzahu(new zzagz(false, zzainVar.zzb));
                            case 16:
                                return new zzahu(new zzahi(zzc(zzainVar)));
                            case 17:
                                return new zzahu(new zzahq(zzainVar.zzb));
                            default:
                                return null;
                        }
                    }
                }
                return new zzahu(new zzagt(zzainVar.zzb));
            }
        }
        return new zzahu(new zzahf(zzc(zzainVar)));
    }

    public zzaha(int i) {
        this.zza = zzgau.zzo();
    }
}

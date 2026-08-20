package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzabt extends zzabv {
    private long zzb;
    private long[] zzc;
    private long[] zzd;

    public zzabt() {
        super(new zzzi());
        this.zzb = C.TIME_UNSET;
        this.zzc = new long[0];
        this.zzd = new long[0];
    }

    private static Double zzg(zzef zzefVar) {
        return Double.valueOf(Double.longBitsToDouble(zzefVar.zzr()));
    }

    private static String zzi(zzef zzefVar) {
        int zzo = zzefVar.zzo();
        int zzc = zzefVar.zzc();
        zzefVar.zzG(zzo);
        return new String(zzefVar.zzH(), zzc, zzo);
    }

    private static HashMap zzj(zzef zzefVar) {
        int zzn = zzefVar.zzn();
        HashMap hashMap = new HashMap(zzn);
        for (int i = 0; i < zzn; i++) {
            String zzi = zzi(zzefVar);
            Object zzh = zzh(zzefVar, zzefVar.zzk());
            if (zzh != null) {
                hashMap.put(zzi, zzh);
            }
        }
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.zzabv
    protected final boolean zza(zzef zzefVar) {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzabv
    protected final boolean zzb(zzef zzefVar, long j) {
        if (zzefVar.zzk() == 2 && "onMetaData".equals(zzi(zzefVar)) && zzefVar.zza() != 0 && zzefVar.zzk() == 8) {
            HashMap zzj = zzj(zzefVar);
            Object obj = zzj.get("duration");
            if (obj instanceof Double) {
                double doubleValue = ((Double) obj).doubleValue();
                if (doubleValue > 0.0d) {
                    this.zzb = (long) (doubleValue * 1000000.0d);
                }
            }
            Object obj2 = zzj.get("keyframes");
            if (obj2 instanceof Map) {
                Map map = (Map) obj2;
                Object obj3 = map.get("filepositions");
                Object obj4 = map.get("times");
                if ((obj3 instanceof List) && (obj4 instanceof List)) {
                    List list = (List) obj3;
                    List list2 = (List) obj4;
                    int size = list2.size();
                    this.zzc = new long[size];
                    this.zzd = new long[size];
                    for (int i = 0; i < size; i++) {
                        Object obj5 = list.get(i);
                        Object obj6 = list2.get(i);
                        if (!(obj6 instanceof Double) || !(obj5 instanceof Double)) {
                            this.zzc = new long[0];
                            this.zzd = new long[0];
                            break;
                        }
                        this.zzc[i] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                        this.zzd[i] = ((Double) obj5).longValue();
                    }
                }
            }
            return false;
        }
        return false;
    }

    public final long zzc() {
        return this.zzb;
    }

    public final long[] zzd() {
        return this.zzd;
    }

    public final long[] zze() {
        return this.zzc;
    }

    private static Object zzh(zzef zzefVar, int i) {
        if (i == 0) {
            return zzg(zzefVar);
        }
        if (i == 1) {
            return Boolean.valueOf(zzefVar.zzk() == 1);
        } else if (i != 2) {
            if (i != 3) {
                if (i != 8) {
                    if (i != 10) {
                        if (i != 11) {
                            return null;
                        }
                        Date date = new Date((long) zzg(zzefVar).doubleValue());
                        zzefVar.zzG(2);
                        return date;
                    }
                    int zzn = zzefVar.zzn();
                    ArrayList arrayList = new ArrayList(zzn);
                    for (int i2 = 0; i2 < zzn; i2++) {
                        Object zzh = zzh(zzefVar, zzefVar.zzk());
                        if (zzh != null) {
                            arrayList.add(zzh);
                        }
                    }
                    return arrayList;
                }
                return zzj(zzefVar);
            }
            HashMap hashMap = new HashMap();
            while (true) {
                String zzi = zzi(zzefVar);
                int zzk = zzefVar.zzk();
                if (zzk == 9) {
                    return hashMap;
                }
                Object zzh2 = zzh(zzefVar, zzk);
                if (zzh2 != null) {
                    hashMap.put(zzi, zzh2);
                }
            }
        } else {
            return zzi(zzefVar);
        }
    }
}

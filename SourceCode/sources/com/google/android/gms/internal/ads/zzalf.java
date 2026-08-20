package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzalf extends zzaks {
    public zzalf() {
    }

    public zzalf(zzale zzaleVar, SSLSocketFactory sSLSocketFactory) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List zza(Map map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry entry : map.entrySet()) {
            if (entry.getKey() != null) {
                for (String str : (List) entry.getValue()) {
                    arrayList.add(new zzajw((String) entry.getKey(), str));
                }
            }
        }
        return arrayList;
    }
}

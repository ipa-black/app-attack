package com.apm.insight.runtime;

import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import com.appodeal.ads.modules.common.internal.Constants;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import org.json.JSONArray;
/* loaded from: classes.dex */
public class r {

    /* renamed from: a  reason: collision with root package name */
    private static File f1149a;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public String f1150a;

        /* renamed from: b  reason: collision with root package name */
        public String f1151b;

        /* renamed from: c  reason: collision with root package name */
        public long f1152c;

        a(String str) {
            String[] split = str.split("\\s+");
            if (split.length != 3) {
                com.apm.insight.c.a().a("NPTH_CATCH", new RuntimeException("err ProcessTrack line:" + str));
                return;
            }
            this.f1150a = split[0];
            this.f1151b = split[1];
            try {
                this.f1152c = Long.parseLong(split[2]);
            } catch (Throwable th) {
                com.apm.insight.c.a().a("NPTH_CATCH", new RuntimeException("err ProcessTrack line:" + str, th));
            }
        }
    }

    private static File a() {
        if (f1149a == null) {
            String c2 = com.apm.insight.l.a.c(com.apm.insight.i.g());
            if (c2 == null) {
                return null;
            }
            long currentTimeMillis = System.currentTimeMillis();
            f1149a = new File(com.apm.insight.l.n.j(com.apm.insight.i.g()), "apminsight/ProcessTrack/" + ((currentTimeMillis - (currentTimeMillis % Constants.MILLIS_IN_DAY)) / Constants.MILLIS_IN_DAY) + '/' + c2.replace(':', '_') + ".txt");
        }
        return f1149a;
    }

    public static File a(long j) {
        return new File(com.apm.insight.l.n.j(com.apm.insight.i.g()), "apminsight/ProcessTrack/" + ((j - (j % Constants.MILLIS_IN_DAY)) / Constants.MILLIS_IN_DAY));
    }

    public static HashMap<String, a> a(long j, String str) {
        File file = new File(com.apm.insight.l.n.j(com.apm.insight.i.g()), "apminsight/ProcessTrack/" + ((j - (j % Constants.MILLIS_IN_DAY)) / Constants.MILLIS_IN_DAY));
        String[] list = file.list();
        HashMap<String, a> hashMap = new HashMap<>();
        if (list != null) {
            for (String str2 : list) {
                File file2 = new File(file, str2);
                long length = file2.length();
                try {
                    JSONArray a2 = com.apm.insight.l.h.a(file2, length > 1048576 ? length - PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED : 0L);
                    int length2 = a2.length() - 1;
                    while (true) {
                        if (length2 >= 0) {
                            String optString = a2.optString(length2);
                            if (!TextUtils.isEmpty(optString) && optString.startsWith(str)) {
                                hashMap.put(str2.replace('_', ':').replace(".txt", ""), new a(optString));
                                break;
                            }
                            length2--;
                        }
                    }
                } catch (IOException unused) {
                }
            }
        }
        return hashMap;
    }

    public static void a(String str, String str2) {
        try {
            File a2 = a();
            if (a2 != null) {
                com.apm.insight.l.h.a(a2, str + ' ' + str2 + ' ' + System.currentTimeMillis() + '\n', true);
            }
        } catch (Throwable unused) {
        }
    }
}

package com.appnext.core;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.HashMap;
import org.apache.commons.lang.time.DateUtils;
/* loaded from: classes.dex */
public final class j {
    private static j hp;
    private int be = 24;
    private HashMap<String, SharedPreferences> hq = new HashMap<>();

    private j() {
    }

    public final void d(final Context context, final String str) {
        if (this.hq.containsKey(str.replace("/", ""))) {
            return;
        }
        new Thread(new Runnable() { // from class: com.appnext.core.j.1
            @Override // java.lang.Runnable
            public final void run() {
                j.this.hq.put(str, context.getSharedPreferences("apnxt_cap" + str.replace("/", ""), 0));
            }
        }).start();
    }

    public static synchronized j bj() {
        j jVar;
        synchronized (j.class) {
            if (hp == null) {
                hp = new j();
            }
            jVar = hp;
        }
        return jVar;
    }

    public final void n(String str, String str2) {
        this.hq.get(str2).edit().putLong(str, System.currentTimeMillis()).apply();
    }

    public final boolean o(String str, String str2) {
        long j = this.hq.get(str2).getLong(str, -1L);
        return j != -1 && System.currentTimeMillis() - ((long) (this.be * DateUtils.MILLIS_IN_HOUR)) <= j;
    }

    public final boolean p(String str, String str2) {
        long j = this.hq.get(str2).getLong(str, -1L);
        return j != -1 && System.currentTimeMillis() - 120000 <= j;
    }

    public final void ab(String str) {
        this.hq.get(str).edit().clear().apply();
    }

    public final void b(int i) {
        this.be = i;
    }
}

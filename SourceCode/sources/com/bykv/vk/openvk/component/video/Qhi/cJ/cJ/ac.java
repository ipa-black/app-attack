package com.bykv.vk.openvk.component.video.Qhi.cJ.cJ;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import android.text.TextUtils;
import android.util.SparseArray;
import com.bytedance.sdk.component.Sf.WAv;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: VideoProxyDB.java */
/* loaded from: classes2.dex */
public class ac {
    private static volatile ac cJ;
    private final Executor CJ;
    private final SparseArray<Map<String, Qhi>> Qhi;
    private final fl ac;
    private volatile SQLiteStatement fl;

    private ac(Context context) {
        SparseArray<Map<String, Qhi>> sparseArray = new SparseArray<>(2);
        this.Qhi = sparseArray;
        this.CJ = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new WAv(5, "video_proxy_db"));
        this.ac = new fl(context.getApplicationContext());
        sparseArray.put(0, new ConcurrentHashMap());
        sparseArray.put(1, new ConcurrentHashMap());
    }

    public static ac Qhi(Context context) {
        if (cJ == null) {
            synchronized (ac.class) {
                if (cJ == null) {
                    cJ = new ac(context);
                }
            }
        }
        return cJ;
    }

    public Qhi Qhi(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Map<String, Qhi> map = this.Qhi.get(i);
        Qhi qhi = map == null ? null : map.get(str);
        if (qhi != null) {
            return qhi;
        }
        try {
            Cursor query = this.ac.getReadableDatabase().query("video_http_header_t", null, "key=? AND flag=?", new String[]{str, String.valueOf(i)}, null, null, null, IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
            if (query != null) {
                if (query.getCount() > 0 && query.moveToNext()) {
                    qhi = new Qhi(query.getString(query.getColumnIndex("key")), query.getString(query.getColumnIndex("mime")), query.getInt(query.getColumnIndex("contentLength")), i, query.getString(query.getColumnIndex("extra")));
                }
                query.close();
            }
            if (qhi != null && map != null) {
                map.put(str, qhi);
            }
            return qhi;
        } catch (Throwable unused) {
            return null;
        }
    }

    public void Qhi(final Qhi qhi) {
        if (qhi != null) {
            Map<String, Qhi> map = this.Qhi.get(qhi.CJ);
            if (map != null) {
                map.put(qhi.Qhi, qhi);
            }
            this.CJ.execute(new Runnable() { // from class: com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.ac.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (ac.this.fl != null) {
                            ac.this.fl.clearBindings();
                        } else {
                            ac acVar = ac.this;
                            acVar.fl = acVar.ac.getWritableDatabase().compileStatement("INSERT INTO video_http_header_t (key,mime,contentLength,flag,extra) VALUES(?,?,?,?,?)");
                        }
                        ac.this.fl.bindString(1, qhi.Qhi);
                        ac.this.fl.bindString(2, qhi.cJ);
                        ac.this.fl.bindLong(3, qhi.ac);
                        ac.this.fl.bindLong(4, qhi.CJ);
                        ac.this.fl.bindString(5, qhi.fl);
                        ac.this.fl.executeInsert();
                    } catch (Throwable unused) {
                    }
                }
            });
        }
    }

    public void Qhi(Collection<String> collection, int i) {
        if (collection == null || collection.isEmpty()) {
            return;
        }
        int size = collection.size() + 1;
        String[] strArr = new String[size];
        Map<String, Qhi> map = this.Qhi.get(i);
        int i2 = -1;
        for (String str : collection) {
            if (map != null) {
                map.remove(str);
            }
            i2++;
            strArr[i2] = str;
        }
        strArr[i2 + 1] = String.valueOf(i);
        try {
            this.ac.getWritableDatabase().delete("video_http_header_t", "key IN(" + cJ(size) + ") AND flag=?", strArr);
        } catch (Throwable unused) {
        }
    }

    private String cJ(int i) {
        if (i <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(i << 1);
        sb.append("?");
        for (int i2 = 1; i2 < i; i2++) {
            sb.append(",?");
        }
        return sb.toString();
    }

    public void Qhi(final int i) {
        Map<String, Qhi> map = this.Qhi.get(i);
        if (map != null) {
            map.clear();
        }
        this.CJ.execute(new Runnable() { // from class: com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.ac.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ac.this.ac.getWritableDatabase().delete("video_http_header_t", "flag=?", new String[]{String.valueOf(i)});
                } catch (Throwable unused) {
                }
            }
        });
    }
}

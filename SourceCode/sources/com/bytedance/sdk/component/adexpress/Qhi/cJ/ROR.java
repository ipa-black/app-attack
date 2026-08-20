package com.bytedance.sdk.component.adexpress.Qhi.cJ;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.Log;
import android.util.LruCache;
import com.unity3d.ads.metadata.MediationMetaData;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: TmplDbHelper.java */
/* loaded from: classes2.dex */
public class ROR {
    public static int Qhi = 20;
    private static volatile ROR cJ;
    private volatile ConcurrentHashMap<String, com.bytedance.sdk.component.adexpress.Qhi.ac.ac> fl;
    private final Object CJ = new Object();
    private AtomicBoolean Tgh = new AtomicBoolean(false);
    private LruCache<String, com.bytedance.sdk.component.adexpress.Qhi.ac.cJ> ROR = new LruCache<String, com.bytedance.sdk.component.adexpress.Qhi.ac.cJ>(Qhi) { // from class: com.bytedance.sdk.component.adexpress.Qhi.cJ.ROR.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.util.LruCache
        /* renamed from: Qhi */
        public int sizeOf(String str, com.bytedance.sdk.component.adexpress.Qhi.ac.cJ cJVar) {
            return 1;
        }
    };
    private Set<String> ac = Collections.synchronizedSet(new HashSet());

    public static void Qhi(int i) {
        Qhi = i;
    }

    public static ROR Qhi() {
        if (cJ == null) {
            synchronized (ROR.class) {
                if (cJ == null) {
                    cJ = new ROR();
                }
            }
        }
        return cJ;
    }

    private ROR() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.bytedance.sdk.component.adexpress.Qhi.ac.cJ Qhi(String str) {
        com.bytedance.sdk.component.adexpress.Qhi.ac.cJ cJVar;
        com.bytedance.sdk.component.adexpress.Qhi.ac.cJ Qhi2;
        if (TextUtils.isEmpty(str) || com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().cJ() == null) {
            return null;
        }
        synchronized (this.CJ) {
            cJVar = this.ROR.get(String.valueOf(str));
        }
        if (cJVar != null) {
            return cJVar;
        }
        Cursor Qhi3 = com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().cJ().Qhi("template_diff_new", null, "id=?", new String[]{str}, null, null, null);
        if (Qhi3 != null) {
            try {
                if (Qhi3.moveToFirst()) {
                    do {
                        String string = Qhi3.getString(Qhi3.getColumnIndex("rit"));
                        String string2 = Qhi3.getString(Qhi3.getColumnIndex("id"));
                        String string3 = Qhi3.getString(Qhi3.getColumnIndex("md5"));
                        String string4 = Qhi3.getString(Qhi3.getColumnIndex("url"));
                        String string5 = Qhi3.getString(Qhi3.getColumnIndex("data"));
                        Qhi2 = new com.bytedance.sdk.component.adexpress.Qhi.ac.cJ().Qhi(string).cJ(string2).ac(string3).CJ(string4).fl(string5).Tgh(Qhi3.getString(Qhi3.getColumnIndex(MediationMetaData.KEY_VERSION))).Qhi(Long.valueOf(Qhi3.getLong(Qhi3.getColumnIndex("update_time"))));
                        synchronized (this.CJ) {
                            this.ROR.put(string2, Qhi2);
                        }
                        this.ac.add(string2);
                    } while (Qhi3.moveToNext());
                    return Qhi2;
                }
            } finally {
                try {
                } finally {
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<String> cJ(String str) {
        if (!TextUtils.isEmpty(str) && com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().cJ() != null) {
            HashSet hashSet = new HashSet();
            Cursor Qhi2 = com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().cJ().Qhi("template_diff_new", null, "rit=?", new String[]{str}, null, null, null);
            try {
                if (Qhi2 != null) {
                    try {
                        if (Qhi2.moveToFirst()) {
                            do {
                                hashSet.add(Qhi2.getString(Qhi2.getColumnIndex("id")));
                            } while (Qhi2.moveToNext());
                            return hashSet;
                        }
                    } catch (Exception e2) {
                        Log.e("TmplDbHelper", "", e2);
                    }
                }
            } finally {
                Qhi2.close();
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00fc, code lost:
        if (r3 == null) goto L7;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.bytedance.sdk.component.adexpress.Qhi.ac.cJ> cJ() {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.adexpress.Qhi.cJ.ROR.cJ():java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi(com.bytedance.sdk.component.adexpress.Qhi.ac.cJ cJVar, boolean z) {
        if (cJVar == null || com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().cJ() == null || TextUtils.isEmpty(cJVar.cJ())) {
            return;
        }
        Cursor Qhi2 = com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().cJ().Qhi("template_diff_new", null, "id=?", new String[]{cJVar.cJ()}, null, null, null);
        boolean z2 = Qhi2 != null && Qhi2.getCount() > 0;
        if (Qhi2 != null) {
            try {
                r3 = Qhi2.moveToFirst() ? Qhi2.getString(Qhi2.getColumnIndex("rit")) : null;
                Qhi2.close();
            } catch (Throwable unused) {
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("rit", cJVar.Qhi());
        contentValues.put("id", cJVar.cJ());
        contentValues.put("md5", cJVar.ac());
        contentValues.put("url", cJVar.CJ());
        contentValues.put("data", cJVar.fl());
        contentValues.put(MediationMetaData.KEY_VERSION, cJVar.Tgh());
        contentValues.put("update_time", cJVar.ROR());
        if (z2) {
            com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().cJ().Qhi("template_diff_new", contentValues, "id=?", new String[]{cJVar.cJ()});
        } else {
            com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().cJ().Qhi("template_diff_new", contentValues);
        }
        synchronized (this.CJ) {
            this.ROR.put(cJVar.cJ(), cJVar);
        }
        this.ac.add(cJVar.cJ());
        if (z) {
            return;
        }
        try {
            if (com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().Tgh() == null) {
                return;
            }
            if (this.fl == null) {
                this.fl = new ConcurrentHashMap<>();
            }
            com.bytedance.sdk.component.adexpress.Qhi.ac.ac acVar = new com.bytedance.sdk.component.adexpress.Qhi.ac.ac(cJVar.Qhi(), cJVar.cJ(), cJVar.ac());
            this.fl.put(cJVar.cJ(), acVar);
            if (r3 != null) {
                com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().Tgh();
                acVar.cJ();
            }
            com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().Tgh();
            cJVar.Qhi();
        } catch (Throwable unused2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi(Set<String> set) {
        if (set == null || set.isEmpty() || com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().cJ() == null) {
            return;
        }
        String[] strArr = (String[]) set.toArray(new String[set.size()]);
        if (strArr.length > 0) {
            for (int i = 0; i < strArr.length; i++) {
                CJ(strArr[i]);
                com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().cJ().Qhi("template_diff_new", "id=?", new String[]{strArr[i]});
                ac(strArr[i]);
            }
        }
    }

    void ac(String str) {
        com.bytedance.sdk.component.adexpress.Qhi.ac.ac acVar;
        try {
            if (this.fl == null || this.fl.isEmpty() || (acVar = this.fl.get(str)) == null) {
                return;
            }
            if (!TextUtils.isEmpty(acVar.Qhi()) && com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().Tgh() != null) {
                com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().Tgh();
            }
            this.fl.remove(str);
        } catch (Throwable unused) {
        }
    }

    private void CJ(String str) {
        LruCache<String, com.bytedance.sdk.component.adexpress.Qhi.ac.cJ> lruCache;
        if (TextUtils.isEmpty(str) || (lruCache = this.ROR) == null || lruCache.size() <= 0) {
            return;
        }
        synchronized (this.CJ) {
            this.ROR.remove(str);
        }
    }

    public static String ac() {
        return "CREATE TABLE IF NOT EXISTS template_diff_new (_id INTEGER PRIMARY KEY AUTOINCREMENT,rit TEXT ,id TEXT UNIQUE,md5 TEXT ,url TEXT , data TEXT , version TEXT , update_time TEXT)";
    }
}

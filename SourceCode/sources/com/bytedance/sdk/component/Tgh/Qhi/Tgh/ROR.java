package com.bytedance.sdk.component.Tgh.Qhi.Tgh;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
/* compiled from: TrackRetryRepertoryImpl.java */
/* loaded from: classes2.dex */
public class ROR implements Tgh {
    private Context Qhi;

    public ROR(Context context) {
        this.Qhi = context;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a4, code lost:
        if (r1 != null) goto L23;
     */
    @Override // com.bytedance.sdk.component.Tgh.Qhi.Tgh.Tgh
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.bytedance.sdk.component.Tgh.Qhi.Tgh.fl> Qhi() {
        /*
            r12 = this;
            java.util.LinkedList r0 = new java.util.LinkedList
            r0.<init>()
            android.content.Context r1 = r12.Qhi
            r7 = 0
            r8 = 0
            java.lang.String r2 = "trackurl"
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            android.database.Cursor r1 = com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.ac.Qhi(r1, r2, r3, r4, r5, r6, r7, r8)
            if (r1 == 0) goto La7
        L15:
            boolean r2 = r1.moveToNext()     // Catch: java.lang.Throwable -> L96
            if (r2 == 0) goto L90
            java.lang.String r2 = "id"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L96
            java.lang.String r4 = r1.getString(r2)     // Catch: java.lang.Throwable -> L96
            java.lang.String r2 = "url"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L96
            java.lang.String r5 = r1.getString(r2)     // Catch: java.lang.Throwable -> L96
            java.lang.String r2 = "replaceholder"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L96
            int r2 = r1.getInt(r2)     // Catch: java.lang.Throwable -> L96
            if (r2 <= 0) goto L3d
            r2 = 1
            goto L3e
        L3d:
            r2 = 0
        L3e:
            r6 = r2
            java.lang.String r2 = "retry"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L96
            int r2 = r1.getInt(r2)     // Catch: java.lang.Throwable -> L96
            java.lang.String r3 = "url_type"
            int r3 = r1.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L96
            int r7 = r1.getInt(r3)     // Catch: java.lang.Throwable -> L96
            java.lang.String r3 = "ad_id"
            int r3 = r1.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L96
            java.lang.String r8 = r1.getString(r3)     // Catch: java.lang.Throwable -> L96
            java.lang.String r3 = "error_code"
            int r3 = r1.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L96
            java.lang.String r9 = r1.getString(r3)     // Catch: java.lang.Throwable -> L96
            java.lang.String r3 = "error_msg"
            int r3 = r1.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L96
            java.lang.String r10 = r1.getString(r3)     // Catch: java.lang.Throwable -> L96
            com.bytedance.sdk.component.Tgh.Qhi.Tgh.fl r11 = new com.bytedance.sdk.component.Tgh.Qhi.Tgh.fl     // Catch: java.lang.Throwable -> L96
            r3 = r11
            r3.<init>(r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L96
            r11.Qhi(r2)     // Catch: java.lang.Throwable -> L96
            boolean r2 = android.text.TextUtils.isEmpty(r9)     // Catch: java.lang.Throwable -> L96
            if (r2 != 0) goto L83
            r11.Qhi(r9)     // Catch: java.lang.Throwable -> L96
        L83:
            boolean r2 = android.text.TextUtils.isEmpty(r10)     // Catch: java.lang.Throwable -> L96
            if (r2 != 0) goto L8c
            r11.cJ(r10)     // Catch: java.lang.Throwable -> L96
        L8c:
            r0.add(r11)     // Catch: java.lang.Throwable -> L96
            goto L15
        L90:
            if (r1 == 0) goto La7
        L92:
            r1.close()
            goto La7
        L96:
            if (r1 == 0) goto La4
            r1.close()     // Catch: java.lang.Throwable -> L9d
            r1 = 0
            goto La4
        L9d:
            r0 = move-exception
            if (r1 == 0) goto La3
            r1.close()
        La3:
            throw r0
        La4:
            if (r1 == 0) goto La7
            goto L92
        La7:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.Tgh.Qhi.Tgh.ROR.Qhi():java.util.List");
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.Tgh.Tgh
    public fl Qhi(String str) {
        Cursor Qhi = com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.ac.Qhi(this.Qhi, "trackurl", null, "id=?", new String[]{str}, null, null, null);
        if (Qhi != null && Qhi.moveToFirst()) {
            try {
                String string = Qhi.getString(Qhi.getColumnIndex("id"));
                String string2 = Qhi.getString(Qhi.getColumnIndex("url"));
                boolean z = Qhi.getInt(Qhi.getColumnIndex("replaceholder")) > 0;
                int i = Qhi.getInt(Qhi.getColumnIndex("retry"));
                int i2 = Qhi.getInt(Qhi.getColumnIndex("url_type"));
                String string3 = Qhi.getString(Qhi.getColumnIndex("ad_id"));
                String string4 = Qhi.getString(Qhi.getColumnIndex("error_code"));
                String string5 = Qhi.getString(Qhi.getColumnIndex("error_msg"));
                fl flVar = new fl(string, string2, z, i2, string3);
                flVar.Qhi(i);
                if (!TextUtils.isEmpty(string4)) {
                    flVar.Qhi(string4);
                }
                if (!TextUtils.isEmpty(string5)) {
                    flVar.cJ(string5);
                }
                return flVar;
            } catch (Throwable th) {
                try {
                    th.getMessage();
                    Qhi.close();
                    Qhi = null;
                } finally {
                    Qhi.close();
                }
            }
        }
        if (Qhi != null) {
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.Tgh.Tgh
    public void Qhi(fl flVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", flVar.Qhi());
        contentValues.put("url", flVar.cJ());
        contentValues.put("replaceholder", Integer.valueOf(flVar.ac() ? 1 : 0));
        contentValues.put("retry", Integer.valueOf(flVar.CJ()));
        contentValues.put("url_type", Integer.valueOf(flVar.fl()));
        contentValues.put("ad_id", flVar.Tgh());
        contentValues.put("error_code", flVar.ROR());
        contentValues.put("error_msg", flVar.hm());
        com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.ac.Qhi(this.Qhi, "trackurl", contentValues);
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.Tgh.Tgh
    public void cJ(fl flVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", flVar.Qhi());
        contentValues.put("url", flVar.cJ());
        contentValues.put("replaceholder", Integer.valueOf(flVar.ac() ? 1 : 0));
        contentValues.put("retry", Integer.valueOf(flVar.CJ()));
        contentValues.put("error_code", flVar.ROR());
        contentValues.put("error_msg", flVar.hm());
        contentValues.put("url_type", Integer.valueOf(flVar.fl()));
        contentValues.put("ad_id", flVar.Tgh());
        com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.ac.Qhi(this.Qhi, "trackurl", contentValues, "id=?", new String[]{flVar.Qhi()});
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.Tgh.Tgh
    public void ac(fl flVar) {
        com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.ac.Qhi(this.Qhi, "trackurl", "id=?", new String[]{flVar.Qhi()});
    }

    public static String cJ() {
        return "CREATE TABLE IF NOT EXISTS trackurl (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,url TEXT ,replaceholder INTEGER default 0, retry INTEGER default 0)";
    }
}

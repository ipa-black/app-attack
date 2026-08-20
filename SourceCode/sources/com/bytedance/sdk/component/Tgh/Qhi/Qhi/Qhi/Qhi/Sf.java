package com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.bytedance.sdk.component.Tgh.Qhi.hm;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;
/* compiled from: StatsLogEventRepoImpl.java */
/* loaded from: classes2.dex */
public class Sf extends ac {
    protected List<String> Qhi;
    private com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac ac;

    public byte Qhi() {
        return (byte) 1;
    }

    public byte ac() {
        return (byte) 2;
    }

    public Sf(Context context, com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac acVar) {
        super(context);
        this.Qhi = new ArrayList();
        this.ac = acVar;
        if (acVar == null) {
            this.ac = com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac.ac();
        }
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi.ac
    public String cJ() {
        return hm.ROR().CJ().CJ();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0029, code lost:
        if (r1 == null) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x002c, code lost:
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0022, code lost:
        if (r1 != null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0024, code lost:
        r1.close();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int CJ() {
        /*
            r9 = this;
            r0 = 0
            android.content.Context r1 = r9.fl()     // Catch: java.lang.Throwable -> L28
            java.lang.String r2 = r9.cJ()     // Catch: java.lang.Throwable -> L28
            r3 = 1
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L28
            java.lang.String r4 = "count(1)"
            r3[r0] = r4     // Catch: java.lang.Throwable -> L28
            r7 = 0
            r8 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            android.database.Cursor r1 = com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.ac.Qhi(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L28
            if (r1 == 0) goto L22
            r1.moveToFirst()     // Catch: java.lang.Throwable -> L29
            int r0 = r1.getInt(r0)     // Catch: java.lang.Throwable -> L29
        L22:
            if (r1 == 0) goto L2c
        L24:
            r1.close()     // Catch: java.lang.Exception -> L2c
            goto L2c
        L28:
            r1 = 0
        L29:
            if (r1 == 0) goto L2c
            goto L24
        L2c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi.Sf.CJ():int");
    }

    public List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> Qhi(int i, String str) {
        long Qhi = com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.Qhi(i, fl());
        if (Qhi <= 0) {
            Qhi = 1;
        } else if (Qhi > 100) {
            Qhi = 100;
        }
        ArrayList arrayList = new ArrayList();
        this.Qhi.clear();
        Cursor Qhi2 = com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.ac.Qhi(fl(), cJ(), new String[]{"id", "value", "encrypt"}, null, null, null, null, str + " DESC limit " + Qhi);
        if (Qhi2 != null) {
            while (Qhi2.moveToNext()) {
                try {
                    try {
                        String string = Qhi2.getString(Qhi2.getColumnIndex("id"));
                        String string2 = Qhi2.getString(Qhi2.getColumnIndex("value"));
                        if (Qhi2.getInt(Qhi2.getColumnIndex("encrypt")) == 1) {
                            string2 = hm.ROR().hpZ().Qhi(string2);
                        }
                        if (TextUtils.isEmpty(string2)) {
                            this.Qhi.add(string);
                        } else if (arrayList.size() > 100) {
                            break;
                        } else {
                            com.bytedance.sdk.component.Tgh.Qhi.CJ.Qhi.cJ cJVar = new com.bytedance.sdk.component.Tgh.Qhi.CJ.Qhi.cJ(string, new JSONObject(string2));
                            cJVar.cJ(ac());
                            cJVar.Qhi(Qhi());
                            arrayList.add(cJVar);
                        }
                    } catch (Throwable unused) {
                    }
                } catch (Throwable th) {
                    if (Qhi2 != null) {
                        try {
                            Qhi2.close();
                            if (!this.Qhi.isEmpty()) {
                                Qhi(this.Qhi);
                                this.Qhi.clear();
                            }
                        } catch (Exception unused2) {
                        }
                    }
                    throw th;
                }
            }
            if (Qhi2 != null) {
                try {
                    Qhi2.close();
                    if (!this.Qhi.isEmpty()) {
                        Qhi(this.Qhi);
                        this.Qhi.clear();
                    }
                } catch (Exception unused3) {
                }
            }
        }
        return arrayList;
    }

    protected void Qhi(List<String> list) {
        cJ();
        list.size();
        com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.ac.Qhi(fl(), "DELETE FROM " + cJ() + " WHERE " + Qhi("id", list, 1000, true));
        com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.dI(), list.size());
        ac(list);
    }

    public List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> cJ(String str) {
        com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac acVar = this.ac;
        if (acVar == null) {
            return new ArrayList();
        }
        return Qhi(acVar.cJ(), str);
    }

    public void cJ(List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        LinkedList linkedList = new LinkedList();
        for (com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh tgh : list) {
            linkedList.add(tgh.ac());
            com.bytedance.sdk.component.Tgh.Qhi.ac.Qhi.WAv(tgh);
        }
        cJ();
        linkedList.size();
        com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.ac.Qhi(fl(), "DELETE FROM " + cJ() + " WHERE " + Qhi("id", linkedList, 1000, true));
        ac(linkedList);
    }

    public void Qhi(int i, long j) {
        cJ(i, j);
    }

    private void cJ(int i, long j) {
        com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.ac.Qhi(fl(), cJ(), "gen_time <? AND retry >?", new String[]{String.valueOf(System.currentTimeMillis() - j), String.valueOf(i)});
    }

    public boolean Qhi(int i) {
        return this.ac != null && CJ() >= this.ac.Qhi();
    }

    public static String ac(String str) {
        return "CREATE TABLE IF NOT EXISTS " + str + " (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0)";
    }

    private static String Qhi(String str, List<?> list, int i, boolean z) {
        int i2;
        String str2 = z ? " IN " : " NOT IN ";
        String str3 = z ? " OR " : " AND ";
        int min = Math.min(i, 1000);
        int size = list.size();
        if (size % min == 0) {
            i2 = size / min;
        } else {
            i2 = (size / min) + 1;
        }
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = i3 * min;
            String Qhi = Qhi(TextUtils.join("','", list.subList(i4, Math.min(i4 + min, size))), "");
            if (i3 != 0) {
                sb.append(str3);
            }
            sb.append(str).append(str2).append("('").append(Qhi).append("')");
        }
        return Qhi(sb.toString(), str + str2 + "('')");
    }

    private static String Qhi(String str, String str2) {
        return !TextUtils.isEmpty(str) ? str : str2;
    }
}

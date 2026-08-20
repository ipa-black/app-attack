package com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.bytedance.sdk.component.Tgh.Qhi.hm;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;
/* compiled from: AdEventRepoImpl.java */
/* loaded from: classes2.dex */
public class Qhi extends ac {
    private com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac CJ;
    protected List<String> Qhi;
    private final Context ac;

    public byte CJ() {
        return (byte) 0;
    }

    public byte ac() {
        return (byte) 2;
    }

    public Qhi(Context context, com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac acVar) {
        super(context);
        this.Qhi = new ArrayList();
        this.ac = context;
        this.CJ = acVar;
        if (acVar == null) {
            this.CJ = com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac.ac();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0030, code lost:
        if (r0 != null) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0033, code lost:
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0023, code lost:
        if (r0 != null) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0025, code lost:
        r0.close();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int Qhi() {
        /*
            r10 = this;
            r0 = 0
            r1 = 0
            android.content.Context r2 = r10.fl()     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L30
            java.lang.String r3 = r10.cJ()     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L30
            r4 = 1
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L30
            java.lang.String r5 = "count(1)"
            r4[r1] = r5     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L30
            r8 = 0
            r9 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r0 = com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.ac.Qhi(r2, r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L30
            if (r0 == 0) goto L23
            r0.moveToFirst()     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L30
            int r1 = r0.getInt(r1)     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L30
        L23:
            if (r0 == 0) goto L33
        L25:
            r0.close()     // Catch: java.lang.Exception -> L33
            goto L33
        L29:
            r1 = move-exception
            if (r0 == 0) goto L2f
            r0.close()     // Catch: java.lang.Exception -> L2f
        L2f:
            throw r1
        L30:
            if (r0 == 0) goto L33
            goto L25
        L33:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi.Qhi.Qhi():int");
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi.ac
    public String cJ() {
        com.bytedance.sdk.component.Tgh.Qhi.Qhi.Tgh CJ = hm.ROR().CJ();
        if (CJ != null) {
            return CJ.cJ();
        }
        return null;
    }

    public List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> Qhi(int i, String str) {
        String str2;
        String[] strArr;
        byte b2;
        String str3;
        Cursor Qhi;
        long Qhi2 = com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.Qhi(i, fl());
        cJ();
        if (Qhi2 <= 0) {
            Qhi2 = 1;
        } else if (Qhi2 > 100) {
            Qhi2 = 100;
        }
        String str4 = str + " DESC limit " + Qhi2;
        ArrayList arrayList = new ArrayList();
        this.Qhi.clear();
        long HzH = hm.ROR().HzH();
        if (HzH > 0) {
            strArr = new String[]{String.valueOf(System.currentTimeMillis() - HzH)};
            str2 = "gen_time>?";
        } else {
            str2 = null;
            strArr = null;
        }
        if (com.bytedance.sdk.component.Tgh.Qhi.ac.Qhi.CJ() && CJ() == 3) {
            b2 = 3;
            Qhi = com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.ac.Qhi(fl(), cJ(), new String[]{"id", "value", "encrypt", "channel"}, str2, strArr, null, null, str4);
            str3 = "id";
        } else {
            b2 = 3;
            str3 = "id";
            Qhi = com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.ac.Qhi(fl(), cJ(), new String[]{"id", "value", "encrypt"}, str2, strArr, null, null, str4);
        }
        if (Qhi != null) {
            try {
                com.bytedance.sdk.component.Tgh.Qhi.Tgh hpZ = hm.ROR().hpZ();
                while (Qhi.moveToNext()) {
                    try {
                        String string = Qhi.getString(Qhi.getColumnIndex(str3));
                        String string2 = Qhi.getString(Qhi.getColumnIndex("value"));
                        int i2 = Qhi.getInt(Qhi.getColumnIndex("encrypt"));
                        int i3 = (com.bytedance.sdk.component.Tgh.Qhi.ac.Qhi.CJ() && CJ() == b2) ? Qhi.getInt(Qhi.getColumnIndex("channel")) : 0;
                        if (i2 == 1) {
                            try {
                                string2 = hpZ.Qhi(string2);
                            } catch (Throwable th) {
                                th = th;
                                th.getMessage();
                            }
                        }
                        if (TextUtils.isEmpty(string2)) {
                            this.Qhi.add(string);
                        } else if (arrayList.size() > 100) {
                            break;
                        } else {
                            JSONObject jSONObject = new JSONObject(string2);
                            com.bytedance.sdk.component.Tgh.Qhi.CJ.Qhi.cJ cJVar = new com.bytedance.sdk.component.Tgh.Qhi.CJ.Qhi.cJ(string, jSONObject);
                            cJVar.Qhi(CJ());
                            cJVar.cJ(ac());
                            if (com.bytedance.sdk.component.Tgh.Qhi.ac.Qhi.CJ() && CJ() == b2) {
                                cJVar.Qhi(i3);
                            }
                            com.bytedance.sdk.component.Tgh.Qhi.ac.Qhi.Qhi(jSONObject, cJVar);
                            arrayList.add(cJVar);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
                if (Qhi != null) {
                    try {
                        Qhi.close();
                        if (!this.Qhi.isEmpty()) {
                            Qhi(this.Qhi);
                            this.Qhi.clear();
                        }
                    } catch (Exception unused) {
                    }
                }
            } catch (Throwable th3) {
                if (Qhi != null) {
                    try {
                        Qhi.close();
                        if (!this.Qhi.isEmpty()) {
                            Qhi(this.Qhi);
                            this.Qhi.clear();
                        }
                    } catch (Exception unused2) {
                    }
                }
                throw th3;
            }
        }
        cJ();
        arrayList.size();
        return arrayList;
    }

    public List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> Qhi(String str) {
        com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac acVar = this.CJ;
        if (acVar == null) {
            return new ArrayList();
        }
        return Qhi(acVar.cJ(), str);
    }

    protected void Qhi(List<String> list) {
        cJ();
        list.size();
        com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.ac.Qhi(fl(), "DELETE FROM " + cJ() + " WHERE " + Qhi("id", list, 1000, true));
        com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.dI(), list.size());
        ac(list);
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
        if (j > 0 || i > 0) {
            com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.ac.Qhi(fl(), cJ(), "gen_time <? OR retry >?", new String[]{String.valueOf(System.currentTimeMillis() - j), String.valueOf(i)});
            cJ();
        }
    }

    public boolean Qhi(int i) {
        if (this.CJ == null) {
            return false;
        }
        int Qhi = Qhi();
        int Qhi2 = this.CJ.Qhi();
        cJ();
        return (com.bytedance.sdk.component.Tgh.Qhi.ac.Qhi.ac() && (i == 1 || i == 2)) ? Qhi > 0 : Qhi >= Qhi2;
    }

    public static String cJ(String str) {
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

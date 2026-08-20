package com.bytedance.sdk.component.adexpress.Qhi.cJ;

import android.text.TextUtils;
import com.appnext.base.b.d;
import com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.component.utils.Eh;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* compiled from: TemplateCacheBaseApi.java */
/* loaded from: classes2.dex */
public abstract class ac {
    public abstract File Qhi();

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean Qhi(Map<String, com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi> map) {
        if (map == null || map.size() == 0) {
            return false;
        }
        for (String str : map.keySet()) {
            com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi qhi = map.get(str);
            if (qhi != null && !Qhi(qhi.Tgh())) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:12:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean Qhi(java.util.List<com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi.C0188Qhi> r6) {
        /*
            r5 = this;
            r0 = 0
            if (r6 == 0) goto L5b
            int r1 = r6.size()
            if (r1 <= 0) goto L5b
            java.io.File r1 = r5.Qhi()
            if (r1 != 0) goto L10
            goto L5b
        L10:
            java.util.Iterator r6 = r6.iterator()
        L14:
            boolean r1 = r6.hasNext()
            if (r1 == 0) goto L59
            java.lang.Object r1 = r6.next()
            com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi$Qhi r1 = (com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi.C0188Qhi) r1
            java.lang.String r2 = r1.Qhi()
            java.lang.String r2 = com.bytedance.sdk.component.utils.Tgh.Qhi(r2)
            boolean r3 = android.text.TextUtils.isEmpty(r2)
            if (r3 == 0) goto L2f
            return r0
        L2f:
            java.io.File r3 = new java.io.File
            java.io.File r4 = r5.Qhi()
            r3.<init>(r4, r2)
            java.lang.String r2 = com.bytedance.sdk.component.utils.Tgh.Qhi(r3)
            boolean r4 = r3.exists()
            if (r4 == 0) goto L58
            boolean r3 = r3.isFile()
            if (r3 == 0) goto L58
            java.lang.String r3 = r1.cJ()
            if (r3 == 0) goto L58
            java.lang.String r1 = r1.cJ()
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L14
        L58:
            return r0
        L59:
            r6 = 1
            return r6
        L5b:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.adexpress.Qhi.cJ.ac.Qhi(java.util.List):boolean");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean Qhi(com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi.cJ r5) {
        /*
            r4 = this;
            r0 = 0
            if (r5 == 0) goto L42
            java.io.File r1 = r4.Qhi()
            if (r1 != 0) goto La
            goto L42
        La:
            java.util.List r5 = r5.cJ()
            if (r5 == 0) goto L40
            int r1 = r5.size()
            if (r1 <= 0) goto L40
            java.util.Iterator r5 = r5.iterator()
        L1a:
            boolean r1 = r5.hasNext()
            if (r1 == 0) goto L40
            java.lang.Object r1 = r5.next()
            android.util.Pair r1 = (android.util.Pair) r1
            java.io.File r2 = new java.io.File
            java.io.File r3 = r4.Qhi()
            java.lang.Object r1 = r1.first
            java.lang.String r1 = (java.lang.String) r1
            r2.<init>(r3, r1)
            boolean r1 = r2.exists()
            if (r1 == 0) goto L3f
            boolean r1 = r2.isFile()
            if (r1 != 0) goto L1a
        L3f:
            return r0
        L40:
            r5 = 1
            return r5
        L42:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.adexpress.Qhi.cJ.ac.Qhi(com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi$cJ):boolean");
    }

    public List<Qhi.C0188Qhi> Qhi(com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi qhi, com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi qhi2) {
        Map<String, com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi> Qhi = qhi.Qhi();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        if (Qhi.size() == 0) {
            if (qhi2 != null && qhi2.Qhi().size() != 0) {
                Map<String, com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi> Qhi2 = qhi2.Qhi();
                for (String str : Qhi2.keySet()) {
                    com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi qhi3 = Qhi2.get(str);
                    if (qhi3 != null) {
                        arrayList.addAll(qhi3.Tgh());
                    }
                }
            }
        } else if (qhi2 == null || qhi2.Qhi().size() == 0) {
            if (Qhi.size() != 0) {
                for (String str2 : Qhi.keySet()) {
                    com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi qhi4 = Qhi.get(str2);
                    if (qhi4 != null) {
                        arrayList2.addAll(qhi4.Tgh());
                    }
                }
            }
        } else {
            Map<String, com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi> Qhi3 = qhi2.Qhi();
            for (String str3 : Qhi.keySet()) {
                com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi qhi5 = Qhi.get(str3);
                com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi qhi6 = Qhi3.get(str3);
                if (qhi6 == null && qhi5 != null) {
                    arrayList2.addAll(qhi5.Tgh());
                } else if (qhi5 == null && qhi6 != null) {
                    arrayList.addAll(qhi6.Tgh());
                } else if (qhi5 != null) {
                    for (Qhi.C0188Qhi c0188Qhi : qhi5.Tgh()) {
                        if (c0188Qhi != null && !qhi6.Tgh().contains(c0188Qhi) && c0188Qhi.cJ() != null && c0188Qhi.Qhi() != null) {
                            arrayList2.add(c0188Qhi);
                        }
                    }
                    for (Qhi.C0188Qhi c0188Qhi2 : qhi6.Tgh()) {
                        if (c0188Qhi2 != null && !qhi5.Tgh().contains(c0188Qhi2)) {
                            arrayList.add(c0188Qhi2);
                        }
                    }
                }
            }
        }
        if (Qhi(arrayList2, arrayList3)) {
            return arrayList;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x000a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean Qhi(java.util.List<com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi.C0188Qhi> r8, java.util.List<com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi.C0188Qhi> r9) {
        /*
            r7 = this;
            java.util.Iterator r8 = r8.iterator()
        L4:
            boolean r0 = r8.hasNext()
            if (r0 == 0) goto L89
            java.lang.Object r0 = r8.next()
            com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi$Qhi r0 = (com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi.C0188Qhi) r0
            java.lang.String r1 = r0.Qhi()
            java.lang.String r2 = com.bytedance.sdk.component.utils.Tgh.Qhi(r1)
            java.io.File r3 = new java.io.File
            java.io.File r4 = r7.Qhi()
            r3.<init>(r4, r2)
            java.io.File r4 = new java.io.File
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.StringBuilder r5 = r5.append(r3)
            java.lang.String r6 = ".tmp"
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            boolean r5 = r3.exists()
            if (r5 == 0) goto L42
            r3.delete()     // Catch: java.lang.Throwable -> L42
        L42:
            boolean r3 = r4.exists()
            if (r3 == 0) goto L4b
            r4.delete()     // Catch: java.lang.Throwable -> L4b
        L4b:
            com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi r3 = com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi()
            com.bytedance.sdk.component.adexpress.Qhi.Qhi.ac r3 = r3.ac()
            com.bytedance.sdk.component.ROR.cJ.Qhi r3 = r3.Tgh()
            r3.cJ(r1)
            java.io.File r1 = r7.Qhi()
            java.lang.String r1 = r1.getAbsolutePath()
            r3.Qhi(r1, r2)
            com.bytedance.sdk.component.ROR.cJ r1 = r3.Qhi()
            r9.add(r0)
            if (r1 == 0) goto L84
            boolean r0 = r1.Tgh()
            if (r0 == 0) goto L84
            java.io.File r0 = r1.fl()
            if (r0 == 0) goto L84
            java.io.File r0 = r1.fl()
            boolean r0 = r0.exists()
            if (r0 != 0) goto L4
        L84:
            r7.ac(r9)
            r8 = 0
            return r8
        L89:
            r8 = 1
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.adexpress.Qhi.cJ.ac.Qhi(java.util.List, java.util.List):boolean");
    }

    public List<Qhi.C0188Qhi> cJ(com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi qhi, com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi qhi2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        if (qhi2 == null || qhi2.Tgh().isEmpty()) {
            arrayList2.addAll(qhi.Tgh());
        } else if (qhi.Tgh().isEmpty()) {
            arrayList.addAll(qhi2.Tgh());
        } else {
            for (Qhi.C0188Qhi c0188Qhi : qhi.Tgh()) {
                if (!qhi2.Tgh().contains(c0188Qhi) && c0188Qhi != null && c0188Qhi.Qhi() != null && c0188Qhi.cJ() != null) {
                    arrayList2.add(c0188Qhi);
                }
            }
            for (Qhi.C0188Qhi c0188Qhi2 : qhi2.Tgh()) {
                if (!qhi.Tgh().contains(c0188Qhi2)) {
                    arrayList.add(c0188Qhi2);
                }
            }
        }
        if (Qhi(arrayList2, arrayList3)) {
            return arrayList;
        }
        return null;
    }

    public void cJ(List<Qhi.C0188Qhi> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (Qhi.C0188Qhi c0188Qhi : list) {
            File file = new File(Qhi(), com.bytedance.sdk.component.utils.Tgh.Qhi(c0188Qhi.Qhi()));
            File file2 = new File(file + d.eY);
            if (file.exists()) {
                try {
                    file.delete();
                } catch (Throwable unused) {
                }
            }
            if (file2.exists()) {
                try {
                    file2.delete();
                } catch (Throwable unused2) {
                }
            }
        }
    }

    public boolean Qhi(String str) {
        File file = new File(Qhi().getAbsoluteFile(), com.bytedance.sdk.component.utils.Tgh.Qhi(str) + ".zip");
        com.bytedance.sdk.component.ROR.cJ.Qhi Tgh = com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().ac().Tgh();
        Tgh.cJ(str);
        Tgh.Qhi(file.getParent(), file.getName());
        com.bytedance.sdk.component.ROR.cJ Qhi = Tgh.Qhi();
        if (Qhi.Tgh() && Qhi.fl() != null && Qhi.fl().exists()) {
            File fl = Qhi.fl();
            try {
                Eh.Qhi(fl.getAbsolutePath(), file.getParent());
                if (fl.exists()) {
                    fl.delete();
                    return true;
                }
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public void Qhi(int i) {
        if (com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().CJ() != null) {
            com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().CJ().Qhi(i);
        }
    }

    public void ac(List<Qhi.C0188Qhi> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (Qhi.C0188Qhi c0188Qhi : list) {
            File file = new File(Qhi(), com.bytedance.sdk.component.utils.Tgh.Qhi(c0188Qhi.Qhi()));
            File file2 = new File(file + d.eY);
            if (file.exists()) {
                try {
                    file.delete();
                } catch (Throwable unused) {
                }
            }
            if (file2.exists()) {
                try {
                    file2.delete();
                } catch (Throwable unused2) {
                }
            }
        }
    }

    public static void Qhi(File file, com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi qhi, String str) {
        if (qhi == null) {
            return;
        }
        String hm = qhi.hm();
        if (TextUtils.isEmpty(hm)) {
            return;
        }
        File file2 = new File(file, str);
        File file3 = new File(file2 + d.eY);
        if (file3.exists()) {
            file3.delete();
        }
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file3);
            try {
                fileOutputStream2.write(hm.getBytes("utf-8"));
                if (file2.exists()) {
                    file2.delete();
                }
                file3.renameTo(file2);
                try {
                    fileOutputStream2.close();
                } catch (IOException unused) {
                }
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                try {
                    ABk.Qhi("PlayComponentEngineCacheManager", "version save error3", th);
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                } catch (Throwable th2) {
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException unused3) {
                        }
                    }
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static boolean ac(com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi qhi, com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi qhi2) {
        if (qhi != null) {
            try {
                if (!TextUtils.isEmpty(qhi.ac())) {
                    if (qhi2 == null) {
                        return false;
                    }
                    if (Qhi(qhi.ac(), qhi2.ac())) {
                        return true;
                    }
                    Map<String, com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi> Qhi = qhi.Qhi();
                    Map<String, com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi> Qhi2 = qhi2.Qhi();
                    if (Qhi.isEmpty()) {
                        return !Qhi2.isEmpty();
                    } else if (Qhi2.isEmpty()) {
                        return false;
                    } else {
                        return Qhi(Qhi, Qhi2);
                    }
                }
            } catch (Throwable th) {
                th.getMessage();
                return false;
            }
        }
        return true;
    }

    private static boolean Qhi(Map<String, com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi> map, Map<String, com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi> map2) {
        if (map.size() != map2.size()) {
            return true;
        }
        for (String str : map2.keySet()) {
            com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi qhi = map.get(str);
            if (qhi == null) {
                return true;
            }
            com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi qhi2 = map2.get(str);
            if (qhi2 == null) {
                return false;
            }
            if (Qhi(qhi.ac(), qhi2.ac())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0042, code lost:
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean Qhi(java.lang.String r6, java.lang.String r7) {
        /*
            java.lang.String r0 = "\\."
            java.lang.String[] r7 = r7.split(r0)
            java.lang.String[] r6 = r6.split(r0)
            int r0 = r7.length
            int r1 = r6.length
            int r0 = java.lang.Math.min(r0, r1)
            r1 = 0
            r2 = r1
        L12:
            if (r2 >= r0) goto L42
            r3 = r7[r2]
            int r3 = r3.length()
            r4 = r6[r2]
            int r4 = r4.length()
            int r3 = r3 - r4
            r4 = 1
            if (r3 != 0) goto L3f
            r3 = r7[r2]
            r5 = r6[r2]
            int r3 = r3.compareTo(r5)
            if (r3 <= 0) goto L2f
            return r4
        L2f:
            if (r3 >= 0) goto L32
            return r1
        L32:
            int r3 = r0 + (-1)
            if (r2 != r3) goto L3c
            int r7 = r7.length
            int r6 = r6.length
            if (r7 <= r6) goto L3b
            return r4
        L3b:
            return r1
        L3c:
            int r2 = r2 + 1
            goto L12
        L3f:
            if (r3 <= 0) goto L42
            return r4
        L42:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.adexpress.Qhi.cJ.ac.Qhi(java.lang.String, java.lang.String):boolean");
    }

    @Deprecated
    public static boolean Qhi(com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi qhi, String str) {
        if (qhi != null) {
            try {
                if (TextUtils.isEmpty(qhi.ac())) {
                    return true;
                }
                if (TextUtils.isEmpty(str)) {
                    return false;
                }
                return Qhi(qhi.ac(), str);
            } catch (Throwable unused) {
                return false;
            }
        }
        return true;
    }

    public static void cJ(File file, com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi qhi, String str) {
        if (qhi == null || file == null) {
            return;
        }
        try {
            new File(file, str).delete();
        } catch (Throwable unused) {
        }
        if (qhi.Tgh() != null) {
            for (Qhi.C0188Qhi c0188Qhi : qhi.Tgh()) {
                try {
                    new File(file, com.bytedance.sdk.component.utils.Tgh.Qhi(c0188Qhi.Qhi())).delete();
                } catch (Throwable unused2) {
                }
            }
        }
    }
}

package com.bykv.vk.openvk.component.video.Qhi.cJ;

import android.net.Uri;
import android.text.TextUtils;
import com.appnext.base.b.f;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Request.java */
/* loaded from: classes2.dex */
public class WAv {
    public final ac Qhi;
    public final Qhi ac;
    public final List<cJ> cJ;

    public WAv(ac acVar, List<cJ> list, Qhi qhi) {
        this.Qhi = acVar;
        this.cJ = list;
        this.ac = qhi;
    }

    public static WAv Qhi(InputStream inputStream) throws IOException, fl {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi));
        ArrayList arrayList = new ArrayList();
        ac acVar = null;
        while (true) {
            String readLine = bufferedReader.readLine();
            if (TextUtils.isEmpty(readLine)) {
                break;
            }
            String trim = readLine.trim();
            if (acVar == null) {
                acVar = ac.Qhi(trim);
            } else {
                arrayList.add(cJ.Qhi(trim));
            }
        }
        if (acVar == null) {
            throw new fl("request line is null");
        }
        return new WAv(acVar, arrayList, Qhi.Qhi(acVar, arrayList));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Request.java */
    /* loaded from: classes2.dex */
    public static final class ac {
        final String Qhi;
        final String ac;
        final String cJ;

        private ac(String str, String str2, String str3) {
            this.Qhi = str;
            this.cJ = str2;
            this.ac = str3;
        }

        static ac Qhi(String str) throws fl {
            int indexOf = str.indexOf(32);
            if (indexOf == -1) {
                throw new fl("request line format error, line: ".concat(String.valueOf(str)));
            }
            int lastIndexOf = str.lastIndexOf(32);
            if (lastIndexOf <= indexOf) {
                throw new fl("request line format error, line: ".concat(String.valueOf(str)));
            }
            String trim = str.substring(0, indexOf).trim();
            String trim2 = str.substring(indexOf + 1, lastIndexOf).trim();
            String trim3 = str.substring(lastIndexOf + 1).trim();
            if (trim.length() == 0 || trim2.length() == 0 || trim3.length() == 0) {
                throw new fl("request line format error, line: ".concat(String.valueOf(str)));
            }
            return new ac(trim, trim2, trim3);
        }

        public String toString() {
            return "RequestLine{method='" + this.Qhi + "', path='" + this.cJ + "', version='" + this.ac + "'}";
        }
    }

    /* compiled from: Request.java */
    /* loaded from: classes2.dex */
    public static final class cJ {
        public final String Qhi;
        public final String cJ;

        public cJ(String str, String str2) {
            this.Qhi = str;
            this.cJ = str2;
        }

        static cJ Qhi(String str) throws fl {
            int indexOf = str.indexOf(":");
            if (indexOf == -1) {
                throw new fl("request header format error, header: ".concat(String.valueOf(str)));
            }
            String trim = str.substring(0, indexOf).trim();
            String trim2 = str.substring(indexOf + 1).trim();
            if (trim.length() == 0 || trim2.length() == 0) {
                throw new fl("request header format error, header: ".concat(String.valueOf(str)));
            }
            return new cJ(trim, trim2);
        }

        public String toString() {
            return "Header{name='" + this.Qhi + "', value='" + this.cJ + "'}";
        }
    }

    /* compiled from: Request.java */
    /* loaded from: classes2.dex */
    static final class Qhi {
        final int CJ;
        final int Qhi;
        final List<String> ROR;
        final String Tgh;
        final String ac;
        final String cJ;
        final int fl;

        private Qhi(int i, String str, String str2, int i2, int i3, String str3, List<String> list) {
            this.Qhi = i;
            this.cJ = str;
            this.ac = str2;
            this.CJ = i2;
            this.fl = i3;
            this.Tgh = str3;
            this.ROR = list;
        }

        static Qhi Qhi(ac acVar, List<cJ> list) throws fl {
            String str;
            int i;
            int i2;
            int indexOf = acVar.cJ.indexOf("?");
            if (indexOf == -1) {
                throw new fl("path format error, path: " + acVar.cJ);
            }
            ArrayList arrayList = new ArrayList();
            String str2 = null;
            String str3 = null;
            String str4 = null;
            int i3 = 0;
            for (String str5 : acVar.cJ.substring(indexOf + 1).split("&")) {
                String[] split = str5.split("=");
                if (split.length == 2) {
                    if ("rk".equals(split[0])) {
                        str3 = Uri.decode(split[1]);
                    } else if ("k".equals(split[0])) {
                        str4 = Uri.decode(split[1]);
                    } else if (split[0].startsWith("u")) {
                        arrayList.add(Uri.decode(split[1]));
                    } else if (f.TAG.equals(split[0]) && com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.cJ(split[1]) == 1) {
                        i3 = 1;
                    }
                }
            }
            if (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) {
                throw new fl("rawKey or key is empty, path: " + acVar.cJ);
            }
            if (list != null) {
                i2 = 0;
                int i4 = 0;
                for (cJ cJVar : list) {
                    if (cJVar != null && "Range".equalsIgnoreCase(cJVar.Qhi)) {
                        int indexOf2 = cJVar.cJ.indexOf("=");
                        if (indexOf2 == -1) {
                            throw new fl("Range format error, Range: " + cJVar.cJ);
                        }
                        if (!"bytes".equalsIgnoreCase(cJVar.cJ.substring(0, indexOf2).trim())) {
                            throw new fl("Range format error, Range: " + cJVar.cJ);
                        }
                        String substring = cJVar.cJ.substring(indexOf2 + 1);
                        if (substring.contains(",")) {
                            throw new fl("Range format error, Range: " + cJVar.cJ);
                        }
                        int indexOf3 = substring.indexOf("-");
                        if (indexOf3 == -1) {
                            throw new fl("Range format error, Range: " + cJVar.cJ);
                        }
                        String trim = substring.substring(0, indexOf3).trim();
                        String trim2 = substring.substring(indexOf3 + 1).trim();
                        try {
                            if (trim.length() > 0) {
                                i2 = Integer.parseInt(trim);
                            }
                            if (trim2.length() > 0 && i2 > (i4 = Integer.parseInt(trim2))) {
                                throw new fl("Range format error, Range: " + cJVar.cJ);
                            }
                            str2 = cJVar.cJ;
                        } catch (NumberFormatException unused) {
                            throw new fl("Range format error, Range: " + cJVar.cJ);
                        }
                    }
                }
                i = i4;
                str = str2;
            } else {
                str = null;
                i = 0;
                i2 = 0;
            }
            if (arrayList.isEmpty()) {
                throw new fl("no url found: path: " + acVar.cJ);
            }
            return new Qhi(i3, str3, str4, i2, i, str, arrayList);
        }

        public String toString() {
            return "Extra{flag=" + this.Qhi + ", rawKey='" + this.cJ + "', key='" + this.ac + "', from=" + this.CJ + ", to=" + this.fl + ", urls=" + this.ROR + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String Qhi(String str, String str2, List<String> list) {
        StringBuilder sb = new StringBuilder(512);
        String str3 = null;
        do {
            if (str3 != null) {
                if (list.size() == 1) {
                    return null;
                }
                list.remove(list.size() - 1);
            }
            str3 = Qhi(sb, str, str2, list);
        } while (str3.length() > 3072);
        return str3;
    }

    private static String Qhi(StringBuilder sb, String str, String str2, List<String> list) {
        sb.delete(0, sb.length());
        sb.append("rk=").append(Uri.encode(str));
        sb.append("&k=").append(Uri.encode(str2));
        int size = list.size();
        for (int i = 0; i < size; i++) {
            sb.append("&u").append(i).append("=").append(Uri.encode(list.get(i)));
        }
        return sb.toString();
    }

    public String toString() {
        return "Request{requestLine=" + this.Qhi + ", headers=" + this.cJ + ", extra=" + this.ac + '}';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Request.java */
    /* loaded from: classes2.dex */
    public static final class fl extends Exception {
        fl(String str) {
            super(str);
        }
    }
}

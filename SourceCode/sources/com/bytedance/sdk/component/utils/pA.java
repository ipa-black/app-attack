package com.bytedance.sdk.component.utils;

import android.content.Context;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: MimeDetector.java */
/* loaded from: classes2.dex */
public class pA {
    private static volatile pA ac;
    private Context CJ;
    private Map<String, String> Qhi;
    private volatile boolean cJ = false;

    public static String Qhi(Context context, String str) {
        if (str != null) {
            try {
                if (str.startsWith("http") && str.contains("?")) {
                    str = str.split("\\?")[0];
                    if (str.endsWith("/")) {
                        str = str.substring(0, str.length() - 1);
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return Qhi(context).Qhi(str);
    }

    static pA Qhi(Context context) {
        if (ac == null) {
            synchronized (pA.class) {
                if (ac == null) {
                    ac = new pA(context);
                }
            }
        }
        return ac;
    }

    private pA(Context context) {
        if (context != null && this.CJ == null) {
            this.CJ = context.getApplicationContext();
            Qhi();
        }
        this.CJ = context;
    }

    public final String Qhi(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String CJ = CJ(str);
        if (TextUtils.isEmpty(CJ)) {
            return null;
        }
        return cJ(CJ);
    }

    private static String cJ(String str) {
        String substring;
        int indexOf = str.indexOf(47);
        int indexOf2 = str.indexOf(59);
        if (indexOf < 0) {
            return null;
        }
        String lowerCase = str.substring(0, indexOf).trim().toLowerCase(Locale.ENGLISH);
        if (ac(lowerCase)) {
            int i = indexOf + 1;
            if (indexOf2 < 0) {
                substring = str.substring(i);
            } else {
                substring = str.substring(i, indexOf2);
            }
            String lowerCase2 = substring.trim().toLowerCase(Locale.ENGLISH);
            if (ac(lowerCase2)) {
                StringBuilder sb = new StringBuilder(lowerCase.length() + lowerCase2.length() + 1);
                sb.append(lowerCase);
                sb.append('/');
                sb.append(lowerCase2);
                return sb.toString();
            }
            return null;
        }
        return null;
    }

    private static boolean Qhi(char c2) {
        return c2 > ' ' && c2 < 127 && "()<>@,;:/[]?=\\\"".indexOf(c2) < 0;
    }

    private static boolean ac(String str) {
        int length = str.length();
        if (length == 0) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (!Qhi(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    private String CJ(String str) {
        String str2;
        String fl = fl(str);
        if (fl.isEmpty()) {
            return null;
        }
        Qhi();
        Map<String, String> map = this.Qhi;
        if (map == null || map.isEmpty()) {
            return null;
        }
        do {
            str2 = this.Qhi.get(fl);
            if (str2 == null) {
                fl = fl(fl);
            }
            if (str2 != null) {
                break;
            }
        } while (!fl.isEmpty());
        return str2;
    }

    private static String fl(String str) {
        int indexOf;
        if (str != null && !str.isEmpty() && (indexOf = str.indexOf(46)) >= 0 && indexOf < str.length() - 1) {
            return str.substring(indexOf + 1);
        }
        return "";
    }

    private void Qhi() {
        if (this.CJ == null || this.cJ) {
            return;
        }
        synchronized (this) {
            if (!this.cJ) {
                List list = (List) AccessController.doPrivileged(new PrivilegedAction<List<String>>() { // from class: com.bytedance.sdk.component.utils.pA.1
                    @Override // java.security.PrivilegedAction
                    /* renamed from: Qhi */
                    public List<String> run() {
                        BufferedReader bufferedReader;
                        InputStream inputStream = null;
                        try {
                            ArrayList arrayList = new ArrayList();
                            InputStream open = pA.this.CJ.getAssets().open("tt_mime_type.pro");
                            try {
                                bufferedReader = new BufferedReader(new InputStreamReader(open));
                                while (true) {
                                    try {
                                        String readLine = bufferedReader.readLine();
                                        if (readLine == null) {
                                            break;
                                        } else if (!TextUtils.isEmpty(readLine)) {
                                            arrayList.add(readLine);
                                        }
                                    } catch (Throwable unused) {
                                        inputStream = open;
                                        try {
                                            List<String> emptyList = Collections.emptyList();
                                            if (bufferedReader != null) {
                                                try {
                                                    bufferedReader.close();
                                                } catch (Throwable unused2) {
                                                }
                                            }
                                            return emptyList;
                                        } finally {
                                            if (inputStream != null) {
                                                try {
                                                    inputStream.close();
                                                } catch (Throwable unused3) {
                                                }
                                            }
                                            if (bufferedReader != null) {
                                                try {
                                                    bufferedReader.close();
                                                } catch (Throwable unused4) {
                                                }
                                            }
                                        }
                                    }
                                }
                                if (open != null) {
                                    try {
                                        open.close();
                                    } catch (Throwable unused5) {
                                    }
                                }
                                try {
                                    bufferedReader.close();
                                } catch (Throwable unused6) {
                                }
                                return arrayList;
                            } catch (Throwable unused7) {
                                bufferedReader = null;
                            }
                        } catch (Throwable unused8) {
                            bufferedReader = null;
                        }
                    }
                });
                this.Qhi = new HashMap(list.size());
                String str = "";
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    String str2 = str + ((String) it.next());
                    if (str2.endsWith("\\")) {
                        str = str2.substring(0, str2.length() - 1);
                    } else {
                        Tgh(str2);
                        str = "";
                    }
                }
                if (!str.isEmpty()) {
                    Tgh(str);
                }
                this.cJ = true;
            }
        }
    }

    private void Tgh(String str) {
        String trim = str.trim();
        if (trim.isEmpty()) {
            return;
        }
        if (trim.charAt(0) == '#') {
            return;
        }
        String replaceAll = trim.replaceAll("\\s*#.*", "");
        if (replaceAll.indexOf(61) > 0) {
            Matcher matcher = Pattern.compile("\\btype=(\"\\p{Graph}+?/\\p{Graph}+?\"|\\p{Graph}+/\\p{Graph}+\\b)").matcher(replaceAll);
            if (matcher.find()) {
                String substring = matcher.group().substring(5);
                if (substring.charAt(0) == '\"') {
                    substring = substring.substring(1, substring.length() - 1);
                }
                Matcher matcher2 = Pattern.compile("\\bexts=(\"[\\p{Graph}|\\p{Blank}]+?\"|\\p{Graph}+\\b)").matcher(replaceAll);
                if (matcher2.find()) {
                    String substring2 = matcher2.group().substring(5);
                    if (substring2.charAt(0) == '\"') {
                        substring2 = substring2.substring(1, substring2.length() - 1);
                    }
                    for (String str2 : substring2.split("[\\p{Blank}|\\p{Punct}]+")) {
                        Qhi(str2, substring);
                    }
                    return;
                }
                return;
            }
            return;
        }
        String[] split = replaceAll.split("\\s+");
        for (int i = 1; i < split.length; i++) {
            Qhi(split[i], split[0]);
        }
    }

    private void Qhi(String str, String str2) {
        if (str == null || str.isEmpty() || str2 == null || str2.isEmpty() || this.Qhi.containsKey(str)) {
            return;
        }
        this.Qhi.put(str, str2);
    }
}

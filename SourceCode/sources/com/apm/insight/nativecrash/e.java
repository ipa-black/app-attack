package com.apm.insight.nativecrash;

import com.apm.insight.l.n;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public class e {
    private static final Pattern i = Pattern.compile("^pid:\\s(.*),\\stid:\\s(.*),\\sname:\\s(.*)\\s+>>>\\s(.*)\\s<<<$");
    private static final Pattern j = Pattern.compile("^signal\\s(.*),\\scode\\s(.*),\\sfault\\saddr\\s(.*)$");
    private static final Pattern k = Pattern.compile("^Abort message: (.*)$");
    private static final Pattern l = Pattern.compile("^Crash message: (.*)$");
    private static final Pattern m = Pattern.compile("^    \\/(\\w*)\\/.*\\/(.*\\.so)\\s\\(BuildId: ([a-f0-9]*)\\)$");

    /* renamed from: a  reason: collision with root package name */
    private String f1053a;

    /* renamed from: b  reason: collision with root package name */
    private String f1054b;

    /* renamed from: c  reason: collision with root package name */
    private String f1055c;

    /* renamed from: d  reason: collision with root package name */
    private String f1056d;

    /* renamed from: e  reason: collision with root package name */
    private String f1057e;

    /* renamed from: f  reason: collision with root package name */
    private String f1058f;

    /* renamed from: g  reason: collision with root package name */
    private String f1059g;

    /* renamed from: h  reason: collision with root package name */
    private Map<String, String> f1060h = new HashMap();

    public e(File file) {
        c(n.b(file));
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x019a, code lost:
        r12 = r3.readLine();
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x019e, code lost:
        if (r12 == null) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01a6, code lost:
        if (r12.contains("BuildId:") != false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01a9, code lost:
        r12 = com.apm.insight.nativecrash.e.m.matcher(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01b3, code lost:
        if (r12.find() != false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01b6, code lost:
        r0 = r12.group(1);
        r1 = r12.group(2);
        r12 = r12.group(3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01c8, code lost:
        if (r0.equals("data") == false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01ca, code lost:
        r11.f1060h.put(r1, r12);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void c(java.io.File r12) {
        /*
            Method dump skipped, instructions count: 494
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apm.insight.nativecrash.e.c(java.io.File):void");
    }

    public String a() {
        return this.f1059g;
    }

    public void a(File file) {
        File b2 = n.b(file);
        if (b2.exists()) {
            b2.renameTo(new File(b2.getAbsoluteFile() + ".old"));
        }
        NativeImpl.a(file);
        c(n.b(file));
    }

    public Map<String, String> b() {
        return this.f1060h;
    }

    public void b(File file) {
        c(n.b(file));
    }

    public String c() {
        StringBuilder sb = new StringBuilder();
        String str = this.f1057e;
        if (str != null) {
            sb.append(str);
        }
        String str2 = this.f1058f;
        if (str2 != null) {
            sb.append(str2);
        }
        String str3 = this.f1059g;
        if (str3 != null) {
            sb.append(str3);
        }
        return sb.toString();
    }
}

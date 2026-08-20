package com.bytedance.sdk.component.cJ.Qhi;

import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.text.Typography;
import org.slf4j.Marker;
/* compiled from: HttpUrl.java */
/* loaded from: classes2.dex */
public final class Sf {
    private static final char[] CJ = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    final String Qhi;
    private final List<String> ROR;
    private final List<String> Sf;
    private final String Tgh;
    private final String WAv;
    final int ac;
    final String cJ;
    private final String fl;
    private final String hm;

    Sf(Qhi qhi) {
        this.Qhi = qhi.Qhi;
        this.fl = Qhi(qhi.cJ, false);
        this.Tgh = Qhi(qhi.ac, false);
        this.cJ = qhi.CJ;
        this.ac = qhi.Qhi();
        this.ROR = Qhi(qhi.Tgh, false);
        this.Sf = qhi.ROR != null ? Qhi(qhi.ROR, true) : null;
        this.hm = qhi.Sf != null ? Qhi(qhi.Sf, false) : null;
        this.WAv = qhi.toString();
    }

    public URL Qhi() {
        try {
            return new URL(this.WAv);
        } catch (MalformedURLException e2) {
            throw new RuntimeException(e2);
        }
    }

    public String cJ() {
        if (this.fl.isEmpty()) {
            return "";
        }
        int length = this.Qhi.length() + 3;
        String str = this.WAv;
        return this.WAv.substring(length, com.bytedance.sdk.component.cJ.Qhi.cJ.WAv.Qhi(str, length, str.length(), ":@"));
    }

    public String ac() {
        if (this.Tgh.isEmpty()) {
            return "";
        }
        int indexOf = this.WAv.indexOf(64);
        return this.WAv.substring(this.WAv.indexOf(58, this.Qhi.length() + 3) + 1, indexOf);
    }

    public static int Qhi(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    static void Qhi(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            sb.append('/');
            sb.append(list.get(i));
        }
    }

    public List<String> CJ() {
        int indexOf = this.WAv.indexOf(47, this.Qhi.length() + 3);
        String str = this.WAv;
        int Qhi2 = com.bytedance.sdk.component.cJ.Qhi.cJ.WAv.Qhi(str, indexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (indexOf < Qhi2) {
            int i = indexOf + 1;
            int Qhi3 = com.bytedance.sdk.component.cJ.Qhi.cJ.WAv.Qhi(this.WAv, i, Qhi2, '/');
            arrayList.add(this.WAv.substring(i, Qhi3));
            indexOf = Qhi3;
        }
        return arrayList;
    }

    public String fl() {
        if (this.Sf == null) {
            return null;
        }
        int indexOf = this.WAv.indexOf(63) + 1;
        String str = this.WAv;
        return this.WAv.substring(indexOf, com.bytedance.sdk.component.cJ.Qhi.cJ.WAv.Qhi(str, indexOf, str.length(), '#'));
    }

    static void cJ(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i += 2) {
            String str = list.get(i);
            String str2 = list.get(i + 1);
            if (i > 0) {
                sb.append(Typography.amp);
            }
            sb.append(str);
            if (str2 != null) {
                sb.append('=');
                sb.append(str2);
            }
        }
    }

    static List<String> cJ(String str) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i <= str.length()) {
            int indexOf = str.indexOf(38, i);
            if (indexOf == -1) {
                indexOf = str.length();
            }
            int indexOf2 = str.indexOf(61, i);
            if (indexOf2 == -1 || indexOf2 > indexOf) {
                arrayList.add(str.substring(i, indexOf));
                arrayList.add(null);
            } else {
                arrayList.add(str.substring(i, indexOf2));
                arrayList.add(str.substring(indexOf2 + 1, indexOf));
            }
            i = indexOf + 1;
        }
        return arrayList;
    }

    public static Sf ac(String str) {
        Qhi qhi = new Qhi();
        if (qhi.Qhi((Sf) null, str) == Qhi.EnumC0198Qhi.SUCCESS) {
            return qhi.cJ();
        }
        return null;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Sf) && ((Sf) obj).WAv.equals(this.WAv);
    }

    public int hashCode() {
        return this.WAv.hashCode();
    }

    public String toString() {
        return this.WAv;
    }

    /* compiled from: HttpUrl.java */
    /* loaded from: classes2.dex */
    public static final class Qhi {
        String CJ;
        String Qhi;
        List<String> ROR;
        String Sf;
        final List<String> Tgh;
        String cJ = "";
        String ac = "";
        int fl = -1;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: HttpUrl.java */
        /* renamed from: com.bytedance.sdk.component.cJ.Qhi.Sf$Qhi$Qhi  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public enum EnumC0198Qhi {
            SUCCESS,
            MISSING_SCHEME,
            UNSUPPORTED_SCHEME,
            INVALID_PORT,
            INVALID_HOST
        }

        public Qhi() {
            ArrayList arrayList = new ArrayList();
            this.Tgh = arrayList;
            arrayList.add("");
        }

        public Qhi Qhi(String str) {
            if (str == null) {
                throw new NullPointerException("scheme == null");
            }
            if (str.equalsIgnoreCase("http")) {
                this.Qhi = "http";
            } else if (str.equalsIgnoreCase("https")) {
                this.Qhi = "https";
            } else {
                throw new IllegalArgumentException("unexpected scheme: ".concat(String.valueOf(str)));
            }
            return this;
        }

        public Qhi cJ(String str) {
            if (str == null) {
                throw new NullPointerException("host == null");
            }
            String fl = fl(str, 0, str.length());
            if (fl == null) {
                throw new IllegalArgumentException("unexpected host: ".concat(String.valueOf(str)));
            }
            this.CJ = fl;
            return this;
        }

        int Qhi() {
            int i = this.fl;
            return i != -1 ? i : Sf.Qhi(this.Qhi);
        }

        public Qhi ac(String str) {
            if (str == null) {
                throw new NullPointerException("encodedPathSegments == null");
            }
            return Qhi(str, true);
        }

        private Qhi Qhi(String str, boolean z) {
            int i = 0;
            do {
                int Qhi = com.bytedance.sdk.component.cJ.Qhi.cJ.WAv.Qhi(str, i, str.length(), "/\\");
                Qhi(str, i, Qhi, Qhi < str.length(), z);
                i = Qhi + 1;
            } while (i <= str.length());
            return this;
        }

        public Qhi CJ(String str) {
            this.ROR = str != null ? Sf.cJ(Sf.Qhi(str, " \"'<>#", true, false, true, true)) : null;
            return this;
        }

        public Qhi Qhi(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("encodedName == null");
            }
            if (this.ROR == null) {
                this.ROR = new ArrayList();
            }
            this.ROR.add(Sf.Qhi(str, " \"'<>#&=", true, false, true, true));
            this.ROR.add(str2 != null ? Sf.Qhi(str2, " \"'<>#&=", true, false, true, true) : null);
            return this;
        }

        public Sf cJ() {
            if (this.Qhi == null) {
                throw new IllegalStateException("scheme == null");
            }
            if (this.CJ == null) {
                throw new IllegalStateException("host == null");
            }
            return new Sf(this);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.Qhi);
            sb.append("://");
            if (!this.cJ.isEmpty() || !this.ac.isEmpty()) {
                sb.append(this.cJ);
                if (!this.ac.isEmpty()) {
                    sb.append(':');
                    sb.append(this.ac);
                }
                sb.append('@');
            }
            if (this.CJ.indexOf(58) != -1) {
                sb.append('[');
                sb.append(this.CJ);
                sb.append(']');
            } else {
                sb.append(this.CJ);
            }
            int Qhi = Qhi();
            if (Qhi != Sf.Qhi(this.Qhi)) {
                sb.append(':');
                sb.append(Qhi);
            }
            Sf.Qhi(sb, this.Tgh);
            if (this.ROR != null) {
                sb.append('?');
                Sf.cJ(sb, this.ROR);
            }
            if (this.Sf != null) {
                sb.append('#');
                sb.append(this.Sf);
            }
            return sb.toString();
        }

        EnumC0198Qhi Qhi(Sf sf, String str) {
            int Qhi;
            int i;
            int Qhi2 = com.bytedance.sdk.component.cJ.Qhi.cJ.WAv.Qhi(str, 0, str.length());
            int cJ = com.bytedance.sdk.component.cJ.Qhi.cJ.WAv.cJ(str, Qhi2, str.length());
            if (cJ(str, Qhi2, cJ) != -1) {
                if (str.regionMatches(true, Qhi2, "https:", 0, 6)) {
                    this.Qhi = "https";
                    Qhi2 += 6;
                } else if (str.regionMatches(true, Qhi2, "http:", 0, 5)) {
                    this.Qhi = "http";
                    Qhi2 += 5;
                } else {
                    return EnumC0198Qhi.UNSUPPORTED_SCHEME;
                }
            } else if (sf != null) {
                this.Qhi = sf.Qhi;
            } else {
                return EnumC0198Qhi.MISSING_SCHEME;
            }
            int ac = ac(str, Qhi2, cJ);
            char c2 = '?';
            char c3 = '#';
            if (ac >= 2 || sf == null || !sf.Qhi.equals(this.Qhi)) {
                boolean z = false;
                boolean z2 = false;
                int i2 = Qhi2 + ac;
                while (true) {
                    Qhi = com.bytedance.sdk.component.cJ.Qhi.cJ.WAv.Qhi(str, i2, cJ, "@/\\?#");
                    char charAt = Qhi != cJ ? str.charAt(Qhi) : (char) 65535;
                    if (charAt == 65535 || charAt == c3 || charAt == '/' || charAt == '\\' || charAt == c2) {
                        break;
                    } else if (charAt == '@') {
                        if (z) {
                            i = Qhi;
                            this.ac += "%40" + Sf.Qhi(str, i2, i, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                        } else {
                            int Qhi3 = com.bytedance.sdk.component.cJ.Qhi.cJ.WAv.Qhi(str, i2, Qhi, ':');
                            i = Qhi;
                            String Qhi4 = Sf.Qhi(str, i2, Qhi3, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                            if (z2) {
                                Qhi4 = this.cJ + "%40" + Qhi4;
                            }
                            this.cJ = Qhi4;
                            if (Qhi3 != i) {
                                this.ac = Sf.Qhi(str, Qhi3 + 1, i, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                                z = true;
                            }
                            z2 = true;
                        }
                        i2 = i + 1;
                        c2 = '?';
                        c3 = '#';
                    }
                }
                int CJ = CJ(str, i2, Qhi);
                int i3 = CJ + 1;
                if (i3 < Qhi) {
                    this.CJ = fl(str, i2, CJ);
                    int Tgh = Tgh(str, i3, Qhi);
                    this.fl = Tgh;
                    if (Tgh == -1) {
                        return EnumC0198Qhi.INVALID_PORT;
                    }
                } else {
                    this.CJ = fl(str, i2, CJ);
                    this.fl = Sf.Qhi(this.Qhi);
                }
                if (this.CJ == null) {
                    return EnumC0198Qhi.INVALID_HOST;
                }
                Qhi2 = Qhi;
            } else {
                this.cJ = sf.cJ();
                this.ac = sf.ac();
                this.CJ = sf.cJ;
                this.fl = sf.ac;
                this.Tgh.clear();
                this.Tgh.addAll(sf.CJ());
                if (Qhi2 == cJ || str.charAt(Qhi2) == '#') {
                    CJ(sf.fl());
                }
            }
            int Qhi5 = com.bytedance.sdk.component.cJ.Qhi.cJ.WAv.Qhi(str, Qhi2, cJ, "?#");
            Qhi(str, Qhi2, Qhi5);
            if (Qhi5 < cJ && str.charAt(Qhi5) == '?') {
                int Qhi6 = com.bytedance.sdk.component.cJ.Qhi.cJ.WAv.Qhi(str, Qhi5, cJ, '#');
                this.ROR = Sf.cJ(Sf.Qhi(str, Qhi5 + 1, Qhi6, " \"'<>#", true, false, true, true, null));
                Qhi5 = Qhi6;
            }
            if (Qhi5 < cJ && str.charAt(Qhi5) == '#') {
                this.Sf = Sf.Qhi(str, 1 + Qhi5, cJ, "", true, false, false, false, null);
            }
            return EnumC0198Qhi.SUCCESS;
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
            */
        /* JADX WARN: Removed duplicated region for block: B:14:0x002d  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0043 A[SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0028 -> B:12:0x002a). Please submit an issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void Qhi(java.lang.String r11, int r12, int r13) {
            /*
                r10 = this;
                if (r12 != r13) goto L3
                return
            L3:
                char r0 = r11.charAt(r12)
                r1 = 47
                java.lang.String r2 = ""
                r3 = 1
                if (r0 == r1) goto L1e
                r1 = 92
                if (r0 != r1) goto L13
                goto L1e
            L13:
                java.util.List<java.lang.String> r0 = r10.Tgh
                int r1 = r0.size()
                int r1 = r1 - r3
                r0.set(r1, r2)
                goto L2a
            L1e:
                java.util.List<java.lang.String> r0 = r10.Tgh
                r0.clear()
                java.util.List<java.lang.String> r0 = r10.Tgh
                r0.add(r2)
            L28:
                int r12 = r12 + 1
            L2a:
                r6 = r12
                if (r6 >= r13) goto L43
                java.lang.String r12 = "/\\"
                int r12 = com.bytedance.sdk.component.cJ.Qhi.cJ.WAv.Qhi(r11, r6, r13, r12)
                if (r12 >= r13) goto L37
                r0 = r3
                goto L38
            L37:
                r0 = 0
            L38:
                r9 = 1
                r4 = r10
                r5 = r11
                r7 = r12
                r8 = r0
                r4.Qhi(r5, r6, r7, r8, r9)
                if (r0 == 0) goto L2a
                goto L28
            L43:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.cJ.Qhi.Sf.Qhi.Qhi(java.lang.String, int, int):void");
        }

        private void Qhi(String str, int i, int i2, boolean z, boolean z2) {
            String Qhi = Sf.Qhi(str, i, i2, " \"<>^`{}|/\\?#", z2, false, false, true, null);
            if (fl(Qhi)) {
                return;
            }
            if (Tgh(Qhi)) {
                ac();
                return;
            }
            List<String> list = this.Tgh;
            if (list.get(list.size() - 1).isEmpty()) {
                List<String> list2 = this.Tgh;
                list2.set(list2.size() - 1, Qhi);
            } else {
                this.Tgh.add(Qhi);
            }
            if (z) {
                this.Tgh.add("");
            }
        }

        private boolean fl(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        private boolean Tgh(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        private void ac() {
            List<String> list = this.Tgh;
            if (list.remove(list.size() - 1).isEmpty() && !this.Tgh.isEmpty()) {
                List<String> list2 = this.Tgh;
                list2.set(list2.size() - 1, "");
                return;
            }
            this.Tgh.add("");
        }

        private static int cJ(String str, int i, int i2) {
            if (i2 - i < 2) {
                return -1;
            }
            char charAt = str.charAt(i);
            if ((charAt >= 'a' && charAt <= 'z') || (charAt >= 'A' && charAt <= 'Z')) {
                while (true) {
                    i++;
                    if (i >= i2) {
                        break;
                    }
                    char charAt2 = str.charAt(i);
                    if (charAt2 < 'a' || charAt2 > 'z') {
                        if (charAt2 < 'A' || charAt2 > 'Z') {
                            if (charAt2 < '0' || charAt2 > '9') {
                                if (charAt2 != '+' && charAt2 != '-' && charAt2 != '.') {
                                    if (charAt2 == ':') {
                                        return i;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return -1;
        }

        private static int ac(String str, int i, int i2) {
            int i3 = 0;
            while (i < i2) {
                char charAt = str.charAt(i);
                if (charAt != '\\' && charAt != '/') {
                    break;
                }
                i3++;
                i++;
            }
            return i3;
        }

        private static int CJ(String str, int i, int i2) {
            while (i < i2) {
                char charAt = str.charAt(i);
                if (charAt == ':') {
                    return i;
                }
                if (charAt == '[') {
                    do {
                        i++;
                        if (i < i2) {
                        }
                    } while (str.charAt(i) != ']');
                }
                i++;
            }
            return i2;
        }

        private static String fl(String str, int i, int i2) {
            return com.bytedance.sdk.component.cJ.Qhi.cJ.WAv.Qhi(Sf.Qhi(str, i, i2, false));
        }

        private static int Tgh(String str, int i, int i2) {
            int parseInt;
            try {
                parseInt = Integer.parseInt(Sf.Qhi(str, i, i2, "", false, false, false, true, null));
            } catch (NumberFormatException unused) {
            }
            if (parseInt <= 0 || parseInt > 65535) {
                return -1;
            }
            return parseInt;
        }
    }

    static String Qhi(String str, boolean z) {
        return Qhi(str, 0, str.length(), z);
    }

    private List<String> Qhi(List<String> list, boolean z) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            String str = list.get(i);
            arrayList.add(str != null ? Qhi(str, z) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    static String Qhi(String str, int i, int i2, boolean z) {
        for (int i3 = i; i3 < i2; i3++) {
            char charAt = str.charAt(i3);
            if (charAt == '%' || (charAt == '+' && z)) {
                com.bytedance.sdk.component.cJ.Qhi.cJ.Qhi qhi = new com.bytedance.sdk.component.cJ.Qhi.cJ.Qhi();
                qhi.Qhi(str, i, i3);
                Qhi(qhi, str, i3, i2, z);
                return qhi.ac();
            }
        }
        return str.substring(i, i2);
    }

    static void Qhi(com.bytedance.sdk.component.cJ.Qhi.cJ.Qhi qhi, String str, int i, int i2, boolean z) {
        int i3;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (codePointAt == 37 && (i3 = i + 2) < i2) {
                int Qhi2 = com.bytedance.sdk.component.cJ.Qhi.cJ.WAv.Qhi(str.charAt(i + 1));
                int Qhi3 = com.bytedance.sdk.component.cJ.Qhi.cJ.WAv.Qhi(str.charAt(i3));
                if (Qhi2 != -1 && Qhi3 != -1) {
                    qhi.cJ((Qhi2 << 4) + Qhi3);
                    i = i3;
                }
                qhi.Qhi(codePointAt);
            } else {
                if (codePointAt == 43 && z) {
                    qhi.cJ(32);
                }
                qhi.Qhi(codePointAt);
            }
            i += Character.charCount(codePointAt);
        }
    }

    static boolean Qhi(String str, int i, int i2) {
        int i3 = i + 2;
        return i3 < i2 && str.charAt(i) == '%' && com.bytedance.sdk.component.cJ.Qhi.cJ.WAv.Qhi(str.charAt(i + 1)) != -1 && com.bytedance.sdk.component.cJ.Qhi.cJ.WAv.Qhi(str.charAt(i3)) != -1;
    }

    static String Qhi(String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        int i3 = i;
        while (i3 < i2) {
            int codePointAt = str.codePointAt(i3);
            if (codePointAt >= 32 && codePointAt != 127 && (codePointAt < 128 || !z4)) {
                if (str2.indexOf(codePointAt) == -1 && ((codePointAt != 37 || (z && (!z2 || Qhi(str, i3, i2)))) && (codePointAt != 43 || !z3))) {
                    i3 += Character.charCount(codePointAt);
                }
            }
            com.bytedance.sdk.component.cJ.Qhi.cJ.Qhi qhi = new com.bytedance.sdk.component.cJ.Qhi.cJ.Qhi();
            qhi.Qhi(str, i, i3);
            Qhi(qhi, str, i3, i2, str2, z, z2, z3, z4, charset);
            return qhi.ac();
        }
        return str.substring(i, i2);
    }

    static void Qhi(com.bytedance.sdk.component.cJ.Qhi.cJ.Qhi qhi, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        com.bytedance.sdk.component.cJ.Qhi.cJ.Qhi qhi2 = null;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (!z || (codePointAt != 9 && codePointAt != 10 && codePointAt != 12 && codePointAt != 13)) {
                if (codePointAt == 43 && z3) {
                    qhi.Qhi(z ? Marker.ANY_NON_NULL_MARKER : "%2B");
                } else if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && z4) || str2.indexOf(codePointAt) != -1 || (codePointAt == 37 && (!z || (z2 && !Qhi(str, i, i2)))))) {
                    if (qhi2 == null) {
                        qhi2 = new com.bytedance.sdk.component.cJ.Qhi.cJ.Qhi();
                    }
                    if (charset == null || charset.equals(com.bytedance.sdk.component.cJ.Qhi.cJ.WAv.Qhi)) {
                        qhi2.Qhi(codePointAt);
                    } else {
                        qhi2.Qhi(str, i, Character.charCount(codePointAt) + i, charset);
                    }
                    while (!qhi2.Qhi()) {
                        byte cJ = qhi2.cJ();
                        qhi.cJ(37);
                        char[] cArr = CJ;
                        qhi.cJ((int) cArr[((cJ & 255) >> 4) & 15]);
                        qhi.cJ((int) cArr[cJ & 15]);
                    }
                } else {
                    qhi.Qhi(codePointAt);
                }
            }
            i += Character.charCount(codePointAt);
        }
    }

    static String Qhi(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        return Qhi(str, 0, str.length(), str2, z, z2, z3, z4, null);
    }
}

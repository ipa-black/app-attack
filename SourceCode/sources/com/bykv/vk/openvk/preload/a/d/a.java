package com.bykv.vk.openvk.preload.a.d;

import com.bykv.vk.openvk.preload.a.b.a.e;
import com.bykv.vk.openvk.preload.a.b.f;
import com.bykv.vk.openvk.preload.a.p;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import kotlin.text.Typography;
/* compiled from: JsonReader.java */
/* loaded from: classes2.dex */
public class a implements Closeable {

    /* renamed from: c  reason: collision with root package name */
    private final Reader f8349c;
    private long i;
    private int j;
    private String k;
    private int[] l;
    private String[] n;
    private int[] o;

    /* renamed from: a  reason: collision with root package name */
    public boolean f8347a = false;

    /* renamed from: d  reason: collision with root package name */
    private final char[] f8350d = new char[1024];

    /* renamed from: e  reason: collision with root package name */
    private int f8351e = 0;

    /* renamed from: f  reason: collision with root package name */
    private int f8352f = 0;

    /* renamed from: g  reason: collision with root package name */
    private int f8353g = 0;

    /* renamed from: h  reason: collision with root package name */
    private int f8354h = 0;

    /* renamed from: b  reason: collision with root package name */
    int f8348b = 0;
    private int m = 1;

    public a(Reader reader) {
        int[] iArr = new int[32];
        this.l = iArr;
        iArr[0] = 6;
        this.n = new String[32];
        this.o = new int[32];
        this.f8349c = reader;
    }

    public void a() throws IOException {
        int i = this.f8348b;
        if (i == 0) {
            i = q();
        }
        if (i == 3) {
            a(1);
            this.o[this.m - 1] = 0;
            this.f8348b = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_ARRAY but was " + f() + r());
    }

    public void b() throws IOException {
        int i = this.f8348b;
        if (i == 0) {
            i = q();
        }
        if (i == 4) {
            int i2 = this.m;
            this.m = i2 - 1;
            int[] iArr = this.o;
            int i3 = i2 - 2;
            iArr[i3] = iArr[i3] + 1;
            this.f8348b = 0;
            return;
        }
        throw new IllegalStateException("Expected END_ARRAY but was " + f() + r());
    }

    public void c() throws IOException {
        int i = this.f8348b;
        if (i == 0) {
            i = q();
        }
        if (i == 1) {
            a(3);
            this.f8348b = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_OBJECT but was " + f() + r());
    }

    public void d() throws IOException {
        int i = this.f8348b;
        if (i == 0) {
            i = q();
        }
        if (i == 2) {
            int i2 = this.m;
            int i3 = i2 - 1;
            this.m = i3;
            this.n[i3] = null;
            int[] iArr = this.o;
            int i4 = i2 - 2;
            iArr[i4] = iArr[i4] + 1;
            this.f8348b = 0;
            return;
        }
        throw new IllegalStateException("Expected END_OBJECT but was " + f() + r());
    }

    public boolean e() throws IOException {
        int i = this.f8348b;
        if (i == 0) {
            i = q();
        }
        return (i == 2 || i == 4) ? false : true;
    }

    public b f() throws IOException {
        int i = this.f8348b;
        if (i == 0) {
            i = q();
        }
        switch (i) {
            case 1:
                return b.BEGIN_OBJECT;
            case 2:
                return b.END_OBJECT;
            case 3:
                return b.BEGIN_ARRAY;
            case 4:
                return b.END_ARRAY;
            case 5:
            case 6:
                return b.BOOLEAN;
            case 7:
                return b.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return b.STRING;
            case 12:
            case 13:
            case 14:
                return b.NAME;
            case 15:
            case 16:
                return b.NUMBER;
            case 17:
                return b.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    final int q() throws IOException {
        int a2;
        int[] iArr = this.l;
        int i = this.m;
        int i2 = iArr[i - 1];
        if (i2 == 1) {
            iArr[i - 1] = 2;
        } else if (i2 == 2) {
            int a3 = a(true);
            if (a3 != 44) {
                if (a3 != 59) {
                    if (a3 == 93) {
                        this.f8348b = 4;
                        return 4;
                    }
                    throw b("Unterminated array");
                }
                u();
            }
        } else if (i2 == 3 || i2 == 5) {
            iArr[i - 1] = 4;
            if (i2 == 5 && (a2 = a(true)) != 44) {
                if (a2 != 59) {
                    if (a2 == 125) {
                        this.f8348b = 2;
                        return 2;
                    }
                    throw b("Unterminated object");
                }
                u();
            }
            int a4 = a(true);
            if (a4 == 34) {
                this.f8348b = 13;
                return 13;
            } else if (a4 == 39) {
                u();
                this.f8348b = 12;
                return 12;
            } else if (a4 == 125) {
                if (i2 != 5) {
                    this.f8348b = 2;
                    return 2;
                }
                throw b("Expected name");
            } else {
                u();
                this.f8351e--;
                if (a((char) a4)) {
                    this.f8348b = 14;
                    return 14;
                }
                throw b("Expected name");
            }
        } else if (i2 == 4) {
            iArr[i - 1] = 5;
            int a5 = a(true);
            if (a5 != 58) {
                if (a5 == 61) {
                    u();
                    if (this.f8351e < this.f8352f || b(1)) {
                        char[] cArr = this.f8350d;
                        int i3 = this.f8351e;
                        if (cArr[i3] == '>') {
                            this.f8351e = i3 + 1;
                        }
                    }
                } else {
                    throw b("Expected ':'");
                }
            }
        } else if (i2 == 6) {
            if (this.f8347a) {
                x();
            }
            this.l[this.m - 1] = 7;
        } else if (i2 == 7) {
            if (a(false) == -1) {
                this.f8348b = 17;
                return 17;
            }
            u();
            this.f8351e--;
        } else if (i2 == 8) {
            throw new IllegalStateException("JsonReader is closed");
        }
        int a6 = a(true);
        if (a6 == 34) {
            this.f8348b = 9;
            return 9;
        } else if (a6 == 39) {
            u();
            this.f8348b = 8;
            return 8;
        } else {
            if (a6 != 44 && a6 != 59) {
                if (a6 == 91) {
                    this.f8348b = 3;
                    return 3;
                } else if (a6 != 93) {
                    if (a6 == 123) {
                        this.f8348b = 1;
                        return 1;
                    }
                    this.f8351e--;
                    int g2 = g();
                    if (g2 != 0) {
                        return g2;
                    }
                    int s = s();
                    if (s != 0) {
                        return s;
                    }
                    if (!a(this.f8350d[this.f8351e])) {
                        throw b("Expected value");
                    }
                    u();
                    this.f8348b = 10;
                    return 10;
                } else if (i2 == 1) {
                    this.f8348b = 4;
                    return 4;
                }
            }
            if (i2 == 1 || i2 == 2) {
                u();
                this.f8351e--;
                this.f8348b = 7;
                return 7;
            }
            throw b("Unexpected value");
        }
    }

    private int g() throws IOException {
        String str;
        String str2;
        int i;
        char c2 = this.f8350d[this.f8351e];
        if (c2 == 't' || c2 == 'T') {
            str = "true";
            str2 = "TRUE";
            i = 5;
        } else if (c2 == 'f' || c2 == 'F') {
            str = "false";
            str2 = "FALSE";
            i = 6;
        } else if (c2 != 'n' && c2 != 'N') {
            return 0;
        } else {
            str = "null";
            str2 = "NULL";
            i = 7;
        }
        int length = str.length();
        for (int i2 = 1; i2 < length; i2++) {
            if (this.f8351e + i2 >= this.f8352f && !b(i2 + 1)) {
                return 0;
            }
            char c3 = this.f8350d[this.f8351e + i2];
            if (c3 != str.charAt(i2) && c3 != str2.charAt(i2)) {
                return 0;
            }
        }
        if ((this.f8351e + length < this.f8352f || b(length + 1)) && a(this.f8350d[this.f8351e + length])) {
            return 0;
        }
        this.f8351e += length;
        this.f8348b = i;
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x008f, code lost:
        if (a(r14) == false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0091, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0093, code lost:
        if (r9 != 2) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0095, code lost:
        if (r10 == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x009b, code lost:
        if (r11 != Long.MIN_VALUE) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x009d, code lost:
        if (r13 == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00a3, code lost:
        if (r11 != 0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00a5, code lost:
        if (r13 != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00a7, code lost:
        if (r13 == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00aa, code lost:
        r11 = -r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00ab, code lost:
        r18.i = r11;
        r18.f8351e += r8;
        r18.f8348b = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00b6, code lost:
        return 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00b7, code lost:
        if (r9 == 2) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00ba, code lost:
        if (r9 == 4) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00bd, code lost:
        if (r9 != 7) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00c0, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00c2, code lost:
        r18.j = r8;
        r18.f8348b = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00c8, code lost:
        return 16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int s() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.openvk.preload.a.d.a.s():int");
    }

    private boolean a(char c2) throws IOException {
        if (c2 == '\t' || c2 == '\n' || c2 == '\f' || c2 == '\r' || c2 == ' ') {
            return false;
        }
        if (c2 != '#') {
            if (c2 == ',') {
                return false;
            }
            if (c2 != '/' && c2 != '=') {
                if (c2 == '{' || c2 == '}' || c2 == ':') {
                    return false;
                }
                if (c2 != ';') {
                    switch (c2) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        u();
        return false;
    }

    public String h() throws IOException {
        String b2;
        int i = this.f8348b;
        if (i == 0) {
            i = q();
        }
        if (i == 14) {
            b2 = t();
        } else if (i == 12) {
            b2 = b('\'');
        } else if (i == 13) {
            b2 = b(Typography.quote);
        } else {
            throw new IllegalStateException("Expected a name but was " + f() + r());
        }
        this.f8348b = 0;
        this.n[this.m - 1] = b2;
        return b2;
    }

    public String i() throws IOException {
        String str;
        int i = this.f8348b;
        if (i == 0) {
            i = q();
        }
        if (i == 10) {
            str = t();
        } else if (i == 8) {
            str = b('\'');
        } else if (i == 9) {
            str = b(Typography.quote);
        } else if (i == 11) {
            str = this.k;
            this.k = null;
        } else if (i == 15) {
            str = Long.toString(this.i);
        } else if (i == 16) {
            str = new String(this.f8350d, this.f8351e, this.j);
            this.f8351e += this.j;
        } else {
            throw new IllegalStateException("Expected a string but was " + f() + r());
        }
        this.f8348b = 0;
        int[] iArr = this.o;
        int i2 = this.m - 1;
        iArr[i2] = iArr[i2] + 1;
        return str;
    }

    public boolean j() throws IOException {
        int i = this.f8348b;
        if (i == 0) {
            i = q();
        }
        if (i == 5) {
            this.f8348b = 0;
            int[] iArr = this.o;
            int i2 = this.m - 1;
            iArr[i2] = iArr[i2] + 1;
            return true;
        } else if (i == 6) {
            this.f8348b = 0;
            int[] iArr2 = this.o;
            int i3 = this.m - 1;
            iArr2[i3] = iArr2[i3] + 1;
            return false;
        } else {
            throw new IllegalStateException("Expected a boolean but was " + f() + r());
        }
    }

    public void k() throws IOException {
        int i = this.f8348b;
        if (i == 0) {
            i = q();
        }
        if (i == 7) {
            this.f8348b = 0;
            int[] iArr = this.o;
            int i2 = this.m - 1;
            iArr[i2] = iArr[i2] + 1;
            return;
        }
        throw new IllegalStateException("Expected null but was " + f() + r());
    }

    public double l() throws IOException {
        int i = this.f8348b;
        if (i == 0) {
            i = q();
        }
        if (i == 15) {
            this.f8348b = 0;
            int[] iArr = this.o;
            int i2 = this.m - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.i;
        }
        if (i == 16) {
            this.k = new String(this.f8350d, this.f8351e, this.j);
            this.f8351e += this.j;
        } else if (i == 8 || i == 9) {
            this.k = b(i == 8 ? '\'' : Typography.quote);
        } else if (i == 10) {
            this.k = t();
        } else if (i != 11) {
            throw new IllegalStateException("Expected a double but was " + f() + r());
        }
        this.f8348b = 11;
        double parseDouble = Double.parseDouble(this.k);
        if (!this.f8347a && (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
            throw new d("JSON forbids NaN and infinities: " + parseDouble + r());
        }
        this.k = null;
        this.f8348b = 0;
        int[] iArr2 = this.o;
        int i3 = this.m - 1;
        iArr2[i3] = iArr2[i3] + 1;
        return parseDouble;
    }

    public long m() throws IOException {
        int i = this.f8348b;
        if (i == 0) {
            i = q();
        }
        if (i == 15) {
            this.f8348b = 0;
            int[] iArr = this.o;
            int i2 = this.m - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.i;
        }
        if (i == 16) {
            this.k = new String(this.f8350d, this.f8351e, this.j);
            this.f8351e += this.j;
        } else if (i == 8 || i == 9 || i == 10) {
            if (i == 10) {
                this.k = t();
            } else {
                this.k = b(i == 8 ? '\'' : Typography.quote);
            }
            try {
                long parseLong = Long.parseLong(this.k);
                this.f8348b = 0;
                int[] iArr2 = this.o;
                int i3 = this.m - 1;
                iArr2[i3] = iArr2[i3] + 1;
                return parseLong;
            } catch (NumberFormatException unused) {
            }
        } else {
            throw new IllegalStateException("Expected a long but was " + f() + r());
        }
        this.f8348b = 11;
        double parseDouble = Double.parseDouble(this.k);
        long j = (long) parseDouble;
        if (j != parseDouble) {
            throw new NumberFormatException("Expected a long but was " + this.k + r());
        }
        this.k = null;
        this.f8348b = 0;
        int[] iArr3 = this.o;
        int i4 = this.m - 1;
        iArr3[i4] = iArr3[i4] + 1;
        return j;
    }

    private String b(char c2) throws IOException {
        char[] cArr = this.f8350d;
        StringBuilder sb = null;
        while (true) {
            int i = this.f8351e;
            int i2 = this.f8352f;
            int i3 = i;
            while (true) {
                if (i3 < i2) {
                    int i4 = i3 + 1;
                    char c3 = cArr[i3];
                    if (c3 == c2) {
                        this.f8351e = i4;
                        int i5 = (i4 - i) - 1;
                        if (sb == null) {
                            return new String(cArr, i, i5);
                        }
                        sb.append(cArr, i, i5);
                        return sb.toString();
                    } else if (c3 == '\\') {
                        this.f8351e = i4;
                        int i6 = i4 - i;
                        int i7 = i6 - 1;
                        if (sb == null) {
                            sb = new StringBuilder(Math.max(i6 * 2, 16));
                        }
                        sb.append(cArr, i, i7);
                        sb.append(w());
                    } else {
                        if (c3 == '\n') {
                            this.f8353g++;
                            this.f8354h = i4;
                        }
                        i3 = i4;
                    }
                } else {
                    if (sb == null) {
                        sb = new StringBuilder(Math.max((i3 - i) * 2, 16));
                    }
                    sb.append(cArr, i, i3 - i);
                    this.f8351e = i3;
                    if (!b(1)) {
                        throw b("Unterminated string");
                    }
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x004a, code lost:
        u();
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String t() throws java.io.IOException {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
        L2:
            r2 = r1
        L3:
            int r3 = r6.f8351e
            int r4 = r3 + r2
            int r5 = r6.f8352f
            if (r4 >= r5) goto L4e
            char[] r4 = r6.f8350d
            int r3 = r3 + r2
            char r3 = r4[r3]
            r4 = 9
            if (r3 == r4) goto L5c
            r4 = 10
            if (r3 == r4) goto L5c
            r4 = 12
            if (r3 == r4) goto L5c
            r4 = 13
            if (r3 == r4) goto L5c
            r4 = 32
            if (r3 == r4) goto L5c
            r4 = 35
            if (r3 == r4) goto L4a
            r4 = 44
            if (r3 == r4) goto L5c
            r4 = 47
            if (r3 == r4) goto L4a
            r4 = 61
            if (r3 == r4) goto L4a
            r4 = 123(0x7b, float:1.72E-43)
            if (r3 == r4) goto L5c
            r4 = 125(0x7d, float:1.75E-43)
            if (r3 == r4) goto L5c
            r4 = 58
            if (r3 == r4) goto L5c
            r4 = 59
            if (r3 == r4) goto L4a
            switch(r3) {
                case 91: goto L5c;
                case 92: goto L4a;
                case 93: goto L5c;
                default: goto L47;
            }
        L47:
            int r2 = r2 + 1
            goto L3
        L4a:
            r6.u()
            goto L5c
        L4e:
            char[] r3 = r6.f8350d
            int r3 = r3.length
            if (r2 >= r3) goto L5e
            int r3 = r2 + 1
            boolean r3 = r6.b(r3)
            if (r3 == 0) goto L5c
            goto L3
        L5c:
            r1 = r2
            goto L7e
        L5e:
            if (r0 != 0) goto L6b
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r3 = 16
            int r3 = java.lang.Math.max(r2, r3)
            r0.<init>(r3)
        L6b:
            char[] r3 = r6.f8350d
            int r4 = r6.f8351e
            r0.append(r3, r4, r2)
            int r3 = r6.f8351e
            int r3 = r3 + r2
            r6.f8351e = r3
            r2 = 1
            boolean r2 = r6.b(r2)
            if (r2 != 0) goto L2
        L7e:
            if (r0 != 0) goto L8a
            java.lang.String r0 = new java.lang.String
            char[] r2 = r6.f8350d
            int r3 = r6.f8351e
            r0.<init>(r2, r3, r1)
            goto L96
        L8a:
            char[] r2 = r6.f8350d
            int r3 = r6.f8351e
            java.lang.StringBuilder r0 = r0.append(r2, r3, r1)
            java.lang.String r0 = r0.toString()
        L96:
            int r2 = r6.f8351e
            int r2 = r2 + r1
            r6.f8351e = r2
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.openvk.preload.a.d.a.t():java.lang.String");
    }

    private void c(char c2) throws IOException {
        char[] cArr = this.f8350d;
        while (true) {
            int i = this.f8351e;
            int i2 = this.f8352f;
            while (true) {
                if (i < i2) {
                    int i3 = i + 1;
                    char c3 = cArr[i];
                    if (c3 == c2) {
                        this.f8351e = i3;
                        return;
                    } else if (c3 == '\\') {
                        this.f8351e = i3;
                        w();
                        break;
                    } else {
                        if (c3 == '\n') {
                            this.f8353g++;
                            this.f8354h = i3;
                        }
                        i = i3;
                    }
                } else {
                    this.f8351e = i;
                    if (!b(1)) {
                        throw b("Unterminated string");
                    }
                }
            }
        }
    }

    public int n() throws IOException {
        int i = this.f8348b;
        if (i == 0) {
            i = q();
        }
        if (i == 15) {
            long j = this.i;
            int i2 = (int) j;
            if (j != i2) {
                throw new NumberFormatException("Expected an int but was " + this.i + r());
            }
            this.f8348b = 0;
            int[] iArr = this.o;
            int i3 = this.m - 1;
            iArr[i3] = iArr[i3] + 1;
            return i2;
        }
        if (i == 16) {
            this.k = new String(this.f8350d, this.f8351e, this.j);
            this.f8351e += this.j;
        } else if (i == 8 || i == 9 || i == 10) {
            if (i == 10) {
                this.k = t();
            } else {
                this.k = b(i == 8 ? '\'' : Typography.quote);
            }
            try {
                int parseInt = Integer.parseInt(this.k);
                this.f8348b = 0;
                int[] iArr2 = this.o;
                int i4 = this.m - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        } else {
            throw new IllegalStateException("Expected an int but was " + f() + r());
        }
        this.f8348b = 11;
        double parseDouble = Double.parseDouble(this.k);
        int i5 = (int) parseDouble;
        if (i5 != parseDouble) {
            throw new NumberFormatException("Expected an int but was " + this.k + r());
        }
        this.k = null;
        this.f8348b = 0;
        int[] iArr3 = this.o;
        int i6 = this.m - 1;
        iArr3[i6] = iArr3[i6] + 1;
        return i5;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f8348b = 0;
        this.l[0] = 8;
        this.m = 1;
        this.f8349c.close();
    }

    public void o() throws IOException {
        int i = 0;
        do {
            int i2 = this.f8348b;
            if (i2 == 0) {
                i2 = q();
            }
            if (i2 == 3) {
                a(1);
            } else if (i2 == 1) {
                a(3);
            } else {
                if (i2 == 4) {
                    this.m--;
                } else if (i2 == 2) {
                    this.m--;
                } else {
                    if (i2 == 14 || i2 == 10) {
                        do {
                            int i3 = 0;
                            while (true) {
                                int i4 = this.f8351e;
                                if (i4 + i3 < this.f8352f) {
                                    char c2 = this.f8350d[i4 + i3];
                                    if (c2 != '\t' && c2 != '\n' && c2 != '\f' && c2 != '\r' && c2 != ' ') {
                                        if (c2 != '#') {
                                            if (c2 != ',') {
                                                if (c2 != '/' && c2 != '=') {
                                                    if (c2 != '{' && c2 != '}' && c2 != ':') {
                                                        if (c2 != ';') {
                                                            switch (c2) {
                                                                case '[':
                                                                case ']':
                                                                    break;
                                                                case '\\':
                                                                    break;
                                                                default:
                                                                    i3++;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    this.f8351e = i4 + i3;
                                }
                            }
                            u();
                            this.f8351e += i3;
                        } while (b(1));
                    } else if (i2 == 8 || i2 == 12) {
                        c('\'');
                    } else if (i2 == 9 || i2 == 13) {
                        c(Typography.quote);
                    } else if (i2 == 16) {
                        this.f8351e += this.j;
                    }
                    this.f8348b = 0;
                }
                i--;
                this.f8348b = 0;
            }
            i++;
            this.f8348b = 0;
        } while (i != 0);
        int[] iArr = this.o;
        int i5 = this.m;
        int i6 = i5 - 1;
        iArr[i6] = iArr[i6] + 1;
        this.n[i5 - 1] = "null";
    }

    private void a(int i) {
        int i2 = this.m;
        int[] iArr = this.l;
        if (i2 == iArr.length) {
            int i3 = i2 * 2;
            this.l = Arrays.copyOf(iArr, i3);
            this.o = Arrays.copyOf(this.o, i3);
            this.n = (String[]) Arrays.copyOf(this.n, i3);
        }
        int[] iArr2 = this.l;
        int i4 = this.m;
        this.m = i4 + 1;
        iArr2[i4] = i;
    }

    private boolean b(int i) throws IOException {
        int i2;
        int i3;
        char[] cArr = this.f8350d;
        int i4 = this.f8354h;
        int i5 = this.f8351e;
        this.f8354h = i4 - i5;
        int i6 = this.f8352f;
        if (i6 != i5) {
            int i7 = i6 - i5;
            this.f8352f = i7;
            System.arraycopy(cArr, i5, cArr, 0, i7);
        } else {
            this.f8352f = 0;
        }
        this.f8351e = 0;
        do {
            Reader reader = this.f8349c;
            int i8 = this.f8352f;
            int read = reader.read(cArr, i8, cArr.length - i8);
            if (read == -1) {
                return false;
            }
            i2 = this.f8352f + read;
            this.f8352f = i2;
            if (this.f8353g == 0 && (i3 = this.f8354h) == 0 && i2 > 0 && cArr[0] == 65279) {
                this.f8351e++;
                this.f8354h = i3 + 1;
                i++;
                continue;
            }
        } while (i2 < i);
        return true;
    }

    private int a(boolean z) throws IOException {
        char[] cArr = this.f8350d;
        int i = this.f8351e;
        int i2 = this.f8352f;
        while (true) {
            if (i == i2) {
                this.f8351e = i;
                if (!b(1)) {
                    if (z) {
                        throw new EOFException("End of input" + r());
                    }
                    return -1;
                }
                i = this.f8351e;
                i2 = this.f8352f;
            }
            int i3 = i + 1;
            char c2 = cArr[i];
            if (c2 == '\n') {
                this.f8353g++;
                this.f8354h = i3;
            } else if (c2 != ' ' && c2 != '\r' && c2 != '\t') {
                if (c2 == '/') {
                    this.f8351e = i3;
                    if (i3 == i2) {
                        this.f8351e = i;
                        boolean b2 = b(2);
                        this.f8351e++;
                        if (!b2) {
                            return c2;
                        }
                    }
                    u();
                    int i4 = this.f8351e;
                    char c3 = cArr[i4];
                    if (c3 == '*') {
                        this.f8351e = i4 + 1;
                        if (!a("*/")) {
                            throw b("Unterminated comment");
                        }
                        i = this.f8351e + 2;
                        i2 = this.f8352f;
                    } else if (c3 != '/') {
                        return c2;
                    } else {
                        this.f8351e = i4 + 1;
                        v();
                        i = this.f8351e;
                        i2 = this.f8352f;
                    }
                } else if (c2 == '#') {
                    this.f8351e = i3;
                    u();
                    v();
                    i = this.f8351e;
                    i2 = this.f8352f;
                } else {
                    this.f8351e = i3;
                    return c2;
                }
            }
            i = i3;
        }
    }

    private void u() throws IOException {
        if (!this.f8347a) {
            throw b("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private void v() throws IOException {
        char c2;
        do {
            if (this.f8351e >= this.f8352f && !b(1)) {
                return;
            }
            char[] cArr = this.f8350d;
            int i = this.f8351e;
            int i2 = i + 1;
            this.f8351e = i2;
            c2 = cArr[i];
            if (c2 == '\n') {
                this.f8353g++;
                this.f8354h = i2;
                return;
            }
        } while (c2 != '\r');
    }

    private boolean a(String str) throws IOException {
        int i;
        int length = str.length();
        while (true) {
            if (this.f8351e + length > this.f8352f && !b(length)) {
                return false;
            }
            char[] cArr = this.f8350d;
            int i2 = this.f8351e;
            if (cArr[i2] != '\n') {
                while (i < length) {
                    i = this.f8350d[this.f8351e + i] == str.charAt(i) ? i + 1 : 0;
                }
                return true;
            }
            this.f8353g++;
            this.f8354h = i2 + 1;
            this.f8351e++;
        }
    }

    public String toString() {
        return getClass().getSimpleName() + r();
    }

    final String r() {
        return " at line " + (this.f8353g + 1) + " column " + ((this.f8351e - this.f8354h) + 1) + " path " + p();
    }

    public String p() {
        StringBuilder sb = new StringBuilder("$");
        int i = this.m;
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = this.l[i2];
            if (i3 == 1 || i3 == 2) {
                sb.append('[').append(this.o[i2]).append(']');
            } else if (i3 == 3 || i3 == 4 || i3 == 5) {
                sb.append('.');
                String str = this.n[i2];
                if (str != null) {
                    sb.append(str);
                }
            }
        }
        return sb.toString();
    }

    private char w() throws IOException {
        int i;
        if (this.f8351e == this.f8352f && !b(1)) {
            throw b("Unterminated escape sequence");
        }
        char[] cArr = this.f8350d;
        int i2 = this.f8351e;
        int i3 = i2 + 1;
        this.f8351e = i3;
        char c2 = cArr[i2];
        if (c2 == '\n') {
            this.f8353g++;
            this.f8354h = i3;
        } else if (c2 != '\"' && c2 != '\'' && c2 != '/' && c2 != '\\') {
            if (c2 != 'b') {
                if (c2 != 'f') {
                    if (c2 != 'n') {
                        if (c2 != 'r') {
                            if (c2 != 't') {
                                if (c2 == 'u') {
                                    if (i2 + 5 > this.f8352f && !b(4)) {
                                        throw b("Unterminated escape sequence");
                                    }
                                    int i4 = this.f8351e;
                                    int i5 = i4 + 4;
                                    char c3 = 0;
                                    while (i4 < i5) {
                                        char c4 = this.f8350d[i4];
                                        char c5 = (char) (c3 << 4);
                                        if (c4 >= '0' && c4 <= '9') {
                                            i = c4 - '0';
                                        } else if (c4 >= 'a' && c4 <= 'f') {
                                            i = c4 - 'W';
                                        } else if (c4 < 'A' || c4 > 'F') {
                                            throw new NumberFormatException("\\u".concat(new String(this.f8350d, this.f8351e, 4)));
                                        } else {
                                            i = c4 - '7';
                                        }
                                        c3 = (char) (c5 + i);
                                        i4++;
                                    }
                                    this.f8351e += 4;
                                    return c3;
                                }
                                throw b("Invalid escape sequence");
                            }
                            return '\t';
                        }
                        return '\r';
                    }
                    return '\n';
                }
                return '\f';
            }
            return '\b';
        }
        return c2;
    }

    private IOException b(String str) throws IOException {
        throw new d(str + r());
    }

    private void x() throws IOException {
        a(true);
        int i = this.f8351e;
        int i2 = i - 1;
        this.f8351e = i2;
        if (i + 4 <= this.f8352f || b(5)) {
            char[] cArr = this.f8350d;
            if (cArr[i2] == ')' && cArr[i] == ']' && cArr[i + 1] == '}' && cArr[i + 2] == '\'' && cArr[i + 3] == '\n') {
                this.f8351e += 5;
            }
        }
    }

    static {
        f.f8302a = new f() { // from class: com.bykv.vk.openvk.preload.a.d.a.1
            @Override // com.bykv.vk.openvk.preload.a.b.f
            public final void a(a aVar) throws IOException {
                if (aVar instanceof e) {
                    e eVar = (e) aVar;
                    eVar.a(b.NAME);
                    Map.Entry entry = (Map.Entry) ((Iterator) eVar.g()).next();
                    eVar.a(entry.getValue());
                    eVar.a(new p((String) entry.getKey()));
                    return;
                }
                int i = aVar.f8348b;
                if (i == 0) {
                    i = aVar.q();
                }
                if (i == 13) {
                    aVar.f8348b = 9;
                } else if (i == 12) {
                    aVar.f8348b = 8;
                } else if (i == 14) {
                    aVar.f8348b = 10;
                } else {
                    throw new IllegalStateException("Expected a name but was " + aVar.f() + aVar.r());
                }
            }
        };
    }
}

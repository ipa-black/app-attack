package com.applovin.exoplayer2.i.e;

import android.graphics.Color;
import android.graphics.PointF;
import android.text.TextUtils;
import com.applovin.exoplayer2.common.base.Ascii;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.collections.primitives.ArrayUnsignedIntList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final String f3320a;

    /* renamed from: b  reason: collision with root package name */
    public final int f3321b;

    /* renamed from: c  reason: collision with root package name */
    public final Integer f3322c;

    /* renamed from: d  reason: collision with root package name */
    public final float f3323d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f3324e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f3325f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f3326g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f3327h;

    /* loaded from: classes.dex */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f3328a;

        /* renamed from: b  reason: collision with root package name */
        public final int f3329b;

        /* renamed from: c  reason: collision with root package name */
        public final int f3330c;

        /* renamed from: d  reason: collision with root package name */
        public final int f3331d;

        /* renamed from: e  reason: collision with root package name */
        public final int f3332e;

        /* renamed from: f  reason: collision with root package name */
        public final int f3333f;

        /* renamed from: g  reason: collision with root package name */
        public final int f3334g;

        /* renamed from: h  reason: collision with root package name */
        public final int f3335h;
        public final int i;

        private a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            this.f3328a = i;
            this.f3329b = i2;
            this.f3330c = i3;
            this.f3331d = i4;
            this.f3332e = i5;
            this.f3333f = i6;
            this.f3334g = i7;
            this.f3335h = i8;
            this.i = i9;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        public static a a(String str) {
            char c2;
            String[] split = TextUtils.split(str.substring(7), ",");
            int i = -1;
            int i2 = -1;
            int i3 = -1;
            int i4 = -1;
            int i5 = -1;
            int i6 = -1;
            int i7 = -1;
            int i8 = -1;
            for (int i9 = 0; i9 < split.length; i9++) {
                String lowerCase = Ascii.toLowerCase(split[i9].trim());
                lowerCase.hashCode();
                switch (lowerCase.hashCode()) {
                    case -1178781136:
                        if (lowerCase.equals(TtmlNode.ITALIC)) {
                            c2 = 0;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -1026963764:
                        if (lowerCase.equals(TtmlNode.UNDERLINE)) {
                            c2 = 1;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -192095652:
                        if (lowerCase.equals("strikeout")) {
                            c2 = 2;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -70925746:
                        if (lowerCase.equals("primarycolour")) {
                            c2 = 3;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 3029637:
                        if (lowerCase.equals(TtmlNode.BOLD)) {
                            c2 = 4;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 3373707:
                        if (lowerCase.equals("name")) {
                            c2 = 5;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 366554320:
                        if (lowerCase.equals("fontsize")) {
                            c2 = 6;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 1767875043:
                        if (lowerCase.equals("alignment")) {
                            c2 = 7;
                            break;
                        }
                        c2 = 65535;
                        break;
                    default:
                        c2 = 65535;
                        break;
                }
                switch (c2) {
                    case 0:
                        i6 = i9;
                        break;
                    case 1:
                        i7 = i9;
                        break;
                    case 2:
                        i8 = i9;
                        break;
                    case 3:
                        i3 = i9;
                        break;
                    case 4:
                        i5 = i9;
                        break;
                    case 5:
                        i = i9;
                        break;
                    case 6:
                        i4 = i9;
                        break;
                    case 7:
                        i2 = i9;
                        break;
                }
            }
            if (i != -1) {
                return new a(i, i2, i3, i4, i5, i6, i7, i8, split.length);
            }
            return null;
        }
    }

    /* loaded from: classes.dex */
    static final class b {

        /* renamed from: c  reason: collision with root package name */
        private static final Pattern f3336c = Pattern.compile("\\{([^}]*)\\}");

        /* renamed from: d  reason: collision with root package name */
        private static final Pattern f3337d = Pattern.compile(ai.a("\\\\pos\\((%1$s),(%1$s)\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));

        /* renamed from: e  reason: collision with root package name */
        private static final Pattern f3338e = Pattern.compile(ai.a("\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));

        /* renamed from: f  reason: collision with root package name */
        private static final Pattern f3339f = Pattern.compile("\\\\an(\\d+)");

        /* renamed from: a  reason: collision with root package name */
        public final int f3340a;

        /* renamed from: b  reason: collision with root package name */
        public final PointF f3341b;

        private b(int i, PointF pointF) {
            this.f3340a = i;
            this.f3341b = pointF;
        }

        public static b a(String str) {
            Matcher matcher = f3336c.matcher(str);
            PointF pointF = null;
            int i = -1;
            while (matcher.find()) {
                String str2 = (String) com.applovin.exoplayer2.l.a.b(matcher.group(1));
                try {
                    PointF c2 = c(str2);
                    if (c2 != null) {
                        pointF = c2;
                    }
                } catch (RuntimeException unused) {
                }
                try {
                    int d2 = d(str2);
                    if (d2 != -1) {
                        i = d2;
                    }
                } catch (RuntimeException unused2) {
                }
            }
            return new b(i, pointF);
        }

        public static String b(String str) {
            return f3336c.matcher(str).replaceAll("");
        }

        private static PointF c(String str) {
            String group;
            String group2;
            Matcher matcher = f3337d.matcher(str);
            Matcher matcher2 = f3338e.matcher(str);
            boolean find = matcher.find();
            boolean find2 = matcher2.find();
            if (find) {
                if (find2) {
                    q.b("SsaStyle.Overrides", "Override has both \\pos(x,y) and \\move(x1,y1,x2,y2); using \\pos values. override='" + str + "'");
                }
                group = matcher.group(1);
                group2 = matcher.group(2);
            } else if (!find2) {
                return null;
            } else {
                group = matcher2.group(1);
                group2 = matcher2.group(2);
            }
            return new PointF(Float.parseFloat(((String) com.applovin.exoplayer2.l.a.b(group)).trim()), Float.parseFloat(((String) com.applovin.exoplayer2.l.a.b(group2)).trim()));
        }

        private static int d(String str) {
            Matcher matcher = f3339f.matcher(str);
            if (matcher.find()) {
                return c.c((String) com.applovin.exoplayer2.l.a.b(matcher.group(1)));
            }
            return -1;
        }
    }

    private c(String str, int i, Integer num, float f2, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f3320a = str;
        this.f3321b = i;
        this.f3322c = num;
        this.f3323d = f2;
        this.f3324e = z;
        this.f3325f = z2;
        this.f3326g = z3;
        this.f3327h = z4;
    }

    public static c a(String str, a aVar) {
        com.applovin.exoplayer2.l.a.a(str.startsWith("Style:"));
        String[] split = TextUtils.split(str.substring(6), ",");
        if (split.length != aVar.i) {
            q.c("SsaStyle", ai.a("Skipping malformed 'Style:' line (expected %s values, found %s): '%s'", Integer.valueOf(aVar.i), Integer.valueOf(split.length), str));
            return null;
        }
        try {
            return new c(split[aVar.f3328a].trim(), aVar.f3329b != -1 ? c(split[aVar.f3329b].trim()) : -1, aVar.f3330c != -1 ? a(split[aVar.f3330c].trim()) : null, aVar.f3331d != -1 ? d(split[aVar.f3331d].trim()) : -3.4028235E38f, aVar.f3332e != -1 && e(split[aVar.f3332e].trim()), aVar.f3333f != -1 && e(split[aVar.f3333f].trim()), aVar.f3334g != -1 && e(split[aVar.f3334g].trim()), aVar.f3335h != -1 && e(split[aVar.f3335h].trim()));
        } catch (RuntimeException e2) {
            q.b("SsaStyle", "Skipping malformed 'Style:' line: '" + str + "'", e2);
            return null;
        }
    }

    public static Integer a(String str) {
        try {
            long parseLong = str.startsWith("&H") ? Long.parseLong(str.substring(2), 16) : Long.parseLong(str);
            com.applovin.exoplayer2.l.a.a(parseLong <= ArrayUnsignedIntList.MAX_VALUE);
            return Integer.valueOf(Color.argb(com.applovin.exoplayer2.common.b.c.a(((parseLong >> 24) & 255) ^ 255), com.applovin.exoplayer2.common.b.c.a(parseLong & 255), com.applovin.exoplayer2.common.b.c.a((parseLong >> 8) & 255), com.applovin.exoplayer2.common.b.c.a((parseLong >> 16) & 255)));
        } catch (IllegalArgumentException e2) {
            q.b("SsaStyle", "Failed to parse color expression: '" + str + "'", e2);
            return null;
        }
    }

    private static boolean a(int i) {
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return true;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int c(String str) {
        try {
            int parseInt = Integer.parseInt(str.trim());
            if (a(parseInt)) {
                return parseInt;
            }
        } catch (NumberFormatException unused) {
        }
        q.c("SsaStyle", "Ignoring unknown alignment: " + str);
        return -1;
    }

    private static float d(String str) {
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException e2) {
            q.b("SsaStyle", "Failed to parse font size: '" + str + "'", e2);
            return -3.4028235E38f;
        }
    }

    private static boolean e(String str) {
        try {
            int parseInt = Integer.parseInt(str);
            return parseInt == 1 || parseInt == -1;
        } catch (NumberFormatException e2) {
            q.b("SsaStyle", "Failed to parse boolean value: '" + str + "'", e2);
            return false;
        }
    }
}

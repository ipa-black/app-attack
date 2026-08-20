package com.applovin.exoplayer2.i.f;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import com.applovin.exoplayer2.i.a;
import com.applovin.exoplayer2.i.d;
import com.applovin.exoplayer2.i.f;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.r;
import com.applovin.exoplayer2.l.y;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public final class a extends d {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f3344a = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f3345b = Pattern.compile("\\{\\\\.*?\\}");

    /* renamed from: c  reason: collision with root package name */
    private final StringBuilder f3346c;

    /* renamed from: d  reason: collision with root package name */
    private final ArrayList<String> f3347d;

    public a() {
        super("SubripDecoder");
        this.f3346c = new StringBuilder();
        this.f3347d = new ArrayList<>();
    }

    private static long a(Matcher matcher, int i) {
        String group = matcher.group(i + 1);
        long parseLong = (group != null ? Long.parseLong(group) * 3600000 : 0L) + (Long.parseLong((String) com.applovin.exoplayer2.l.a.b(matcher.group(i + 2))) * 60000) + (Long.parseLong((String) com.applovin.exoplayer2.l.a.b(matcher.group(i + 3))) * 1000);
        String group2 = matcher.group(i + 4);
        if (group2 != null) {
            parseLong += Long.parseLong(group2);
        }
        return parseLong * 1000;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private com.applovin.exoplayer2.i.a a(Spanned spanned, String str) {
        char c2;
        char c3;
        a.C0045a a2 = new a.C0045a().a(spanned);
        if (str == null) {
            return a2.e();
        }
        switch (str.hashCode()) {
            case -685620710:
                if (str.equals("{\\an1}")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -685620679:
                if (str.equals("{\\an2}")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case -685620648:
                if (str.equals("{\\an3}")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -685620617:
                if (str.equals("{\\an4}")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -685620586:
                if (str.equals("{\\an5}")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case -685620555:
                if (str.equals("{\\an6}")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case -685620524:
                if (str.equals("{\\an7}")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -685620493:
                if (str.equals("{\\an8}")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case -685620462:
                if (str.equals("{\\an9}")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0 || c2 == 1 || c2 == 2) {
            a2.b(0);
        } else if (c2 == 3 || c2 == 4 || c2 == 5) {
            a2.b(2);
        } else {
            a2.b(1);
        }
        switch (str.hashCode()) {
            case -685620710:
                if (str.equals("{\\an1}")) {
                    c3 = 0;
                    break;
                }
                c3 = 65535;
                break;
            case -685620679:
                if (str.equals("{\\an2}")) {
                    c3 = 1;
                    break;
                }
                c3 = 65535;
                break;
            case -685620648:
                if (str.equals("{\\an3}")) {
                    c3 = 2;
                    break;
                }
                c3 = 65535;
                break;
            case -685620617:
                if (str.equals("{\\an4}")) {
                    c3 = 6;
                    break;
                }
                c3 = 65535;
                break;
            case -685620586:
                if (str.equals("{\\an5}")) {
                    c3 = 7;
                    break;
                }
                c3 = 65535;
                break;
            case -685620555:
                if (str.equals("{\\an6}")) {
                    c3 = '\b';
                    break;
                }
                c3 = 65535;
                break;
            case -685620524:
                if (str.equals("{\\an7}")) {
                    c3 = 3;
                    break;
                }
                c3 = 65535;
                break;
            case -685620493:
                if (str.equals("{\\an8}")) {
                    c3 = 4;
                    break;
                }
                c3 = 65535;
                break;
            case -685620462:
                if (str.equals("{\\an9}")) {
                    c3 = 5;
                    break;
                }
                c3 = 65535;
                break;
            default:
                c3 = 65535;
                break;
        }
        if (c3 == 0 || c3 == 1 || c3 == 2) {
            a2.a(2);
        } else if (c3 == 3 || c3 == 4 || c3 == 5) {
            a2.a(0);
        } else {
            a2.a(1);
        }
        return a2.a(b(a2.c())).a(b(a2.b()), 0).e();
    }

    private String a(String str, ArrayList<String> arrayList) {
        String trim = str.trim();
        StringBuilder sb = new StringBuilder(trim);
        Matcher matcher = f3345b.matcher(trim);
        int i = 0;
        while (matcher.find()) {
            String group = matcher.group();
            arrayList.add(group);
            int start = matcher.start() - i;
            int length = group.length();
            sb.replace(start, start + length, "");
            i += length;
        }
        return sb.toString();
    }

    static float b(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    return 0.92f;
                }
                throw new IllegalArgumentException();
            }
            return 0.5f;
        }
        return 0.08f;
    }

    @Override // com.applovin.exoplayer2.i.d
    protected f a(byte[] bArr, int i, boolean z) {
        StringBuilder sb;
        String str;
        ArrayList arrayList = new ArrayList();
        r rVar = new r();
        y yVar = new y(bArr, i);
        while (true) {
            String C = yVar.C();
            int i2 = 0;
            if (C == null) {
                break;
            } else if (C.length() != 0) {
                try {
                    Integer.parseInt(C);
                    C = yVar.C();
                } catch (NumberFormatException unused) {
                    sb = new StringBuilder("Skipping invalid index: ");
                }
                if (C == null) {
                    q.c("SubripDecoder", "Unexpected end");
                    break;
                }
                Matcher matcher = f3344a.matcher(C);
                if (matcher.matches()) {
                    rVar.a(a(matcher, 1));
                    rVar.a(a(matcher, 6));
                    this.f3346c.setLength(0);
                    this.f3347d.clear();
                    while (true) {
                        String C2 = yVar.C();
                        if (TextUtils.isEmpty(C2)) {
                            break;
                        }
                        if (this.f3346c.length() > 0) {
                            this.f3346c.append("<br>");
                        }
                        this.f3346c.append(a(C2, this.f3347d));
                    }
                    Spanned fromHtml = Html.fromHtml(this.f3346c.toString());
                    while (true) {
                        if (i2 >= this.f3347d.size()) {
                            str = null;
                            break;
                        }
                        str = this.f3347d.get(i2);
                        if (str.matches("\\{\\\\an[1-9]\\}")) {
                            break;
                        }
                        i2++;
                    }
                    arrayList.add(a(fromHtml, str));
                    arrayList.add(com.applovin.exoplayer2.i.a.f3163a);
                } else {
                    sb = new StringBuilder("Skipping invalid timing: ");
                    q.c("SubripDecoder", sb.append(C).toString());
                }
            }
        }
        return new b((com.applovin.exoplayer2.i.a[]) arrayList.toArray(new com.applovin.exoplayer2.i.a[0]), rVar.b());
    }
}

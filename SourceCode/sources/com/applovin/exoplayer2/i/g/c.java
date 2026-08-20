package com.applovin.exoplayer2.i.g;

import android.text.Layout;
import com.applovin.exoplayer2.common.base.Ascii;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.aj;
import com.applovin.exoplayer2.l.q;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
/* loaded from: classes.dex */
public final class c extends com.applovin.exoplayer2.i.d {
    private final XmlPullParserFactory j;

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f3360c = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f3361d = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");

    /* renamed from: e  reason: collision with root package name */
    private static final Pattern f3362e = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");

    /* renamed from: a  reason: collision with root package name */
    static final Pattern f3358a = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");

    /* renamed from: b  reason: collision with root package name */
    static final Pattern f3359b = Pattern.compile("^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$");

    /* renamed from: f  reason: collision with root package name */
    private static final Pattern f3363f = Pattern.compile("^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$");

    /* renamed from: g  reason: collision with root package name */
    private static final Pattern f3364g = Pattern.compile("^(\\d+) (\\d+)$");

    /* renamed from: h  reason: collision with root package name */
    private static final b f3365h = new b(30.0f, 1, 1);
    private static final a i = new a(32, 15);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final int f3366a;

        /* renamed from: b  reason: collision with root package name */
        final int f3367b;

        a(int i, int i2) {
            this.f3366a = i;
            this.f3367b = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final float f3368a;

        /* renamed from: b  reason: collision with root package name */
        final int f3369b;

        /* renamed from: c  reason: collision with root package name */
        final int f3370c;

        b(float f2, int i, int i2) {
            this.f3368a = f2;
            this.f3369b = i;
            this.f3370c = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.applovin.exoplayer2.i.g.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0051c {

        /* renamed from: a  reason: collision with root package name */
        final int f3371a;

        /* renamed from: b  reason: collision with root package name */
        final int f3372b;

        C0051c(int i, int i2) {
            this.f3371a = i;
            this.f3372b = i2;
        }
    }

    public c() {
        super("TtmlDecoder");
        try {
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            this.j = newInstance;
            newInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e2) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e2);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00bc, code lost:
        if (r13.equals("ms") == false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long a(java.lang.String r13, com.applovin.exoplayer2.i.g.c.b r14) throws com.applovin.exoplayer2.i.h {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.i.g.c.a(java.lang.String, com.applovin.exoplayer2.i.g.c$b):long");
    }

    private static a a(XmlPullParser xmlPullParser, a aVar) throws com.applovin.exoplayer2.i.h {
        StringBuilder sb;
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "cellResolution");
        if (attributeValue == null) {
            return aVar;
        }
        Matcher matcher = f3364g.matcher(attributeValue);
        if (matcher.matches()) {
            try {
                int parseInt = Integer.parseInt((String) com.applovin.exoplayer2.l.a.b(matcher.group(1)));
                int parseInt2 = Integer.parseInt((String) com.applovin.exoplayer2.l.a.b(matcher.group(2)));
                if (parseInt == 0 || parseInt2 == 0) {
                    throw new com.applovin.exoplayer2.i.h("Invalid cell resolution " + parseInt + " " + parseInt2);
                }
                return new a(parseInt, parseInt2);
            } catch (NumberFormatException unused) {
                sb = new StringBuilder("Ignoring malformed cell resolution: ");
            }
        } else {
            sb = new StringBuilder("Ignoring malformed cell resolution: ");
        }
        q.c("TtmlDecoder", sb.append(attributeValue).toString());
        return aVar;
    }

    private static b a(XmlPullParser xmlPullParser) throws com.applovin.exoplayer2.i.h {
        float f2;
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRate");
        int parseInt = attributeValue != null ? Integer.parseInt(attributeValue) : 30;
        String attributeValue2 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRateMultiplier");
        if (attributeValue2 != null) {
            String[] a2 = ai.a(attributeValue2, " ");
            if (a2.length != 2) {
                throw new com.applovin.exoplayer2.i.h("frameRateMultiplier doesn't have 2 parts");
            }
            f2 = Integer.parseInt(a2[0]) / Integer.parseInt(a2[1]);
        } else {
            f2 = 1.0f;
        }
        b bVar = f3365h;
        int i2 = bVar.f3369b;
        String attributeValue3 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "subFrameRate");
        if (attributeValue3 != null) {
            i2 = Integer.parseInt(attributeValue3);
        }
        int i3 = bVar.f3370c;
        String attributeValue4 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "tickRate");
        if (attributeValue4 != null) {
            i3 = Integer.parseInt(attributeValue4);
        }
        return new b(parseInt * f2, i2, i3);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static d a(XmlPullParser xmlPullParser, d dVar, Map<String, e> map, b bVar) throws com.applovin.exoplayer2.i.h {
        long j;
        long j2;
        char c2;
        int attributeCount = xmlPullParser.getAttributeCount();
        g a2 = a(xmlPullParser, (g) null);
        String[] strArr = null;
        String str = null;
        String str2 = "";
        long j3 = C.TIME_UNSET;
        long j4 = C.TIME_UNSET;
        long j5 = C.TIME_UNSET;
        for (int i2 = 0; i2 < attributeCount; i2++) {
            String attributeName = xmlPullParser.getAttributeName(i2);
            String attributeValue = xmlPullParser.getAttributeValue(i2);
            attributeName.hashCode();
            switch (attributeName.hashCode()) {
                case -934795532:
                    if (attributeName.equals(TtmlNode.TAG_REGION)) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 99841:
                    if (attributeName.equals("dur")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 100571:
                    if (attributeName.equals(TtmlNode.END)) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 93616297:
                    if (attributeName.equals("begin")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 109780401:
                    if (attributeName.equals(TtmlNode.TAG_STYLE)) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1292595405:
                    if (attributeName.equals("backgroundImage")) {
                        c2 = 5;
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
                    if (map.containsKey(attributeValue)) {
                        str2 = attributeValue;
                        continue;
                    }
                case 1:
                    j5 = a(attributeValue, bVar);
                    break;
                case 2:
                    j4 = a(attributeValue, bVar);
                    break;
                case 3:
                    j3 = a(attributeValue, bVar);
                    break;
                case 4:
                    String[] a3 = a(attributeValue);
                    if (a3.length > 0) {
                        strArr = a3;
                        break;
                    }
                    break;
                case 5:
                    if (attributeValue.startsWith("#")) {
                        str = attributeValue.substring(1);
                        break;
                    }
                    break;
            }
        }
        if (dVar != null) {
            long j6 = dVar.f3376d;
            j = C.TIME_UNSET;
            if (j6 != C.TIME_UNSET) {
                if (j3 != C.TIME_UNSET) {
                    j3 += dVar.f3376d;
                }
                if (j4 != C.TIME_UNSET) {
                    j4 += dVar.f3376d;
                }
            }
        } else {
            j = C.TIME_UNSET;
        }
        long j7 = j3;
        if (j4 == j) {
            if (j5 != j) {
                j2 = j7 + j5;
            } else if (dVar != null && dVar.f3377e != j) {
                j2 = dVar.f3377e;
            }
            return d.a(xmlPullParser.getName(), j7, j2, a2, strArr, str2, str, dVar);
        }
        j2 = j4;
        return d.a(xmlPullParser.getName(), j7, j2, a2, strArr, str2, str, dVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0181, code lost:
        if (r0.equals(com.google.android.exoplayer2.text.ttml.TtmlNode.VERTICAL) == false) goto L41;
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0154  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.applovin.exoplayer2.i.g.e a(org.xmlpull.v1.XmlPullParser r17, com.applovin.exoplayer2.i.g.c.a r18, com.applovin.exoplayer2.i.g.c.C0051c r19) {
        /*
            Method dump skipped, instructions count: 476
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.i.g.c.a(org.xmlpull.v1.XmlPullParser, com.applovin.exoplayer2.i.g.c$a, com.applovin.exoplayer2.i.g.c$c):com.applovin.exoplayer2.i.g.e");
    }

    private static g a(g gVar) {
        return gVar == null ? new g() : gVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01c2, code lost:
        if (r3.equals("text") == false) goto L49;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.applovin.exoplayer2.i.g.g a(org.xmlpull.v1.XmlPullParser r12, com.applovin.exoplayer2.i.g.g r13) {
        /*
            Method dump skipped, instructions count: 898
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.i.g.c.a(org.xmlpull.v1.XmlPullParser, com.applovin.exoplayer2.i.g.g):com.applovin.exoplayer2.i.g.g");
    }

    private static Map<String, g> a(XmlPullParser xmlPullParser, Map<String, g> map, a aVar, C0051c c0051c, Map<String, e> map2, Map<String, String> map3) throws IOException, XmlPullParserException {
        do {
            xmlPullParser.next();
            if (aj.b(xmlPullParser, TtmlNode.TAG_STYLE)) {
                String c2 = aj.c(xmlPullParser, TtmlNode.TAG_STYLE);
                g a2 = a(xmlPullParser, new g());
                if (c2 != null) {
                    for (String str : a(c2)) {
                        a2.a(map.get(str));
                    }
                }
                String j = a2.j();
                if (j != null) {
                    map.put(j, a2);
                }
            } else if (aj.b(xmlPullParser, TtmlNode.TAG_REGION)) {
                e a3 = a(xmlPullParser, aVar, c0051c);
                if (a3 != null) {
                    map2.put(a3.f3381a, a3);
                }
            } else if (aj.b(xmlPullParser, TtmlNode.TAG_METADATA)) {
                a(xmlPullParser, map3);
            }
        } while (!aj.a(xmlPullParser, TtmlNode.TAG_HEAD));
        return map;
    }

    private static void a(String str, g gVar) throws com.applovin.exoplayer2.i.h {
        Matcher matcher;
        String[] a2 = ai.a(str, "\\s+");
        if (a2.length == 1) {
            matcher = f3362e.matcher(str);
        } else if (a2.length != 2) {
            throw new com.applovin.exoplayer2.i.h("Invalid number of entries for fontSize: " + a2.length + ".");
        } else {
            matcher = f3362e.matcher(a2[1]);
            q.c("TtmlDecoder", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        }
        if (!matcher.matches()) {
            throw new com.applovin.exoplayer2.i.h("Invalid expression for fontSize: '" + str + "'.");
        }
        String str2 = (String) com.applovin.exoplayer2.l.a.b(matcher.group(3));
        str2.hashCode();
        char c2 = 65535;
        switch (str2.hashCode()) {
            case 37:
                if (str2.equals("%")) {
                    c2 = 0;
                    break;
                }
                break;
            case 3240:
                if (str2.equals("em")) {
                    c2 = 1;
                    break;
                }
                break;
            case 3592:
                if (str2.equals("px")) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                gVar.e(3);
                break;
            case 1:
                gVar.e(2);
                break;
            case 2:
                gVar.e(1);
                break;
            default:
                throw new com.applovin.exoplayer2.i.h("Invalid unit for fontSize: '" + str2 + "'.");
        }
        gVar.b(Float.parseFloat((String) com.applovin.exoplayer2.l.a.b(matcher.group(1))));
    }

    private static void a(XmlPullParser xmlPullParser, Map<String, String> map) throws IOException, XmlPullParserException {
        String c2;
        do {
            xmlPullParser.next();
            if (aj.b(xmlPullParser, "image") && (c2 = aj.c(xmlPullParser, "id")) != null) {
                map.put(c2, xmlPullParser.nextText());
            }
        } while (!aj.a(xmlPullParser, TtmlNode.TAG_METADATA));
    }

    private static String[] a(String str) {
        String trim = str.trim();
        return trim.isEmpty() ? new String[0] : ai.a(trim, "\\s+");
    }

    private static Layout.Alignment b(String str) {
        String lowerCase = Ascii.toLowerCase(str);
        lowerCase.hashCode();
        char c2 = 65535;
        switch (lowerCase.hashCode()) {
            case -1364013995:
                if (lowerCase.equals(TtmlNode.CENTER)) {
                    c2 = 0;
                    break;
                }
                break;
            case 100571:
                if (lowerCase.equals(TtmlNode.END)) {
                    c2 = 1;
                    break;
                }
                break;
            case 3317767:
                if (lowerCase.equals(TtmlNode.LEFT)) {
                    c2 = 2;
                    break;
                }
                break;
            case 108511772:
                if (lowerCase.equals(TtmlNode.RIGHT)) {
                    c2 = 3;
                    break;
                }
                break;
            case 109757538:
                if (lowerCase.equals(TtmlNode.START)) {
                    c2 = 4;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return Layout.Alignment.ALIGN_CENTER;
            case 1:
            case 3:
                return Layout.Alignment.ALIGN_OPPOSITE;
            case 2:
            case 4:
                return Layout.Alignment.ALIGN_NORMAL;
            default:
                return null;
        }
    }

    private static C0051c b(XmlPullParser xmlPullParser) {
        StringBuilder sb;
        String c2 = aj.c(xmlPullParser, TtmlNode.ATTR_TTS_EXTENT);
        if (c2 == null) {
            return null;
        }
        Matcher matcher = f3363f.matcher(c2);
        if (matcher.matches()) {
            try {
                return new C0051c(Integer.parseInt((String) com.applovin.exoplayer2.l.a.b(matcher.group(1))), Integer.parseInt((String) com.applovin.exoplayer2.l.a.b(matcher.group(2))));
            } catch (NumberFormatException unused) {
                sb = new StringBuilder("Ignoring malformed tts extent: ");
            }
        } else {
            sb = new StringBuilder("Ignoring non-pixel tts extent: ");
        }
        q.c("TtmlDecoder", sb.append(c2).toString());
        return null;
    }

    private static boolean c(String str) {
        return str.equals(TtmlNode.TAG_TT) || str.equals(TtmlNode.TAG_HEAD) || str.equals(TtmlNode.TAG_BODY) || str.equals(TtmlNode.TAG_DIV) || str.equals("p") || str.equals(TtmlNode.TAG_SPAN) || str.equals(TtmlNode.TAG_BR) || str.equals(TtmlNode.TAG_STYLE) || str.equals(TtmlNode.TAG_STYLING) || str.equals(TtmlNode.TAG_LAYOUT) || str.equals(TtmlNode.TAG_REGION) || str.equals(TtmlNode.TAG_METADATA) || str.equals("image") || str.equals("data") || str.equals(TtmlNode.TAG_INFORMATION);
    }

    private static float d(String str) {
        Matcher matcher = f3358a.matcher(str);
        if (!matcher.matches()) {
            q.c("TtmlDecoder", "Invalid value for shear: " + str);
            return Float.MAX_VALUE;
        }
        try {
            return Math.min(100.0f, Math.max(-100.0f, Float.parseFloat((String) com.applovin.exoplayer2.l.a.b(matcher.group(1)))));
        } catch (NumberFormatException e2) {
            q.b("TtmlDecoder", "Failed to parse shear: " + str, e2);
            return Float.MAX_VALUE;
        }
    }

    @Override // com.applovin.exoplayer2.i.d
    protected com.applovin.exoplayer2.i.f a(byte[] bArr, int i2, boolean z) throws com.applovin.exoplayer2.i.h {
        b bVar;
        try {
            XmlPullParser newPullParser = this.j.newPullParser();
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            HashMap hashMap3 = new HashMap();
            hashMap2.put("", new e(""));
            C0051c c0051c = null;
            newPullParser.setInput(new ByteArrayInputStream(bArr, 0, i2), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            b bVar2 = f3365h;
            a aVar = i;
            int i3 = 0;
            h hVar = null;
            for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.getEventType()) {
                d dVar = (d) arrayDeque.peek();
                if (i3 == 0) {
                    String name = newPullParser.getName();
                    if (eventType == 2) {
                        if (TtmlNode.TAG_TT.equals(name)) {
                            bVar2 = a(newPullParser);
                            aVar = a(newPullParser, i);
                            c0051c = b(newPullParser);
                        }
                        C0051c c0051c2 = c0051c;
                        b bVar3 = bVar2;
                        a aVar2 = aVar;
                        if (c(name)) {
                            if (TtmlNode.TAG_HEAD.equals(name)) {
                                bVar = bVar3;
                                a(newPullParser, hashMap, aVar2, c0051c2, hashMap2, hashMap3);
                            } else {
                                bVar = bVar3;
                                try {
                                    d a2 = a(newPullParser, dVar, hashMap2, bVar);
                                    arrayDeque.push(a2);
                                    if (dVar != null) {
                                        dVar.a(a2);
                                    }
                                } catch (com.applovin.exoplayer2.i.h e2) {
                                    q.b("TtmlDecoder", "Suppressing parser error", e2);
                                    i3++;
                                }
                            }
                            bVar2 = bVar;
                        } else {
                            q.b("TtmlDecoder", "Ignoring unsupported tag: " + newPullParser.getName());
                            i3++;
                            bVar2 = bVar3;
                        }
                        c0051c = c0051c2;
                        aVar = aVar2;
                    } else if (eventType == 4) {
                        ((d) com.applovin.exoplayer2.l.a.b(dVar)).a(d.a(newPullParser.getText()));
                    } else if (eventType == 3) {
                        if (newPullParser.getName().equals(TtmlNode.TAG_TT)) {
                            hVar = new h((d) com.applovin.exoplayer2.l.a.b((d) arrayDeque.peek()), hashMap, hashMap2, hashMap3);
                        }
                        arrayDeque.pop();
                    }
                } else if (eventType == 2) {
                    i3++;
                } else if (eventType == 3) {
                    i3--;
                }
                newPullParser.next();
            }
            if (hVar != null) {
                return hVar;
            }
            throw new com.applovin.exoplayer2.i.h("No TTML subtitles found");
        } catch (IOException e3) {
            throw new IllegalStateException("Unexpected error when reading input.", e3);
        } catch (XmlPullParserException e4) {
            throw new com.applovin.exoplayer2.i.h("Unable to decode source", e4);
        }
    }
}

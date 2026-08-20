package com.applovin.impl.sdk.utils;

import android.util.Xml;
import com.applovin.impl.sdk.v;
import java.util.Arrays;
import java.util.Collections;
import java.util.Map;
import java.util.Stack;
import java.util.concurrent.TimeUnit;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
/* loaded from: classes.dex */
public class t {

    /* renamed from: a  reason: collision with root package name */
    private final v f6210a;

    /* renamed from: b  reason: collision with root package name */
    private Stack<a> f6211b;

    /* renamed from: c  reason: collision with root package name */
    private StringBuilder f6212c;

    /* renamed from: d  reason: collision with root package name */
    private long f6213d;

    /* renamed from: e  reason: collision with root package name */
    private a f6214e;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a extends s {
        a(String str, Map<String, String> map, s sVar) {
            super(str, map, sVar);
        }

        void a(s sVar) {
            if (sVar == null) {
                throw new IllegalArgumentException("None specified.");
            }
            this.f6206c.add(sVar);
        }

        void d(String str) {
            this.f6205b = str;
        }
    }

    t(com.applovin.impl.sdk.n nVar) {
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified.");
        }
        this.f6210a = nVar.D();
    }

    public static s a(String str, com.applovin.impl.sdk.n nVar) throws SAXException {
        return new t(nVar).a(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> a(Attributes attributes) {
        if (attributes != null) {
            int length = attributes.getLength();
            Map<String, String> map = CollectionUtils.map(length);
            for (int i = 0; i < length; i++) {
                map.put(attributes.getQName(i), attributes.getValue(i));
            }
            return map;
        }
        return Collections.emptyMap();
    }

    public s a(String str) throws SAXException {
        if (str != null) {
            this.f6212c = new StringBuilder();
            this.f6211b = new Stack<>();
            this.f6214e = null;
            Xml.parse(str, new ContentHandler() { // from class: com.applovin.impl.sdk.utils.t.1
                @Override // org.xml.sax.ContentHandler
                public void characters(char[] cArr, int i, int i2) {
                    String trim = new String(Arrays.copyOfRange(cArr, i, i2)).trim();
                    if (StringUtils.isValidString(trim)) {
                        t.this.f6212c.append(trim);
                    }
                }

                @Override // org.xml.sax.ContentHandler
                public void endDocument() {
                    long seconds = TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis()) - t.this.f6213d;
                    v unused = t.this.f6210a;
                    if (v.a()) {
                        t.this.f6210a.b("XmlParser", "Finished parsing in " + seconds + " seconds");
                    }
                }

                @Override // org.xml.sax.ContentHandler
                public void endElement(String str2, String str3, String str4) {
                    t tVar = t.this;
                    tVar.f6214e = (a) tVar.f6211b.pop();
                    t.this.f6214e.d(t.this.f6212c.toString().trim());
                    t.this.f6212c.setLength(0);
                }

                @Override // org.xml.sax.ContentHandler
                public void endPrefixMapping(String str2) {
                }

                @Override // org.xml.sax.ContentHandler
                public void ignorableWhitespace(char[] cArr, int i, int i2) {
                }

                @Override // org.xml.sax.ContentHandler
                public void processingInstruction(String str2, String str3) {
                }

                @Override // org.xml.sax.ContentHandler
                public void setDocumentLocator(Locator locator) {
                }

                @Override // org.xml.sax.ContentHandler
                public void skippedEntity(String str2) {
                }

                @Override // org.xml.sax.ContentHandler
                public void startDocument() {
                    v unused = t.this.f6210a;
                    if (v.a()) {
                        t.this.f6210a.b("XmlParser", "Begin parsing...");
                    }
                    t.this.f6213d = TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis());
                }

                @Override // org.xml.sax.ContentHandler
                public void startElement(String str2, String str3, String str4, Attributes attributes) throws SAXException {
                    try {
                        a aVar = !t.this.f6211b.isEmpty() ? (a) t.this.f6211b.peek() : null;
                        a aVar2 = new a(str3, t.this.a(attributes), aVar);
                        if (aVar != null) {
                            aVar.a(aVar2);
                        }
                        t.this.f6211b.push(aVar2);
                    } catch (Exception e2) {
                        v unused = t.this.f6210a;
                        if (v.a()) {
                            t.this.f6210a.b("XmlParser", "Unable to process element <" + str3 + ">", e2);
                        }
                        throw new SAXException("Failed to start element", e2);
                    }
                }

                @Override // org.xml.sax.ContentHandler
                public void startPrefixMapping(String str2, String str3) {
                }
            });
            a aVar = this.f6214e;
            if (aVar != null) {
                return aVar;
            }
            throw new SAXException("Unable to parse XML into node");
        }
        throw new IllegalArgumentException("Unable to parse. No XML specified.");
    }
}

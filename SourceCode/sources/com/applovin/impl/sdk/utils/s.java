package com.applovin.impl.sdk.utils;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class s {

    /* renamed from: a  reason: collision with root package name */
    public static final s f6204a = new s();

    /* renamed from: b  reason: collision with root package name */
    protected String f6205b;

    /* renamed from: c  reason: collision with root package name */
    protected final List<s> f6206c;

    /* renamed from: d  reason: collision with root package name */
    private final s f6207d;

    /* renamed from: e  reason: collision with root package name */
    private final String f6208e;

    /* renamed from: f  reason: collision with root package name */
    private final Map<String, String> f6209f;

    private s() {
        this.f6207d = null;
        this.f6208e = "";
        this.f6209f = Collections.emptyMap();
        this.f6205b = "";
        this.f6206c = Collections.emptyList();
    }

    public s(String str, Map<String, String> map, s sVar) {
        this.f6207d = sVar;
        this.f6208e = str;
        this.f6209f = Collections.unmodifiableMap(map);
        this.f6206c = new ArrayList();
    }

    public String a() {
        return this.f6208e;
    }

    public List<s> a(String str) {
        if (str != null) {
            ArrayList arrayList = new ArrayList(this.f6206c.size());
            for (s sVar : this.f6206c) {
                if (str.equalsIgnoreCase(sVar.a())) {
                    arrayList.add(sVar);
                }
            }
            return arrayList;
        }
        throw new IllegalArgumentException("No name specified.");
    }

    public s b(String str) {
        if (str != null) {
            for (s sVar : this.f6206c) {
                if (str.equalsIgnoreCase(sVar.a())) {
                    return sVar;
                }
            }
            return null;
        }
        throw new IllegalArgumentException("No name specified.");
    }

    public Map<String, String> b() {
        return this.f6209f;
    }

    public s c(String str) {
        if (str != null) {
            if (this.f6206c.size() > 0) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(this);
                while (!arrayList.isEmpty()) {
                    s sVar = (s) arrayList.get(0);
                    arrayList.remove(0);
                    if (str.equalsIgnoreCase(sVar.a())) {
                        return sVar;
                    }
                    arrayList.addAll(sVar.d());
                }
                return null;
            }
            return null;
        }
        throw new IllegalArgumentException("No name specified.");
    }

    public String c() {
        return this.f6205b;
    }

    public List<s> d() {
        return Collections.unmodifiableList(this.f6206c);
    }

    public String toString() {
        return "XmlNode{elementName='" + this.f6208e + "', text='" + this.f6205b + "', attributes=" + this.f6209f + '}';
    }
}

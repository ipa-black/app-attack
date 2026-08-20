package com.applovin.impl.mediation.debugger.b.b;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final String f4951a;

    /* renamed from: b  reason: collision with root package name */
    private final String f4952b;

    /* renamed from: c  reason: collision with root package name */
    private final String f4953c;

    /* renamed from: d  reason: collision with root package name */
    private final String f4954d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f4955e;

    /* renamed from: f  reason: collision with root package name */
    private final String f4956f;

    /* renamed from: g  reason: collision with root package name */
    private final int f4957g;

    public b(String str) {
        this(str, -1);
    }

    public b(String str, int i) {
        this.f4956f = str;
        this.f4957g = i;
        String[] split = str.split(",");
        boolean z = split.length == 3 || split.length == 4;
        this.f4955e = z;
        String str2 = "";
        if (z) {
            this.f4951a = a(split[0]);
            this.f4952b = a(split[1]);
            this.f4953c = a(split[2]);
            if (split.length == 4) {
                str2 = a(split[3]);
            }
        } else {
            this.f4951a = "";
            this.f4952b = "";
            this.f4953c = "";
        }
        this.f4954d = str2;
    }

    private String a(String str) {
        return str.replace((char) 173, ' ').trim();
    }

    public String a() {
        return this.f4951a;
    }

    protected boolean a(Object obj) {
        return obj instanceof b;
    }

    public String b() {
        return this.f4952b;
    }

    public String c() {
        return this.f4953c;
    }

    public String d() {
        return this.f4954d;
    }

    public boolean e() {
        return this.f4955e;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            if (bVar.a(this) && e() == bVar.e()) {
                String a2 = a();
                String a3 = bVar.a();
                if (a2 != null ? a2.equals(a3) : a3 == null) {
                    String b2 = b();
                    String b3 = bVar.b();
                    if (b2 != null ? b2.equals(b3) : b3 == null) {
                        String c2 = c();
                        String c3 = bVar.c();
                        if (c2 != null ? c2.equals(c3) : c3 == null) {
                            String d2 = d();
                            String d3 = bVar.d();
                            return d2 != null ? d2.equals(d3) : d3 == null;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int i = e() ? 79 : 97;
        String a2 = a();
        int hashCode = ((i + 59) * 59) + (a2 == null ? 43 : a2.hashCode());
        String b2 = b();
        int hashCode2 = (hashCode * 59) + (b2 == null ? 43 : b2.hashCode());
        String c2 = c();
        int hashCode3 = (hashCode2 * 59) + (c2 == null ? 43 : c2.hashCode());
        String d2 = d();
        return (hashCode3 * 59) + (d2 != null ? d2.hashCode() : 43);
    }
}

package com.appodeal.ads;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import org.apache.ldap.server.jndi.JavaLdapSupport;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public class a {

    /* renamed from: d  reason: collision with root package name */
    public static final a f6414d;

    /* renamed from: e  reason: collision with root package name */
    public static final a f6415e;

    /* renamed from: f  reason: collision with root package name */
    public static final C0102a f6416f;

    /* renamed from: g  reason: collision with root package name */
    public static final b f6417g;

    /* renamed from: h  reason: collision with root package name */
    public static final a f6418h;
    public static final /* synthetic */ a[] i;

    /* renamed from: a  reason: collision with root package name */
    public final String f6419a;

    /* renamed from: b  reason: collision with root package name */
    public final int f6420b;

    /* renamed from: c  reason: collision with root package name */
    public final int f6421c;

    /* renamed from: com.appodeal.ads.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public enum C0102a extends a {
        public C0102a() {
            super("LEFT", 2, TtmlNode.LEFT, 19);
        }

        @Override // com.appodeal.ads.a
        public final int a() {
            return r0.f7348h;
        }
    }

    /* loaded from: classes.dex */
    public enum b extends a {
        public b() {
            super("RIGHT", 3, TtmlNode.RIGHT, 21);
        }

        @Override // com.appodeal.ads.a
        public final int a() {
            return r0.i;
        }
    }

    static {
        a aVar = new a("BOTTOM", 0, "bottom", 81, 81);
        f6414d = aVar;
        a aVar2 = new a("TOP", 1, JavaLdapSupport.TOP_ATTR, 49, 49);
        f6415e = aVar2;
        C0102a c0102a = new C0102a();
        f6416f = c0102a;
        b bVar = new b();
        f6417g = bVar;
        a aVar3 = new a("VIEW", 4, "bannerview", 17, 17);
        f6418h = aVar3;
        i = new a[]{aVar, aVar2, c0102a, bVar, aVar3};
    }

    public a() {
        throw null;
    }

    public /* synthetic */ a(String str, int i2, String str2, int i3) {
        this(str, i2, str2, 17, i3);
    }

    public a(String str, int i2, String str2, int i3, int i4) {
        this.f6419a = str2;
        this.f6420b = i3;
        this.f6421c = i4;
    }

    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    public static a[] values() {
        return (a[]) i.clone();
    }

    public int a() {
        return 0;
    }
}

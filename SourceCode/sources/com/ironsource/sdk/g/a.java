package com.ironsource.sdk.g;
/* loaded from: classes3.dex */
public final class a extends f {

    /* renamed from: e  reason: collision with root package name */
    private static String f12010e = "type";

    /* renamed from: f  reason: collision with root package name */
    private static String f12011f = "numOfAdUnits";

    /* renamed from: g  reason: collision with root package name */
    private static String f12012g = "firstCampaignCredits";

    /* renamed from: h  reason: collision with root package name */
    private static String f12013h = "totalNumberCredits";
    private static String i = "productType";

    /* renamed from: a  reason: collision with root package name */
    public String f12014a;

    /* renamed from: b  reason: collision with root package name */
    public String f12015b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f12016c;
    private String j;
    private String k;
    private String l;

    public a(String str) {
        super(str);
        boolean z;
        if (a(f12010e)) {
            this.j = d(f12010e);
        }
        if (a(f12011f)) {
            this.f12015b = d(f12011f);
            z = true;
        } else {
            z = false;
        }
        this.f12016c = z;
        if (a(f12012g)) {
            this.k = d(f12012g);
        }
        if (a(f12013h)) {
            this.l = d(f12013h);
        }
        if (a(i)) {
            this.f12014a = d(i);
        }
    }
}

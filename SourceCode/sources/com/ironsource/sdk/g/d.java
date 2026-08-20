package com.ironsource.sdk.g;
/* loaded from: classes3.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private boolean f12032a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f12033b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f12034c;

    /* renamed from: d  reason: collision with root package name */
    private String f12035d;

    /* renamed from: e  reason: collision with root package name */
    private String f12036e;

    /* renamed from: f  reason: collision with root package name */
    private int f12037f;

    /* renamed from: g  reason: collision with root package name */
    private int f12038g;

    /* renamed from: h  reason: collision with root package name */
    private int f12039h;
    private int[] i;
    private int[] j;
    private int[] k;
    private int[] l;

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final int f12040a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f12041b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f12042c = 3;

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ int[] f12043d = {1, 2, 3};

        public static int[] a() {
            return (int[]) f12043d.clone();
        }
    }

    /* loaded from: classes3.dex */
    public enum b {
        None,
        Loaded,
        Ready,
        Failed
    }

    /* loaded from: classes3.dex */
    public enum c {
        Web,
        Native
    }

    /* renamed from: com.ironsource.sdk.g.d$d  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public enum EnumC0328d {
        MODE_0(0),
        MODE_1(1),
        MODE_2(2),
        MODE_3(3);
        

        /* renamed from: d  reason: collision with root package name */
        public int f12057d;

        EnumC0328d(int i) {
            this.f12057d = i;
        }
    }

    /* loaded from: classes3.dex */
    public enum e {
        Banner,
        OfferWall,
        Interstitial,
        OfferWallCredits,
        RewardedVideo,
        None
    }

    public d() {
    }

    public d(boolean z, boolean z2, boolean z3, String str, String str2, int i, int i2, int i3, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        this.f12032a = z;
        this.f12033b = z2;
        this.f12034c = z3;
        this.f12035d = str;
        this.f12036e = str2;
        this.f12037f = i;
        this.f12038g = i2;
        this.f12039h = i3;
        this.i = iArr;
        this.j = iArr2;
        this.k = iArr3;
        this.l = iArr4;
    }

    public boolean a() {
        return this.f12032a;
    }

    public boolean b() {
        return this.f12033b;
    }

    public boolean c() {
        return this.f12034c;
    }

    public String d() {
        return this.f12035d;
    }

    public String e() {
        return this.f12036e;
    }

    public int f() {
        return this.f12037f;
    }

    public int g() {
        return this.f12038g;
    }

    public int h() {
        return this.f12039h;
    }

    public int[] i() {
        return this.i;
    }

    public int[] j() {
        return this.j;
    }

    public int[] k() {
        return this.k;
    }

    public int[] l() {
        return this.l;
    }
}

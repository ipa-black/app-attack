.class public final Lcom/facebook/ads/redexgen/X/Sh;
.super Lcom/facebook/ads/redexgen/X/N0;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Sk;,
        Lcom/facebook/ads/redexgen/X/N4;,
        Lcom/facebook/ads/redexgen/X/Sj;,
        Lcom/facebook/ads/redexgen/X/N5;,
        Lcom/facebook/ads/redexgen/X/N2;,
        Lcom/facebook/ads/redexgen/X/N3;
    }
.end annotation


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;

.field public static final A0H:Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:Lcom/facebook/ads/redexgen/X/LD;

.field public A02:Lcom/facebook/ads/redexgen/X/Q9;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/QA;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Z

.field public A05:Z

.field public A06:Z

.field public final A07:Landroid/graphics/Path;

.field public final A08:Landroid/graphics/RectF;

.field public final A09:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A0A:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/N3;",
            ">;"
        }
    .end annotation
.end field

.field public final A0B:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0D:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final A0E:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 52944
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8gq0YClbFfezV7VWazRrkmUo5IqHlAe0"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "DZEC2fF8R1zbFaxtc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "FhN1N87P5UC3PnJCVDWnxEC"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "JmSzPmcyjiRof3lizahs2qZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "A3Evrr3LcR4BJzz79LIh"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2a6NLKfKqYFtWGCWoigE8lnPrM"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Nz12Z6hGfXPsqa2uThDzH9TN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "eI6gTMB0yvKckA2LC3VZ0zYV"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Sh;->A0G:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sh;->A06()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Sh;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sh;->A0H:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/ref/WeakReference;ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Xc;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/N3;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 52945
    .local p1, "adWebViewListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/internal/view/common/AdWebView$AdWebViewListener;>;"
    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3, v4}, Lcom/facebook/ads/redexgen/X/Sh;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/ref/WeakReference;IZ)V

    .line 52946
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IK;->A1Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52947
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7N;->A01()Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v0

    .line 52948
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A0A()Lcom/facebook/ads/redexgen/X/Im;

    move-result-object v3

    .line 52949
    if-nez p4, :cond_0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sh;->A04(III)Ljava/lang/String;

    move-result-object p4

    :cond_0
    const/4 v0, 0x1

    invoke-interface {v3, p0, p4, v4, v0}, Lcom/facebook/ads/redexgen/X/Im;->AFq(Landroid/view/View;Ljava/lang/String;ZZ)V

    .line 52950
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A06:Z

    .line 52951
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/ref/WeakReference;IZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Xc;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/N3;",
            ">;IZ)V"
        }
    .end annotation

    .line 52952
    .local p1, "adWebViewListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/internal/view/common/AdWebView$AdWebViewListener;>;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/N0;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 52953
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A0B:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52954
    const/4 v4, 0x1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52955
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A07:Landroid/graphics/Path;

    .line 52956
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A08:Landroid/graphics/RectF;

    .line 52957
    const/16 v1, 0x1388

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A0D:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52958
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A0E:Ljava/util/concurrent/atomic/AtomicReference;

    .line 52959
    new-instance v0, Lcom/facebook/ads/redexgen/X/LD;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/LD;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A01:Lcom/facebook/ads/redexgen/X/LD;

    .line 52960
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Sh;->A05:Z

    .line 52961
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Sh;->A06:Z

    .line 52962
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sh;->A09:Lcom/facebook/ads/redexgen/X/Xc;

    .line 52963
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/Sh;->A04:Z

    .line 52964
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Sh;->A0A:Ljava/lang/ref/WeakReference;

    .line 52965
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sl;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Sl;-><init>(Lcom/facebook/ads/redexgen/X/Sh;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A02:Lcom/facebook/ads/redexgen/X/Q9;

    .line 52966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A02:Lcom/facebook/ads/redexgen/X/Q9;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sh;->A09:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QA;

    invoke-direct {v0, p0, p3, v2, v1}, Lcom/facebook/ads/redexgen/X/QA;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A03:Lcom/facebook/ads/redexgen/X/QA;

    .line 52967
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sh;->A0D()Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Sh;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 52968
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sh;->A0E()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Sh;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 52969
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sh;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 52970
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sh;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 52971
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-le v1, v0, :cond_0

    .line 52972
    new-instance v3, Lcom/facebook/ads/redexgen/X/N2;

    .line 52973
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/N3;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Sh;->A03:Lcom/facebook/ads/redexgen/X/QA;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Sh;->A0B:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Sh;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/Sh;->A09:Lcom/facebook/ads/redexgen/X/Xc;

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/N2;-><init>(Lcom/facebook/ads/redexgen/X/Sh;Lcom/facebook/ads/redexgen/X/N3;Lcom/facebook/ads/redexgen/X/QA;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 52974
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sh;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Sh;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52975
    :cond_0
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Sh;)Lcom/facebook/ads/redexgen/X/LD;
    .locals 0

    .line 52976
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A01:Lcom/facebook/ads/redexgen/X/LD;

    return-object p0
.end method

.method public static synthetic A03()Ljava/lang/String;
    .locals 1

    .line 52977
    sget-object v0, Lcom/facebook/ads/redexgen/X/Sh;->A0H:Ljava/lang/String;

    return-object v0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sh;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sh;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Sh;->A0G:[Ljava/lang/String;

    const-string v1, "qkBM5EbEKD4bLDmS2"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5e

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Sh;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 52978
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A0A:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sh;->A0F:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x23t
        0x2t
        0x2et
        0x2dt
        0x33t
        0x31t
        0x2et
        0x2bt
    .end array-data
.end method

.method private final A07()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 52979
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A0B:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Sh;)Z
    .locals 0

    .line 52980
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A05:Z

    return p0
.end method


# virtual methods
.method public final A0D()Landroid/webkit/WebChromeClient;
    .locals 1

    .line 52981
    new-instance v0, Lcom/facebook/ads/redexgen/X/N4;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/N4;-><init>()V

    return-object v0
.end method

.method public final A0E()Landroid/webkit/WebViewClient;
    .locals 11

    .line 52982
    new-instance v1, Lcom/facebook/ads/redexgen/X/N5;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Sh;->A09:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sh;->A0A:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A03:Lcom/facebook/ads/redexgen/X/QA;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A01:Lcom/facebook/ads/redexgen/X/LD;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Sh;->A0D:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/Sh;->A0E:Ljava/util/concurrent/atomic/AtomicReference;

    iget-boolean v10, p0, Lcom/facebook/ads/redexgen/X/Sh;->A04:Z

    invoke-direct/range {v1 .. v10}, Lcom/facebook/ads/redexgen/X/N5;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;Z)V

    return-object v1
.end method

.method public final A0F()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 52983
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A09:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->AFs()V

    .line 52984
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sh;->A0B:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 52985
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sh;->A03:Lcom/facebook/ads/redexgen/X/QA;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sj;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Sj;-><init>(Lcom/facebook/ads/redexgen/X/QA;)V

    .line 52986
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52987
    return-void
.end method

.method public final A0G(II)V
    .locals 1

    .line 52988
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A03:Lcom/facebook/ads/redexgen/X/QA;

    if-eqz v0, :cond_0

    .line 52989
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/QA;->A0W(I)V

    .line 52990
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A03:Lcom/facebook/ads/redexgen/X/QA;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/QA;->A0X(I)V

    .line 52991
    :cond_0
    return-void
.end method

.method public final destroy()V
    .locals 2

    .line 52992
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A06:Z

    if-eqz v0, :cond_0

    .line 52993
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A09:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A01()Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A0A()Lcom/facebook/ads/redexgen/X/Im;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Im;->AFe(Landroid/view/View;)V

    .line 52994
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sh;->A03:Lcom/facebook/ads/redexgen/X/QA;

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    .line 52995
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/QA;->A0V()V

    .line 52996
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A03:Lcom/facebook/ads/redexgen/X/QA;

    .line 52997
    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 52998
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A02:Lcom/facebook/ads/redexgen/X/Q9;

    .line 52999
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A01:Lcom/facebook/ads/redexgen/X/LD;

    .line 53000
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/N6;->A03(Landroid/webkit/WebView;)V

    .line 53001
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/N0;->destroy()V

    .line 53002
    return-void
.end method

.method public getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/LD;
    .locals 1

    .line 53003
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A01:Lcom/facebook/ads/redexgen/X/LD;

    return-object v0
.end method

.method public getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QA;
    .locals 1

    .line 53004
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A03:Lcom/facebook/ads/redexgen/X/QA;

    return-object v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 53005
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A00:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 53006
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Sh;->A08:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sh;->getWidth()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sh;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 53007
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A07:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 53008
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sh;->A07:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Sh;->A08:Landroid/graphics/RectF;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Sh;->A00:F

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v2, v1, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 53009
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A07:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 53010
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/N0;->onDraw(Landroid/graphics/Canvas;)V

    .line 53011
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 53012
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sh;->A01:Lcom/facebook/ads/redexgen/X/LD;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A09:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v1, v0, p1, p0, p0}, Lcom/facebook/ads/redexgen/X/LD;->A06(Lcom/facebook/ads/redexgen/X/Xc;Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 53013
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/N0;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 3

    .line 53014
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/N0;->onWindowVisibilityChanged(I)V

    .line 53015
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A0A:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53016
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A0A:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 53017
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A03:Lcom/facebook/ads/redexgen/X/QA;

    if-nez v0, :cond_1

    .line 53018
    return-void

    .line 53019
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A09:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->AG6(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sh;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 53020
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Sh;->A0G:[Ljava/lang/String;

    const-string v1, "DtJWCHxLbH6gtxJRxIB1oyEG"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "cIpyg99BbIZ2paT5Gicx86FT"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sh;->A07()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 53021
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A03:Lcom/facebook/ads/redexgen/X/QA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QA;->A0U()V

    .line 53022
    :cond_3
    :goto_0
    return-void

    .line 53023
    :cond_4
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    .line 53024
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A03:Lcom/facebook/ads/redexgen/X/QA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QA;->A0V()V

    goto :goto_0
.end method

.method public setBlockLocalFileAccessOutsideCache(Z)V
    .locals 0

    .line 53025
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Sh;->A04:Z

    .line 53026
    return-void
.end method

.method public setCheckAssetsByJavascriptBridge(Z)V
    .locals 1

    .line 53027
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 53028
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0

    .line 53029
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Sh;->A00:F

    .line 53030
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sh;->invalidate()V

    .line 53031
    return-void
.end method

.method public setLogMultipleImpressions(Z)V
    .locals 0

    .line 53032
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Sh;->A05:Z

    .line 53033
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 1

    .line 53034
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A0E:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 53035
    return-void
.end method

.method public setWebViewTimeoutInMillis(I)V
    .locals 1

    .line 53036
    if-ltz p1, :cond_0

    .line 53037
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A0D:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 53038
    :cond_0
    return-void
.end method

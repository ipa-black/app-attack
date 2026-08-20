.class public final Lcom/facebook/ads/redexgen/X/K6;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/facebook/ads/redexgen/X/K6;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Jp;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 41677
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "vWOWhJ9TqiA1ty478f"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "MWb8A3Nd6tPLcAimCp0hVAmYX6QHiaZm"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Xd3YBUkiMhOleC4V056rVyOXhinwtSii"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "tT8mJINbcEXXPPmKiWyTepfA0JHaFg93"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "WoudJsrKOqRuVhNYSdRTZjqc00A0B3WY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YTheXaZSxrm1KPF5Yd"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "huHeChgRkwF7QVPgKoMeW6tLhEc13T9K"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ASVM8zHOtJrSOKsDwpZwweqDqvgS8KFW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/K6;->A01:[Ljava/lang/String;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/K6;->A02:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41679
    new-instance v0, Lcom/facebook/ads/redexgen/X/Jp;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Jp;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/K6;->A00:Lcom/facebook/ads/redexgen/X/Jp;

    .line 41680
    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/Jp;
    .locals 1

    .line 41681
    invoke-static {}, Lcom/facebook/ads/redexgen/X/K6;->A02()Lcom/facebook/ads/redexgen/X/K6;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/K6;->A00:Lcom/facebook/ads/redexgen/X/Jp;

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/K5;)Lcom/facebook/ads/redexgen/X/Jp;
    .locals 2

    .line 41682
    invoke-static {}, Lcom/facebook/ads/redexgen/X/K6;->A00()Lcom/facebook/ads/redexgen/X/Jp;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jp;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Jp;-><init>(Lcom/facebook/ads/redexgen/X/Jp;)V

    .line 41683
    .local v0, "currentStackTraces":Lcom/facebook/ads/redexgen/X/Jp;
    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Jp;->add(Ljava/lang/Object;)Z

    .line 41684
    return-object v0
.end method

.method public static A02()Lcom/facebook/ads/redexgen/X/K6;
    .locals 4

    .line 41685
    sget-object v0, Lcom/facebook/ads/redexgen/X/K6;->A02:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/K6;

    sget-object v2, Lcom/facebook/ads/redexgen/X/K6;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 41686
    .local v0, "stackTraceHelper":Lcom/facebook/ads/redexgen/X/K6;
    sget-object v2, Lcom/facebook/ads/redexgen/X/K6;->A01:[Ljava/lang/String;

    const-string v1, "JnfSkSuIf6osqUQGv4Nkh0Vi2QZsQFPV"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "e9u3CRl6fKpCeCDR9nRPR0cml03xK1Bs"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    .line 41687
    new-instance v3, Lcom/facebook/ads/redexgen/X/K6;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/K6;-><init>()V

    .line 41688
    sget-object v0, Lcom/facebook/ads/redexgen/X/K6;->A02:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 41689
    :cond_0
    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/K1;)V
    .locals 1

    .line 41690
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/K1;->A05()Lcom/facebook/ads/redexgen/X/Jp;

    move-result-object p0

    .line 41691
    .local v0, "createRunnableAsyncStackTrace":Lcom/facebook/ads/redexgen/X/Jp;
    if-eqz p0, :cond_0

    .line 41692
    invoke-static {}, Lcom/facebook/ads/redexgen/X/K6;->A02()Lcom/facebook/ads/redexgen/X/K6;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/K6;->A00:Lcom/facebook/ads/redexgen/X/Jp;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Jp;->addAll(Ljava/util/Collection;)Z

    .line 41693
    :cond_0
    return-void
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/K1;)V
    .locals 1

    .line 41694
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/K1;->A05()Lcom/facebook/ads/redexgen/X/Jp;

    move-result-object p0

    .line 41695
    .local v0, "createRunnableAsyncStackTrace":Lcom/facebook/ads/redexgen/X/Jp;
    if-eqz p0, :cond_0

    .line 41696
    invoke-static {}, Lcom/facebook/ads/redexgen/X/K6;->A02()Lcom/facebook/ads/redexgen/X/K6;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/K6;->A00:Lcom/facebook/ads/redexgen/X/Jp;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Jp;->removeAll(Ljava/util/Collection;)Z

    .line 41697
    :cond_0
    return-void
.end method

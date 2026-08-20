.class public final Lcom/facebook/ads/redexgen/X/8N;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/8N;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 18759
    new-instance v0, Lcom/facebook/ads/redexgen/X/8N;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/8N;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8N;->A00:Lcom/facebook/ads/redexgen/X/8N;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 18760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/8N;
    .locals 1

    .line 18761
    sget-object v0, Lcom/facebook/ads/redexgen/X/8N;->A00:Lcom/facebook/ads/redexgen/X/8N;

    return-object v0
.end method


# virtual methods
.method public final A01(Lcom/facebook/ads/redexgen/X/7N;Z)Lcom/facebook/ads/redexgen/X/8M;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InstanceMethodCanBeStatic"
        }
    .end annotation

    .line 18762
    nop

    new-instance v1, Lcom/facebook/ads/redexgen/X/6C;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/6C;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/X7;

    invoke-direct {v0, p1, p2, v1}, Lcom/facebook/ads/redexgen/X/X7;-><init>(Lcom/facebook/ads/redexgen/X/7N;ZLcom/facebook/ads/redexgen/X/6C;)V

    return-object v0
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/7N;)Ljava/util/Map;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/7N;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18763
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/8N;->A01(Lcom/facebook/ads/redexgen/X/7N;Z)Lcom/facebook/ads/redexgen/X/8M;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8M;->A6d()Ljava/util/Map;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18764
    :catchall_0
    move-exception v1

    .line 18765
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/7r;->A3S(Ljava/lang/Throwable;)V

    .line 18766
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/8J;->A01(Lcom/facebook/ads/redexgen/X/7N;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

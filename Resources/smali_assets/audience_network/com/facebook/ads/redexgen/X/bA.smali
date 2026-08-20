.class public final Lcom/facebook/ads/redexgen/X/bA;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/b9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "StateType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/b9;

.field public A01:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/bC<",
            "TModelType;TStateType;>;>;"
        }
    .end annotation
.end field

.field public final A02:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelType;"
        }
    .end annotation
.end field

.field public final A03:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TStateType;"
        }
    .end annotation
.end field

.field public final A04:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;TStateType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 73321
    .local p0, "this":Lcom/facebook/ads/redexgen/X/bA;, "Lcom/instagram/common/viewpoint/core/ViewpointData$Builder<TModelType;TStateType;>;"
    .local p1, "model":Ljava/lang/Object;, "TModelType;"
    .local p2, "state":Ljava/lang/Object;, "TStateType;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A01:Ljava/util/List;

    .line 73323
    sget-object v0, Lcom/facebook/ads/redexgen/X/b9;->A08:Lcom/facebook/ads/redexgen/X/b9;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A00:Lcom/facebook/ads/redexgen/X/b9;

    .line 73324
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bA;->A02:Ljava/lang/Object;

    .line 73325
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bA;->A03:Ljava/lang/Object;

    .line 73326
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/bA;->A04:Ljava/lang/String;

    .line 73327
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/bA;)Lcom/facebook/ads/redexgen/X/b9;
    .locals 0

    .line 73328
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bA;->A00:Lcom/facebook/ads/redexgen/X/b9;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/bA;)Ljava/lang/Object;
    .locals 0

    .line 73329
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bA;->A02:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/bA;)Ljava/lang/Object;
    .locals 0

    .line 73330
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bA;->A03:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/bA;)Ljava/lang/String;
    .locals 0

    .line 73331
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bA;->A04:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/bA;)Ljava/util/List;
    .locals 0

    .line 73332
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bA;->A01:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final A05(Lcom/facebook/ads/redexgen/X/bC;)Lcom/facebook/ads/redexgen/X/bA;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/bC<",
            "TModelType;TStateType;>;)",
            "Lcom/facebook/ads/redexgen/X/bA<",
            "TModelType;TStateType;>;"
        }
    .end annotation

    .line 73333
    .local p0, "this":Lcom/facebook/ads/redexgen/X/bA;, "Lcom/instagram/common/viewpoint/core/ViewpointData$Builder<TModelType;TStateType;>;"
    .local p1, "viewpointAction":Lcom/facebook/ads/redexgen/X/bC;, "Lcom/instagram/common/viewpoint/core/ViewpointAction<TModelType;TStateType;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A01:Ljava/util/List;

    if-nez v0, :cond_0

    .line 73334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A01:Ljava/util/List;

    .line 73335
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A01:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73336
    return-object p0
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/b9;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/b9<",
            "TModelType;TStateType;>;"
        }
    .end annotation

    .line 73337
    .local p0, "this":Lcom/facebook/ads/redexgen/X/bA;, "Lcom/instagram/common/viewpoint/core/ViewpointData$Builder<TModelType;TStateType;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/b9;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/b9;-><init>(Lcom/facebook/ads/redexgen/X/bA;)V

    return-object v0
.end method

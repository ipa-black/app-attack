.class public final Lcom/facebook/ads/redexgen/X/1a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A00:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Ljava/lang/String;

.field public A03:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/1a;)Ljava/lang/String;
    .locals 0

    .line 4274
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/1a;->A02:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/1a;)Ljava/lang/String;
    .locals 0

    .line 4275
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/1a;->A03:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/1a;)Ljava/lang/String;
    .locals 0

    .line 4276
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/1a;->A01:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/1a;)Ljava/lang/String;
    .locals 0

    .line 4277
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/1a;->A00:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1a;
    .locals 0

    .line 4278
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1a;->A00:Ljava/lang/String;

    .line 4279
    return-object p0
.end method

.method public final A05(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1a;
    .locals 0

    .line 4280
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1a;->A01:Ljava/lang/String;

    .line 4281
    return-object p0
.end method

.method public final A06(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1a;
    .locals 0

    .line 4282
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1a;->A02:Ljava/lang/String;

    .line 4283
    return-object p0
.end method

.method public final A07(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1a;
    .locals 0

    .line 4284
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1a;->A03:Ljava/lang/String;

    .line 4285
    return-object p0
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/1b;
    .locals 2

    .line 4286
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/1b;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/1b;-><init>(Lcom/facebook/ads/redexgen/X/1a;Lcom/facebook/ads/redexgen/X/1Z;)V

    return-object v0
.end method

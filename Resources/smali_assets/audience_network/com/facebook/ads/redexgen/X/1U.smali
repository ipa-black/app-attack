.class public final Lcom/facebook/ads/redexgen/X/1U;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1V;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A00:Ljava/lang/String;

.field public A01:Ljava/lang/String;

.field public A02:Ljava/lang/String;

.field public A03:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/1U;)Ljava/lang/String;
    .locals 0

    .line 4123
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/1U;->A02:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/1U;)Ljava/lang/String;
    .locals 0

    .line 4124
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/1U;->A01:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/1U;)Ljava/lang/String;
    .locals 0

    .line 4125
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/1U;->A00:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/1U;)Ljava/lang/String;
    .locals 0

    .line 4126
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/1U;->A03:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1U;
    .locals 0

    .line 4127
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1U;->A00:Ljava/lang/String;

    .line 4128
    return-object p0
.end method

.method public final A05(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1U;
    .locals 0

    .line 4129
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1U;->A01:Ljava/lang/String;

    .line 4130
    return-object p0
.end method

.method public final A06(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1U;
    .locals 0

    .line 4131
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1U;->A02:Ljava/lang/String;

    .line 4132
    return-object p0
.end method

.method public final A07(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1U;
    .locals 0

    .line 4133
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1U;->A03:Ljava/lang/String;

    .line 4134
    return-object p0
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/1V;
    .locals 2

    .line 4135
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/1V;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/1V;-><init>(Lcom/facebook/ads/redexgen/X/1U;Lcom/facebook/ads/redexgen/X/1T;)V

    return-object v0
.end method

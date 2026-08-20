.class public final Lcom/facebook/ads/redexgen/X/96;
.super Lcom/facebook/ads/redexgen/X/PO;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Nd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Nd;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 20090
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "y"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "upSqpBEXi6Z"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GyePZy8x3b3"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "FFUWmn6Ti8z6V34lIA"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "YWWjfgYxiXoD5aalMRx3OU2KBxQNmqvY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jfIm3NMwguSQ0Csz14"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "B1fcK0EnyWGqgnQWxo9MDkWydapRYlWY"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "c21ayFCJB6aWGafAU0beFKomsAwnboko"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/96;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nd;)V
    .locals 0

    .line 20091
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/96;->A00:Lcom/facebook/ads/redexgen/X/Nd;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PO;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/72;)V
    .locals 4

    .line 20092
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/96;->A00:Lcom/facebook/ads/redexgen/X/Nd;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Nd;->A0N(Lcom/facebook/ads/redexgen/X/Nd;Z)Z

    .line 20093
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A00:Lcom/facebook/ads/redexgen/X/Nd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A09(Lcom/facebook/ads/redexgen/X/Nd;)Lcom/facebook/ads/redexgen/X/Ob;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A00:Lcom/facebook/ads/redexgen/X/Nd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A0A(Lcom/facebook/ads/redexgen/X/Nd;)Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getDuration()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ob;->ACv(I)V

    .line 20094
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A00:Lcom/facebook/ads/redexgen/X/Nd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A0T()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20095
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/96;->A00:Lcom/facebook/ads/redexgen/X/Nd;

    sget-object v2, Lcom/facebook/ads/redexgen/X/96;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/96;->A01:[Ljava/lang/String;

    const-string v1, "qLttInhDJqP"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "rNYYZKmQbpc"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Nd;->A0Q()V

    goto :goto_0

    .line 20096
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A00:Lcom/facebook/ads/redexgen/X/Nd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A09(Lcom/facebook/ads/redexgen/X/Nd;)Lcom/facebook/ads/redexgen/X/Ob;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ob;->AD1()V

    .line 20097
    :goto_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 20098
    check-cast p1, Lcom/facebook/ads/redexgen/X/72;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/96;->A00(Lcom/facebook/ads/redexgen/X/72;)V

    return-void
.end method

.class public final Lcom/facebook/ads/redexgen/X/JX;
.super Lcom/facebook/ads/redexgen/X/8V;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/6X;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/8V<",
        "Lcom/facebook/ads/redexgen/X/MK;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6X;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6X;)V
    .locals 0

    .line 40393
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JX;->A00:Lcom/facebook/ads/redexgen/X/6X;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8V;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/MK;)V
    .locals 2

    .line 40394
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JX;->A00:Lcom/facebook/ads/redexgen/X/6X;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6X;->setVisibility(I)V

    .line 40395
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/MK;",
            ">;"
        }
    .end annotation

    .line 40396
    const-class v0, Lcom/facebook/ads/redexgen/X/MK;

    return-object v0
.end method

.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 40397
    check-cast p1, Lcom/facebook/ads/redexgen/X/MK;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JX;->A00(Lcom/facebook/ads/redexgen/X/MK;)V

    return-void
.end method

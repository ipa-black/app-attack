.class public final Lcom/facebook/ads/redexgen/X/6f;
.super Lcom/facebook/ads/redexgen/X/M9;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/6Y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6Y;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6Y;)V
    .locals 0

    .line 15977
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6f;->A00:Lcom/facebook/ads/redexgen/X/6Y;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M9;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/MK;)V
    .locals 2

    .line 15978
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6f;->A00:Lcom/facebook/ads/redexgen/X/6Y;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6Y;->setVisibility(I)V

    .line 15979
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 15980
    check-cast p1, Lcom/facebook/ads/redexgen/X/MK;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6f;->A00(Lcom/facebook/ads/redexgen/X/MK;)V

    return-void
.end method

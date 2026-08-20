.class public final Lcom/facebook/ads/redexgen/X/6Z;
.super Lcom/facebook/ads/redexgen/X/PO;
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

    .line 15965
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6Z;->A00:Lcom/facebook/ads/redexgen/X/6Y;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PO;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/72;)V
    .locals 2

    .line 15966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Z;->A00:Lcom/facebook/ads/redexgen/X/6Y;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6Y;->A00(Lcom/facebook/ads/redexgen/X/6Y;)Lcom/facebook/ads/redexgen/X/Pf;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pf;->setChecked(Z)V

    .line 15967
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 15968
    check-cast p1, Lcom/facebook/ads/redexgen/X/72;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6Z;->A00(Lcom/facebook/ads/redexgen/X/72;)V

    return-void
.end method

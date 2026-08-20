.class public final Lcom/facebook/ads/redexgen/X/JN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/I7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Pu;->A0H(Lcom/facebook/ads/redexgen/X/Pt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Pt;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Pu;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Pu;Lcom/facebook/ads/redexgen/X/Pt;)V
    .locals 0

    .line 40082
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JN;->A01:Lcom/facebook/ads/redexgen/X/Pu;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/JN;->A00:Lcom/facebook/ads/redexgen/X/Pt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AD9(IIIF)V
    .locals 1

    .line 40083
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JN;->A00:Lcom/facebook/ads/redexgen/X/Pt;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Pt;->AD9(IIIF)V

    .line 40084
    return-void
.end method

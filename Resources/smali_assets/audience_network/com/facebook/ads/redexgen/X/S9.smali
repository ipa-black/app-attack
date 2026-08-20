.class public final Lcom/facebook/ads/redexgen/X/S9;
.super Lcom/facebook/ads/redexgen/X/K1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/8w;->A8w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/8w;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8w;)V
    .locals 0

    .line 51688
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/S9;->A00:Lcom/facebook/ads/redexgen/X/8w;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 3

    .line 51689
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A00:Lcom/facebook/ads/redexgen/X/8w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8w;->A06(Lcom/facebook/ads/redexgen/X/8w;)Lcom/facebook/ads/redexgen/X/Lj;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A00:Lcom/facebook/ads/redexgen/X/8w;

    .line 51690
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8w;->A00(Lcom/facebook/ads/redexgen/X/8w;)Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A00:Lcom/facebook/ads/redexgen/X/8w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8w;->A00(Lcom/facebook/ads/redexgen/X/8w;)Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0k()Lcom/facebook/ads/redexgen/X/1V;

    move-result-object v0

    .line 51691
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A8y(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1V;)V

    .line 51692
    return-void
.end method

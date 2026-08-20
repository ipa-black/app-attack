.class public final Lcom/facebook/ads/redexgen/X/RN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/O2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/RM;->A08(Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/LD;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/On;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/On;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/RM;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/RM;Lcom/facebook/ads/redexgen/X/On;)V
    .locals 0

    .line 50678
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RN;->A01:Lcom/facebook/ads/redexgen/X/RM;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/RN;->A00:Lcom/facebook/ads/redexgen/X/On;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAF()V
    .locals 1

    .line 50679
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RN;->A00:Lcom/facebook/ads/redexgen/X/On;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/On;->A02()I

    move-result v0

    if-nez v0, :cond_0

    .line 50680
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RN;->A01:Lcom/facebook/ads/redexgen/X/RM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RM;->A04(Lcom/facebook/ads/redexgen/X/RM;)Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QA;->A0U()V

    .line 50681
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RN;->A01:Lcom/facebook/ads/redexgen/X/RM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RM;->A07(Lcom/facebook/ads/redexgen/X/RM;)Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QA;->A0U()V

    .line 50682
    return-void
.end method

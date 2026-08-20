.class public final Lcom/facebook/ads/redexgen/X/Zb;
.super Lcom/facebook/ads/redexgen/X/K1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Za;->AAv(Lcom/facebook/ads/redexgen/X/JA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Za;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/JA;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Za;Lcom/facebook/ads/redexgen/X/JA;)V
    .locals 0

    .line 71000
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zb;->A00:Lcom/facebook/ads/redexgen/X/Za;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Zb;->A01:Lcom/facebook/ads/redexgen/X/JA;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 3

    .line 71001
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zb;->A00:Lcom/facebook/ads/redexgen/X/Za;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    .line 71002
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zb;->A01:Lcom/facebook/ads/redexgen/X/JA;

    .line 71003
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JA;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zb;->A01:Lcom/facebook/ads/redexgen/X/JA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JA;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4c(ILjava/lang/String;)V

    .line 71004
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zb;->A00:Lcom/facebook/ads/redexgen/X/Za;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Za;->A06:Lcom/facebook/ads/redexgen/X/0o;

    if-eqz v0, :cond_0

    .line 71005
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zb;->A00:Lcom/facebook/ads/redexgen/X/Za;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Za;->A06:Lcom/facebook/ads/redexgen/X/0o;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zb;->A01:Lcom/facebook/ads/redexgen/X/JA;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/JA;)V

    .line 71006
    :cond_0
    return-void
.end method

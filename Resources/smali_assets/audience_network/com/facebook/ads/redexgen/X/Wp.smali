.class public final Lcom/facebook/ads/redexgen/X/Wp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Wn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultAudioProcessorChain"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Wj;

.field public final A01:Lcom/facebook/ads/redexgen/X/Wi;

.field public final A02:[Lcom/facebook/ads/redexgen/X/AE;


# direct methods
.method public varargs constructor <init>([Lcom/facebook/ads/redexgen/X/AE;)V
    .locals 3

    .line 65251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65252
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/AE;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wp;->A02:[Lcom/facebook/ads/redexgen/X/AE;

    .line 65253
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wj;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Wj;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wp;->A00:Lcom/facebook/ads/redexgen/X/Wj;

    .line 65254
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wi;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Wi;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wp;->A01:Lcom/facebook/ads/redexgen/X/Wi;

    .line 65255
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Wp;->A02:[Lcom/facebook/ads/redexgen/X/AE;

    array-length v1, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wp;->A00:Lcom/facebook/ads/redexgen/X/Wj;

    aput-object v0, v2, v1

    .line 65256
    array-length v0, p1

    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wp;->A01:Lcom/facebook/ads/redexgen/X/Wi;

    aput-object v0, v2, v1

    .line 65257
    return-void
.end method


# virtual methods
.method public final A3R(Lcom/facebook/ads/redexgen/X/9a;)Lcom/facebook/ads/redexgen/X/9a;
    .locals 4

    .line 65258
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wp;->A00:Lcom/facebook/ads/redexgen/X/Wj;

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/9a;->A02:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Wj;->A0B(Z)V

    .line 65259
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wp;->A01:Lcom/facebook/ads/redexgen/X/Wi;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/9a;->A01:F

    .line 65260
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Wi;->A01(F)F

    move-result v3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wp;->A01:Lcom/facebook/ads/redexgen/X/Wi;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/9a;->A00:F

    .line 65261
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Wi;->A00(F)F

    move-result v2

    iget-boolean v1, p1, Lcom/facebook/ads/redexgen/X/9a;->A02:Z

    new-instance v0, Lcom/facebook/ads/redexgen/X/9a;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/9a;-><init>(FFZ)V

    .line 65262
    return-object v0
.end method

.method public final A5n()[Lcom/facebook/ads/redexgen/X/AE;
    .locals 1

    .line 65263
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wp;->A02:[Lcom/facebook/ads/redexgen/X/AE;

    return-object v0
.end method

.method public final A76(J)J
    .locals 2

    .line 65264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wp;->A01:Lcom/facebook/ads/redexgen/X/Wi;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Wi;->A02(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A7h()J
    .locals 2

    .line 65265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wp;->A00:Lcom/facebook/ads/redexgen/X/Wj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wj;->A0A()J

    move-result-wide v0

    return-wide v0
.end method

.class public final Lcom/facebook/ads/redexgen/X/Tg;
.super Lcom/facebook/ads/redexgen/X/K1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Jd;->A0N(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/Ja;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:J

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Ja;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Jd;

.field public final synthetic A03:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Jd;Ljava/lang/String;JLcom/facebook/ads/redexgen/X/Ja;)V
    .locals 0

    .line 54838
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tg;->A02:Lcom/facebook/ads/redexgen/X/Jd;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Tg;->A03:Ljava/lang/String;

    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Tg;->A00:J

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Tg;->A01:Lcom/facebook/ads/redexgen/X/Ja;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 5

    .line 54839
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Tg;->A02:Lcom/facebook/ads/redexgen/X/Jd;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Tg;->A03:Ljava/lang/String;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Tg;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tg;->A01:Lcom/facebook/ads/redexgen/X/Ja;

    invoke-static {v4, v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Jd;->A0I(Lcom/facebook/ads/redexgen/X/Jd;Ljava/lang/String;JLcom/facebook/ads/redexgen/X/Ja;)V

    .line 54840
    return-void
.end method

.class public final Lcom/facebook/ads/redexgen/X/Ej;
.super Lcom/facebook/ads/redexgen/X/ZV;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ZU;->A04()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/a7;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/ZU;

.field public final synthetic A02:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ZU;Ljava/util/List;Lcom/facebook/ads/redexgen/X/a7;)V
    .locals 0

    .line 32056
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ej;->A01:Lcom/facebook/ads/redexgen/X/ZU;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ej;->A02:Ljava/util/List;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Ej;->A00:Lcom/facebook/ads/redexgen/X/a7;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZV;-><init>()V

    return-void
.end method


# virtual methods
.method public final ABo(Lcom/facebook/ads/redexgen/X/a7;)V
    .locals 2

    .line 32057
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ej;->A02:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ej;->A00:Lcom/facebook/ads/redexgen/X/a7;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32058
    return-void
.end method

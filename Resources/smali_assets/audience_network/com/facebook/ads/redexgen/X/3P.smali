.class public final Lcom/facebook/ads/redexgen/X/3P;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PagerObserver"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/3S;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3S;)V
    .locals 0

    .line 8876
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3P;->A00:Lcom/facebook/ads/redexgen/X/3S;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 8877
    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .line 8878
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3P;->A00:Lcom/facebook/ads/redexgen/X/3S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3S;->A0e()V

    .line 8879
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .line 8880
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3P;->A00:Lcom/facebook/ads/redexgen/X/3S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3S;->A0e()V

    .line 8881
    return-void
.end method

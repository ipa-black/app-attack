.class public final Lcom/facebook/ads/redexgen/X/Xx;
.super Lcom/facebook/ads/redexgen/X/K1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/5a;->A02(Landroid/widget/ImageView;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/graphics/drawable/Drawable;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/5a;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Tp;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5a;Lcom/facebook/ads/redexgen/X/Tp;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 67153
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xx;->A01:Lcom/facebook/ads/redexgen/X/5a;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Xx;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Xx;->A00:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 2

    .line 67154
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xx;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xx;->A00:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Tp;->A1J(Landroid/graphics/drawable/Drawable;)V

    .line 67155
    return-void
.end method

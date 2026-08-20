.class public final Lcom/facebook/ads/redexgen/X/Xy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/5Y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/5a;->A02(Landroid/widget/ImageView;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/widget/ImageView;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/5a;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Tp;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5a;Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Tp;)V
    .locals 0

    .line 67156
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xy;->A01:Lcom/facebook/ads/redexgen/X/5a;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Xy;->A00:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Xy;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ABB(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 67157
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xy;->A00:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0e(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    .line 67158
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xy;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Tp;->A1J(Landroid/graphics/drawable/Drawable;)V

    .line 67159
    return-void
.end method

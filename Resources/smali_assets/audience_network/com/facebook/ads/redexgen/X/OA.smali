.class public final Lcom/facebook/ads/redexgen/X/OA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/8w;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/MC;I)V
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

    .line 46861
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OA;->A00:Lcom/facebook/ads/redexgen/X/8w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 46862
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OA;->A00:Lcom/facebook/ads/redexgen/X/8w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8w;->A08(Lcom/facebook/ads/redexgen/X/8w;)Lcom/facebook/ads/redexgen/X/OE;

    move-result-object v1

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/OE;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 46863
    const/4 v0, 0x0

    return v0
.end method

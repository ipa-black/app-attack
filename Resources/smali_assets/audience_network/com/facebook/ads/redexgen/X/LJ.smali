.class public final Lcom/facebook/ads/redexgen/X/LJ;
.super Lcom/facebook/ads/redexgen/X/8T;
.source ""


# instance fields
.field public final A00:Landroid/view/MotionEvent;

.field public final A01:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    .line 43164
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8T;-><init>()V

    .line 43165
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/LJ;->A01:Landroid/view/View;

    .line 43166
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/LJ;->A00:Landroid/view/MotionEvent;

    .line 43167
    return-void
.end method


# virtual methods
.method public final A00()Landroid/view/MotionEvent;
    .locals 1

    .line 43168
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A00:Landroid/view/MotionEvent;

    return-object v0
.end method

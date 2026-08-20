.class public Lcom/facebook/ads/redexgen/X/YL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Lj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudienceNetworkAdListenerImpl"
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/5F;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 67832
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "JdxG2e87fiw1QxhKtyp6wy4hCZ34K54h"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5l6PiVFmWkFi4LSRmzN6ZIbVVY4PyA16"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "qh41B7qjlQhNnOsbjTqj3JtjZfsrgLHf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "L6JKyztUTZrhaC2oSi2AGhNMneOalgfU"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "mLvzPn8zSeH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "6Oneq6t5dYPlbDhRy7qxaYTJsizasisX"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "J8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "lXMgpjBtmdYXVX4s4nwhe"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/YL;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5F;)V
    .locals 1

    .line 67833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67834
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A00:Ljava/lang/ref/WeakReference;

    .line 67835
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/5F;Lcom/facebook/ads/redexgen/X/5B;)V
    .locals 0

    .line 67836
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/YL;-><init>(Lcom/facebook/ads/redexgen/X/5F;)V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/5F;)V
    .locals 2

    .line 67837
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/5F;->A03(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/Ov;

    move-result-object v1

    .line 67838
    .local v0, "mediationOverlay":Lcom/facebook/ads/redexgen/X/Ov;
    if-eqz v1, :cond_0

    .line 67839
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/5F;->A00(Lcom/facebook/ads/redexgen/X/5F;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 67840
    :cond_0
    return-void
.end method


# virtual methods
.method public final A3I(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2

    .line 67841
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/5F;

    .line 67842
    .local v0, "audienceNetworkActivityApi":Lcom/facebook/ads/redexgen/X/5F;
    if-eqz v1, :cond_0

    .line 67843
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/5F;->A00(Lcom/facebook/ads/redexgen/X/5F;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 67844
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/YL;->A00(Lcom/facebook/ads/redexgen/X/5F;)V

    .line 67845
    :cond_0
    return-void
.end method

.method public final A3J(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2

    .line 67846
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/5F;

    .line 67847
    .local v0, "audienceNetworkActivityApi":Lcom/facebook/ads/redexgen/X/5F;
    if-eqz v1, :cond_0

    .line 67848
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/5F;->A00(Lcom/facebook/ads/redexgen/X/5F;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67849
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/YL;->A00(Lcom/facebook/ads/redexgen/X/5F;)V

    .line 67850
    :cond_0
    return-void
.end method

.method public A3t(Ljava/lang/String;)V
    .locals 1

    .line 67851
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67852
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/5F;->A0A(Lcom/facebook/ads/redexgen/X/5F;Ljava/lang/String;)V

    .line 67853
    :cond_0
    return-void
.end method

.method public A3u(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 1

    .line 67854
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67855
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/5F;->A0C(Lcom/facebook/ads/redexgen/X/5F;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/8T;)V

    .line 67856
    :cond_0
    return-void
.end method

.method public final A8y(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1V;)V
    .locals 4

    .line 67857
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67858
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/5F;

    sget-object v2, Lcom/facebook/ads/redexgen/X/YL;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/YL;->A01:[Ljava/lang/String;

    const-string v1, "LaehfLm13EgRqqa58La6JsJDVjNkKsjm"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "U7opStToMRhy5hKGwjx6Oh4Ofub1lgfJ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v3, p1, p2}, Lcom/facebook/ads/redexgen/X/5F;->A0B(Lcom/facebook/ads/redexgen/X/5F;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1V;)V

    .line 67859
    :cond_1
    return-void
.end method

.method public final AAR(I)V
    .locals 1

    .line 67860
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5F;

    .line 67861
    .local v0, "activityApi":Lcom/facebook/ads/redexgen/X/5F;
    if-eqz v0, :cond_0

    .line 67862
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5F;->finish(I)V

    .line 67863
    :cond_0
    return-void
.end method

.class public final Lcom/facebook/ads/redexgen/X/L8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/L7;
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:Landroid/view/Window;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/L7;

.field public final A03:Landroid/view/View;

.field public final A04:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 42924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42925
    sget-object v0, Lcom/facebook/ads/redexgen/X/L7;->A03:Lcom/facebook/ads/redexgen/X/L7;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/L8;->A02:Lcom/facebook/ads/redexgen/X/L7;

    .line 42926
    new-instance v0, Lcom/facebook/ads/redexgen/X/TQ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/TQ;-><init>(Lcom/facebook/ads/redexgen/X/L8;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/L8;->A04:Ljava/lang/Runnable;

    .line 42927
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/L8;->A03:Landroid/view/View;

    .line 42928
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L8;->A03:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 42929
    return-void
.end method

.method private A00(IZ)V
    .locals 3

    .line 42930
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L8;->A01:Landroid/view/Window;

    if-nez v0, :cond_0

    .line 42931
    return-void

    .line 42932
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 42933
    .local v0, "windowsParams":Landroid/view/WindowManager$LayoutParams;
    if-eqz p2, :cond_1

    .line 42934
    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v0, p1

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 42935
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L8;->A01:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 42936
    return-void

    .line 42937
    :cond_1
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/lit8 v0, p1, -0x1

    and-int/2addr v1, v0

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/L8;Z)V
    .locals 0

    .line 42938
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/L8;->A02(Z)V

    return-void
.end method

.method private A02(Z)V
    .locals 5

    .line 42939
    sget-object v1, Lcom/facebook/ads/redexgen/X/L7;->A03:Lcom/facebook/ads/redexgen/X/L7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L8;->A02:Lcom/facebook/ads/redexgen/X/L7;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/L7;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42940
    return-void

    .line 42941
    :cond_0
    const/16 v4, 0xf00

    .line 42942
    .local v0, "newVisibilityFlags":I
    if-nez p1, :cond_1

    .line 42943
    or-int/lit8 v4, v4, 0x7

    .line 42944
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L8;->A03:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 42945
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    .line 42946
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L8;->A04:Ljava/lang/Runnable;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 42947
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/L8;->A04:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42948
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L8;->A03:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 42949
    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 1

    .line 42950
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/L8;->A01:Landroid/view/Window;

    .line 42951
    return-void
.end method

.method public final A04(Landroid/view/Window;)V
    .locals 0

    .line 42952
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/L8;->A01:Landroid/view/Window;

    .line 42953
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/L7;)V
    .locals 5

    .line 42954
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/L8;->A02:Lcom/facebook/ads/redexgen/X/L7;

    .line 42955
    sget-object v1, Lcom/facebook/ads/redexgen/X/L6;->A00:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L8;->A02:Lcom/facebook/ads/redexgen/X/L7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L7;->ordinal()I

    move-result v0

    aget v4, v1, v0

    const/high16 v3, 0x8000000

    const/high16 v2, 0x4000000

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq v4, v0, :cond_0

    .line 42956
    invoke-direct {p0, v2, v1}, Lcom/facebook/ads/redexgen/X/L8;->A00(IZ)V

    .line 42957
    invoke-direct {p0, v3, v1}, Lcom/facebook/ads/redexgen/X/L8;->A00(IZ)V

    .line 42958
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L8;->A03:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 42959
    :goto_0
    return-void

    .line 42960
    :cond_0
    invoke-direct {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/L8;->A00(IZ)V

    .line 42961
    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/L8;->A00(IZ)V

    .line 42962
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/L8;->A02(Z)V

    .line 42963
    goto :goto_0
.end method

.method public final onSystemUiVisibilityChange(I)V
    .locals 1

    .line 42964
    iget v0, p0, Lcom/facebook/ads/redexgen/X/L8;->A00:I

    xor-int/2addr v0, p1

    .line 42965
    .local v0, "diff":I
    iput p1, p0, Lcom/facebook/ads/redexgen/X/L8;->A00:I

    .line 42966
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    .line 42967
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/L8;->A02(Z)V

    .line 42968
    :cond_0
    return-void
.end method

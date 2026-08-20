.class public abstract Lcom/bytedance/sdk/component/adexpress/fl/Qhi;
.super Ljava/lang/Object;
.source "BaseWebViewRender.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/Qhi;
.implements Lcom/bytedance/sdk/component/adexpress/cJ/fl;
.implements Lcom/bytedance/sdk/component/adexpress/cJ/zc;
.implements Lcom/bytedance/sdk/component/adexpress/theme/Qhi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/adexpress/Qhi;",
        "Lcom/bytedance/sdk/component/adexpress/cJ/fl<",
        "Lcom/bytedance/sdk/component/widget/SSWebView;",
        ">;",
        "Lcom/bytedance/sdk/component/adexpress/cJ/zc;",
        "Lcom/bytedance/sdk/component/adexpress/theme/Qhi;"
    }
.end annotation


# instance fields
.field private ABk:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

.field protected CJ:I

.field private Gm:Z

.field protected Qhi:Lorg/json/JSONObject;

.field private ROR:Landroid/content/Context;

.field private Sf:Ljava/lang/String;

.field protected Tgh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile WAv:Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

.field protected ac:Lcom/bytedance/sdk/component/widget/SSWebView;

.field protected cJ:Z

.field protected fl:Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;

.field private hm:Ljava/lang/String;

.field private hpZ:Z

.field private iMK:Z

.field private pA:I

.field private zc:Lcom/bytedance/sdk/component/adexpress/cJ/hm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/cJ/iMK;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Gm:Z

    const/16 v1, 0x8

    .line 69
    iput v1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->CJ:I

    .line 71
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Tgh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->hpZ:Z

    .line 76
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ROR:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ABk:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    .line 78
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->CJ()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Sf:Ljava/lang/String;

    .line 79
    invoke-virtual {p3, p0}, Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;->Qhi(Lcom/bytedance/sdk/component/adexpress/theme/Qhi;)V

    .line 80
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl;->cJ()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->zc()V

    return-void

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ABk()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    .line 84
    const-string p2, "WebViewRender"

    if-nez p1, :cond_1

    .line 85
    const-string p1, "initWebView: create WebView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl;->Qhi()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 87
    new-instance p1, Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl;->Qhi()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/component/widget/SSWebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 90
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Gm:Z

    .line 91
    const-string p1, "initWebView: reuse WebView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private ABk()Lcom/bytedance/sdk/component/widget/SSWebView;
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ABk:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->bxS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl/Tgh;->Qhi()Lcom/bytedance/sdk/component/adexpress/fl/Tgh;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ROR:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Sf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/fl/Tgh;->Qhi(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    return-object v0

    .line 116
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl/Tgh;->Qhi()Lcom/bytedance/sdk/component/adexpress/fl/Tgh;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ROR:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Sf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/fl/Tgh;->cJ(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    return-object v0
.end method

.method private Qhi(FF)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ABk:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->fl()Lcom/bytedance/sdk/component/adexpress/cJ/WAv;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/WAv;->fl()V

    .line 318
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ROR:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/adexpress/CJ/CQU;->Qhi(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    .line 319
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ROR:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/bytedance/sdk/component/adexpress/CJ/CQU;->Qhi(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    .line 320
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Qhi()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 324
    :cond_0
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 325
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 326
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Qhi()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private Qhi(ILjava/lang/String;)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->WAv:Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->WAv:Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/cJ/Sf;->Qhi(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/pA;FF)V
    .locals 2

    .line 281
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->Gm()I

    .line 282
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->cJ:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->iMK:Z

    if-nez v1, :cond_0

    .line 283
    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Qhi(FF)V

    .line 285
    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->CJ:I

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->cJ(I)V

    .line 286
    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->WAv:Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

    if-eqz p2, :cond_2

    .line 287
    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->WAv:Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Qhi()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Lcom/bytedance/sdk/component/adexpress/cJ/Sf;->Qhi(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 290
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl/Tgh;->Qhi()Lcom/bytedance/sdk/component/adexpress/fl/Tgh;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/fl/Tgh;->fl(Lcom/bytedance/sdk/component/widget/SSWebView;)Z

    return-void

    .line 292
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->Gm()I

    move-result p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->WAv()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Qhi(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/component/adexpress/fl/Qhi;Lcom/bytedance/sdk/component/adexpress/cJ/pA;FF)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/pA;FF)V

    return-void
.end method

.method private cJ(Landroid/app/Activity;)I
    .locals 0

    .line 367
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method private iMK()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ABk:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->bxS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl/Tgh;->Qhi()Lcom/bytedance/sdk/component/adexpress/fl/Tgh;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/fl/Tgh;->cJ(Lcom/bytedance/sdk/component/widget/SSWebView;)V

    return-void

    .line 124
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl/Tgh;->Qhi()Lcom/bytedance/sdk/component/adexpress/fl/Tgh;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/fl/Tgh;->ac(Lcom/bytedance/sdk/component/widget/SSWebView;)V

    return-void
.end method

.method private zc()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ROR:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl;->Qhi()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl;->Qhi()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ROR:Landroid/content/Context;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ROR:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 101
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ABk()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    .line 102
    const-string v1, "WebViewRender"

    if-nez v0, :cond_1

    .line 103
    const-string v0, "initWebView: create WebView by act"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView;

    new-instance v1, Landroid/content/MutableContextWrapper;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ROR:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Gm:Z

    .line 107
    const-string v0, "initWebView: reuse WebView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public CJ()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Tgh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Tgh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 211
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ROR()V

    .line 212
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 215
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->cJ:Z

    if-eqz v0, :cond_2

    .line 216
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->iMK()V

    return-void

    .line 218
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl/Tgh;->Qhi()Lcom/bytedance/sdk/component/adexpress/fl/Tgh;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/fl/Tgh;->fl(Lcom/bytedance/sdk/component/widget/SSWebView;)Z

    return-void
.end method

.method public Gm()Lcom/bytedance/sdk/component/adexpress/cJ/iMK;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ABk:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    return-object v0
.end method

.method public Qhi()Lcom/bytedance/sdk/component/widget/SSWebView;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    return-object v0
.end method

.method public Qhi(Landroid/app/Activity;)V
    .locals 1

    .line 388
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->pA:I

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->pA:I

    if-ne p1, v0, :cond_1

    .line 393
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->CJ()V

    .line 394
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->WAv()V

    :cond_1
    :goto_0
    return-void
.end method

.method public Qhi(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/ac;)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->zc:Lcom/bytedance/sdk/component/adexpress/cJ/hm;

    if-eqz v0, :cond_0

    .line 303
    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/cJ/hm;->Qhi(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/ac;)V

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/Sf;)V
    .locals 5

    .line 152
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->WAv:Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

    .line 153
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Qhi()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x66

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Qhi()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->hm:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->WAv:Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

    const-string v0, "url is empty"

    invoke-interface {p1, v2, v0}, Lcom/bytedance/sdk/component/adexpress/cJ/Sf;->Qhi(ILjava/lang/String;)V

    return-void

    .line 168
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ABk:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->bxS()Z

    move-result p1

    if-nez p1, :cond_5

    .line 169
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->hpZ:Z

    const/16 v3, 0x67

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Qhi:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/cJ;->Qhi(Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 170
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->WAv:Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "data null is "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Qhi:Lorg/json/JSONObject;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Lcom/bytedance/sdk/component/adexpress/cJ/Sf;->Qhi(ILjava/lang/String;)V

    return-void

    .line 173
    :cond_3
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->hpZ:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Qhi:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/cJ;->cJ(Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 174
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->WAv:Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "choice ad data null is "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Qhi:Lorg/json/JSONObject;

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Lcom/bytedance/sdk/component/adexpress/cJ/Sf;->Qhi(ILjava/lang/String;)V

    return-void

    .line 179
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ABk:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->fl()Lcom/bytedance/sdk/component/adexpress/cJ/WAv;

    move-result-object p1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Gm:Z

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/adexpress/cJ/WAv;->Qhi(Z)V

    .line 181
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Gm:Z

    if-eqz p1, :cond_6

    .line 183
    :try_start_0
    const-string p1, "javascript:window.SDK_RESET_RENDER();window.SDK_TRIGGER_RENDER();"

    .line 184
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->ABk()V

    .line 185
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ABk:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->fl()Lcom/bytedance/sdk/component/adexpress/cJ/WAv;

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/zc;->Qhi(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 189
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl/Tgh;->Qhi()Lcom/bytedance/sdk/component/adexpress/fl/Tgh;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/fl/Tgh;->fl(Lcom/bytedance/sdk/component/widget/SSWebView;)Z

    .line 190
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->WAv:Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "load exception is "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lcom/bytedance/sdk/component/adexpress/cJ/Sf;->Qhi(ILjava/lang/String;)V

    return-void

    .line 193
    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Qhi()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object p1

    .line 194
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->ABk()V

    .line 195
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ABk:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->fl()Lcom/bytedance/sdk/component/adexpress/cJ/WAv;

    .line 196
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->hm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->a_(Ljava/lang/String;)V

    return-void

    .line 154
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->WAv:Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SSWebview null is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Qhi()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v4

    if-nez v4, :cond_8

    goto :goto_3

    :cond_8
    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or Webview is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/bytedance/sdk/component/adexpress/cJ/Sf;->Qhi(ILjava/lang/String;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/hm;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->zc:Lcom/bytedance/sdk/component/adexpress/cJ/hm;

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V
    .locals 6

    const/16 v0, 0x69

    if-nez p1, :cond_1

    .line 252
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->WAv:Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

    if-eqz p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->WAv:Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

    const-string v1, "renderResult is null"

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/cJ/Sf;->Qhi(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 257
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->ac()Z

    move-result v1

    .line 258
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->CJ()D

    move-result-wide v2

    double-to-float v2, v2

    .line 259
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->fl()D

    move-result-wide v3

    double-to-float v3, v3

    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-lez v5, :cond_4

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_2

    goto :goto_0

    .line 266
    :cond_2
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->cJ:Z

    .line 268
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 269
    invoke-direct {p0, p1, v2, v3}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/pA;FF)V

    return-void

    .line 271
    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/fl/Qhi$1;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi$1;-><init>(Lcom/bytedance/sdk/component/adexpress/fl/Qhi;Lcom/bytedance/sdk/component/adexpress/cJ/pA;FF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 261
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->WAv:Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

    if-eqz p1, :cond_5

    .line 262
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->WAv:Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "width is "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/cJ/Sf;->Qhi(ILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->hm:Ljava/lang/String;

    return-void
.end method

.method public Qhi(Lorg/json/JSONObject;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Qhi:Lorg/json/JSONObject;

    return-void
.end method

.method public Qhi(Z)V
    .locals 0

    .line 246
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->iMK:Z

    return-void
.end method

.method public abstract ROR()V
.end method

.method public Sf()V
    .locals 1

    .line 371
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->hm()V

    .line 372
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/cJ;->Qhi(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->cJ(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->pA:I

    :cond_0
    return-void
.end method

.method public Tgh()V
    .locals 1

    .line 228
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Qhi()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Qhi()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected WAv()V
    .locals 0

    return-void
.end method

.method public ac()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cJ()Lcom/bytedance/sdk/component/widget/SSWebView;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Qhi()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    return-object v0
.end method

.method public abstract cJ(I)V
.end method

.method public cJ(Z)V
    .locals 0

    .line 412
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->hpZ:Z

    return-void
.end method

.method public synthetic fl()Landroid/view/View;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->cJ()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    return-object v0
.end method

.method protected hm()V
    .locals 0

    return-void
.end method
